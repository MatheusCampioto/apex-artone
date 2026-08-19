# Como Contribuir

Guia pra desenvolvimento neste repositório.

## ⚡ Regra de Ouro

**Tudo em produção?**
- Teste localmente ou em staging antes de fazer push
- Sempre cria branch feature/bugfix, NUNCA commita direto em main
- Escreve commits descritivos
- Se quebrar algo, volta com git revert

## 🌳 Estratégia de Branches
main ← Produção (sempre estável, tagged)
↑
develop ← Integração (PRs convergem aqui)
↑
feature/* ← Sua feature nova
bugfix/* ← Correção de bug
hotfix/* ← Emergência (apenas direto em main se crítico)


## 📝 Fluxo de Trabalho

### 1. Começa uma tarefa

```bash
# Atualiza develop
git checkout develop
git pull origin develop

# Cria branch pra sua tarefa
git checkout -b feature/nome-descritivo
# ou
git checkout -b bugfix/nome-descritivo
```

**Exemplos bons:**
- `feature/spinner-botao-disparar`
- `bugfix/bruna-unauthorized-dispatch`
- `bugfix/sp-registrar-alerta-n-plus-1`

**Exemplos ruins:**
- `feature/novo`
- `fix/bug`
- `feature/teste`

### 2. Desenvolve

```bash
# Faz suas mudanças
# ...

# Commit com mensagem descritiva
git commit -m "feat: adiciona spinner no botão disparar alertas"
```

**Formato de commit:**

<tipo>(<escopo>): <mensagem curta>

<descrição opcional - explica o POR QUÊ>

<referência de issue - closes #123>


**Tipos válidos:**
- `feat:` Nova feature
- `fix:` Correção de bug
- `docs:` Documentação
- `refactor:` Mudança de código sem adicionar feature
- `test:` Adição de testes
- `chore:` Tarefas de manutenção

### 3. Publica e abre PR

```bash
git push -u origin feature/nome-descritivo
```

Depois, no GitHub:
1. Clica em "Pull Requests"
2. Clica "New Pull Request"
3. Base: `develop`, Compare: `feature/seu-branch`
4. Descreve o que fez
5. Clica "Create Pull Request"

### 4. Review + Merge

Depois que testar e validar:
```bash
git checkout develop
git merge feature/seu-branch
git push origin develop
```

Depois, quando tiver múltiplas features testadas:
```bash
git checkout main
git merge develop
git tag v1.2.3
git push origin main --tags
```

## 🧪 Antes de fazer commit

- [ ] Testou a mudança? (localmente ou no servidor)
- [ ] A mensagem de commit é clara?
- [ ] Não commitou `.env` ou arquivos sensíveis?
- [ ] Atualizou documentação se necessário?

## 🐛 Encontrou um bug?

1. Abre uma Issue no GitHub (menu "Issues")
2. Descreve:
   - O que aconteceu
   - O que deveria acontecer
   - Steps pra reproduzir
   - Screenshot (se possível)

3. Cria branch `bugfix/nome-bug`
4. Corrige
5. Abre PR linkando a issue: `closes #123`

## 📚 Documentação

Se mudou comportamento ou adicionou feature:
- Atualiza o README.md
- Atualiza o arquivo relevante em `docs/`
- Deixa claro no commit

## ❓ Dúvidas?

Abre uma Issue ou vê o [README](README.md).

---

Obrigado por contribuir! 🚀
