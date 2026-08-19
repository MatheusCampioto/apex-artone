# 🐛 Troubleshooting - Resolução de Problemas

Guia completo para resolver problemas comuns.

---

## 🔍 Problema: Script não sincroniza nada

### Sintomas
- Nenhum log em DAB_SISPETRO_SYNC_LOG
- Arquivo de log não está sendo criado
- CRON não parece estar rodando

### Soluções

**1. Verificar se Node.js está instalado**
```bash
node --version
npm --version
```

Se não aparecer versão, instale Node.js v16+.

**2. Verificar se dependências estão instaladas**
```bash
cd scripts/sincroniza-engerisco
ls node_modules/
```

Se vazio, execute:
```bash
npm install oracledb axios node-schedule
```

**3. Testar execução manual**
```bash
cd scripts/sincroniza-engerisco
node sincroniza-engerisco-v4.4-agendado.js uma-vez
```

Deve aparecer mensagens de sincronização.

**4. Verificar CRON (Linux)**
```bash
crontab -l
```

Deve aparecer algo como:
```
*/10 * * * * /usr/bin/node /opt/.../sincroniza-engerisco-v4.4-agendado.js agendado
```

**5. Verificar Task Scheduler (Windows)**
- Win + R → `taskschd.msc`
- Procure por "Sincronização Engerisco"
- Clique 2x → Abas "Geral", "Disparadores", "Ações" devem estar preenchidas

---

## 🔌 Problema: Erro de Conexão com Banco

### Sintomas
```
Error: ORA-12154: TNS:could not resolve the connect identifier
Error: ENOTFOUND
```

### Soluções

**1. Verificar conectividade**
```bash
ping 10.130.57.55
telnet 10.130.57.55 1521
```

Se falhar, não há conectividade de rede. Contate TI.

**2. Verificar credenciais**
```bash
sqlplus ARTONE/sua_senha@10.130.57.55:1521/XEPDB1
```

Se aparecer prompt `SQL>`, as credenciais estão ok.

**3. Verificar .env**
```bash
cat .env
```

Deve conter:
```
ORACLE_USER=ARTONE
ORACLE_PASSWORD=sua_senha
ORACLE_HOST=10.130.57.55
ORACLE_PORT=1521
ORACLE_DB=XEPDB1
```

**4. Verificar se oracledb foi instalado corretamente**
```bash
npm list oracledb
```

Se não estiver, reinstale:
```bash
npm install oracledb --save
```

---

## 🌐 Problema: Erro ao conectar com API Engerisco

### Sintomas
```
Error: HTTP 500
Error: Timeout
Error: SSL error
```

### Soluções

**1. Testar conectividade com API**
```bash
curl https://integra.engeriscogr.com.br/datasnap/rest/TWebService/
```

Se falhar, a API está down. Contate Engerisco.

**2. Verificar credenciais Engerisco**

No script, verificar:
```javascript
const LOGIN = 'WSART';
const SENHA = 'WS2025ART';
```

Devem estar corretos conforme acordado.

**3. Testar com curl**
```bash
curl -X GET "https://integra.engeriscogr.com.br/datasnap/rest/TWebService/%22GetMotorista%22?CPF=10814737978" \
  -u WSART:WS2025ART
```

Se retornar JSON, a API está ok.

**4. Verificar firewall**

Seu servidor consegue acessar https://integra.engeriscogr.com.br?

```bash
# Verificar portas abertas
netstat -an | grep 443
```

Se não conseguir, contate TI para liberar na firewall.

---

## 📊 Problema: Dados não aparecem no banco

### Sintomas
- Sincronização diz "SUCESSO"
- Mas dados não aparecem em DAB_SISPETRO_SYNC_LOG
- Ou aparecem lá mas não em MOTORISTAS, POSICOES, etc

### Soluções

**1. Verificar logs**
```sql
SELECT * FROM DAB_SISPETRO_SYNC_LOG 
ORDER BY CREATED_AT DESC 
FETCH FIRST 10 ROWS ONLY;
```

Procure por status "FALHA" e mensagem de erro.

**2. Verificar se as tabelas existem**
```sql
SELECT TABLE_NAME FROM USER_TABLES 
WHERE TABLE_NAME IN ('MOTORISTAS', 'RASTREAMENTO_POSICOES', 'PROGRAMACAO_CARGAS');
```

Se não aparecer, contacte TI para criar.

**3. Verificar se há permissão de escrita**
```sql
INSERT INTO MOTORISTAS (CPF, NOME) VALUES ('99999999999', 'TESTE');
ROLLBACK;
```

Se der erro, fale com TI.

**4. Verificar índices e constraints**
```sql
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE FROM USER_CONSTRAINTS 
WHERE TABLE_NAME = 'MOTORISTAS';
```

Se houver PK ou UNIQUE, pode estar rejeitando duplicatas (que é esperado).

---

