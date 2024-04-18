create database bookdatabase;
use bookdatabase;
create table booktable(bookID int primary key AUTO_INCREMENT,name varchar(20) not null,published_year int,genre varchar(20) not null,author_name varchar(20) not null,parts int,rating int);
desc booktable;
insert into booktable(bookID, name, published_year, genre, author_name, parts, rating)values(7,'bounded',2024,'werewolf','jeontae',2,9.8);
insert into booktable(bookID, name, published_year, genre, author_name, parts, rating)values(02,'Since 1894',2020,'Time Travel','Kim Joon',1,9.5);
insert into booktable(bookID, name, published_year, genre, author_name, parts, rating)values(09,'Untamed',2019,'Acient','Maou dao zho si',7,10);
insert into booktable(bookID, name, published_year, genre, author_name, parts, rating)values(01, 'Boun and Bells', 2023, 'romantic', 'weing', 2,8);
insert into booktable(bookID, name, published_year, genre, author_name, parts, rating)values(03, 'Jun and Jun', 2022, 'friendship', 'CK', 1,10);
drop table booktable;
update `bookdatabase`.`booktable` set `bookID` = '4' where (`bookID` = '7');
update `bookdatabase`.`booktable` set `bookID` = '5' where (`bookID` = '9');

select * from booktable;