# ADR 001: Usar Node.js para Sincronização ao invés de PL/SQL

**Status:** ✅ ACEITO (Implementado)  
**Data:** 06/08/2026  
**Decisão:** Node.js com Axios  
**Contexto:** Sincronização com API Engerisco

---

## 📋 Problema

Precisamos sincronizar dados da API Engerisco com o banco Oracle em tempo real.

**Duas opções iniciais:**

1. **PL/SQL + Procedures** - Nativa do Oracle
2. **Node.js + Axios** - Linguagem de aplicação

---

## 🤔 Análise

### Opção 1: PL/SQL

**Prós:**
- ✅ Nativa do Oracle
- ✅ Acesso direto ao BD
- ✅ Sem dependências externas
- ✅ Sem overhead de conexão

**Contras:**
- ❌ Suporte SSL/TLS limitado
- ❌ Curva de aprendizado maior
- ❌ Debug difícil
- ❌ Erro ORA-29273 (SSL não funciona bem)
- ❌ Menos flexível

### Opção 2: Node.js

**Prós:**
- ✅ Suporte nativo a HTTPS/SSL
- ✅ Bibliotecas ricas (axios, etc)
- ✅ Debug e logs simples
- ✅ Ecossistema grande
- ✅ Fácil de manter

**Contras:**
- ⚠️ Dependência externa (Node.js)
- ⚠️ Overhead de conexão BD
- ⚠️ Requer agendador (cron, Task Scheduler)

---

## ✅ Decisão

**Usar Node.js + Axios**

### Justificativa

1. **Problema imediato:** Tentamos PL/SQL mas `ORA-29273` bloqueava SSL
2. **Pragmatismo:** Node.js resolveu o problema em 2 horas
3. **Maintenance:** Código JS é mais fácil de debugar/atualizar
4. **Escalabilidade:** Pode crescer para outras integrações

---

## 🏗️ Implementação

### Stack

```
Node.js v16+
├── oracledb (Driver Oracle)
├── axios (HTTP client)
└── node-schedule (Agendador)
```

### Arquitetura

```
API Engerisco
    ↓
Node.js Script (sincroniza-engerisco.js)
    ├── Conecta na API
    ├── Transforma dados
    ├── Valida
    └─→ Insere no Oracle
        └─→ Registra log
```

### Agendamento

- **Windows:** Task Scheduler (a cada 10 min)
- **Linux:** CRON (a cada 10 min)
- **Nuvem:** GitHub Actions (opcional)

---

## 🔄 Consequências

### Positivas
- ✅ Sincronização funcionando 100%
- ✅ API integrada com sucesso
- ✅ Logs estruturados
- ✅ Fácil maintenance

### Negativas
- ⚠️ Dependência do Node.js no servidor
- ⚠️ Script deve estar sempre rodando
- ⚠️ Monitoramento necessário

### Mitigação
- ✅ GitHub Actions para auto-restart
- ✅ Logs completos em DAB_SISPETRO_SYNC_LOG
- ✅ Alertas de falha implementáveis

---

## 🔗 Links

- [scripts/sincroniza-engerisco/](../../scripts/sincroniza-engerisco/)
- [docs/DEPLOY.md](../DEPLOY.md)
- [docs/TROUBLESHOOTING.md](../TROUBLESHOOTING.md)

---

## 📝 Próximas Avaliações

- Considerar migração para serverless (AWS Lambda) se volume crescer
- Avaliar alternativas (Go, Python) se performance ficar crítica

---

**Decisão tomada por:** Matheus Campioto  
**Revisada em:** 06/08/2026
