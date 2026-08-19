#!/usr/bin/env node

/**
 * Script de sincronização com API Engerisco - V4.4 COMPLETO COM AGENDAMENTO
 * Sincroniza: Motoristas, Posições, Cargas
 * Agendamento: A cada 30 minutos automaticamente
 * Dependências: npm install oracledb axios node-schedule
 */

const axios = require('axios');
const oracledb = require('oracledb');
const schedule = require('node-schedule');

// Configurações
const API_URL = 'https://integra.engeriscogr.com.br/datasnap/rest/TWebService';
const CREDENTIALS = {
  Ambiente: 'Homologacao',
  Login: 'WSART',
  Senha: 'WS2025ART',
  TipoRetorno: 'JSON'
};

const DB_CONFIG = {
  user: 'ARTONE',
  password: 'ArtOne@2026',
  connectString: '10.130.57.55:1521/XEPDB1'
};

// ============================================================================
// FUNÇÃO: Sincronizar Motoristas (INSERT simples com try-catch)
// ============================================================================
async function sincronizarMotoristas(cpf = '10814737978') {
  console.log(`🚀 Sincronizando Motoristas (CPF: ${cpf})...`);
  
  try {
    const response = await axios.post(`${API_URL}/"GetMotorista"`, {
      ...CREDENTIALS,
      CPF: cpf
    }, {
      timeout: 10000,
      headers: { 'Content-Type': 'application/json' }
    });

    const data = response.data.result[0];

    if (data.CodErro !== 0) {
      console.log(`❌ API Error: CodErro = ${data.CodErro}`);
      await registrarLog('MOTORISTAS', 'FALHA', 0, `API Error ${data.CodErro}: ${data.MsgErro}`);
      return;
    }

    if (!data.Motorista || Object.keys(data.Motorista).length === 0) {
      console.log('❌ Nenhum dado de motorista retornado');
      await registrarLog('MOTORISTAS', 'FALHA', 0, 'Motorista vazio na resposta');
      return;
    }

    const motorista = data.Motorista;
    const connection = await oracledb.getConnection(DB_CONFIG);

    try {
      await connection.execute(
        `INSERT INTO MOTORISTAS (
          ID_MOTORISTA, CPF, NOME, APELIDO, SEXO, RG, ORGAO_EMISSOR_RG,
          DATA_EMISSAO_RG, NUM_CNH, CATEGORIA_CNH, DATA_EMISSAO_CNH, DATA_VENCIMENTO_CNH,
          DATA_NASCIMENTO, NOME_MAE, ENDERECO, NUMERO, COMPLEMENTO, BAIRRO, CEP,
          CIDADE, UF, TELEFONE, CELULAR, RADIO, ESCOLARIDADE, ESTADO_CIVIL, POSSUO_MOPP,
          CREATED_AT, UPDATED_AT
        ) VALUES (
          SEQ_MOTORISTA.NEXTVAL, :cpf, :nome, :apelido, :sexo, :rg, :orgao_emissor_rg,
          TO_DATE(:data_emissao_rg, 'YYYY-MM-DD'), :num_cnh, :categoria_cnh, 
          TO_DATE(:data_emissao_cnh, 'YYYY-MM-DD'), TO_DATE(:data_vencimento_cnh, 'YYYY-MM-DD'),
          TO_DATE(:data_nascimento, 'YYYY-MM-DD'), :nome_mae,
          :endereco, :numero, :complemento, :bairro, :cep,
          :cidade, :uf, :telefone, :celular, :radio, :escolaridade, :estado_civil, :possuo_mopp,
          SYSDATE, SYSDATE
        )`,
        {
          cpf: motorista.CPF,
          nome: motorista.Nome,
          apelido: motorista.Apelido || null,
          sexo: motorista.Sexo || null,
          rg: motorista.RG || null,
          orgao_emissor_rg: motorista.OrgaoEmissorrRG || null,
          data_emissao_rg: motorista.DataEmissaoRG || null,
          num_cnh: motorista.NumFormCNH || null,
          categoria_cnh: motorista.CategoriaCNH || null,
          data_emissao_cnh: motorista.DataEmissCNH || null,
          data_vencimento_cnh: motorista.DataVencCNH || null,
          data_nascimento: motorista.DataNascimento || null,
          nome_mae: motorista.NomeMae || null,
          endereco: motorista.Endereco || null,
          numero: motorista.Numero || null,
          complemento: motorista.Complemento || null,
          bairro: motorista.Bairro || null,
          cep: motorista.CEP || null,
          cidade: motorista.Cidade || null,
          uf: motorista.UF || null,
          telefone: motorista.Telefone || null,
          celular: motorista.Celular || null,
          radio: motorista.Radio || null,
          escolaridade: motorista.Escolaridade || null,
          estado_civil: motorista.EstadoCivil || null,
          possuo_mopp: motorista.PossuiMOPP || null
        }
      );

      await connection.commit();
      console.log('✅ Motorista sincronizado!');
      await registrarLog('MOTORISTAS', 'SUCESSO', 1, null);
    } catch (dbError) {
      if (dbError.message.includes('ORA-00001')) {
        console.log('ℹ️ Motorista já existe');
        await registrarLog('MOTORISTAS', 'SUCESSO', 0, 'Motorista já existe');
      } else {
        console.error('❌ Erro ao inserir motorista:', dbError.message);
        await registrarLog('MOTORISTAS', 'FALHA', 0, `DB Error: ${dbError.message}`);
      }
    } finally {
      await connection.close();
    }

  } catch (error) {
    console.error('❌ Erro:', error.message);
    await registrarLog('MOTORISTAS', 'FALHA', 0, error.message);
  }
}

