# ⏰ Agendamento - Windows & Linux

Como agendar o script para rodar automaticamente a cada 10 minutos.

---

## 🪟 Windows Task Scheduler

### Passo 1: Abrir Task Scheduler

```
Win + R → taskschd.msc → Enter
```

### Passo 2: Criar Nova Tarefa

1. Menu "Ação" → "Criar Tarefa..."
2. **Aba "Geral":**
   - Nome: `Sincronização Engerisco`
   - ✅ Marcar: "Executar com privilégios mais altos"

### Passo 3: Disparadores

1. Clique em **"Disparadores"**
2. Clique em **"Novo..."**
3. Configure:
   - "Iniciar a tarefa:" → **Diário**
   - "Repetir a tarefa a cada:" → **10 minutos**
   - "Habilitar" → ✅ Marcado

### Passo 4: Ações

1. Clique em **"Ações"**
2. Clique em **"Novo..."**
3. Configure:
   - **Programa/script:** `node`
   - **Argumentos:** `C:\caminho\do\seu\projeto\sincroniza-engerisco-v4.4-agendado.js agendado`
   - **Iniciar em:** `C:\caminho\do\seu\projeto`

### Passo 5: Condições & Configurações

Deixe as opções padrão (já estão boas).

### Passo 6: Finalizar

Clique **"OK"**. Pronto! ✅

---

## 🐧 Linux com CRON

### Passo 1: Abrir Crontab

```bash
crontab -e
```

Vai abrir um editor (vim, nano, etc).

### Passo 2: Adicionar a Linha

No final do arquivo, adicione:

```bash
*/10 * * * * /usr/bin/node /caminho/do/seu/projeto/sincroniza-engerisco-v4.4-agendado.js agendado >> /var/log/engerisco-sync.log 2>&1
```

**Ajustar:**
- `/caminho/do/seu/projeto` → seu diretório real
- `/var/log/engerisco-sync.log` → onde quer salvar logs (ou `/dev/null` para ignorar)

### Passo 3: Salvar

- **Vim:** `:wq` → Enter
- **Nano:** Ctrl+O → Enter → Ctrl+X

### Passo 4: Verificar

```bash
crontab -l
```

Deve aparecer a linha que você acabou de adicionar.

---

## 🧪 Variações de Frequência

Se preferir outro intervalo, altere o `*/10`:

```bash
# A cada 5 minutos
*/5 * * * * /usr/bin/node /caminho/sincroniza-engerisco-v4.4-agendado.js agendado >> /var/log/sync.log 2>&1

# A cada 15 minutos
*/15 * * * * /usr/bin/node /caminho/sincroniza-engerisco-v4.4-agendado.js agendado >> /var/log/sync.log 2>&1

# A cada 30 minutos
*/30 * * * * /usr/bin/node /caminho/sincroniza-engerisco-v4.4-agendado.js agendado >> /var/log/sync.log 2>&1

# Uma vez por hora (no minuto 0)
0 * * * * /usr/bin/node /caminho/sincroniza-engerisco-v4.4-agendado.js agendado >> /var/log/sync.log 2>&1

# Todos os dias às 10:00
0 10 * * * /usr/bin/node /caminho/sincroniza-engerisco-v4.4-agendado.js agendado >> /var/log/sync.log 2>&1
```

---

## ✅ Verificar se Está Rodando

### Windows

1. Abra **Event Viewer** → `Win + R → eventvwr.msc`
2. Vá em "Windows Logs" → "System"
3. Procure por "Task Scheduler" e verifique os registros

Ou rode manualmente para testar:
```bash
node sincroniza-engerisco-v4.4-agendado.js uma-vez
```

### Linux

Ver logs em tempo real:
```bash
tail -f /var/log/engerisco-sync.log
```

Verificar se CRON está ativo:
```bash
crontab -l
```

Verificar histórico de execuções:
```bash
grep CRON /var/log/syslog
```

---

## 🐛 Troubleshooting

### "Node not found" no Windows

Caminho completo do node:
```bash
where node
```

Copie o resultado (ex: `C:\Program Files\nodejs\node.exe`) e use em vez de só `node`.

### "Command not found" no Linux

```bash
which node
```

Use o caminho completo no CRON.

### Verificar se o script tem permissão de execução (Linux)

```bash
chmod +x sincroniza-engerisco-v4.4-agendado.js
```

### Testar o CRON com um intervalo curto

Para testar, use `*/1` (a cada 1 minuto) por 10 minutos, depois volte pra `*/10`:

```bash
crontab -e
# Adicione: */1 * * * * /usr/bin/node /caminho/sincroniza-engerisco-v4.4-agendado.js agendado >> /var/log/sync.log 2>&1
# Aguarde 10 minutos
# Depois edite novamente e volta pra */10
```

---

## 📝 Notas Importantes

1. **Caminho completo:** Sempre use caminhos absolutos (completos), não relativos
2. **Node.js:** Certifique-se de que o caminho do node está correto
3. **Permissões:** Linux precisa de permissão de execução
4. **Logs:** Configure onde quer que os logs sejam salvos
5. **Redirecionamento:** `>> arquivo.log 2>&1` captura stdout e stderr

---

**Última atualização:** 06/08/2026
