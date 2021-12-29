create database if not exists application;
use application;
Drop table if exists Comment;
Drop table if exists Post;
Drop table if exists User;
Create table User (
username varchar(20) not null,
Email varchar(30) not null,
Password varchar(30) not null,
Primary Key (username)
);
Create table Post (
id int(11) not null auto_increment,
username varchar(20) not null,
Timestamp datetime default current_timestamp,
Text blob not null,
Primary key (id),
foreign key (username) references User(username)
);
Create table Comment (
Username varchar(20) not null,
Id int(11) not null,
Timestamp datetime default current_timestamp,
Text blob not null,
Foreign key (username) references user(username),
Foreign key (id) references post(id)
);
