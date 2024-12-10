
CREATE DATABASE voitures_system;
USE voitures_system;


-- creation des tableau

CREATE TABLE clients (
     id int primary key,
     nom varchar(255),
     adress varchar(255),
     tel VARCHAR(20)
);

CREATE TABLE voitures (
     matric varchar(255) primary key,
     marque varchar(255),
     annee int
     modele varchar(255),

);


CREATE TABLE contrats (
     num int primary key,
     date_debut date,
     date_fin date,
     dure int,

     id_client int ,
     id_matric varchar(255) ,
     FOREIGN key(id_client) REFERENCES clients(id),
     FOREIGN key(id_matric) REFERENCES voitures(matric)
);

-- insertion des donnes

INSERT INTO clients VALUES
 (1,"Fatima El Amri","Rabat, Maroc","0678901234"),
 (2,"Ahmed Saidi","Casablanca, Maroc","0612345678");

INSERT INTO voitures VALUES
 ("1234ABC","Toyota","Corolla",2020),
 ("5678XYZ","Renault","Clio",2021);

INSERT INTO contrats VALUES
 (1,"2024-01-01","2024-01-10",10,1,"1234ABC"),
 (2,"2024-02-01","2024-02-05",5,2,"5678XYZ");

-- select statment

-- 1
select * from contrats 
join clients on clients.id = contrats.id_client
join voitures on voitures.matric = contrats.id_matric;

-- 2
select * from contrats
where dure > 7;

-- 3

insert into clients values(3,"Mohammed Ali Boutaine","Sale,Maroc","0650256210");
insert into voitures values("1234ABC14","Dodge","Hell Cat",1994);
insert into contrats values(3,"2026-02-22","2028-02-22",7,3,"1234ABC14");



-- delete statment

delete from contrats 
where date_fin < "2024-1-1";