// ============================================================================
// FUNÇÃO: Sincronizar Posições (COM FK CHECK)
// ============================================================================
async function sincronizarPosicoes(tipoConsulta = 'Primeiras', codUltPosicao = 0) {
  console.log('🚀 Sincronizando Posições...');
  
  try {
    const response = await axios.post(`${API_URL}/"GetPosicoes"`, {
      ...CREDENTIALS,
      TipoConsulta: tipoConsulta,
      CodUltPosicao: codUltPosicao
    }, {
      timeout: 10000,
      headers: { 'Content-Type': 'application/json' }
    });

    const data = response.data.result[0];

    if (data.CodErro !== 0) {
      console.log(`❌ API Error: CodErro = ${data.CodErro}`);
      await registrarLog('RASTREAMENTO_POSICOES', 'FALHA', 0, `API Error ${data.CodErro}`);
      return;
    }

    const posicoes = data.Posicoes || [];
    
    if (posicoes.length === 0) {
      console.log('✅ Nenhuma posição nova');
      await registrarLog('RASTREAMENTO_POSICOES', 'SUCESSO', 0, null);
      return;
    }

    const connection = await oracledb.getConnection(DB_CONFIG);
    let inserted = 0;

    for (const pos of posicoes) {
      try {
        // ✅ PASSO 1: Verificar se PLACA existe em VEICULOS
        if (pos.Placa) {
          const veiculoResult = await connection.execute(
            `SELECT ID_VEICULO FROM VEICULOS WHERE PLACA = :placa`,
            { placa: pos.Placa }
          );

          // Se não existe, criar registro dummy
          if (veiculoResult.rows.length === 0) {
            try {
              await connection.execute(
                `INSERT INTO VEICULOS (
                  ID_VEICULO, PLACA, CREATED_AT, UPDATED_AT
                ) VALUES (
                  SEQ_MOTORISTA.NEXTVAL, :placa, SYSDATE, SYSDATE
                )`,
                { placa: pos.Placa }
              );
            } catch (err) {
              if (!err.message.includes('ORA-00001')) {
                console.warn(`  ⚠️ Erro ao criar veículo dummy ${pos.Placa}:`, err.message);
              }
            }
          }
        }

        // ✅ PASSO 2: Inserir posição
        await connection.execute(
          `INSERT INTO RASTREAMENTO_POSICOES (
            ID_POSICAO, COD_POSICAO, PLACA, COD_TERMINAL, TIPO_RASTREADOR,
            DATA_HORA_POSICAO, IGNICAO, LATITUDE, LONGITUDE,
            VELOCIDADE, VELOCIDADE_MEDIA_CALC, DIST_ULT_POSICAO,
            POS_REFERENCIA, CIDADE, UF, PAIS, CREATED_AT
          ) VALUES (
            SEQ_POSICOES.NEXTVAL, :cod_posicao, :placa, :cod_terminal, :tipo_rastreador,
            TO_TIMESTAMP(:data_hora_posicao, 'YYYY-MM-DD"T"HH24:MI:SS.FF'),
            :ignicao, :latitude, :longitude,
            :velocidade, :velocidade_media_calc, :dist_ult_posicao,
            :pos_referencia, :cidade, :uf, :pais, SYSDATE
          )`,
          {
            cod_posicao: pos.CodPosicao,
            placa: pos.Placa || null,
            cod_terminal: pos.CodTerminal || null,
            tipo_rastreador: pos.TipoRastreador || null,
            data_hora_posicao: pos.DataHoraPosicao,
            ignicao: pos.Ignicao || null,
            latitude: parseFloat(pos.Latitude) || null,
            longitude: parseFloat(pos.Longitude) || null,
            velocidade: parseFloat(pos.Velocidade) || null,
            velocidade_media_calc: parseFloat(pos.VeloMediaCalc) || null,
            dist_ult_posicao: parseFloat(pos.DistUltPosicao) || null,
            pos_referencia: pos.PosReferencia || null,
            cidade: pos.Cidade || null,
            uf: pos.UF || null,
            pais: pos.Pais || null
          }
        );
        inserted++;
      } catch (err) {
        if (err.message.includes('ORA-00001')) {
          console.log(`  ℹ️ Posição ${pos.CodPosicao} já existe`);
        } else {
          console.warn(`  ⚠️ Erro ao inserir posição ${pos.CodPosicao}:`, err.message);
        }
      }
    }

    await connection.commit();
    await connection.close();

    console.log(`✅ ${inserted} posições sincronizadas!`);
    await registrarLog('RASTREAMENTO_POSICOES', 'SUCESSO', inserted, null);

  } catch (error) {
    console.error('❌ Erro:', error.message);
    await registrarLog('RASTREAMENTO_POSICOES', 'FALHA', 0, error.message);
  }
}

