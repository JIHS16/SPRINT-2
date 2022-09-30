-- creacio base de datos
create database g24c2bd;

-- usar la bd
use g24c2bd;

CREATE TABLE Ciudad (
  Codigo_ciu int4 not null primary key,
  Descripcion varchar(30)
);

CREATE TABLE Grupo (
  Codigo_gru varchar(3),
  Nro_tripulantes int2,
  PRIMARY KEY (Codigo_gru)
);

CREATE TABLE Ciclos (
  Codigo_cic int1,
  Descripcion varchar(30),
  PRIMARY KEY (Codigo_cic)
);

CREATE TABLE Estudios (
  Codigo_est int1,
  Descripcion varchar(30),
  PRIMARY KEY (Codigo_est)
);

CREATE TABLE Tripulantes (
  Id integer,
  Apellidos varchar(30) not null,
  Nombres varchar(30) not null,
  Codigo_ciu int4,
  Codigo_gru varchar(3),
  Codigo_est int1,
  PRIMARY KEY (Id),
  FOREIGN KEY (Codigo_ciu) REFERENCES Ciudad(Codigo_ciu),
  FOREIGN KEY (Codigo_gru) REFERENCES Grupo(Codigo_gru),
  FOREIGN KEY (Codigo_est) REFERENCES Estudios(Codigo_est)
);

CREATE TABLE Matriculas (
  Id integer,
  Codigo_cic int1,
  Reto1 float(1,1),
  Reto2 float(1,1),
  PRIMARY KEY (Id, Codigo_cic),
  FOREIGN KEY (Codigo_cic) REFERENCES Ciclos(Codigo_cic),
  FOREIGN KEY (Id) REFERENCES Tripulantes(Id)
);
CREATE TABLE Docentes_Tutores (
  Id integer,
  Apellidos varchar(30) not null,
  Nombres varchar(30) not null,
  Codigo_ciu int4,
  Codigo_gru varchar(3),
  Codigo_est int1,
  PRIMARY KEY (Id),
  FOREIGN KEY (Codigo_ciu) REFERENCES Ciudad(Codigo_ciu),
  FOREIGN KEY (Codigo_gru) REFERENCES Grupo(Codigo_gru)
);
insert into docentes_tutores values
(1,"Diaz ","Juan Carlos",1,"G24",2),
(2,"Sarmiento Uribe","Pedro",1,"G25",3),
(3,"Silva Cortez","Maria Yamile",2,"G24",1),
(4,"Hernandez","Magaly",3,"G24",4);
