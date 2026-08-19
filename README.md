# ArtOne - Oracle APEX Cockpit Logística

**Status:** Em produção  
**Versão Atual:** v1.0.0  
**Última Atualização:** 19/08/2026  

## O que é?

Sistema APEX de gestão de logística para ArtPetro. Integra dados de Sispetro (SQL Anywhere) com Engerisco (API externa).

### Componentes

- **Application 100** - Dashboard
- **Scripts Node.js:**
  - sincroniza-engerisco (a cada 30 min)
  - server-email (alertas por email)
  - server-whatsapp (alertas por WhatsApp)

## Setup Rápido

Veja [SETUP.md](docs/SETUP.md)

## Desenvolvimento

Veja [CONTRIBUTING.md](CONTRIBUTING.md)

## Documentação

- [Arquitetura](docs/ARQUITETURA.md)
- [Fluxo de Alertas](docs/FLUXO_ALERTAS.md)
- [Permissões e Controle de Acesso](docs/PERMISSOES.md)
- [Troubleshooting](docs/TROUBLESHOOTING.md)

## Status Conhecidos

### 🔴 Crítico (Resolver HOJE)
- [ ] Autorização: Bruna consegue disparar alertas sem permissão
- [ ] SP_REGISTRAR_ALERTA: N+1 queries + falta duplicidade em MANUAL

### 🟡 Importante (Próxima semana)
- [ ] Spinner no botão disparar
- [ ] Email real via SMTP
- [ ] WhatsApp real via WAHA

## Stack

- **APEX:** 26.1.0 (on-premise, 10.130.57.55:8080)
- **Database:** Oracle 21c XE
- **Node.js:** v18+ (scripts)
- **Authentication:** Custom (FN_AUTENTICAR_USUARIO)

## Contato

Matheus Campioto - Development

---

⚠️ **Atenção:** Este projeto está em produção. Qualquer mudança em `main` afeta usuários reais.
