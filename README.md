# bd-clinica-sabura-sorte

## Identificação

- **Nome:** Sabura Tamimo Sorte
- **Curso:** Licenciatura em Informática — 2º Ano
- **Disciplina:** Tecnologias de Base de Dados
- **Tema:** Clínica Médica
- **Ano Letivo:** 2025/2026

---

## Descrição do Problema

A clínica médica **"Saúde+"** é uma instituição de saúde que presta serviços de consultas em várias especialidades (Clínica Geral, Pediatria, Cardiologia, Dermatologia, Ortopedia, entre outras). Atualmente, a gestão é feita de forma manual, o que provoca:

- Perda de informação sobre pacientes e consultas;
- Dificuldade em marcar, alterar e cancelar consultas;
- Falta de controlo sobre o histórico clínico dos pacientes;
- Dificuldade em consultar a agenda dos médicos;
- Ausência de registo seguro dos diagnósticos e prescrições.

O sistema a informatizar deverá permitir:

- Registar médicos com as suas especialidades;
- Registar pacientes com os seus dados pessoais;
- Agendar consultas entre médicos e pacientes;
- Registar o diagnóstico e prescrições de cada consulta;
- Consultar o histórico de consultas por paciente ou por médico;
- Gerir os utilizadores do sistema (recepcionistas e administradores).

---

## Regras de Negócio

1. Cada médico pertence a exatamente **uma especialidade**.
2. Cada paciente pode ter **várias consultas**, mas cada consulta pertence a **um único paciente**.
3. Cada consulta é realizada por **exatamente um médico**.
4. Uma consulta tem sempre **data, hora e estado** (agendada, realizada ou cancelada).
5. Um médico **não pode ter duas consultas à mesma hora**.
6. O diagnóstico e a prescrição só podem ser registados **após a consulta ser realizada**.
7. Cada utilizador do sistema tem um perfil: **admin** ou **recepcionista**.
8. O **email do paciente é único** (não pode haver dois pacientes com o mesmo email).
9. O **CRM do médico é único** (não pode haver dois médicos com o mesmo CRM).
10. O **username do utilizador é único** (não pode haver dois utilizadores com o mesmo username).

---

## Sistema Web Previsto

O sistema web futuro (disciplina de Programação Web) será construído sobre esta mesma base de dados e terá:

- **Login de utilizadores** (admin e recepcionista);
- **Formulários** para registar pacientes, médicos e consultas;
- **Listagens** de consultas por data, por médico e por paciente;
- **Pesquisas** por nome de paciente, especialidade e estado da consulta;
- **Operações CRUD** completas sobre todas as entidades;
- **Dashboard** com estatísticas (nº de consultas por especialidade, consultas do dia, etc.).

---

## Diagrama ER

![Diagrama ER](diagrama_er.png)

---

## Modelo Relacional

Ver ficheiro [modelo_relacional.md](modelo_relacional.md)

### Resumo das tabelas

| Tabela        | Chave Primária   | Chaves Estrangeiras                        |
| ------------- | ---------------- | ------------------------------------------ |
| Especialidade | id_especialidade | —                                          |
| Medico        | id_medico        | id_especialidade → Especialidade           |
| Paciente      | id_paciente      | —                                          |
| Consulta      | id_consulta      | id_paciente → Paciente; id_medico → Medico |
| Utilizador    | id_utilizador    | —                                          |

---

## Ficheiros do Repositório

| Ficheiro                    | Descrição                                                    |
| --------------------------- | ------------------------------------------------------------ |
| `README.md`                 | Este ficheiro — descrição geral do trabalho                  |
| `diagrama_er.png`           | Diagrama Entidade-Relacionamento                             |
| `modelo_relacional.md`      | Modelo relacional detalhado (tabelas, PK, FK)                |
| `01_criacao_e_insercao.sql` | Criação da base de dados, tabelas e inserção de 100 registos |
| `02_manipulacao.sql`        | Comandos SELECT, JOIN, UPDATE, DELETE e teste de integridade |

---

## Como Executar

### 1. Criar a base de dados e inserir os dados

```sql
-- Executar o ficheiro 01_criacao_e_insercao.sql
SOURCE 01_criacao_e_insercao.sql;
```
