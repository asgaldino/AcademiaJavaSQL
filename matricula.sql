CREATE DATABASE matricula;
USE matricula;

CREATE TABLE alunos(
	id varchar(14) not null primary key,
	nome varchar(100) not null,
	email varchar(100) not null,
	fone varchar(15)
);

SELECT * FROM alunos;