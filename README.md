# Projeto Star Schema - Modelagem de Dados

Criação de um esquema dimensional – Star Schema, com o seguinte tema: Universidade.

Este projeto tem como objetivo simular uma modelagem de dados no ambiente de determinada Universidade, visando apoiar análises relacionadas às atividades acadêmicas dos professores. O tal segue o modelo dimensional em estrela (Star Schema), que organiza os dados em uma tabela central (Tabela Fato), interligado-a a outras tabelas (Tabelas Dimensões).

As entidades são:

- Tabela Fato (FatoProfessor): id, nome, titulação, especialidade, tempo de instituição, sexo, idade, carga horária ministrada, nº cursos, nº disciplinas oferecidas, nº publicações, nº orientações e nº turmas.
  
- Tabelas Dimensão:
                    - DimCurso: id, nome, tipo, modalidade, área de conhecimento.
                    - DimDepartamento: id, nome, localização, faculdade / universidade.
                    - DimDisciplina: id, nome, área do conhecimento, créditos, nível.
                    - DimData: data de oferta (id), calendário acadêmico (ano, semestre, mês, dia da semana).

---
