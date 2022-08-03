create database myali
character set utf8 collate utf8_general_ci;

use myali;

CREATE TABLE persons(
id INT NOT NULL auto_increment primary key,
`name` VARCHAR(100) NOT NULL
);
## ONE TO MANY
CREATE TABLE cars(
id INT NOT NULL auto_increment PRIMARY KEY,
`name` varchar(100) NOT NULL,
person_id INT,
constraint personcarfk foreign key(person_id) 
references persons(id)
);

##ONE TO ONE
CREATE TABLE ndodes(
id int NOT NULL UNIQUE,
nnumber char(10),
constraint personfk foreign key(id) references persons(id)
);

## MANY TO MANY
Create table courses(
id int not null auto_increment primary key,
name varchar(100)
);

##Pivot 
create table course_person(
id int not null auto_increment primary key,
person_id int,
course_id int,
constraint cfk foreign key (course_id) references courses(id),
constraint pfk foreign key(person_id) references persons(id)
);
##############################################

desc cars;
desc persons;