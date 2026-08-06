# 🎯 MASTER README - ArtPetro Cockpit

**Guia completo para iniciar e trabalhar com o projeto.**

---

## 🚀 Quick Start (5 minutos)

### 1. Clone o repositório

```bash
git clone https://github.com/MatheusCampioto/apex-cockpit.git
cd apex-cockpit
```

### 2. Instale dependências

```bash
cd scripts/sincroniza-engerisco
npm install
```

### 3. Configure credenciais

```bash
# Crie arquivo .env
echo 'ORACLE_USER=ARTONE' > .env
echo 'ORACLE_PASSWORD=sua_senha' >> .env
echo 'ORACLE_HOST=10.130.57.55' >> .env
```

### 4. Teste o script

```bash
node sincroniza-engerisco-v4.4-agendado.js uma-vez
```

**Pronto!** ✅

---

## 📚 Documentação Completa

| Documento | Descrição |
|-----------|-----------|
| **[README.md](./README.md)** | Visão geral do projeto |
| **[CONTRIBUTING.md](./CONTRIBUTING.md)** | Como contribuir (LEIA ANTES DE COMMITTAR) |
| **[GIT-WORKFLOW.md](./GIT-WORKFLOW.md)** | Guia completo de Git/GitHub |
| **[MASTER-README.md](./MASTER-README.md)** | Este arquivo |

### 📖 Documentação Técnica

| Documento | Para Quem | Conteúdo |
|-----------|-----------|----------|
| **[docs/ARCHITECTURE.md](./docs/ARCHITECTURE.md)** | Arquitetos, Leads | Visão geral da arquitetura |
| **[docs/CODE-STANDARDS.md](./docs/CODE-STANDARDS.md)** | Todos devs | Padrões de código |
| **[docs/SETUP.md](./docs/SETUP.md)** | Novo dev | Como configurar ambiente |
| **[docs/DEPLOY.md](./docs/DEPLOY.md)** | DevOps | Como fazer deploy |
| **[docs/API-ENGERISCO.md](./docs/API-ENGERISCO.md)** | Backend dev | Documentação da API |
| **[docs/TROUBLESHOOTING.md](./docs/TROUBLESHOOTING.md)** | Support/QA | Resolução de problemas |

### 🏛️ ADRs (Architecture Decision Records)

| ADR | Decisão |
|-----|---------|
| **[docs/ADR/001-nodejs-vs-plsql.md](./docs/ADR/001-nodejs-vs-plsql.md)** | Por que Node.js ao invés de PL/SQL |

---

## 📁 Estrutura do Projeto

```
apex-cockpit/
│
├── 📄 README.md                   ← Visão geral
├── 📄 MASTER-README.md            ← Este arquivo
├── 📄 CONTRIBUTING.md             ← Guia de contribuição
├── 📄 GIT-WORKFLOW.md             ← Git/GitHub
├── 📄 .gitignore                  ← Arquivos ignorados
│
├── 📁 .github/
│   └── workflows/
│       └── auto-commit.yml        ← GitHub Actions (commit diário)
│
├── 📁 docs/                       ← Documentação Técnica
│   ├── ARCHITECTURE.md            ← Arquitetura geral
│   ├── CODE-STANDARDS.md          ← Padrões de código
│   ├── SETUP.md                   ← Setup inicial
│   ├── DEPLOY.md                  ← Deploy em produção
│   ├── API-ENGERISCO.md           ← API documentation
│   ├── TROUBLESHOOTING.md         ← Erros e soluções
│   └── ADR/                       ← Architecture Decision Records
│       └── 001-nodejs-vs-plsql.md
│
├── 📁 scripts/                    ← Automações
│   └── sincroniza-engerisco/
│       ├── README.md              ← Documentação do script
│       ├── package.json           ← Dependências Node.js
│       ├── cron-setup.md          ← Agendamento
│       ├── sincroniza-engerisco-v4.4-agendado.js     ← Script principal
│       └── sincroniza-engerisco-v4.4-comentado.js    ← Script comentado
│
├── 📁 sql/                        ← Scripts SQL
│   ├── README.md
│   ├── procedures/
│   ├── views/
│   └── tables/
│
└── 📁 apex/                       ← Oracle APEX
    ├── README.md
    ├── app-128150-cockpit-logistica/
    └── app-145697-cadastro-usuarios/
```

---

## 🎯 Fluxo de Trabalho Recomendado

### Para Nova Feature

```bash
# 1. Atualizar main
git checkout main
git pull origin main

# 2. Criar branch
git checkout -b feature/descricao-clara

# 3. Fazer mudanças
vim arquivo.js
npm install  # se necessário

# 4. Testar localmente
node sincroniza-engerisco-v4.4-agendado.js uma-vez

# 5. Adicionar documentação
vim docs/SETUP.md

# 6. Commit com mensagem clara
git add .
git commit -m "feat: adicionar sincronização de alertas"

# 7. Push
git push origin feature/descricao-clara

# 8. Criar Pull Request no GitHub
# Siga template em CONTRIBUTING.md
```

---

## ⚙️ Setup Completo do Ambiente

### Pré-requisitos

```bash
# Verificar Git
git --version

# Verificar Node.js (v16+)
node --version

# Verificar npm
npm --version
```

