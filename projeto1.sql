CREATE DATABASE projeto1;
USE projeto1;

CREATE TABLE Produto(
	id int not null auto_increment,
	codigo int NOT NUll unique,
	nome varchar(50) not null,
	categoria varchar(50),
	valor float(10,2) not null,
	quantidade int not null,
    PRIMARY KEY (id)
);
INSERT INTO Produto values (NULL, '1234567890', 'Coca-Cola 2L', 'Bebidas', '5.00', '100');
SELECT * FROM Produto;

select  Produto.codigo as 'Código', Produto.nome as 'Nome', Produto.categoria as 'Categoria', Produto.valor as 'Valor',
Produto.quantidade as  'Quantidade'
from Produto
order by nome;

select Produto.codigo as 'Código', Produto.nome as 'Nome', Produto.categoria as 'Categoria', Produto.valor as 'Valor', 
Produto.quantidade as  'Quantidade'
from Produto
order by nome;
INSERT INTO Produto values (NULL, '123456789a', 'Laranja', 'FLV', '2.00', '500');

SELECT * FROM Produto order by nome;

SELECT * FROM Produto where id = 3;

UPDATE Produto set codigo=1, nome=a, categoria=a, valor=1, quantidade=1 where id=0;

