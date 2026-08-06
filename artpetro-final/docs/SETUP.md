# 🚀 Setup - Como Começar

Guia completo para configurar o ambiente de desenvolvimento.

---

## 📋 Pré-requisitos

### Geral
- Git instalado
- GitHub account
- IDE ou editor de código (VS Code recomendado)

### Para Desenvolvimento Oracle APEX
- Acesso ao workspace APEX
- Credenciais do banco Oracle
- SQL Developer (opcional)

### Para Scripts Node.js
- Node.js v16+ instalado
- npm
- Acesso à API Engerisco

---

## 📥 Instalação

### 1. Clonar o Repositório

```bash
git clone https://github.com/MatheusCampioto/apex-cockpit.git
cd apex-cockpit
```

### 2. Instalar Dependências (Node.js)

Se você vai trabalhar com os scripts:

```bash
cd scripts/sincroniza-engerisco
npm install
```

Isso vai instalar:
- `oracledb` - Driver Oracle
- `axios` - HTTP Client
- `node-schedule` - Agendador de tarefas

---

## 🔌 Configuração do Banco de Dados

### Oracle ARTONE

**Dados de Conexão:**
```
Host: 10.130.57.55
Port: 1521
Database: XEPDB1
User: ARTONE
Password: [ver credenciais com TI]
```

### Credenciais Seguras

**NUNCA commitar senhas!** Opções:

**Opção 1: Variáveis de Ambiente**
```bash
export ORACLE_USER=ARTONE
export ORACLE_PASSWORD=sua_senha
export ORACLE_HOST=10.130.57.55
```

**Opção 2: Arquivo .env (não commitado)**
```
# .env (adicione em .gitignore)
ORACLE_USER=ARTONE
ORACLE_PASSWORD=sua_senha
ORACLE_HOST=10.130.57.55
ORACLE_PORT=1521
ORACLE_DB=XEPDB1
```

---

## 🌐 Acesso ao APEX

1. Acesse: https://oracleapex.com.br/ords/
2. Faça login com suas credenciais
3. Workspace: Conforme instruído
4. Apps principais:
   - **App 128150:** Cockpit de Logística
   - **App 145697:** Cadastro de Usuários

---

## 🔑 Integração com API Engerisco

### Credenciais
```
URL Base: https://integra.engeriscogr.com.br/datasnap/rest/TWebService/
Login: WSART
Senha: WS2025ART
```

### Testes
Para testar a conexão:
```bash
cd scripts/sincroniza-engerisco
node sincroniza-engerisco-v4.4-agendado.js uma-vez
```

---

## 🖥️ Estrutura de Pastas Recomendada

```
~/Projects/
└── apex-cockpit/
    ├── scripts/
    │   └── sincroniza-engerisco/
    │       ├── node_modules/     (gitignored)
    │       ├── .env              (gitignored)
    │       └── sincroniza-engerisco-v4.4-agendado.js
    ├── sql/
    ├── apex/
    ├── docs/
    └── README.md
```

---

## ✅ Verificação de Setup

Rode os seguintes comandos para verificar se tudo está ok:

```bash
# Verificar Git
git --version
git config --list

# Verificar Node.js
node --version
npm --version

# Verificar dependências instaladas
cd scripts/sincroniza-engerisco
npm list
```

---

## 📞 Próximos Passos

1. Leia [DEPLOY.md](./DEPLOY.md) para entender como fazer deploy
2. Leia [API-ENGERISCO.md](./API-ENGERISCO.md) para entender a API
3. Explore a documentação específica de cada projeto em `/apex` ou `/scripts`

---

**Dúvidas?** Consulte o troubleshooting em [TROUBLESHOOTING.md](./TROUBLESHOOTING.md)

**Última atualização:** 06/08/2026
