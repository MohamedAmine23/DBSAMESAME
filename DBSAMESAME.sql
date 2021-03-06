create database samesame_brussels

go

use samesame_brussels
go

create table JEUNES
(
CODE_JEUNES INT IDENTITY(13000,1) NOT NULL PRIMARY KEY,
NOM varchar(20) NOT NULL,
PRENOM varchar(20) NOT NULL,
AGE int NOT NULL CHECK(AGE BETWEEN 5 AND 23),
MAIL varchar(50) NOT NULL,
ADRESSE varchar(50) NULL,
CODE_POSTAL int NOT NULL,

)

GO
CREATE TABLE ACTIVITES
(
CODE_ACTIVITES INTEGER IDENTITY (1,1) NOT NULL PRIMARY KEY,
TITRE varchar(30) NOT NULL,
ADRESSE varchar(50) NULL,
PRIX  INT NOT NULL,
ID_RESPONSABLE INTEGER,
CONSTRAINT FK_CODE_RESPONSABLE FOREIGN KEY(ID_RESPONSABLE) REFERENCES RESPONSABLE(CODE_RESPONSABLE)
)

GO
CREATE TABLE INSCRIPTION 
(
ID_JEUNES INT NOT NULL,
ID_ACTIVITES INT NOT NULL,
DATE_INSC DATE DEFAULT GETDATE(),
CONSTRAINT PK_INSCRIPTION PRIMARY KEY(ID_JEUNES,ID_ACTIVITES),
CONSTRAINT FK_INSCRIPTION_J FOREIGN KEY(ID_JEUNES) REFERENCES JEUNES(CODE_JEUNES),
CONSTRAINT FK_INSCRIPTION_A FOREIGN KEY(ID_ACTIVITES) REFERENCES ACTIVITES(CODE_ACTIVITES),
)

GO
create table RESPONSABLE 
(
CODE_RESPONSABLE INT IDENTITY(2020,1) PRIMARY KEY,
NOM varchar(20) NOT NULL,
PRENOM varchar(20) NOT NULL,
AGE int NOT NULL,
MAIL varchar(50) NOT NULL,
ADRESSE varchar(50) NULL,
CODE_POSTAL int NOT NULL,
FORMATION varchar(50) NOT NULL,

)
GO
ALTER TABLE RESPONSABLE ADD CONSTRAINT C_AGE CHECK(AGE BETWEEN 18 AND 67)
GO
ALTER TABLE JEUNES ADD CONSTRAINT C_MAILJ  UNIQUE (MAIL)
GO
ALTER TABLE RESPONSABLE ADD CONSTRAINT C_MAILR  UNIQUE(MAIL)
GO
ALTER TABLE JEUNES ADD CONSTRAINT C_CODE_POST CHECK( CODE_POSTAL BETWEEN 1000 AND 9999)
GO


GO
---- code qui permet une remise a zero de la base de donn�es 

TRUNCATE TABLE INSCRIPTION
DELETE FROM JEUNES WHERE CODE_JEUNES >= 0
DELETE FROM ACTIVITES WHERE CODE_ACTIVITES > 0
DELETE FROM RESPONSABLE WHERE CODE_RESPONSABLE >= 0


DBCC CHECKIDENT (JEUNES, RESEED, 13000)
DBCC CHECKIDENT (RESPONSABLE, RESEED, 2020)
DBCC CHECKIDENT (ACTIVITES, RESEED, 0)

-------------------------------------------------