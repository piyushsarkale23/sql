create table customers(
customerid int primary key,
firstname varchar(10) not null,
lastname varchar(10) not null,
phone int not null,
email varchar(20) unique,
city varchar(20) not null,

)
sp_help customers
insert into customers values(1,'Debra','Bunks','123','debrabunks@test.com','LA')
insert into customers values(2,'Kasha','Tood','456','kashatod@test.com','Danmark')
insert into customers values(3,'Charlotee','Rice','789','charrice@test.com','Ny')
insert into customers values(4,'Tamika ','Fishers','101','tamika@test.com','CA')
insert into customers values(5,'Natasha','hays','1223','natasha@test.com','PO')
select * from customers
select firstname,lastname,email from customers;
select * from customers where city = 'LA'

select phone,customerid from customers
order by customerid asc;

truncate table customers