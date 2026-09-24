DROP DATABASE IF EXISTS agroindustria_db;
CREATE DATABASE agroindustria_db;
USE agroindustria_db;

CREATE TABLE setores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(40) NOT NULL,
  descricao VARCHAR(100) NOT NULL
);

CREATE TABLE sensores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_setores INT NOT NULL,
  codigo VARCHAR(20) NOT NULL UNIQUE,
  tipo VARCHAR(20) NOT NULL,
  fabricante VARCHAR(50) NOT NULL,
  telefone varchar(20) not null,
  data_instalacao date not null,
  status varchar(20) not null,

  FOREIGN KEY (id_setores) REFERENCES setores(id)
);

CREATE TABLE medicoes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_sensores int NOT NULL,
  data_hora datetime NOT NULL,
  valor decimal(10.2),
  
  foreign key (id_sensores) references sensores(id)
);

-- exercicio 2

USE agroindustria_db;

rename table medicoes to leituras;

alter table sensores
rename column status to estado;

alter table setores
modify column descricao VARCHAR(255) NOT NULL;

alter table leituras
add column turno varchar(10) not null;

alter table sensores
drop column telefone;

alter table sensores
drop column codigo;

