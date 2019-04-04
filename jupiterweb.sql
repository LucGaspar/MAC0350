DROP DATABASE IF EXISTS "EPJEF";
CREATE DATABASE "EPJEF";

-- NOTICE: At this place you need to connect to the new database and run the rest of the statements.

--
-- Table structure for table 'Administra'
--

DROP TABLE IF EXISTS "Administra";

CREATE TABLE "Administra" (
  "ADM_NUSP" VARCHAR(255), 
  "Curso" VARCHAR(255), 
  "Periodo" VARCHAR(255)
);

--
-- Dumping data for table 'Administra'
--

INSERT INTO "Administra" ("ADM_NUSP", "Curso", "Periodo") VALUES (E'1', E'1', E'1');
INSERT INTO "Administra" ("ADM_NUSP", "Curso", "Periodo") VALUES (E'2', E'2', E'2');
-- 2 records

--
-- Table structure for table 'Administrador'
--

DROP TABLE IF EXISTS "Administrador";

CREATE TABLE "Administrador" (
  "NUSP" SERIAL NOT NULL, 
  "Status" VARCHAR(255), 
  PRIMARY KEY ("NUSP")
);

--
-- Dumping data for table 'Administrador'
--

-- 0 records

SELECT setval('"Administrador_NUSP_seq"', MAX("NUSP")) FROM "Administrador";

--
-- Table structure for table 'Aluno'
--

DROP TABLE IF EXISTS "Aluno";

CREATE TABLE "Aluno" (
  "NUSP" INTEGER NOT NULL DEFAULT 0, 
  "Curso" VARCHAR(255), 
  PRIMARY KEY ("NUSP")
);

--
-- Dumping data for table 'Aluno'
--

INSERT INTO "Aluno" ("NUSP", "Curso") VALUES (2, E'2');
INSERT INTO "Aluno" ("NUSP", "Curso") VALUES (3, E'333');
INSERT INTO "Aluno" ("NUSP", "Curso") VALUES (4, E'5');
-- 3 records

--
-- Table structure for table 'Currículo'
--

DROP TABLE IF EXISTS "Currículo";

CREATE TABLE "Currículo" (
  "ID_CURSO" VARCHAR(255) NOT NULL, 
  "Periodo" VARCHAR(255), 
  "Grade" VARCHAR(255), 
  PRIMARY KEY ("ID_CURSO")
);

--
-- Dumping data for table 'Currículo'
--

-- 0 records

CREATE INDEX "Currículo_ID_CURSO" ON "Currículo" ("ID_CURSO");

--
-- Table structure for table 'Cursa'
--

DROP TABLE IF EXISTS "Cursa";

CREATE TABLE "Cursa" (
  "Status" VARCHAR(255), 
  "Nota" VARCHAR(255), 
  "Frequencia" VARCHAR(255), 
  "Al_NUSP" VARCHAR(255), 
  "ID_MINISTRA" VARCHAR(255)
);

--
-- Dumping data for table 'Cursa'
--

-- 0 records

CREATE INDEX "Cursa_ID_MINISTRA" ON "Cursa" ("ID_MINISTRA");

--
-- Table structure for table 'Disciplina'
--

DROP TABLE IF EXISTS "Disciplina";

CREATE TABLE "Disciplina" (
  "CODIGO_DISCIPLINA" VARCHAR(255) NOT NULL, 
  "Descricao" VARCHAR(255), 
  "Status" VARCHAR(255), 
  "Instituto" VARCHAR(255), 
  "CreditoTrabalho" VARCHAR(255), 
  "CreditoAula" VARCHAR(255), 
  PRIMARY KEY ("CODIGO_DISCIPLINA")
);

--
-- Dumping data for table 'Disciplina'
--

-- 0 records

--
-- Table structure for table 'Ministra'
--

DROP TABLE IF EXISTS "Ministra";

CREATE TABLE "Ministra" (
  "Periodo" VARCHAR(255), 
  "ID_MINISTRA" VARCHAR(255) NOT NULL, 
  "Horario" VARCHAR(255), 
  "Monitor" VARCHAR(255), 
  "Turma" VARCHAR(255), 
  "Sala" VARCHAR(255), 
  "Prof_NUSP" VARCHAR(255), 
  "ID_DISCIPLINA" VARCHAR(255), 
  PRIMARY KEY ("ID_MINISTRA")
);

--
-- Dumping data for table 'Ministra'
--

-- 0 records

CREATE INDEX "Ministra_ID_" ON "Ministra" ("Prof_NUSP");

CREATE INDEX "Ministra_ID_DISCIPLINA" ON "Ministra" ("ID_DISCIPLINA");

CREATE INDEX "Ministra_ID_MINISTRA" ON "Ministra" ("ID_MINISTRA");

--
-- Table structure for table 'Módulo'
--

DROP TABLE IF EXISTS "Módulo";

CREATE TABLE "Módulo" (
  "Nome" VARCHAR(255), 
  "ID_MODULO" VARCHAR(255) NOT NULL, 
  "ID_TRILHA" VARCHAR(255), 
  PRIMARY KEY ("ID_MODULO")
);

--
-- Dumping data for table 'Módulo'
--

-- 0 records

CREATE INDEX "Módulo_ID_MÓDULO" ON "Módulo" ("ID_MODULO");

CREATE INDEX "Módulo_ID_TRILHA" ON "Módulo" ("ID_TRILHA");

--
-- Table structure for table 'Perfil'
--

DROP TABLE IF EXISTS "Perfil";