### Configuração Inicial

```bash
# 1. Clone
git clone https://github.com/MatheusCampioto/apex-cockpit.git
cd apex-cockpit

# 2. Instalar dependências
cd scripts/sincroniza-engerisco
npm install

# 3. Configurar credenciais (.env)
echo 'ORACLE_USER=ARTONE' > .env
echo 'ORACLE_PASSWORD=sua_senha' >> .env

# 4. Testar conexão
node sincroniza-engerisco-v4.4-agendado.js uma-vez

# 5. Ler documentação
cd ../..
cat CONTRIBUTING.md
cat docs/ARCHITECTURE.md
```

### Agendamento (Produção)

**Windows:**
```bash
# Ver docs/cron-setup.md
# Task Scheduler a cada 10 minutos
```

**Linux:**
```bash
crontab -e
# */10 * * * * /usr/bin/node /path/sincroniza-engerisco-v4.4-agendado.js agendado
```

---

## 🤖 GitHub Actions (Automação)

**Arquivo:** `.github/workflows/auto-commit.yml`

**O que faz:**
- ✅ Roda todo dia às 23:59 UTC
- ✅ Faz commit automático de mudanças
- ✅ Valida estrutura do repositório
- ✅ Push para main

**Desativar:**
- Renomear arquivo
- Ou mergear `[skip ci]` em commits

---

## 🧪 Testes

### Script Sincronização

```bash
# Teste manual
cd scripts/sincroniza-engerisco
node sincroniza-engerisco-v4.4-agendado.js uma-vez

# Checklist
- [ ] Conecta na API Engerisco
- [ ] Busca motoristas
- [ ] Insere no BD
- [ ] Registra log
- [ ] Sem erros
```

### SQL/Oracle

```bash
# Teste de conexão
sqlplus ARTONE/senha@10.130.57.55:1521/XEPDB1

# Verificar sincronização
SELECT * FROM DAB_SISPETRO_SYNC_LOG 
ORDER BY CREATED_AT DESC FETCH FIRST 5 ROWS ONLY;
```

### APEX

```
1. Acesse https://oracleapex.com.br/ords/
2. Abra App 128150 (Cockpit)
3. Verifique dashboard com dados
4. Teste formulários
```

---

## 🐛 Troubleshooting Rápido

| Problema | Solução |
|----------|---------|
| `Cannot find module 'oracledb'` | `npm install` |
| `ORA-12514: TNS:listener could not resolve` | Verificar conexão BD |
| `ECONNREFUSED` na API | Testar `ping integra.engeriscogr.com.br` |
| Git merge conflict | Ver [GIT-WORKFLOW.md](./GIT-WORKFLOW.md#merge-conflict) |

**Para mais:** [docs/TROUBLESHOOTING.md](./docs/TROUBLESHOOTING.md)

---

## 📊 Arquitetura em 30 Segundos

```
APEX (Usuário)
    ↓
Oracle BD (Dados centralizados)
    ↑
Node.js Script (Sincroniza)
    ↑
API Engerisco (Motoristas, Posições, Cargas)
```

**Detalhes:** [docs/ARCHITECTURE.md](./docs/ARCHITECTURE.md)

---

## 🔒 Segurança

**NUNCA commitar:**
- Senhas
- Chaves de API
- Credenciais

**Usar:**
- `.env` (gitignored)
- Variáveis de ambiente
- GitHub Secrets (se usar CI/CD)

**Ver:** `.gitignore`

---

## 📞 Contato & Support

- **Desenvolvedor:** Matheus Campioto
- **GitHub:** @MatheusCampioto
- **Issues:** GitHub Issues no repositório

**Emergência:**
- Ver [TROUBLESHOOTING.md](./docs/TROUBLESHOOTING.md)
- Checar logs: `DAB_SISPETRO_SYNC_LOG`

---

## ✅ Checklist Antes de Pushar

- [ ] Leu [CONTRIBUTING.md](./CONTRIBUTING.md)
- [ ] Código formatado ([CODE-STANDARDS.md](./docs/CODE-STANDARDS.md))
- [ ] Sem credenciais hardcoded
- [ ] Documentação atualizada
- [ ] Testes passando
- [ ] Commit message clara
- [ ] Branch atualizada com `main`

---

## 🎓 Próximos Passos

1. **Novo dev?**
   - Leia [docs/SETUP.md](./docs/SETUP.md)

2. **Vai contribuir?**
   - Leia [CONTRIBUTING.md](./CONTRIBUTING.md)

3. **Quer entender arquitetura?**
   - Leia [docs/ARCHITECTURE.md](./docs/ARCHITECTURE.md)

4. **Implementando feature?**
   - Siga [docs/CODE-STANDARDS.md](./docs/CODE-STANDARDS.md)

5. **Deploy?**
   - Veja [docs/DEPLOY.md](./docs/DEPLOY.md)

---

## 📈 Roadmap

- [x] Script sincronização (v4.4)
- [x] Documentação técnica
- [x] GitHub Actions
- [ ] Testes automatizados
- [ ] Monitoramento em tempo real
- [ ] Alertas automáticos

---

**Última atualização:** 06/08/2026  
**Versão:** 2.0 (Profissional)  
**Status:** ✅ Produção
