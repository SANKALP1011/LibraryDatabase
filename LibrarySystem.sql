
-- #This is the template of database which we could modify as per our need,we could add the tuples later when the code implementation is done.
-- #We could the attributes as per our requiremnt.
-- #Currently,there are 17 tuples in our relation.


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

/*Don't insert the duplicate values because then the procedure would show error.
Error - Duplicate value for bookId which is a primary key.
Reason for error -:
 Primary key(bookid) is unique so we cannot add duplicate values.
 When procedure is called it would add the first tuple into the relation,
 then it iterates and throws an error becaue it encounters the same value of bookid which is a primary key.
 
 Error shown -:
 11:58:08	call InsertValues()	Error Code: 1062. Duplicate entry '1087' for key 'books.PRIMARY'	0.0070 sec.
 
 Modify the procedure-:
 1).Change the value of x < "NUMBER"
 2).Modify the "NUMBER" according to your requirements , that is how many tuples you want to add.
 3).Update on line 93.
 3).Run the procedure.
*/

delimiter $$
drop procedure if exists InsertValues$$
create procedure InsertValues()
begin
declare x int;
set x:= 1;
while x < 2 do
insert into Books 
values(1001,"hh","kkk","jjj"),
(1029,"jjj","ff","lll");        
set x = x + 1;
end while;
end$$
call InsertValues();


