# 📐 Padrões de Código - ArtPetro

Diretrizes para manter o código consistente e profissional.

---

## 🎯 Princípios

1. **Clareza** - Código claro é melhor que código inteligente
2. **Consistência** - Mesmo padrão em todo o projeto
3. **Documentação** - Sempre explicar o "porquê"
4. **Testabilidade** - Fácil de testar
5. **Manutenibilidade** - Fácil de manter

---

## 📝 JavaScript/Node.js

### Nomenclatura

```javascript
// ✅ BOM: camelCase para variáveis e funções
const totalMotoristas = 100;
function sincronizarMotoristas() {}

// ✅ BOM: SCREAMING_SNAKE_CASE para constantes
const API_BASE_URL = 'https://api.example.com';
const TIMEOUT_MS = 30000;

// ✅ BOM: PascalCase para Classes
class SincronizadorEngerisco {}

// ❌ RUIM: Misturar estilos
const TotalMotoristas = 100;
const api_base_url = 'https://api.example.com';
```

### Funções

```javascript
/**
 * Sincroniza motoristas da API
 * 
 * @param {string} cpf - CPF do motorista
 * @param {Object} opcoes - Opções adicionais
 * @param {boolean} opcoes.retry - Tentar novamente em caso de falha
 * @returns {Promise<Object>} Dados do motorista sincronizado
 * @throws {Error} Se CPF inválido ou API falhar
 * 
 * @example
 * const motorista = await sincronizarMotorista('12345678901');
 * console.log(motorista.Nome);
 */
async function sincronizarMotorista(cpf, opcoes = {}) {
  const { retry = true } = opcoes;

  // Validar entrada
  if (!cpf || cpf.length !== 11) {
    throw new Error('CPF deve ter 11 dígitos');
  }

  try {
    // Implementação
  } catch (error) {
    if (retry) {
      // Retry logic
    }
    throw error;
  }
}
```

### Variáveis

```javascript
// ✅ BOM: Nomes descritivos
const dataSincronizacao = new Date();
const velocidadeMaximaKmh = 120;
const estaEmAndamento = true;

// ❌ RUIM: Nomes genéricos
const d = new Date();
const v = 120;
const f = true;
```

### Error Handling

```javascript
// ✅ BOM
try {
  await conectarAPI();
} catch (error) {
  console.error('Erro ao conectar API:', error.message);
  registrarLog('ERRO', error.stack);
  throw new Error(`Falha na sincronização: ${error.message}`);
}

// ❌ RUIM
try {
  await conectarAPI();
} catch (e) {
  console.log('erro');
}
```

### Async/Await

```javascript
// ✅ BOM
async function processar() {
  try {
    const dados = await buscarDados();
    const processado = await procesarDados(dados);
    return processado;
  } catch (error) {
    console.error('Erro:', error);
    throw error;
  }
}

// ❌ RUIM: Múltiplas promessas aninhadas
function processar() {
  return buscarDados()
    .then(dados => {
      return procesarDados(dados)
        .then(processado => {
          return processado;
        });
    });
}
```

---

## 🗄️ SQL/PL-SQL

### Nomenclatura

```sql
-- ✅ BOM: snake_case para tudo
CREATE TABLE motoristas (
  id_motorista NUMBER PRIMARY KEY,
  nome_completo VARCHAR2(100),
  data_criacao DATE
);

-- ❌ RUIM: Misturar estilos
CREATE TABLE motoristas (
  IdMotorista NUMBER PRIMARY KEY,
  nomeCompleto VARCHAR2(100),
  DataCriacao DATE
);
```

### Formatação

