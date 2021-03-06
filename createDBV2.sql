drop database if exists cookieshopTest;
create database cookieshopTest;
use cookieshopTest;

create table users
(
	userid int(5) primary key auto_increment,
    username varchar(30) not null,
    password varchar(40) not null,
    balance int(5) not null
);


create table cupcake
(
	cupcakeid int(5) primary key auto_increment,
    cupcakeName varchar(150) not null,
    cupcakeType varchar(150) not null,
    wrapperColor varchar(75) not null,
    price int(5) not null
);


create table orders
(
	orderid int(5) primary key auto_increment,
    userid int,
    foreign key(userid) references users(userid),
    topid int,
    foreign key(topid) references tops(topid),
    bottomid int,
    foreign key(bottomid) references bottoms(bottomid),
    amount int(4) not null,
    orderStatus int(1) not null
    
);