// ============================================================================
// FUNÇÃO: Sincronizar Programação de Cargas
// ============================================================================
async function sincronizarProgramacaoCargas() {
  console.log('🚀 Sincronizando Programação de Cargas...');
  
  try {
    const response = await axios.post(`${API_URL}/"GetProgramacaoCargas"`, {
      ...CREDENTIALS
    }, {
      timeout: 10000,
      headers: { 'Content-Type': 'application/json' }
    });

    const data = response.data.result[0];

    if (data.CodErro !== 0) {
      console.log(`⚠️ API retorna: CodErro = ${data.CodErro}`);
      await registrarLog('PROGRAMACAO_CARGAS', 'SUCESSO', 0, `API: ${data.MsgErro}`);
      return;
    }

    const cargas = data.ProgramacaoCargas || [];

    if (cargas.length === 0) {
      console.log('✅ Nenhuma carga nova');
      await registrarLog('PROGRAMACAO_CARGAS', 'SUCESSO', 0, null);
      return;
    }

    const connection = await oracledb.getConnection(DB_CONFIG);
    let inserted = 0;

    for (const carga of cargas) {
      try {
        await connection.execute(
          `INSERT INTO PROGRAMACAO_CARGAS (
            ID_PROGRAMACAO, COD_PROGRAMACAO, PLACA_VEICULO, CPF_MOTORISTA,
            NOME_MOTORISTA, CPF_MOTORISTA_02, NOME_MOTORISTA_02, CPF_AJUDANTE,
            NOME_AJUDANTE, STATUS, ORIGEM, DESTINO, CREATED_AT, UPDATED_AT
          ) VALUES (
            SEQ_DAB_CARREGAMENTO.NEXTVAL, :cod_prog, :placa, :cpf_motor1,
            :nome_motor1, :cpf_motor2, :nome_motor2, :cpf_ajudante,
            :nome_ajudante, :status, :origem, :destino, SYSDATE, SYSDATE
          )`,
          {
            cod_prog: carga.CodProgramacao || null,
            placa: carga.PlacaVeiculo || null,
            cpf_motor1: carga.CPFMotorista || null,
            nome_motor1: carga.NomeMotorista || null,
            cpf_motor2: carga.CPFMotorista2 || null,
            nome_motor2: carga.NomeMotorista2 || null,
            cpf_ajudante: carga.CPFAjudante || null,
            nome_ajudante: carga.NomeAjudante || null,
            status: carga.Status || null,
            origem: carga.Origem || null,
            destino: carga.Destino || null
          }
        );
        inserted++;
      } catch (err) {
        if (err.message.includes('ORA-00001')) {
          console.log(`  ℹ️ Carga ${carga.CodProgramacao} já existe`);
        } else {
          console.warn(`  ⚠️ Erro ao inserir carga:`, err.message);
        }
      }
    }

    await connection.commit();
    await connection.close();

    console.log(`✅ ${inserted} cargas sincronizadas!`);
    await registrarLog('PROGRAMACAO_CARGAS', 'SUCESSO', inserted, null);

  } catch (error) {
    console.error('❌ Erro:', error.message);
    await registrarLog('PROGRAMACAO_CARGAS', 'FALHA', 0, error.message);
  }
}

