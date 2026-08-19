# 🚀 Deploy - Como Publicar no Servidor

Guia completo para fazer deploy dos scripts e código no servidor Linux.

---

## 📋 Pré-requisitos

- Acesso SSH ao servidor Linux
- Git instalado no servidor
- Node.js v16+ instalado no servidor
- Permissões de escrita no diretório de deploy
- Acesso ao banco Oracle remoto

---

## 🔄 Deploy do Script Sincronização Engerisco

### Opção 1: Clone via Git (Recomendado)

**Passo 1: SSH para o servidor**
```bash
ssh seu_usuario@seu_servidor
```

**Passo 2: Clonar repositório**
```bash
cd /opt
git clone https://github.com/MatheusCampioto/apex-cockpit.git
cd apex-cockpit
```

**Passo 3: Instalar dependências**
```bash
cd scripts/sincroniza-engerisco
npm install
```

**Passo 4: Testar execução**
```bash
node sincroniza-engerisco-v4.4-agendado.js uma-vez
```

**Passo 5: Agendar CRON**
```bash
crontab -e
```

Adicione:
```bash
*/10 * * * * /usr/bin/node /opt/apex-cockpit/scripts/sincroniza-engerisco/sincroniza-engerisco-v4.4-agendado.js agendado >> /var/log/engerisco-sync.log 2>&1
```

---

### Opção 2: Copiar Arquivos Manualmente

**Passo 1: Criar diretório**
```bash
mkdir -p /opt/engerisco-sync
cd /opt/engerisco-sync
```

**Passo 2: Copiar arquivos via SCP**

No seu PC local:
```bash
scp -r scripts/sincroniza-engerisco/* seu_usuario@seu_servidor:/opt/engerisco-sync/
```

**Passo 3: SSH para servidor e instalar**
```bash
ssh seu_usuario@seu_servidor
cd /opt/engerisco-sync
npm install
```

**Passo 4: Testar e agendar (igual à Opção 1)**

---

## 🌐 Deploy Oracle APEX

### Exportar Aplicações APEX

**No APEX local (Dev):**

1. Acesse https://oracleapex.com.br/ords/
2. Acesse o workspace
3. Vá na app (ex: App 128150)
4. Menu → Export
5. Salve em `/apex/backups/`

**No servidor (Produção):**

1. Acesse o APEX do servidor
2. Faça upload do arquivo exportado
3. Importe-o

---

## 📊 Deploy SQL (Procedures, Views, Tabelas)

### Executar scripts SQL

**Passo 1: Conectar ao BD**
```bash
sqlplus ARTONE@10.130.57.55:1521/XEPDB1
```

**Passo 2: Executar scripts**
```sql
@/opt/apex-cockpit/sql/procedures/seu_procedure.sql
@/opt/apex-cockpit/sql/views/sua_view.sql
```

Ou via arquivo:
```bash
sqlplus ARTONE/sua_senha@10.130.57.55:1521/XEPDB1 < /opt/apex-cockpit/sql/procedures/seu_procedure.sql
```

---

## ✅ Verificação Pós-Deploy

### Script Sincronização

```bash
# Ver se CRON está ativo
crontab -l

# Ver logs em tempo real
tail -f /var/log/engerisco-sync.log

# Ver últimas sincronizações no BD
sqlplus ARTONE/senha@10.130.57.55:1521/XEPDB1 << EOF
SELECT TABELA_SINCRONIZADA, STATUS_SINCRONIZACAO, CREATED_AT
FROM DAB_SISPETRO_SYNC_LOG 
ORDER BY CREATED_AT DESC
FETCH FIRST 5 ROWS ONLY;
EXIT;
EOF
```

### APEX

- Acesse a app em produção
- Verifique se os dados aparecem
- Teste as funcionalidades principais

### Banco de Dados

```sql
-- Verificar se procedures existem
SELECT OBJECT_NAME FROM USER_PROCEDURES WHERE OBJECT_NAME LIKE '%SINCRONIZA%';

-- Verificar views
SELECT VIEW_NAME FROM USER_VIEWS WHERE VIEW_NAME LIKE '%COCKPIT%';
```

---

## 🔄 Atualizar Deploy (Pull Updates)

Se você atualizou o código no repositório e quer atualizar no servidor:

```bash
cd /opt/apex-cockpit
git pull origin main

# Se atualizou dependências Node.js
cd scripts/sincroniza-engerisco
npm install

# Reiniciar CRON (já automático, mas pode forçar)
# Teste manualmente
node sincroniza-engerisco-v4.4-agendado.js uma-vez
```

---

## 🛡️ Rollback (Desfazer Deploy)

### Revert Git

```bash
cd /opt/apex-cockpit
git log --oneline  # Ver histórico
git revert <commit_id>
git push
```

### Parar CRON Temporariamente

```bash
crontab -e
# Comente a linha com #
# Ou remova
crontab -r  # Remove CRON inteiro
```

### Restaurar APEX anterior

Via backup na app APEX mesmo.

---

## 📝 Checklist de Deploy

- [ ] Código testado localmente
- [ ] Commit no GitHub
- [ ] Acesso SSH ao servidor confirmado
- [ ] Node.js instalado no servidor
- [ ] Git configurado no servidor
- [ ] Clone/cópia dos arquivos feita
- [ ] npm install executado
- [ ] Teste manual (uma-vez) funcionou
- [ ] CRON agendado e ativo
- [ ] Logs aparecendo corretamente
- [ ] Dados no banco atualizando
- [ ] APEX funcionando em produção
- [ ] Documentação atualizada

---

## 🚨 Troubleshooting Deploy

### "npm: command not found"
```bash
# Instalar Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
nvm install 16
nvm use 16
```

### "oracledb: cannot open shared object"
```bash
# Instalar dependências Oracle
sudo apt-get install libaio1  # Para Ubuntu/Debian
sudo yum install libaio       # Para CentOS/RHEL
```

### "CRON não está executando"
```bash
# Verificar se está realmente agendado
crontab -l

# Verificar logs
tail -f /var/log/cron   # CentOS
tail -f /var/log/syslog # Ubuntu

# Testar manualmente
bash -c '/usr/bin/node /opt/apex-cockpit/scripts/sincroniza-engerisco/sincroniza-engerisco-v4.4-agendado.js agendado'
```

### "Erro de conexão com BD"
```bash
# Testar conectividade
ping 10.130.57.55
telnet 10.130.57.55 1521

# Testar credenciais
sqlplus ARTONE/senha@10.130.57.55:1521/XEPDB1
```

---

## 📞 Documentação Relacionada

- [SETUP.md](./SETUP.md) - Configuração inicial
- [API-ENGERISCO.md](./API-ENGERISCO.md) - Documentação da API
- [TROUBLESHOOTING.md](./TROUBLESHOOTING.md) - Resolução de problemas

---

**Última atualização:** 06/08/2026