CREATE TABLE "Perfil" (
  "ID_PERFIL" VARCHAR(255) NOT NULL, 
  "Permissoes" VARCHAR(255), 
  PRIMARY KEY ("ID_PERFIL")
);

--
-- Dumping data for table 'Perfil'
--

-- 0 records

CREATE INDEX "Perfil_ID_PERFIL" ON "Perfil" ("ID_PERFIL");

--
-- Table structure for table 'Pessoa'
--

DROP TABLE IF EXISTS "Pessoa";

CREATE TABLE "Pessoa" (
  "CPF" INTEGER NOT NULL DEFAULT 0, 
  "Nome" VARCHAR(255), 
  "DataNascimento" VARCHAR(255), 
  "Email" VARCHAR(255), 
  "Telefone" VARCHAR(255), 
  "Sexo" VARCHAR(255), 
  "Idade" VARCHAR(255), 
  "Endereco" VARCHAR(255), 
  PRIMARY KEY ("CPF")
);

--
-- Dumping data for table 'Pessoa'
--

-- 0 records

CREATE INDEX "Pessoa_Idade" ON "Pessoa" ("DataNascimento");

CREATE INDEX "Pessoa_Idade1" ON "Pessoa" ("Idade");

--
-- Table structure for table 'pf_se'
--

DROP TABLE IF EXISTS "pf_se";

CREATE TABLE "pf_se" (
  "PERFIL" VARCHAR(255), 
  "SERVICOS" VARCHAR(255), 
  "Descricao" VARCHAR(255)
);

--
-- Dumping data for table 'pf_se'
--

-- 0 records

--
-- Table structure for table 'Planeja'
--

DROP TABLE IF EXISTS "Planeja";

CREATE TABLE "Planeja" (
  "NUSP" VARCHAR(255), 
  "ID_DISCIPLINA" VARCHAR(255), 
  "Periodo" VARCHAR(255)
);

--
-- Dumping data for table 'Planeja'
--

-- 0 records

CREATE INDEX "Planeja_ID_DISCIPLINA" ON "Planeja" ("ID_DISCIPLINA");

--
-- Table structure for table 'Professor'
--

DROP TABLE IF EXISTS "Professor";

CREATE TABLE "Professor" (
  "NUSP" SERIAL NOT NULL, 
  "CPF" VARCHAR(255), 
  "Especializacao" VARCHAR(255), 
  PRIMARY KEY ("NUSP")
);

--
-- Dumping data for table 'Professor'
--

-- 0 records

SELECT setval('"Professor_NUSP_seq"', MAX("NUSP")) FROM "Professor";

--
-- Table structure for table 'rel_cur_tri'
--

DROP TABLE IF EXISTS "rel_cur_tri";

CREATE TABLE "rel_cur_tri" (
  "Curso" VARCHAR(255), 
  "ID_TRILHA" VARCHAR(255), 
  "Disciplinas" VARCHAR(255)
);

--
-- Dumping data for table 'rel_cur_tri'
--

-- 0 records

CREATE INDEX "rel_cur_tri_ID" ON "rel_cur_tri" ("Curso");

CREATE INDEX "rel_cur_tri_ID_TRILHA" ON "rel_cur_tri" ("ID_TRILHA");

--
-- Table structure for table 'rel_dis_mod'
--

DROP TABLE IF EXISTS "rel_dis_mod";

CREATE TABLE "rel_dis_mod" (
  "ID_MODULO" VARCHAR(255), 
  "ID_DISCIPLINA" VARCHAR(255), 
  "Nat" VARCHAR(255), 
  "PreReq" VARCHAR(255)
);

--
-- Dumping data for table 'rel_dis_mod'
--

-- 0 records

CREATE INDEX "rel_dis_mod_ID_DISCIPLINA" ON "rel_dis_mod" ("ID_DISCIPLINA");

--
-- Table structure for table 'Serviço'
--

DROP TABLE IF EXISTS "Serviço";

CREATE TABLE "Serviço" (
  "ID_SERVIÇO" VARCHAR(255) NOT NULL, 
  "Descricao" VARCHAR(255), 
  PRIMARY KEY ("ID_SERVIÇO")
);

--
-- Dumping data for table 'Serviço'
--

-- 0 records

CREATE INDEX "Serviço_ID_" ON "Serviço" ("ID_SERVIÇO");

--
-- Table structure for table 'Trilha'
--

DROP TABLE IF EXISTS "Trilha";

CREATE TABLE "Trilha" (
  "ID_TRILHA" VARCHAR(255) NOT NULL, 
  "Nome" VARCHAR(255), 
  PRIMARY KEY ("ID_TRILHA")
);

--
-- Dumping data for table 'Trilha'
--

-- 0 records

CREATE INDEX "Trilha_ID_TRILHA" ON "Trilha" ("ID_TRILHA");

--
-- Table structure for table 'us_pf'
--

DROP TABLE IF EXISTS "us_pf";

CREATE TABLE "us_pf" (
  "LOGIN" VARCHAR(255), 
  "PERFIL" VARCHAR(255)
);

--
-- Dumping data for table 'us_pf'
--

-- 0 records

--
-- Table structure for table 'Usuário'
--

DROP TABLE IF EXISTS "Usuário";

CREATE TABLE "Usuário" (
  "Login" VARCHAR(255) NOT NULL, 
  "CPF" VARCHAR(255), 
  "Senha" VARCHAR(255), 
  "Email" VARCHAR(255), 
  PRIMARY KEY ("Login")
);

--
-- Dumping data for table 'Usuário'
--

-- 0 records

