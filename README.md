# ArtOne - Oracle APEX Cockpit Logística

**Status:** ✅ Produção  
**Versão Atual:** 1.0.0  
**Última Atualização:** 19/08/2026  
**Desenvolvedor:** Matheus Campioto  

## 📋 O que é?

Sistema APEX completo de gestão de logística para **ArtPetro** (distribuidora de combustíveis).

Integra três fontes de dados:
1. **SisPetro** (SQL Anywhere 17) — Pedidos, Ordens de Carregamento
2. **Engerisco** (API REST) — Rastreamento de veículos, localização, status de entrega
3. **ArtOne APEX** (Application Server) — Consolidação, alertas, permissões

### Componentes Principais

| App | Descrição | Status |
|-----|-----------|--------|
| **App 100** | CRUD de Usuários + Gerenciador de Acessos | Cockpit de Logística + Sistema de Alertas | ✅ Pronto |
| **Scripts Node.js** | Sincronizadores e notificadores | ⚠️ Em revisão |

## 🚀 Setup Rápido

Veja [docs/SETUP.md](docs/SETUP.md)

## 📚 Documentação

- **[Arquitetura](docs/ARQUITETURA.md)** — C4 Model, decisões técnicas
- **[Fluxo de Alertas](docs/FLUXO_ALERTAS.md)** — Como funciona disparo automático + manual
- **[Permissões](docs/PERMISSOES.md)** — Controle de acesso por módulo
- **[Troubleshooting](docs/TROUBLESHOOTING.md)** — Problemas conhecidos + soluções

## 🔴 Status Conhecidos

### Crítico (Resolver HOJE)
- ⚠️ Autorização: usuária Bruna consegue disparar alertas sem permissão
- ⚠️ SP_REGISTRAR_ALERTA: N+1 queries + falta duplicidade em disparo MANUAL

### Importante (Próxima semana)
- 🟡 Spinner visual no botão disparar alertas
- 🟡 Email real via SMTP (mockado atualmente)
- 🟡 WhatsApp real via WAHA (mockado atualmente)

## 💻 Stack

| Tecnologia | Versão | Uso |
|-----------|--------|-----|
| Oracle APEX | 26.1.0 | UI, aplicações |
| Oracle XE | 21c | Database |
| ORDS | 26.2.1 | API, integração |
| Node.js | 18+ | Scripts de sincronização |
| SQL Anywhere | 17 | SisPetro (fonte externa) |

**Servidor:** 10.130.57.55:8080 (on-premise)

## 🔐 Segurança

- Autenticação: Custom (FN_AUTENTICAR_USUARIO)
- Autorização: Por módulo (tabela USUARIO_MODULO_ACESSO)
- Permissões: Granulares por feature (DISPARAR_ALERTAS, etc)
- Senhas: Hash SHA com salt

⚠️ **Atenção:** Este repositório contém código em produção. Qualquer merge em `main` afeta usuários reais imediatamente.

## 👨‍💻 Desenvolvimento

Veja [CONTRIBUTING.md](CONTRIBUTING.md)

## 📞 Contato

**Matheus Campioto**  
- GitHub: [@MatheusCampioto](https://github.com/MatheusCampioto)
- Portfolio: [campiotodev.com.br](https://campiotodev.com.br)

---

Last updated: 2026-08-19
