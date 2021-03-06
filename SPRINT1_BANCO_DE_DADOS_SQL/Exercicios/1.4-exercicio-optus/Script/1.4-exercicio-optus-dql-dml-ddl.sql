CREATE DATABASE OPTUS;
GO

USE OPTUS;
GO

CREATE TABLE ARTISTA(
 idArtista SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeArtista VARCHAR(20) NOT NULL
);
GO

CREATE TABLE ESTILO(
 idEstilo TINYINT PRIMARY KEY IDENTITY(1,1),
 nomeEstilo VARCHAR(20) NOT NULL
);
GO

CREATE TABLE ALBUM(
 idAlbum SMALLINT PRIMARY KEY IDENTITY(1,1),
 idArtista SMALLINT FOREIGN KEY REFERENCES ARTISTA(idArtista),
 idEstilo TINYINT FOREIGN KEY REFERENCES ESTILO(idEstilo),
 nomeAlbum VARCHAR(25) NOT NULL
);
GO


CREATE TABLE USUARIO(
 idUsuario SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeUsuario VARCHAR(25) NOT NULL
);
GO

INSERT ARTISTA(nomeArtista)
VALUES ('luciano'),('saulo')

SELECT * FROM ARTISTA

INSERT ESTILO (nomeEstilo)
VALUES ('folk'),('indie'),('mpb')

SELECT * FROM ESTILO

INSERT ALBUM (idArtista,idEstilo,nomeAlbum)
VALUES (1,1,'befolkused'),(1,2,'warrior'),(2,3,'geni e o zepelin')

SELECT * FROM ALBUM

INSERT USUARIO (nomeUsuario)
VALUES ('nayara'), ('heitor')

SELECT * FROM USUARIO


/* CREATE TABLE USUARIO(
 idUsuario SMALLINT PRIMARY KEY IDENTITY(1,1),
 nomeUsuario VARCHAR(25) NOT NULL*/