// ============================================================================
// FUNÇÃO: Registrar Log (CORRIGIDO - só SUCESSO/FALHA)
// ============================================================================
async function registrarLog(tabela, status, qtde, erro) {
  try {
    const connection = await oracledb.getConnection(DB_CONFIG);
    
    // ✅ CORRIGIDO: Normalizar status pra só aceitar SUCESSO ou FALHA
    let statusNormalizado = 'SUCESSO';
    if (status === 'FALHA') {
      statusNormalizado = 'FALHA';
    }
    
    await connection.execute(
      `INSERT INTO DAB_SISPETRO_SYNC_LOG (
        SEQ_SYNC_LOG, TABELA_SINCRONIZADA, DATA_INICIO, DATA_FIM,
        QTDE_REGISTROS_NOVOS, STATUS_SINCRONIZACAO, MENSAGEM_ERRO, CREATED_AT
      ) VALUES (
        SEQ_SYNC_LOG.NEXTVAL, :tabela, SYSDATE, SYSDATE,
        :qtde, :status, :erro, SYSTIMESTAMP
      )`,
      {
        tabela: tabela,
        qtde: qtde,
        status: statusNormalizado,
        erro: erro
      }
    );

    await connection.commit();
    await connection.close();
  } catch (error) {
    console.error('Erro ao registrar log:', error.message);
  }
}

// ============================================================================
// FUNÇÃO: Executar Sincronização Completa
// ============================================================================
async function executarSincronizacao() {
  console.log('\n═════════════════════════════════════════════════════════════════');
  console.log('🔄 SINCRONIZAÇÃO AGENDADA - ' + new Date().toLocaleString('pt-BR'));
  console.log('═════════════════════════════════════════════════════════════════');
  
  await sincronizarMotoristas('10814737978');
  await sincronizarProgramacaoCargas();
  await sincronizarPosicoes('Primeiras', 0);

  console.log('\n✅ CICLO DE SINCRONIZAÇÃO CONCLUÍDO!');
  console.log('═════════════════════════════════════════════════════════════════\n');
}

// ============================================================================
// MODO 1: EXECUTAR UMA VEZ
// ============================================================================
async function executarUmaVez() {
  console.log('🚀 MODO: Executar uma vez e sair');
  console.log('═════════════════════════════════════════════════════════════════');
  await executarSincronizacao();
  console.log('Saindo...');
  process.exit(0);
}

// ============================================================================
// MODO 2: EXECUTAR A CADA 30 MINUTOS (AGENDADO)
// ============================================================================
async function executarAgendado() {
  console.log('🚀 MODO: Agendamento automático ativado!');
  console.log('═════════════════════════════════════════════════════════════════');
  console.log('📅 A sincronização será executada a cada 30 minutos');
  console.log('⏰ Próxima execução: ', new Date(Date.now() + 30 * 60000).toLocaleString('pt-BR'));
  console.log('═════════════════════════════════════════════════════════════════\n');
  
  // Executar imediatamente na startup
  await executarSincronizacao();
  
  // Agendar para executar a cada 30 minutos (0 e 30 minutos de cada hora)
  schedule.scheduleJob('*/30 * * * *', async () => {
    await executarSincronizacao();
  });
  
  console.log('✅ Script agendado. Pressione Ctrl+C para parar.\n');
}

// ============================================================================
// MAIN
// ============================================================================
async function main() {
  const args = process.argv.slice(2);
  const modo = args[0] || 'agendado'; // default: agendado
  
  if (modo === 'uma-vez' || modo === 'once') {
    await executarUmaVez();
  } else {
    await executarAgendado();
  }
}

main().catch(console.error);
