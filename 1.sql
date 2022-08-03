CREATE DATABASE helpdesk CHARACTER SET utf8 COLLATE utf8_general_ci;

use mydb;

CREATE TABLE person(
id int not null auto_increment primary key,
name varchar(100),
family varchar(100)
);

insert into person(name,family) values
('javad','javadi'),
('sara','ahmadi'),
('reza','rezayi');

select count(*) as "person count" from mydb.person ;

DELIMITER $$
create procedure personcount()
begin
select count(*) as "person count" from mydb.person ;
END $$
delimiter ;

CALL personcount();