## ⏰ Problema: CRON não está rodando (Linux)

### Sintomas
- CRON aparece em `crontab -l`
- Mas o script não executa nos horários

### Soluções

**1. Verificar se CRON está ativo**
```bash
sudo service cron status    # Debian/Ubuntu
sudo systemctl status crond # CentOS/RHEL
```

Se não estiver, ative:
```bash
sudo service cron start
sudo systemctl start crond
```

**2. Verificar permissões**
```bash
ls -la /etc/cron.allow /etc/cron.deny
```

Seu usuário está em `/etc/cron.allow`? Se existe só `cron.deny`, seu usuário não deve estar lá.

**3. Ver logs de CRON**
```bash
tail -f /var/log/cron          # CentOS
tail -f /var/log/syslog | grep CRON  # Ubuntu
```

Procure por linhas com seu comando.

**4. Testar CRON com intervalo curto**

Edite `crontab -e` e mude para `*/1` (a cada minuto) por 5 minutos:
```bash
*/1 * * * * /usr/bin/node /opt/.../sincroniza.js agendado >> /var/log/sync.log 2>&1
```

Depois volta para `*/10`.

**5. Usar caminhos absolutos**

CRON não expande `~`, variáveis de ambiente, etc. Use caminhos completos:

❌ Errado:
```bash
*/10 * * * * node ~/script.js
```

✅ Correto:
```bash
*/10 * * * * /usr/bin/node /home/usuario/script.js
```

---

## 🪟 Problema: Task Scheduler não roda (Windows)

### Sintomas
- Task está criada mas não executa
- "Last Run Result" mostra erro
- Logs vazios no Event Viewer

### Soluções

**1. Verificar se a tarefa está ativa**

Abra Task Scheduler (`taskschd.msc`):
- Procure pela tarefa
- Clique 2x
- Aba "Geral" → "Executar com privilégios mais altos" ✅ ?
- Disparadores → Um disparador ativo?

**2. Testar execução manual**

Na tarefa, clique botão direito → "Executar"

Aparece algum erro?

**3. Ver logs**

Event Viewer → Windows Logs → System

Procure por "Task Scheduler" e a hora que deveria ter executado.

**4. Verificar caminho do Node.js**

Abra CMD:
```cmd
where node
```

Copie o caminho completo (ex: `C:\Program Files\nodejs\node.exe`).

Na tarefa, em "Ações" → "Programa/script", use esse caminho completo.

**5. Testar comando manualmente**

Abra CMD e execute:
```cmd
C:\Program Files\nodejs\node.exe C:\seu\caminho\sincroniza-engerisco-v4.4-agendado.js agendado
```

Funciona? Se sim, o problema é só o Task Scheduler.

---

## 📝 Problema: Arquivo de log não está sendo criado

### Sintomas (Linux)
```bash
tail -f /var/log/engerisco-sync.log
# tail: cannot open '/var/log/engerisco-sync.log'
```

### Soluções

**1. Criar arquivo com permissões**
```bash
sudo touch /var/log/engerisco-sync.log
sudo chmod 666 /var/log/engerisco-sync.log
```

**2. Ou mudar local do log**

Em `crontab -e`:
```bash
# Em vez de /var/log, use um diretório que você controla
*/10 * * * * /usr/bin/node /opt/.../sincroniza.js agendado >> /home/seu_usuario/logs/sync.log 2>&1
```

E crie o diretório:
```bash
mkdir -p /home/seu_usuario/logs
```

---

## 🔐 Problema: "Cannot find module"

### Sintomas
```
Error: Cannot find module 'oracledb'
Error: Cannot find module 'axios'
```

### Soluções

**1. Instalar pacotes**
```bash
cd scripts/sincroniza-engerisco
npm install
```

**2. Verificar package.json**
```bash
cat package.json
```

Deve conter `oracledb`, `axios`, `node-schedule` em `dependencies`.

**3. Limpar cache npm**
```bash
npm cache clean --force
npm install
```

**4. Verificar versão do Node.js**
```bash
node --version
```

Deve ser v16+. Se não, atualize.

---

## 📞 Ainda não Funciona?

Se nenhuma solução funcionou, colete informações:

```bash
# Seu ambiente
node --version
npm --version
uname -a          # Linux
systeminfo        # Windows

# Status do projeto
cd scripts/sincroniza-engerisco
ls -la
cat package.json

# Teste manual
node sincroniza-engerisco-v4.4-agendado.js uma-vez 2>&1 | head -50

# Conectividade
ping 10.130.57.55
ping integra.engeriscogr.com.br

# Banco
sqlplus ARTONE/senha@10.130.57.55:1521/XEPDB1 << EOF
SELECT COUNT(*) FROM DAB_SISPETRO_SYNC_LOG;
EXIT;
EOF
```

Cole essas informações quando procurar ajuda.

---

**Última atualização:** 06/08/2026
