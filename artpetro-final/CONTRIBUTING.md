# 🤝 Contribuindo com ArtPetro

Obrigado por querer contribuir! Este documento explica como fazer isso.

---

## 📋 Índice

1. [Configuração](#configuração)
2. [Branch Workflow](#branch-workflow)
3. [Commits](#commits)
4. [Pull Requests](#pull-requests)
5. [Código & Documentação](#código--documentação)
6. [Testing](#testing)

---

## 🛠️ Configuração

### Pré-requisitos

```bash
git --version           # v2.0+
node --version          # v16+
npm --version           # v8+
```

### Clonar Repositório

```bash
git clone https://github.com/MatheusCampioto/apex-cockpit.git
cd apex-cockpit
```

### Instalar Dependências

```bash
# Scripts Node.js
cd scripts/sincroniza-engerisco
npm install

# Volta pra root
cd ../..
```

### Configurar Git

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu_email@example.com"
```

---

## 🌿 Branch Workflow

### Branches Padrão

```
main
├── feature/nova-funcionalidade
├── fix/correcao-bug
├── docs/melhorias-documentacao
└── refactor/refatoracao-codigo
```

### Criar Nova Branch

```bash
# Atualize main primeiro
git checkout main
git pull origin main

# Crie nova branch
git checkout -b tipo/descricao-breve

# Exemplos válidos:
git checkout -b feature/adicionar-alerta-posicao
git checkout -b fix/corrigir-timezone-posicoes
git checkout -b docs/melhorar-troubleshooting
git checkout -b refactor/simplificar-sync-script
```

### Tipos de Branch

- `feature/` - Nova funcionalidade
- `fix/` - Correção de bug
- `docs/` - Documentação
- `refactor/` - Refatoração de código
- `perf/` - Melhoria de performance

---

## 📝 Commits

### Formato de Mensagem

```
<tipo>: <descrição breve>

<descrição longa - opcional>

<footer - opcional>
```

### Tipos de Commit

```
feat:       Nova feature
fix:        Correção de bug
docs:       Documentação
style:      Formatação (sem mudança de lógica)
refactor:   Refatoração de código
perf:       Melhoria de performance
test:       Adicionar testes
chore:      Atualizar dependências, config
ci:         Mudanças em CI/CD
```

### Exemplos Bons

```bash
git commit -m "feat: adicionar alerta de carga sem motorista"
git commit -m "fix: corrigir parsing de timestamp Engerisco"
git commit -m "docs: melhorar instruções de setup"
git commit -m "refactor: simplificar lógica de validação"
git commit -m "perf: otimizar query VW_COCKPIT_CARDS"
```

### Exemplos Ruins

```bash
git commit -m "fix"
git commit -m "atualizado"
git commit -m "mudanças várias"
git commit -m "WIP"
```

### Mensagens Multi-linha

```bash
git commit -m "feat: adicionar sincronização de alertas

- Implementar push de alertas críticos
- Adicionar retry automático
- Incluir logging estruturado

Fixes #123"
```

---

## 🔀 Pull Requests

### Criar PR

1. **Push sua branch:**
   ```bash
   git push origin feature/sua-feature
   ```

2. **No GitHub:**
   - Clique "Compare & pull request"
   - Preencha título e descrição
   - Selecione reviewers
   - Clique "Create pull request"

### Template de PR

```markdown
## 📋 Descrição
Breve descrição do que foi feito.

## 🎯 Objetivo
Por que essa mudança era necessária?

## ✅ Checklist
- [ ] Código testado localmente
- [ ] Documentação atualizada
- [ ] Sem quebra de compatibilidade
- [ ] Commits com mensagens claras

## 🔗 Links
Relacionado a issue #123
```

### Revisar PR

```bash
# Clonar branch do PR localmente
git fetch origin pull/ID/head:local-branch
git checkout local-branch

# Testar localmente
npm install
npm test

# Voltar pra main
git checkout main
git branch -D local-branch
```

---

## 💻 Código & Documentação

### Padrões de Código

#### JavaScript/Node.js

```javascript
/**
 * Sincroniza motoristas da API Engerisco
 * @param {string} cpf - CPF do motorista
 * @returns {Promise<Object>} Dados do motorista
 * @throws {Error} Se falhar na API ou BD
 */
async function sincronizarMotorista(cpf) {
  try {
    // Validar entrada
    if (!cpf || cpf.length !== 11) {
      throw new Error('CPF inválido');
    }

    // Chamar API
    const response = await axios.get(`${API_URL}/"GetMotorista"?CPF=${cpf}`);
    
    // Tratar resposta
    if (response.data.CodErro !== 0) {
      throw new Error(`API Error: ${response.data.MsgErro}`);
    }

    // Inserir no BD
    await inserirMotorista(response.data.Result);
    
    return response.data.Result;
  } catch (error) {
    console.error('Erro em sincronizarMotorista:', error.message);
    registrarLog('MOTORISTAS', 'FALHA', 0, error.message);
    throw error;
  }
}
```

#### SQL/PL/SQL

```sql
-- Criar view de KPIs
-- Autor: Matheus Campioto
-- Data: 2026-08-06
-- Descrição: Agrega dados para dashboard do cockpit

CREATE OR REPLACE VIEW VW_COCKPIT_CARDS AS
SELECT 
  -- Total de motoristas ativos
  (SELECT COUNT(*) FROM motoristas WHERE status = 'ATIVO') as total_motoristas,
  
  -- Total de veículos
  (SELECT COUNT(*) FROM veiculos) as total_veiculos,
  
  -- Cargas em andamento
  (SELECT COUNT(*) FROM programacao_cargas WHERE status = 'EM_ANDAMENTO') as cargas_andamento
FROM dual;
```

### Documentação

**Para cada feature, adicione:**

1. **README na pasta**
   ```
   /feature/README.md
   ```

2. **Comentários no código**
   - Explicar o "porquê", não o "o quê"
   - Destacar partes complexas

3. **Documentação técnica**
   - Fluxogramas se necessário
   - Exemplos de uso

4. **Atualizar docs principais**
   - [ARCHITECTURE.md](docs/ARCHITECTURE.md)
   - [API.md](docs/API.md)
   - [TROUBLESHOOTING.md](docs/TROUBLESHOOTING.md)

---

## 🧪 Testing

### Testar Localmente

```bash
# Scripts Node.js
cd scripts/sincroniza-engerisco
npm install
node sincroniza-engerisco-v4.4-agendado.js uma-vez

# SQL
sqlplus ARTONE/senha@BD << EOF
  @/seu/script.sql
EOF

# APEX
# Abrir em navegador e testar funcionalidades
```

### Checklist Antes de Push

- [ ] Código rodando localmente
- [ ] Documentação atualizada
- [ ] Sem console.log ou debug code
- [ ] Sem credenciais commitadas
- [ ] Mensagens de commit claras
- [ ] Branch atualizada com main

---

## 🚀 Fluxo Completo de Contribuição

```bash
# 1. Atualizar main
git checkout main
git pull origin main

# 2. Criar branch
git checkout -b feature/minha-feature

# 3. Fazer mudanças
vim arquivo.js
# ... editar, testar ...

# 4. Adicionar e commitar
git add .
git commit -m "feat: descrição clara"

# 5. Push
git push origin feature/minha-feature

# 6. Criar PR no GitHub
# ... preencher template ...

# 7. Aguardar review
# ... fazer ajustes se pedido ...

# 8. Merge
# Quando aprovado, clique "Merge pull request"

# 9. Limpar local
git checkout main
git pull origin main
git branch -d feature/minha-feature
```

---

## 📚 Referências

- [GIT-WORKFLOW.md](GIT-WORKFLOW.md) - Como usar Git
- [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md) - Arquitetura
- [docs/DEPLOY.md](docs/DEPLOY.md) - Como fazer deploy

---

## ❓ Dúvidas?

Abra uma Issue ou entre em contato!

---

**Obrigado por contribuir!** 🎉
