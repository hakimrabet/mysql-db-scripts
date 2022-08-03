use orm_training;

CREATE TABLE students(
id int not null auto_increment PRIMARY KEY,
name varchar(100) not null,
family varchar(100) not null
);

CREATE TABLE teachers(
id int not null auto_increment PRIMARY KEY,
name varchar(100) not null,
family varchar(100) not null

);
CREATE TABLE courses(
id int not null auto_increment primary key,
name varchar(100) not null
);

CREATE TABLE course_teacher(
id int not null auto_increment primary key,
teacher_id int not null,
course_id int not null,
CONSTRAINT teacher_fk FOREIGN KEY (teacher_id) REFERENCES teachers(id),
constraint courses_fk FOREIGN KEY (course_id) REFERENCES courses(id)
);

CREATE TABLE student_course_teacher (
id int not null auto_increment primary key,
course_teacher_id int not null,
student_id int not null,
constraint course_teacher_fk FOREIGN KEY (course_teacher_id) REFERENCES course_teacher(id),
constraint student_fk foreign key (student_id) REFERENCES students(id)
);

