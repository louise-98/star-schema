-- Script para criação de Star Schema

-- Banco de Dados: Universidade

create database if not exists universidade;

use universidade;

-- Tabelas Dimensão: Curso; Departamento; Disciplina; Data + Tabela Fato: FatoProfessor

-- Tabela Dimensão: Curso
CREATE TABLE DimCurso (
    CursoID INT PRIMARY KEY,
    NomeCurso VARCHAR(100),
    TipoCurso VARCHAR(50),
    Modalidade VARCHAR(50),
    AreaConhecimento VARCHAR(100)
);

-- Tabela Dimensão: Departamento
CREATE TABLE DimDepartamento (
    DepartamentoID INT PRIMARY KEY,
    NomeDepartamento VARCHAR(100),
    Faculdade VARCHAR(100),
    Localizacao VARCHAR(100)
);

-- Tabela Dimensão: Disciplina
CREATE TABLE DimDisciplina (
    DisciplinaID INT PRIMARY KEY,
    NomeDisciplina VARCHAR(100),
    AreaConhecimento VARCHAR(100),
    Creditos INT,
    Nivel VARCHAR(50)
);

-- Tabela Dimensão: Data
CREATE TABLE DimData (
    DataOfertaID INT PRIMARY KEY,
    DataCompleta DATE,
    Ano INT,
    Semestre INT,
    Trimestre INT,
    Mes INT,
    DiaSemana VARCHAR(20)
);

-- Tabela Fato: FatoProfessor
CREATE TABLE FatoProfessor (
    FatoID INT PRIMARY KEY,
    NomeProfessor VARCHAR(100),
    Titulacao VARCHAR(50),
    Especialidade VARCHAR(100),
    TempoInstituicao INT,
    Sexo CHAR(1),
    Idade INT,
    CursoID INT,
    DepartamentoID INT,
    DisciplinaID INT,
    DataOfertaID INT,
    CargaHoraria INT,
    QtdCursosMinistrados INT,
    QtdDisciplinasMinistradas INT,
    QtdPublicacoes INT,
    QtdOrientacoes INT,
    QtdTurmas INT,
    FOREIGN KEY (CursoID) REFERENCES DimCurso(CursoID),
    FOREIGN KEY (DepartamentoID) REFERENCES DimDepartamento(DepartamentoID),
    FOREIGN KEY (DisciplinaID) REFERENCES DimDisciplina(DisciplinaID),
    FOREIGN KEY (DataOfertaID) REFERENCES DimData(DataOfertaID)
);