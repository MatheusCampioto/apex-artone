# 🔌 API Engerisco - Documentação Técnica

Documentação completa dos endpoints da API Engerisco utilizados na sincronização.

---

## 🌐 Base URL

```
https://integra.engeriscogr.com.br/datasnap/rest/TWebService/
```

---

## 🔐 Autenticação

### Credenciais
```
Login: WSART
Senha: WS2025ART
Ambiente: Homologacao
```

### Headers Necessários
```
Content-Type: application/json
User-Agent: SincronizacaoArtPetro/4.4
```

---

## 📍 Endpoints

### 1. GetMotorista

Obtém dados de um motorista específico.

**Endpoint:**
```
GET /"GetMotorista"?CPF=<cpf>
```

**Parâmetros:**
- `CPF` (string): CPF do motorista (obrigatório)

**Response (200 OK):**
```json
{
  "CodErro": 0,
  "MsgErro": "OK",
  "Result": {
    "CPF": "10814737978",
    "Nome": "João Silva",
    "Apelido": "Joao",
    "Sexo": "M",
    "DataNascimento": "1985-05-15",
    "NomeMae": "Maria Silva",
    "NumCNH": "1234567890",
    "CategoriaCNH": "D",
    "DataEmissaoCNH": "2020-01-10",
    "DataVencimentoCNH": "2030-01-10",
    "Telefone": "4433334444",
    "Celular": "44999998888",
    "Email": "joao@example.com"
  }
}
```

**Erros Comuns:**
- `CodErro: 404` → Motorista não encontrado
- `CodErro: 403` → Sem permissão

---

### 2. GetPosicoes

Obtém posições GPS dos veículos.

**Endpoint:**
```
GET /"GetPosicoes"?TipoConsulta=<tipo>&CodUltPosicao=<codigo>
```

**Parâmetros:**
- `TipoConsulta` (string): `TODASPOSICOES` ou `POSICOESUPDATADAS`
- `CodUltPosicao` (int): Código da última posição consultada (para atualizações incrementais)

**Response (200 OK):**
```json
{
  "CodErro": 0,
  "MsgErro": "OK",
  "Result": [
    {
      "CodPosicao": 1,
      "Placa": "ART0001",
      "Latitude": -23.5505,
      "Longitude": -46.6333,
      "DataHoraPosicao": "2026-08-06T14:30:00",
      "Velocidade": 85.5,
      "Cidade": "São Paulo",
      "UF": "SP",
      "Pais": "Brasil",
      "Ignicao": true,
      "VelocidadeMedia": 78.2,
      "DistUltPosicao": 2.5,
      "PosReferencia": "Av. Paulista, 1000",
      "TipoRastreador": "GPS"
    },
    {
      "CodPosicao": 2,
      "Placa": "ART0002",
      "Latitude": -23.6102,
      "Longitude": -46.6783,
      "DataHoraPosicao": "2026-08-06T14:28:00",
      "Velocidade": 0,
      "Cidade": "São Paulo",
      "UF": "SP",
      "Pais": "Brasil",
      "Ignicao": false,
      "VelocidadeMedia": 65.0,
      "DistUltPosicao": 1.0,
      "PosReferencia": "Terminal Jabaquara",
      "TipoRastreador": "GPS"
    }
  ]
}
```

**Notas:**
- Retorna até 500 posições por execução
- Use `TipoConsulta=POSICOESUPDATADAS` para sincronizações incrementais
- Timestamps em ISO 8601

---

### 3. GetProgramacaoCargas

Obtém programações de cargas.

**Endpoint:**
```
GET /"GetProgramacaoCargas"
```

**Parâmetros:**
Nenhum (por enquanto)

**Response (200 OK):**
```json
{
  "CodErro": 200,
  "MsgErro": "Nenhum registro encontrado",
  "Result": []
}
```

**Status Atual:**
- ⚠️ API retorna erro 200 sem dados
- Aguardando confirmação de parâmetros com Engerisco
- Script registra tentativa mas não trata como erro

---

## 📊 Estrutura de Dados

