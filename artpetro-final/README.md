# ArtPetro - Cockpit de Logística & Projetos

Centralização de operações, códigos e documentação de projetos da ArtPetro.

## 📋 Projetos

### 🚀 [Cockpit de Logística](./apex/app-128150-cockpit-logistica/)
Dashboard Oracle APEX para gerenciamento de logística em tempo real.
- **App ID:** 128150
- **Status:** Em produção
- **Dados:** Motoristas, Posições GPS, Cargas
- **Integração:** API Engerisco (sincronização a cada 10 min)
- 
---

## 🔄 Sincronizações Automáticas

### [Sincronização Engerisco](./scripts/sincroniza-engerisco/)
Script Node.js que sincroniza dados da API Engerisco com o banco Oracle.

**Status:** ✅ Ativo e operacional

**O que sincroniza:**
- 📍 Posições (GPS dos motoristas)
- 👤 Motoristas
- 📦 Cargas/Programação

**Frequência:** A cada 10 minutos  
**Banco:** Oracle ARTONE @ 10.130.57.55:1521/XEPDB1  
**Logs:** Tabela `DAB_SISPETRO_SYNC_LOG`

---

## 📁 Estrutura do Repositório

```
apex-cockpit/
├── /scripts              → Scripts de automação (Node.js, Python, etc)
├── /sql                  → Procedures PL/SQL, Views, Tabelas
├── /apex                 → Código e documentação Oracle APEX
├── /docs                 → Documentação geral
├── /nexerp               → Referência ao projeto NexERP
└── README.md             → Este arquivo
```

---

## 🚀 Quick Start

### Para desenvolvedores

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/MatheusCampioto/apex-cockpit.git
   cd apex-cockpit
   ```

2. **Leia a documentação:**
   - [SETUP.md](./docs/SETUP.md) - Configuração inicial
   - [DEPLOY.md](./docs/DEPLOY.md) - Como fazer deploy

3. **Escolha seu projeto:**
   - APEX? Acesse `./apex/`
   - Scripts? Acesse `./scripts/`
   - SQL? Acesse `./sql/`

---

## 📞 Contato & Suporte

- **Desenvolvedor:** Matheus Campioto
- **GitHub:** [@MatheusCampioto](https://github.com/MatheusCampioto)
- **Email/Suporte:** Ver documentação específica em `/docs`

---

## 📝 Licença

Projeto interno - ArtPetro

---

## 🔐 Credenciais & Segurança

**NUNCA commitar credenciais!**
- Senhas do banco
- Chaves de API
- Tokens
- Dados sensíveis

Ver `.gitignore` para arquivos excluídos.

---

**Última atualização:** 06/08/2026  
**Versão:** 1.0
