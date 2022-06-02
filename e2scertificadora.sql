CREATE DATABASE e2scertificadora;
USE e2scertificadora;

CREATE TABLE usuarios (
    id int NOT NULL AUTO_INCREMENT UNIQUE,
    usuario varchar(50) NOT NULL unique, 
    senha varchar(255) NOT NULL, 
    privilegio varchar(50) NOT NULL, 
    comissao int NOT NULL,
    telefone varchar(12) NOT NULL,
    email varchar(100) NOT NULL,
    primary key(id)
);

CREATE TABLE solicitacoes (
    id int NOT NULL AUTO_INCREMENT UNIQUE,
    tipo_certificado varchar(50) NOT NULL, 
    nome varchar(50) NOT NULL, 
    cpf varchar(11) NOT NULL, 
    data_nascimento date NOT NULL, 
    email varchar(50) NOT NULL, 
    telefone varchar(12) NOT NULL, 
    cep varchar(10) NOT NULL, 
    endereco varchar(100) NOT NULL, 
    observacoes varchar(255) NULL,
    data_solicitacao datetime NOT NULL,
    contador varchar(25) NOT NULL,
    documentos varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE solicitacoes_concluidas (
    id int,
    tipo_certificado varchar(50) NOT NULL, 
    nome varchar(50) NOT NULL, 
    data_solicitacao datetime NOT NULL,
    contador varchar(25) NOT NULL,
    data_conclusao datetime NOT NULL,
    primary key(id)
);
