create database reuniao2; 

use reuniao2; 

CREATE TABLE Pessoa ( 

    ID int NOT NUll AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(40), 
    email VARCHAR(40), 
    cargo VARCHAR(30)  

    ); 

 

INSERT INTO pessoa values ('NULL', 'João Silva', ' joao@gmail.com', 'Aluno'); 

INSERT INTO pessoa values ('NULL', 'Paulo Vargas', 'pauloVargas@ufn.edu.br', 'Professor'); 

INSERT INTO pessoa values ('NULL', 'João Pedro', 'joao.pedro@gmail.com', 'Aluno'); 

INSERT INTO pessoa values ('NULL', 'Paulo Henry', 'henry@yahoo.com.br', 'Funcionário'); 

 

SELECT * FROM pessoa; 