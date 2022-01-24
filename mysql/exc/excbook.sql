use world;

show tables;

create table book (
	seq int,
    bookname varchar(100),
    publisher varchar(100),
    author varchar(100),
	price int
);

drop table book;