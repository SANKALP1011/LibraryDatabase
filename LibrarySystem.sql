
#This is the template of database which we could modify as per our need,we could add the tuples later when the code implementation is done.
#We could the attributes as per our requiremnt.
#Currently,there are 17 tuples in our relation.


create database LibraraySystemdb;
use LibraraySystemdb;

create table Books(
BookNo int primary key not null,
Name varchar(50),
Author varchar(50),
IssueDate varchar(50)
);

#Database for Books,we would add the name of books and author later.
insert into Books
values(1002,"Secret of nagas","Amish","2-03-2020"),
(1004,"Secret of nagas","Amish","2-03-2020"),
(1006,"Secret of nagas","Amish","2-03-2020"),
(1008,"Secret of nagas","Amish","2-03-2020"),
(1009,"Secret of nagas","Amish","2-03-2020"),
(1010,"Secret of nagas","Amish","2-03-2020"),
(1080,"Secret of nagas","Amish","2-03-2020"),
(1078,"Secret of nagas","Amish","2-03-2020"),
(1065,"Secret of nagas","Amish","2-03-2020"),
(1012,"Secret of nagas","Amish","2-03-2020"),
(1098,"Secret of nagas","Amish","2-03-2020"),
(1013,"Secret of nagas","Amish","2-03-2020"),
(1031,"Secret of nagas","Amish","2-03-2020"),
(1021,"Secret of nagas","Amish","2-03-2020"),
(1025,"Secret of nagas","Amish","2-03-2020"),
(10023,"Secret of nagas","Amish","2-03-2020"),
(1076,"Secret of nagas","Amish","2-03-2020")
;
describe Books;
select* from Books;

#Database for Customer ,we could add the tuples later.
create table Customer(
Name varchar(60),
Age int,
BookNo int,
IssueDate varchar(60),
foreign key(BookNo)references Books(BookNo)
);
describe Customer;

insert into Customer
values
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04"),
("John",23,1012,"2021-10-04")
;
select* from Customer;
drop table Customer;

delimiter $$
create procedure InsertValues()
begin
declare x int;
set x:= 1;
while x < 25 do
insert into Books 
values(1087,"Secret of nagas","Amish","2-03-2020");  #Insert different value here.
set x = x + 1;
end while;
end$$
call InsertValues();


