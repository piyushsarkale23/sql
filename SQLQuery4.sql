create table tbldept
(
depid int primary key,
depname varchar (10),


)
create table tblemp
(
empid int primary key, 
empname varchar(10),
city varchar(20),
depid int,
constraint fk_depemp foreign key (depid) references tbldept(depid) 
)
alter table tblemp add constraint fk_depemp foreign key (depid) references tbldept(depid)
alter table tblemp drop constraint fk_depemp

insert into tbldept values(1,'HR')
insert into tbldept values(2,'Admin')
insert into tbldept values(3,'Testing')
insert into tbldept values(4,'Developer')

select * from tbldept
select * from tblemp
alter table tblemp add salary decimal
update tblemp set salary = 35000 where empid in (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
update tblemp set salary = 25000 where empid in(1,3,5,7,9,12,14)

update tblemp set depid = 3 where empid in (5,6,9)
update tblemp set depid = 4 where empid in (8,10,12)
update tblemp set depid = 4 where empid in (13,11,14,15)
insert into tblemp values(1,'Jack','Pune',1)
insert into tblemp values(2,'Mike','Mumbai',2)
insert into tblemp values(3,'Johnson','Banglore',3)
insert into tblemp values(4,'Strand','Mysore',4)
insert into tblemp values(5,'Chris','Delhi',5)
insert into tblemp values(6,'Nick','Mangalore',6)
insert into tblemp values(7,'luke','Thane',7)
insert into tblemp values(8,'Maddy','Kolkata',8)
insert into tblemp values(9,'Travis','Punjab',9)
insert into tblemp values(10,'John','UK',10)
insert into tblemp values(11,'Walt','UP',11)
insert into tblemp values(12,'Gus','Bihar',12)
insert into tblemp values(13,'Macho man','Mumbai',13)
insert into tblemp values(14,'Miz','Mumbai',14)
insert into tblemp values(15,'Michael','Mumbai',15)
select * from tblemp where depid in (1)
select * from tblemp where city ='Pune' or salary >30000
--operators
select * from tblemp where not city = 'Pune'
--order by
select * from tblemp
order by salary

select * from tblemp
order by salary desc
update tblemp set empname ='Daniel' where empid = 2
update tbldept set depname = 'Sales' where depid = 2

--DQL


--operators
select * from tblemp where salary <>25000
select * from tblemp where salary between 25000 and 35000

--distinct
select distinct city from tblemp
select distinct salary from tblemp
select distinct depid from tblemp

-- in & not in
-- in --> select multiple possible values
select * from tblemp where depid in(3,4)
select * from tblemp where empid in(3,4)
select * from tblemp where city in('Pune','Mangalore')

select * from tblemp where empid not in(3,4)
select * from tblemp where city not in('Pune','Mangalore')