```sql
-- ✅ BOM: Bem formatado e indentado
SELECT
  m.id_motorista,
  m.nome_completo,
  v.placa,
  COUNT(rp.id_posicao) as total_posicoes
FROM
  motoristas m
  LEFT JOIN veiculos v ON m.id_motorista = v.id_motorista
  LEFT JOIN rastreamento_posicoes rp ON v.id_veiculo = rp.id_veiculo
WHERE
  m.status = 'ATIVO'
GROUP BY
  m.id_motorista,
  m.nome_completo,
  v.placa
ORDER BY
  total_posicoes DESC;

-- ❌ RUIM: Tudo em uma linha
SELECT m.id_motorista, m.nome_completo, v.placa, COUNT(rp.id_posicao) as total_posicoes FROM motoristas m LEFT JOIN veiculos v ON m.id_motorista = v.id_motorista LEFT JOIN rastreamento_posicoes rp ON v.id_veiculo = rp.id_veiculo WHERE m.status = 'ATIVO' GROUP BY m.id_motorista, m.nome_completo, v.placa ORDER BY total_posicoes DESC;
```

### Comentários

```sql
-- ✅ BOM
-- Buscar motoristas ativos com suas posições
-- Agregar por CPF para estatísticas
-- Filtrar apenas últimas 24h
SELECT *
FROM motoristas
WHERE status = 'ATIVO'
  AND data_criacao >= TRUNC(SYSDATE);

-- ❌ RUIM
-- Sem comentários ou comentários óbvios
SELECT id FROM motoristas WHERE status='ATIVO';

-- ❌ RUIM
-- Selecionar id de motoristas
SELECT id FROM motoristas;
```

---

## 📋 Documentação em Markdown

### Headers

```markdown
# Título Principal (H1)
## Seção (H2)
### Subsseção (H3)
#### Detalhe (H4)

# ✅ BOM
### Features Implementadas

# ❌ RUIM
# Features Implementadas
```

### Listas

```markdown
✅ BOM: Bullets bem estruturados
- Item principal
  - Sub-item
  - Outro sub-item
- Outro item

❌ RUIM: Sem hierarquia
- Item 1
- Sub-item do 1 (mas sem indentação)
- Item 2
```

### Exemplos de Código

```markdown
✅ BOM: Código em blocos com linguagem
```javascript
const resultado = await processar();
console.log(resultado);
```

❌ RUIM: Sem especificar linguagem
```
const resultado = await processar();
```
```

---

## 🧪 Testes

### Nomenclatura de Testes

```javascript
// ✅ BOM: Descreve o que testa
describe('sincronizarMotorista', () => {
  it('deve inserir motorista válido no BD', async () => {
    // Arrange
    const cpf = '12345678901';
    
    // Act
    const resultado = await sincronizarMotorista(cpf);
    
    // Assert
    expect(resultado).toBeDefined();
    expect(resultado.cpf).toBe(cpf);
  });

  it('deve lançar erro para CPF inválido', async () => {
    // Arrange
    const cpf = '123'; // Inválido

    // Act & Assert
    expect(() => sincronizarMotorista(cpf))
      .toThrow('CPF deve ter 11 dígitos');
  });
});

// ❌ RUIM: Teste genérico
it('test 1', async () => {
  const resultado = sincronizarMotorista('123');
  expect(resultado).toBeDefined();
});
```

---

## 🔍 Linting & Formatação

### ESLint (JavaScript)

```json
{
  "extends": "eslint:recommended",
  "rules": {
    "no-console": "warn",
    "no-unused-vars": "error",
    "no-var": "error",
    "prefer-const": "error",
    "quotes": ["error", "single"],
    "semi": ["error", "always"]
  }
}
```

### Prettier (Formatação)

```json
{
  "printWidth": 100,
  "tabWidth": 2,
  "useTabs": false,
  "semi": true,
  "singleQuote": true,
  "trailingComma": "es5"
}
```

---

## ✅ Checklist Antes de Commitar

- [ ] Código formatado (`prettier`)
- [ ] Sem erros de linting (`eslint`)
- [ ] Testes passando
- [ ] Documentação atualizada
- [ ] Sem console.log ou código debug
- [ ] Sem credenciais hardcoded
- [ ] Nomes claros e consistentes
- [ ] Comentários explicando o "porquê"
- [ ] Commit com mensagem clara

---

## 📚 Referências

- [CONTRIBUTING.md](../CONTRIBUTING.md) - Como contribuir
- [ARCHITECTURE.md](./ARCHITECTURE.md) - Arquitetura do sistema

---

**Última atualização:** 06/08/2026
