create database ocl;
use ocl;
create table users(
    user_Id int auto_increment primary key,
    name varchar(50) not null,
    date varchar(50) not null,
    gender varchar(1) not null,
    address varchar(150) not null,
    city varchar(50) not null,
    state varchar(50) not null,
    email varchar(256) not null unique,
    password varchar(100) not null
);