### Motorista
| Campo | Tipo | Descrição |
|-------|------|-----------|
| CPF | string | CPF único do motorista |
| Nome | string | Nome completo |
| Apelido | string | Apelido/nickname |
| Sexo | string | M ou F |
| NumCNH | string | Número da CNH |
| CategoriaCNH | string | Categoria (A, B, C, D, E) |
| DataEmissaoCNH | date | Data de emissão |
| DataVencimentoCNH | date | Data de vencimento |
| Telefone | string | Telefone |
| Celular | string | Celular |

### Posição
| Campo | Tipo | Descrição |
|-------|------|-----------|
| CodPosicao | int | ID único |
| Placa | string | Placa do veículo |
| Latitude | float | Latitude GPS |
| Longitude | float | Longitude GPS |
| DataHoraPosicao | datetime | Timestamp da posição |
| Velocidade | float | Velocidade em km/h |
| Ignicao | bool | Motor ligado? |
| Cidade | string | Cidade |
| UF | string | Estado |

### Carga/Programação
| Campo | Tipo | Descrição |
|-------|------|-----------|
| CodProgramacao | string | ID da programação |
| CPFMotorista | string | CPF motorista responsável |
| Placa | string | Placa do veículo |
| Origem | string | Endereço de origem |
| Destino | string | Endereço de destino |
| Status | string | Status da carga |

---

## 🔄 Fluxo de Sincronização

```
1. Script executa
    ↓
2. Conecta à API Engerisco
    ↓
3. Obtém Motoristas (GetMotorista com CPF específico)
    ↓
4. Obtém Posições (GetPosicoes)
    ↓
5. Obtém Cargas (GetProgramacaoCargas) - atualmente sem dados
    ↓
6. Insere no banco Oracle
    ↓
7. Registra resultado em DAB_SISPETRO_SYNC_LOG
    ↓
8. Aguarda 10 minutos
    ↓
9. Repete desde o passo 2
```

---

## 🐛 Erros Comuns & Soluções

| Erro | Causa | Solução |
|------|-------|---------|
| `HTTP 500` | URL sem aspas | Use `/"GetMotorista"` com aspas |
| `HTTP 403` | Credenciais inválidas | Verificar WSART / WS2025ART |
| `HTTP 404` | Recurso não encontrado | Verificar se endpoint existe |
| `Timeout` | API lenta | Aumentar timeout (padrão: 30s) |
| `SSL Error` | Certificado inválido | Usar Node.js (PL/SQL falha nisto) |
| `CodErro: 200` | Nenhum dado retornado | Normal em GetProgramacaoCargas |

---

## 🧪 Como Testar

### Via curl (linha de comando)

```bash
# Obter motorista
curl -X GET "https://integra.engeriscogr.com.br/datasnap/rest/TWebService/%22GetMotorista%22?CPF=10814737978"

# Obter posições
curl -X GET "https://integra.engeriscogr.com.br/datasnap/rest/TWebService/%22GetPosicoes%22?TipoConsulta=TODASPOSICOES"
```

### Via Postman

1. Importe a coleção (se disponível)
2. Configure Authorization → Basic Auth
3. Username: `WSART`
4. Password: `WS2025ART`
5. Execute os requests

### Via Node.js

```javascript
const axios = require('axios');

const API_URL = 'https://integra.engeriscogr.com.br/datasnap/rest/TWebService/';

axios.get(`${API_URL}/"GetMotorista"?CPF=10814737978`, {
  auth: {
    username: 'WSART',
    password: 'WS2025ART'
  }
})
.then(res => console.log(res.data))
.catch(err => console.error(err.message));
```

---

## 📈 Performance

**Tempo de resposta típico:**
- GetMotorista: 200-500ms
- GetPosicoes (500 registros): 1-2s
- GetProgramacaoCargas: 300-600ms

**Rate Limiting:**
- Não há limite documentado
- Recomendado: Máx 1 request/segundo

---

## 🔐 Notas de Segurança

1. **Credenciais:** Nunca commitar em repositórios públicos
2. **SSL:** Sempre usar HTTPS (não HTTP)
3. **Tokens:** Não há token rotating; usar credenciais básicas
4. **Firewall:** Verificar se seu firewall permite saída HTTPS para Engerisco

---

## 📞 Contato Engerisco

Para problemas com a API:
- **Suporte:** [ver com TI]
- **Ambiente:** Homologação
- **Status:** Em funcionamento

---

**Última atualização:** 06/08/2026  
**Versão:** 1.0
