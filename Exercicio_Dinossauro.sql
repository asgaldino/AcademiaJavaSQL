CREATE DATABASE Dinossauros;
USE Dinossauros;

CREATE TABLE `Grupo` (
  `id` int not null auto_increment,
  `nome` varchar(50) not null,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Pais` (
  `id` int not null auto_increment,
  `nome` varchar(50) not null,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Era` (
  `id` int not null auto_increment,
  `nome` varchar(50) not null,
  `inicio` int not null,
  `fim` int not null,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Descobridor` (
  `id` int not null auto_increment,
  `nome` varchar(50),
  PRIMARY KEY (`id`)
);

CREATE TABLE `Dinossauro` (
  `id` int not null auto_increment,
  `nome` varchar(50),
  `tonelaa` int not null,
  `ano_descoberta` int not null,
  `fk_era` int not null,
  `fk_pais` int not null,
  `fk_grupo` int not null,
  `fk_descobridor` int not null,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`fk_pais`) REFERENCES `Pais`(`id`),
  FOREIGN KEY (`fk_grupo`) REFERENCES `Grupo`(`id`),
  FOREIGN KEY (`fk_era`) REFERENCES `Era`(`id`),
  FOREIGN KEY (`fk_descobridor`) REFERENCES `Descobridor`(`id`)
);

select * from descobridor;
select * from dinossauro;
select * from era;
select * from grupo;
select * from pais;


INSERT INTO descobridor value (NULL, "Maryanska");
INSERT INTO descobridor value (NULL, "Jhon Bell Hatcher");
INSERT INTO descobridor value (NULL, "Cientistas Alemães");
INSERT INTO descobridor value (NULL, "Museu Americano de História Natural");
INSERT INTO descobridor value (NULL, "Othniel Charles Marsh");
INSERT INTO descobridor value (NULL, "Barnum Brown");

INSERT INTO era value (NULL, "Cretáceo", 145, 66);
INSERT INTO era value (NULL, "Jurácico", 201, 145);

INSERT INTO grupo value (NULL, "Anquilossauros");
INSERT INTO grupo value (NULL, "Ceratopsídeos");
INSERT INTO grupo value (NULL, "Estegossauros");
INSERT INTO grupo value (NULL, "Terápodes");

INSERT INTO pais value (NULL, "Mongólia");
INSERT INTO pais value (NULL, "Canadá");
INSERT INTO pais value (NULL, "Tanzânia");
INSERT INTO pais value (NULL, "China");
INSERT INTO pais value (NULL, "América do Norte");
INSERT INTO pais value (NULL, "USA");

INSERT INTO dinossauro value (NULL, "Saichania", 4, 1977, 1, 1, 1, 1);
INSERT INTO dinossauro value (NULL, "Tricerátops", 6, 1887, 1, 2, 2, 2);
INSERT INTO dinossauro value (NULL, "Kentrossauro", 2, 1909, 2, 3, 3, 3);
INSERT INTO dinossauro value (NULL, "Pinacossauro", 6, 1999, 1, 4, 1, 4);
INSERT INTO dinossauro value (NULL, "Alossauro", 3, 1877, 2, 5, 4, 5);
INSERT INTO dinossauro value (NULL, "Torossauro", 8, 1891, 1, 6, 2, 2);
INSERT INTO dinossauro value (NULL, "Anquilossauro", 8, 1906, 1, 5, 1, 6);

;

