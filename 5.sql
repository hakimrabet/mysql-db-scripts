use javaee;

drop table users;
drop database javaee;
CREATE DATABASE javaee CHARACTER SET utf8 COLLATE utf8_general_ci;
use javaee;
CREATE TABLE `users`(
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` varchar(100) ,
`family` varchar(100) ,
`username` varchar(100) not null,
`password` varchar(100) not null,
gender boolean,
email varchar(100) not null unique,users
remember_token varchar(500),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
email_verified_at TIMESTAMP DEFAULT NULL,
updated_at TIMESTAMP DEFAULT NULL,
deleted_at TIMESTAMP DEFAULT NULL
);


CREATE TABLE `groups`(
id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` varchar(100) not null
);

CREATE TABLE `group_user` (
id bigint not null auto_increment primary key,
user_id bigint not null,
group_id bigint not null,
CONSTRAINT users_fk FOREIGN KEY (user_id) REFERENCES users(id),
constraint groups_fk FOREIGN KEY (group_id) REFERENCES `groups`(id)
);

