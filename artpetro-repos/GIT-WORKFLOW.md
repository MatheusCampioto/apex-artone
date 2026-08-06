# 🔄 Git Workflow - Como Usar GitHub

Instruções passo a passo para usar Git e enviar (push) seus arquivos para GitHub.

---

## 📋 Pré-requisitos

- Git instalado no seu PC
- Conta GitHub criada
- SSH key ou Personal Access Token configurado

---

## 🚀 Primeiro Uso (Setup Inicial)

### 1. Clonar o Repositório

```bash
git clone https://github.com/MatheusCampioto/apex-cockpit.git
cd apex-cockpit
```

### 2. Configurar Git (primeira vez apenas)

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu_email@example.com"
```

---

## 💾 Workflow Diário

### Passo 1: Trazer Atualizações (Pull)

Sempre comece atualizando seu repositório local:

```bash
git pull origin main
```

Isso baixa qualquer mudança que alguém mais fez.

### Passo 2: Fazer Suas Mudanças

Edite, crie ou delete arquivos normalmente.

### Passo 3: Ver Status

```bash
git status
```

Mostra:
- Arquivos novos (untracked)
- Arquivos modificados
- Arquivos deletados

### Passo 4: Adicionar Arquivos para Commit

**Adicionar arquivo específico:**
```bash
git add scripts/sincroniza-engerisco/script.js
```

**Adicionar tudo:**
```bash
git add .
```

**Adicionar apenas um tipo de arquivo:**
```bash
git add docs/*.md
```

### Passo 5: Fazer Commit

```bash
git commit -m "Descrição clara do que você mudou"
```

**Boas práticas de mensagem:**

❌ Ruim:
```
git commit -m "fix"
git commit -m "updated stuff"
```

✅ Bom:
```
git commit -m "Fix: Sincronização de posições a cada 10 minutos"
git commit -m "Feat: Adicionar documentação de troubleshooting"
git commit -m "Docs: Atualizar README com instruções de deploy"
```

**Formatos:**
- `Feat:` Novo recurso
- `Fix:` Correção de bug
- `Docs:` Mudanças em documentação
- `Refactor:` Reorganizar código
- `Style:` Formatação
- `Test:` Testes

### Passo 6: Enviar para GitHub (Push)

```bash
git push origin main
```

Pronto! Seus arquivos estão no GitHub! 🎉

---

## 📊 Fluxo Completo (Exemplo Real)

```bash
# 1. Atualizar
git pull origin main

# 2. Fazer mudanças
vim scripts/sincroniza-engerisco/README.md

# 3. Ver o que mudou
git status
git diff scripts/sincroniza-engerisco/README.md

# 4. Adicionar
git add scripts/sincroniza-engerisco/README.md

# 5. Commit
git commit -m "Docs: Melhorar instruções de CRON no README"

# 6. Push
git push origin main
```

---

## 🔀 Branches (Usar em Equipe)

**Branch atual:**
```bash
git branch
```

**Criar nova branch:**
```bash
git checkout -b feature/meu-novo-recurso
```

**Trabalhar nela:**
```bash
git add .
git commit -m "Feat: Novo recurso XYZ"
```

**Enviar branch:**
```bash
git push origin feature/meu-novo-recurso
```

**Depois fazer Pull Request no GitHub** (botão "New Pull Request")

**Voltar pra main:**
```bash
git checkout main
```

---

## 🐛 Desfazer Mudanças

### Desfazer mudanças em um arquivo (antes de commit)

```bash
git checkout -- arquivo.txt
```

### Desfazer último commit (mantendo mudanças)

```bash
git reset --soft HEAD~1
```

### Desfazer último commit (perdendo mudanças)

```bash
git reset --hard HEAD~1
```

### Ver histórico

```bash
git log --oneline
```

---

## 🔐 NÃO COMMITAR ESTES ARQUIVOS

Já estão em `.gitignore`, mas tome cuidado:

- ❌ `.env` (senhas, credenciais)
- ❌ `node_modules/` (bibliotecas)
- ❌ `package-lock.json` (às vezes)
- ❌ Arquivos com senha
- ❌ Logs pessoais
- ❌ Arquivos de sistema (`.DS_Store`, `Thumbs.db`)

Se acidentalmente adicionou algo sensível:

```bash
git rm --cached arquivo.env
git commit -m "Remove: Arquivo com credenciais"
git push origin main
```

---

## 📝 Exemplo de Arquivos para Commitar

✅ OK pra fazer commit:
```
- Código (.js, .sql, .html, .css)
- Documentação (.md)
- Arquivos de config (package.json, .gitignore)
- Imagens/diagramas
- Scripts
```

❌ NÃO fazer commit:
```
- Senhas ou credenciais
- node_modules/
- .env
- Logs
- Arquivos temporários
```

---

## 🤝 Colaboração em Equipe

### 1. Pull antes de começar

```bash
git pull origin main
```

### 2. Trabalhe em uma branch

```bash
git checkout -b feature/nova-funcionalidade
```

### 3. Faça commits pequenos e frequentes

```bash
git commit -m "Feat: Parte 1 - Criar tabela"
git commit -m "Feat: Parte 2 - Adicionar validações"
```

### 4. Push regular

```bash
git push origin feature/nova-funcionalidade
```

### 5. Pull Request no GitHub

- Vá no GitHub
- Clique "Compare & pull request"
- Descreva as mudanças
- Aguarde revisão
- Merge quando aprovado

### 6. Voltar pra main

```bash
git pull origin main
git checkout main
```

---

## 📞 Comandos Úteis

| Comando | O Que Faz |
|---------|-----------|
| `git status` | Mostra status atual |
| `git log` | Histórico de commits |
| `git diff` | Mudanças não commitadas |
| `git branch` | Lista branches |
| `git pull` | Baixa mudanças remotas |
| `git push` | Envia mudanças locais |
| `git commit -am "msg"` | Add + commit tudo |
| `git checkout -b nome` | Cria nova branch |
| `git merge branch` | Mescla branch |

---

## 🚨 Erros Comuns

### "Permission denied (publickey)"

Você precisa configurar SSH key:

```bash
ssh-keygen -t rsa -b 4096 -C "seu_email@example.com"
cat ~/.ssh/id_rsa.pub
```

Copie a saída e adicione em GitHub → Settings → SSH Keys

### "fatal: not a git repository"

Você está fora da pasta do repositório. Entre:

```bash
cd /caminho/do/apex-cockpit
```

### "Your branch is ahead of 'origin/main'"

Push suas mudanças:

```bash
git push origin main
```

### "Merge conflict"

Dois commits diferentes no mesmo arquivo. Edite manualmente, depois:

```bash
git add arquivo_conflitante.txt
git commit -m "Resolve: Conflito de merge"
git push origin main
```

---

## 📚 Referências

- [Documentação Git](https://git-scm.com/doc)
- [GitHub Help](https://docs.github.com)
- [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)

---

**Última atualização:** 06/08/2026
