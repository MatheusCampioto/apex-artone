# 🔄 Sincronização Engerisco v4.4

Script Node.js que sincroniza dados da API Engerisco com o banco Oracle em tempo real.

---

## ✨ Features

- ✅ Sincronização automática a cada 10 minutos
- ✅ Suporta Motoristas, Posições (GPS) e Cargas
- ✅ Logs completos em DAB_SISPETRO_SYNC_LOG
- ✅ Tratamento robusto de erros
- ✅ Operação 24/7
- ✅ Dois modos: Teste (uma-vez) ou Produção (agendado)

---

## 📋 Pré-requisitos

- Node.js v16+
- npm
- Acesso ao banco Oracle ARTONE @ 10.130.57.55:1521/XEPDB1
- Conectividade com API Engerisco

---

## 🚀 Instalação

### 1. Instalar dependências

```bash
cd scripts/sincroniza-engerisco
npm install
```

Isso vai instalar:
- `oracledb` - Driver Oracle
- `axios` - HTTP Client para API
- `node-schedule` - Agendamento de tarefas

### 2. Configurar credenciais

**Opção A: Variáveis de ambiente**
```bash
export ORACLE_USER=ARTONE
export ORACLE_PASSWORD=sua_senha
export ORACLE_HOST=10.130.57.55
```

**Opção B: Arquivo .env**
```
ORACLE_USER=ARTONE
ORACLE_PASSWORD=sua_senha
ORACLE_HOST=10.130.57.55
ORACLE_PORT=1521
ORACLE_DB=XEPDB1
```

---

## 🎯 Como Usar

### Teste rápido (executa 1x e sai)

```bash
node sincroniza-engerisco-v4.4-agendado.js uma-vez
```

**Resultado esperado:**
```
🚀 MODO: Executar uma vez e sair
🚀 Sincronizando Motoristas...
✅ Motorista sincronizado!
🚀 Sincronizando Programação de Cargas...
⚠️ API retorna: CodErro = 200
🚀 Sincronizando Posições...
✅ 500 posições sincronizadas!
✅ CICLO DE SINCRONIZAÇÃO CONCLUÍDO!
Saindo...
```

### Modo produção (agendado)

```bash
node sincroniza-engerisco-v4.4-agendado.js agendado
```

Ou simplesmente:
```bash
node sincroniza-engerisco-v4.4-agendado.js
```

**Comportamento:**
- Executa imediatamente
- Fica rodando em background
- Sincroniza a cada 10 minutos indefinidamente
- Pressione Ctrl+C para parar

---

## ⏰ Agendamento (Windows)

Ver arquivo [cron-setup.md](./cron-setup.md) para instruções completas do Windows Task Scheduler.

Resumo rápido:
1. Win + R → `taskschd.msc`
2. "Criar Tarefa"
3. Disparadores: Diário, repetir a cada 10 minutos
4. Ações: `node` com argumentos `C:\caminho\sincroniza-engerisco-v4.4-agendado.js agendado`

---

## 🐧 Agendamento (Linux)

Ver instruções completas em [cron-setup.md](./cron-setup.md).

Comando rápido (cron):
```bash
*/10 * * * * /usr/bin/node /caminho/do/script/sincroniza-engerisco-v4.4-agendado.js agendado >> /var/log/engerisco-sync.log 2>&1
```

---

## 📊 Dados Sincronizados

### Motoristas
- CPF, Nome, Categoria CNH, Telefone, etc
- **Frequência:** A cada 10 minutos
- **Status:** ✅ OPERACIONAL

### Posições (GPS)
- Latitude, Longitude, Velocidade, Cidade
- Até 500 posições por execução
- **Frequência:** A cada 10 minutos
- **Status:** ✅ OPERACIONAL

### Cargas/Programação
- Ordem de carregamento, motorista alocado, origem, destino
- **Frequência:** A cada 10 minutos
- **Status:** ⏳ MONITORANDO (API em ajuste)

---

## 🔍 Verificar Funcionamento

### Ver logs em tempo real (Windows)

Se agendado via Task Scheduler, abra Event Viewer:
```
Windows + R → eventvwr.msc
```

### Ver logs no banco (SQL)

```sql
SELECT TABELA_SINCRONIZADA, STATUS_SINCRONIZACAO, QTDE_REGISTROS_NOVOS, CREATED_AT
FROM DAB_SISPETRO_SYNC_LOG 
ORDER BY CREATED_AT DESC
FETCH FIRST 5 ROWS ONLY;
```

### Ver logs no arquivo (Linux)

```bash
tail -f /var/log/engerisco-sync.log
```

---

## 🐛 Troubleshooting

### "Cannot find module 'oracledb'"
```bash
npm install oracledb axios node-schedule
```

### "Erro de conexão com BD"
- Verificar credenciais em .env ou variáveis de ambiente
- Verificar conectividade: `ping 10.130.57.55`
- Verificar porta: `telnet 10.130.57.55 1521`

### "ORA-29273: falha na solicitação HTTP"
- API Engerisco está acessível?
- Firewall bloqueando?
- Testar: `curl https://integra.engeriscogr.com.br`

### "Nenhuma posição sincronizada"
- Verificar se há posições novas na API
- Checar logs no banco

---

## 📝 Estrutura do Código

```javascript
// sincroniza-engerisco-v4.4-agendado.js

sincronizarMotoristas()     // ← Busca motoristas
  ↓
sincronizarProgramacaoCargas() // ← Busca cargas
  ↓
sincronizarPosicoes()       // ← Busca posições GPS
  ↓
registrarLog()              // ← Grava resultado em DAB_SISPETRO_SYNC_LOG
```

---

## 🔐 Segurança

**Credenciais:**
- Nunca commitar `.env` com senhas
- Usar variáveis de ambiente em produção
- Não compartilhar `node_modules`

**Dados:**
- Todos os acessos são logados
- Conexão SSL com API Engerisco
- Timeout de 30 segundos por request

---

## 📞 Contato

Dúvidas ou erros? Consulte o troubleshooting ou entre em contato.

---

**Última atualização:** 06/08/2026  
**Versão:** 4.4  
**Status:** ✅ Produção
