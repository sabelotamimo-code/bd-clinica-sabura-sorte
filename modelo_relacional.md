# Modelo Relacional — Clínica Médica

**Autor:** Sabura Tamimo Sorte
**Disciplina:** Tecnologias de Base de Dados
**Tema:** Clínica Médica

---

## 1. Tabelas

### 1.1 Especialidade

| Atributo             | Tipo         | Restrições             |
| -------------------- | ------------ | ---------------------- |
| **id_especialidade** | INT          | **PK**, AUTO_INCREMENT |
| nome                 | VARCHAR(100) | NOT NULL, UNIQUE       |
| descricao            | VARCHAR(255) | —                      |

**Chave Primária:** `id_especialidade`

---

### 1.2 Medico

| Atributo           | Tipo         | Restrições                                         |
| ------------------ | ------------ | -------------------------------------------------- |
| **id_medico**      | INT          | **PK**, AUTO_INCREMENT                             |
| nome               | VARCHAR(150) | NOT NULL                                           |
| crm                | VARCHAR(20)  | NOT NULL, UNIQUE                                   |
| telefone           | VARCHAR(20)  | —                                                  |
| email              | VARCHAR(150) | UNIQUE                                             |
| _id_especialidade_ | INT          | **FK** → Especialidade(id_especialidade), NOT NULL |

**Chave Primária:** `id_medico`
**Chave Estrangeira:** `id_especialidade` → `Especialidade(id_especialidade)`

---

### 1.3 Paciente

| Atributo        | Tipo         | Restrições             |
| --------------- | ------------ | ---------------------- |
| **id_paciente** | INT          | **PK**, AUTO_INCREMENT |
| nome            | VARCHAR(150) | NOT NULL               |
| data_nascimento | DATE         | NOT NULL               |
| telefone        | VARCHAR(20)  | —                      |
| email           | VARCHAR(150) | UNIQUE                 |
| morada          | VARCHAR(255) | —                      |

**Chave Primária:** `id_paciente`

---

### 1.4 Consulta

| Atributo        | Tipo                                     | Restrições                               |
| --------------- | ---------------------------------------- | ---------------------------------------- |
| **id_consulta** | INT                                      | **PK**, AUTO_INCREMENT                   |
| data_consulta   | DATE                                     | NOT NULL                                 |
| hora_consulta   | TIME                                     | NOT NULL                                 |
| estado          | ENUM('agendada','realizada','cancelada') | DEFAULT 'agendada'                       |
| diagnostico     | TEXT                                     | —                                        |
| prescricao      | TEXT                                     | —                                        |
| _id_paciente_   | INT                                      | **FK** → Paciente(id_paciente), NOT NULL |
| _id_medico_     | INT                                      | **FK** → Medico(id_medico), NOT NULL     |

**Chave Primária:** `id_consulta`
**Chaves Estrangeiras:**

- `id_paciente` → `Paciente(id_paciente)`
- `id_medico` → `Medico(id_medico)`

**Restrição adicional:** UNIQUE(id_medico, data_consulta, hora_consulta) — um médico não pode ter duas consultas à mesma hora.

---

### 1.5 Utilizador

| Atributo          | Tipo                          | Restrições             |
| ----------------- | ----------------------------- | ---------------------- |
| **id_utilizador** | INT                           | **PK**, AUTO_INCREMENT |
| nome              | VARCHAR(150)                  | NOT NULL               |
| username          | VARCHAR(50)                   | NOT NULL, UNIQUE       |
| password          | VARCHAR(255)                  | NOT NULL               |
| perfil            | ENUM('admin','recepcionista') | NOT NULL               |

**Chave Primária:** `id_utilizador`

---

## 2. Relacionamentos

| Relacionamento         | Cardinalidade | Descrição                                                                         |
| ---------------------- | ------------- | --------------------------------------------------------------------------------- |
| Especialidade — Medico | **1 : N**     | Uma especialidade tem vários médicos; cada médico pertence a uma só especialidade |
| Paciente — Consulta    | **1 : N**     | Um paciente tem várias consultas; cada consulta pertence a um só paciente         |
| Medico — Consulta      | **1 : N**     | Um médico realiza várias consultas; cada consulta é realizada por um só médico    |

---

## 3. Resumo das Chaves

### Chaves Primárias (PK)

| Tabela        | Chave Primária   |
| ------------- | ---------------- |
| Especialidade | id_especialidade |
| Medico        | id_medico        |
| Paciente      | id_paciente      |
| Consulta      | id_consulta      |
| Utilizador    | id_utilizador    |

### Chaves Estrangeiras (FK)

| Tabela   | Chave Estrangeira | Referência                      |
| -------- | ----------------- | ------------------------------- |
| Medico   | id_especialidade  | Especialidade(id_especialidade) |
| Consulta | id_paciente       | Paciente(id_paciente)           |
| Consulta | id_medico         | Medico(id_medico)               |

---

## 4. Notação Resumida
