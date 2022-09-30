use g24c2bd;

insert into ciclos values
(1,"FUND DE PROGRAMACION"),
(2,"PROG BASICA"),
(3,"PROG WEB"),
(4,"APP MOVILES");

SELECT * FROM CICLOS;

insert into ciudad values
(1,"Bucaramanga"),
(2,"Bogota"),
(3,"Medellin"),
(4,"Barranquilla");

select * from ciudad;

insert into estudios values
(1,"Bachillerato"),
(2,"Pregrado"),
(3,"Especializacion"),
(4,"Post Grado");

select * from estudios;

insert into grupo values 
("G24",60),
("G25",55),
("G26",58),
("G27",55);

select * from grupo;

insert into tripulantes values 
(1,"Diaz Martinez","Juan Carlos",1,"G24",2),
(2,"Uribe Sarmiento","Pedro",1,"G25",3),
(3,"Silva Perez","Maria Yamile",2,"G24",1),
(4,"Gelvez Hernandez","Magaly",3,"G24",4);

select * from tripulantes;

insert into matriculas values 
(1,1,3.5,0);

alter table matriculas
drop column Reto2;

select * from matriculas;

delete from matriculas where Id=1;

alter table matriculas
add column Reto1 float4,
add column Reto2 float4;

-- CRUD: CREATE - READ - UPDATE - DELETE

insert into matriculas values
(1,2,4.0,5.0),
(2,1,3.8,4.2),
(3,2,3.0,5.0);

insert into ciclos values 
(5,"PROYECTO DE GRADO");

select * from ciclos;

select * from matriculas;

update matriculas set Reto1=4.5,Reto2=4.8 where Id=1 and Codigo_cic=2;

select 
ma.Id,tr.Apellidos,tr.Nombres,ci.Descripcion,ma.Reto1,ma.Reto2 from matriculas ma
join tripulantes tr on ma.Id = tr.Id
join ciudad ci on tr.Codigo_ciu = ci.Codigo_ciu;

SELECT t.Apellidos, t.Nombres, c.Descripcion as Ciudad 
FROM tripulantes t
INNER JOIN ciudad c on t.Codigo_ciu = c.Codigo_ciu