--create table Book
--(
--id int,
--name varchar(20),
--price int,
--author varchar(10),
--publication varchar(20),
--contact int 

--)
----con
--alter table Book alter column id int not null
--alter table Book add constraint pk_book primary key(id)




----alter table Book alter column name varchar not null
----alter table Book add constraint pk_name primary key(name)

----uni-con,

--alter table Book add constraint unique_book unique(contact)

--alter table Book add constraint chk_bookp check(price>=100)

--alter table Book add constraint df_book default 'TQ' for publication

--sp_help Book

create table tblDept
(
deptid int primary key,
deptname varchar(20),



)


create table tblemployee
(
empid int primary key,
empname varchar(20),
deptid int,
constraint fk_deptemp foreign  key (deptid) references tblDept(deptid)
)


--alter  table tblemployee add constraint fk_deptemp foreign  key (deptid) references tblDept(deptid)



--select * from tblDept
--select * from tblemployee

----DML insert

--insert into tblDept values (1,'HR')
--insert into tblDept values (1,'Admin')

--insert into tblemployee values (10,'Jack',1)
--insert into tblemployee values (20,'Mike',1)
--insert into tblemployee values (30,'KRK',1)
drop table employee

--create table employee(
--id int primary key,
--name varchar(10) not null,
--email varchar(10) unique,
--age int check(age>18),
--country varchar(20) default('India'),
--)
--sp_help employee
--select * from employee

---- student table and apply constraints
----rollno pk , name required, email unique, age >18 , city - pune
drop table employee
create table Student(
rollno int primary key,
name varchar(10) not null,
email varchar(20) unique,
age int check(age>18),
city varchar(4) default ('Pune'),
)
sp_help Student

-- employee
-- on emp table we want apply constraints using alter query



create table employee(
id int ,
ename varchar(10) ,
email varchar(10) ,
age int check(age>18),
country varchar(20) ,
)

--primary key
alter table employee alter column id int not null
alter table employee add constraint pk_employee primary key(id)
--unique
alter table employee add constraint un_employee unique(ename)
--unique
alter table employee add constraint ue_employee unique(email)
--check
alter table employee add constraint cha_employee check(age>18)
--default
alter table employee add constraint df_employee default 'India' for country
alter table employee drop constraint df_employee
sp_help employee

drop table tbldept

--fk_constraint
create table tbldept
(
depid int primary key,
depname varchar (10),


)
--1  hr
--2  admin

create table tblemp
(
empid int primary key, 
empname varchar(10),
city varchar(20),
depid int,
constraint fk_depemp foreign key (depid) references tbldept(depid) 
)
drop table tblemp
alter table tblemp add constraint fk_depemp foreign key (depid) references tbldept(depid) 

alter table tblemp drop constraint fk_depemp
-- non cluster index --> applies on col where values may be duplicate
create index in_employee on tblemp(empname,city)
--cluster index --> applies on the PK column
create index in_employee2 on tblemp(empid)


--truncate table employee

select * from tbldept
select * from tblemp

--DML -> 
insert into tbldept values(1,'HR')
insert into tbldept values(2,'Admin')

insert into tblemp values('Rohan','Pune',1)

insert into tblemp values('Rohit','Pune',1)
insert into tblemp values('Pranit','Pune',1)

insert into tblemp values('Roshan','Mumbai',1)





insert into tblemp(empname,depid) values('Rajesh',4)




