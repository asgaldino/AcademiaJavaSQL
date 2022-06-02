CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE `Editora` (
  `id` int not null auto_increment,
  `nome` varchar (50),
  PRIMARY KEY (`id`)
);

INSERT INTO Editora value (NULL, "Rocco");
INSERT INTO Editora value (NULL, "Wmf Martins Fontes");
INSERT INTO Editora value (NULL, "Casa da Palavra");
INSERT INTO Editora value (NULL, "Belas Artes");
INSERT INTO Editora value (NULL, "Matrix");

CREATE TABLE `Categoria` (
  `id` int not null auto_increment,
  `tipo_categoria` varchar(50),
  PRIMARY KEY (`id`)
);

INSERT INTO Categoria value (NULL, "Literatura Juvenil");
INSERT INTO Categoria value (NULL, "Ficção Científica");
INSERT INTO Categoria value (NULL, "Humor");

CREATE TABLE `Livro` (
  `isbn` varchar(50) not null,
  `titulo` varchar(100) not null,
  `ano` int not null,
  `fk_editora` int not null,
  `fk_categoria` int not null,
  PRIMARY KEY (`isbn`),
  FOREIGN KEY (`fk_categoria`) REFERENCES `Categoria`(`id`),
  FOREIGN KEY (`fk_editora`) REFERENCES `Editora`(`id`)
);

INSERT INTO Livro value ("8532511015", "Hrry Potter e a Pedra Filosofal", 2000, 1, 1);
INSERT INTO Livro value ("9788578270698", "As Crônicas de Nárnia", 2009, 2, 1);
INSERT INTO Livro value ("9788577343348", "O Espadachim de Carvão", 2013, 3, 2);
INSERT INTO Livro value ("9788581742458", "O Papai é Pop", 2015, 4, 3);
INSERT INTO Livro value ("9788582302026", "Pior Que Tá Não Fica", 2015, 5, 3);
INSERT INTO Livro value ("9788577345670", "Garota Desdobrável", 2015, 3, 1);
INSERT INTO Livro value ("8532512062", "Herry Potter e o Prisioneiro de Azkaban", 2000, 1, 1);

CREATE TABLE `Autor` (
  `id` int not null auto_increment,
  `nome` varchar(100) not null,
  `nascionalidade` varchar(100),
  PRIMARY KEY (`id`)
);

ALTER TABLE Autor
CHANGE nascionalidade nacionalidade varchar(100);

INSERT INTO Autor value (NULL, "J.K Rowling", "Inglaterra");
INSERT INTO Autor value (NULL, "Clive Staples Lewis", "Inglaterra");
INSERT INTO Autor value (NULL, "Affonso Solano", "Brasil");
INSERT INTO Autor value (NULL, "Marcos Piangers", "Brasil");
INSERT INTO Autor value (NULL, "Ciro Botelho-Tiririca", "Brasil");
INSERT INTO Autor value (NULL, "Bianca Mól", "Brasil");

CREATE TABLE `LivroAutor` (
  `id` int not null auto_increment,
  `fk_autor` int not null,
  `fk_livro` varchar(50) not null,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`fk_autor`) REFERENCES `Autor`(`id`),
  FOREIGN KEY (`fk_livro`) REFERENCES `Livro`(`isbn`)
);

INSERT INTO LivroAutor value (NULL, 1, "8532512062");
INSERT INTO LivroAutor value (NULL, 2, "9788578270698");
INSERT INTO LivroAutor value (NULL, 3, "9788577343348");
INSERT INTO LivroAutor value (NULL, 4, "9788581742458");
INSERT INTO LivroAutor value (NULL, 5, "9788582302026");
INSERT INTO LivroAutor value (NULL, 6, "9788577345670");
INSERT INTO LivroAutor values (NULL, 1, 8532511015);


SELECT * FROM Categoria;
SELECT * FROM LivroAutor;
SELECT * FROM Autor;
SELECT * FROM LivroAutor;
SELECT * FROM Editora;

select livro.titulo, categoria.tipo_categoria
from livro, categoria
where livro.fk_categoria = categoria.id
and categoria.tipo_categoria = 'Literatura Juvenil';

select	livro.isbn as 'ISBN', livro.titulo as 'Título', livro.ano as 'Ano', editora.nome as 'Editora', 
categoria.tipo_categoria as 'Categoria' 
from livro, editora, categoria
where livro.fk_editora = editora.id
and livro.fk_categoria = categoria.id
order by livro.titulo;

select livro.isbn as 'ISBN', livro.titulo as 'Título', livro.ano as 'Ano', editora.nome as 'Editora', 
concat(autor.nome, ' (' ,autor.nacionalidade, ')') as  'Autor/Nascionalidade',categoria.tipo_categoria as 'Categoria'
from livro, editora, categoria, autor, livroautor
where livro.fk_editora = editora.id
and livro.fk_categoria = categoria.id
and livroautor.fk_autor = autor.id
and livroautor.fk_livro = livro.isbn
order by livro.titulo;
