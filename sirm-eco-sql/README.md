# SIREs — Scripts SQL (Projeto de Banco de Dados)

Este repositório contém todos os scripts SQL completos da atividade final do projeto **Sistema de Registro de Espécies (SIREs)**, incluindo DDL, DML, consultas, atualizações, remoções e script de execução.

---

## 📌 1. Tecnologias utilizadas
- **PostgreSQL 12+**
- **psql** ou **pgAdmin**
- **GitHub** para versionamento

---

## 📌 2. Estrutura do repositório

```
sirm_eco_sql/
├─ README.md
├─ ddl/
│  └─ 01_create_tables.sql
├─ dml/
│  ├─ 01_insert_data.sql
│  ├─ 02_select_queries.sql
│  ├─ 03_update_examples.sql
│  └─ 04_delete_examples.sql
├─ scripts/
│  └─ run_all.sh
```

---

## 📌 3. Como executar os scripts

### ✔ Opção 1 — Usando **psql** no terminal

1. Criar o banco:
```
createdb sirm_eco_db
```

2. Executar o DDL:
```
psql -d sirm_eco_db -f ddl/01_create_tables.sql
```

3. Inserir dados:
```
psql -d sirm_eco_db -f dml/01_insert_data.sql
```

4. Executar SELECTs:
```
psql -d sirm_eco_db -f dml/02_select_queries.sql
```

5. Executar UPDATE e DELETE:
```
psql -d sirm_eco_db -f dml/03_update_examples.sql
psql -d sirm_eco_db -f dml/04_delete_examples.sql
```

---

### ✔ Opção 2 — Executar automaticamente com o script:

```
chmod +x scripts/run_all.sh
./scripts/run_all.sh
```

---

## 📌 4. Descrição dos arquivos

### 📁 ddl/
**01_create_tables.sql**  
→ Cria todas as tabelas normalizadas, com PK, FK, restrições e índices.

### 📁 dml/

**01_insert_data.sql**  
→ Insere dados reais e coerentes com o minimundo.

**02_select_queries.sql**  
→ 5 consultas SELECT com JOIN, WHERE, ORDER BY, LIMIT e agregações.

**03_update_examples.sql**  
→ Três comandos UPDATE com condições.

**04_delete_examples.sql**  
→ Três comandos DELETE com condições.

---

## 📌 5. Observações importantes
- Não execute DELETE sem WHERE.  
- Teste cada condição antes de UPDATE/DELETE com SELECT.  
- Todas as chaves estrangeiras são respeitadas pela ordem de inserção.  
- Os dados fornecidos são consistentes com o DER normalizado até 3FN.

---

## 📌 6. Autor
Projeto desenvolvido para fins acadêmicos — Atividade Final SQL.

---

## ✔ Pronto para avaliação no GitHub!
