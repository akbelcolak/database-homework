-- drop database IF exists travel_agency;
-- create database travel_agency;
use travel_agency;

drop table IF exists customers;
create table customers(
 cid int not null,
 name varchar(20) not null,
 surname varchar(20) not null,
 email text not null,
 iban varchar(9) not null,
 address text not null,
 birthday date default null,
 gender text default null,
 primary key(cid));
 
 insert into customers values(1,'ela','heyo','elaheyo@example.com','123456789','example street 5, 3456','2000-03-12','f'),
							 (2,'dila','heyo','dilaheyo@example.com','123465478','example street 5, 3456','1995-03-20','f'),
                             (3,'yula','heyo','yulaheyo@example.com','234456789','example street 5, 3456','1990-01-15','m'),
                             (4,'mary','melon','marymelon@example.com','432156789','example street 10, 5432','1988-03-12',default),
                             (5,'dena','ko','denako@example.com','123987789','example street 15, 3906','1997-02-01','f'),
                             (6,'peril','cuka','perilcuka@example.com','986756789','example street 25, 3454','1980-03-12','m'),
                             (7,'selam','sana','selamsana@example.com','908456789','example street 45, 2456','1970-03-12','m'),
                             (8,'simon','cowel','simoncowel@example.com','123456454','example street 23, 3458',default,'m'),
                             (9,'sindy','simon','sindysimon@example.com','782145678','example street 21, 3456',default,default),
                             (10,'bart','moeyart','bartmoeyart@example.com','993456789','example street 75, 9456','1972-07-10','m');
                             
drop table if exists countries;
create table countries(
country_id integer not null,
country_name text not null,
primary key (country_id));

insert into countries values(1, 'Belgium'),
							(2, 'Turkey'),	
                            (3, 'Moracco'),	
                            (4, 'UK'),	
							(5, 'France'),	
                            (6, 'Egypte'),	
							(7, 'Tanzania'),	
                            (8, 'USA'),	
                            (9, 'Austria'),
                            (10, 'Switzerland');
                            
drop table if exists cities;
create table cities(
city_id int auto_increment primary key not null,
city_name text not null,
country_id int);
-- foreign key(country_id) REFERENCES countries(country_id);

insert into cities values(default,'Antwerp',1),	
						 (default,'Brussels',1),
                         (default,'Brugge',1),
                         (default,'Paris',3),
                         (default,'Dar-es Salaam',7),
                         (default,'Pemba',7),
                         (default,'Istanbul',2),
                         (default,'Nigde',2),
                         (default,'new York',8),
                         (default,'Salsburg',9),
                         (default,'Zug',10),
                         (default,'Oxford',4);

