# 📋 INSTRUÇÕES - Como Copiar para Seu PC

Siga **EXATAMENTE** esses passos:

---

## 🎯 Passo 1: Baixe o arquivo

Arquivo: **`artpetro-repos.zip`**

---

## 📂 Passo 2: Descompacte

**Windows:**
1. Clique com botão direito no arquivo → **"Extrair para..."**
2. Escolha uma pasta temporária (ex: Desktop)
3. Clique "Extrair"

Vai criar uma pasta: `artpetro-repos`

---

## 🔄 Passo 3: Copie para seu diretório final

**Caminho final:**
```
C:\Users\ArtGroup\Claude.Matheus\
```

**Faça assim:**

1. **Abra o Windows Explorer**
2. **Navegue para:** `C:\Users\ArtGroup\`
3. Se **NÃO EXISTIR** pasta `Claude.Matheus`, crie:
   - Clique direito → Novo → Pasta
   - Nome: `Claude.Matheus`

4. **Abra a pasta** `Claude.Matheus`

5. **Copie os arquivos descompactados:**
   - Abra a pasta `artpetro-repos` (onde descompactou)
   - Selecione TUDO (Ctrl+A)
   - Copie (Ctrl+C)
   - Cole em `C:\Users\ArtGroup\Claude.Matheus\` (Ctrl+V)

---

## ✅ Passo 4: Verifique

Deve aparecer em `C:\Users\ArtGroup\Claude.Matheus\`:

```
📄 README.md
📄 GIT-WORKFLOW.md
📄 .gitignore
📁 docs/
📁 scripts/
📁 sql/
📁 apex/
```
---

## 🚀 Passo 5: Git Push (Opcional)

Se quiser colocar no GitHub:

```bash
# Entre na pasta do repositório
cd C:\seu\caminho\apex-cockpit

# Copie os arquivos
cp -r C:\Users\ArtGroup\Claude.Matheus\* .

# Ou copie manualmente via Explorer

# Depois:
git add .
git commit -m "Docs: Estrutura completa ArtPetro"
git push origin main
```
## ⚠️ IMPORTANTE 
✅ **PASTA CORRETA** - `C:\Users\ArtGroup\Claude.Matheus\`  

