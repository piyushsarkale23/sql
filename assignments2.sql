--create table department and table employee
create table tblDeptartment
(
depid int primary key,
deptname varchar(20)
)
insert into tblDeptartment values (1,'HR')
insert into tblDeptartment values (2,'Testing')
insert into tblDeptartment values (3,'Development')
insert into tblDeptartment values (4,'Admin')
--update 
UPDATE tblDeptartment
SET deptname = 'Tester'
where depid = 2;



select * from tblDeptartment
create table tblEmployee
(
empid int primary key,
empname varchar(20),
salary int,
city varchar(20),
depid int foreign key references tblDeptartment(depid)
)
alter table tblEmployee
add foreign key (depid) references  tblDeptartment(depid)
insert into tblEmployee values (10,'Mike',10000,'Pune',1)
insert into tblEmployee values (20,'Barry',20000,'Mumbai',4)
insert into tblEmployee values (30,'John',10000,'Pune',3)
insert into tblEmployee values (40,'Paul',30000,'Nashik',2)
insert into tblEmployee values (50,'Rhea',40000,'Nagpur',3)
insert into tblEmployee values (60,'Akkon',15000,'Nashik',1)
insert into tblEmployee values (70,'Becca',20000,'Mumbai',4)
insert into tblEmployee values (80,'carlos',30000,'Mumbai',2)
insert into tblEmployee values (90,'Mithun',40000,'Nashik',1)
insert into tblEmployee values (100,'marry',10000,'Pune',3)
--delete
delete from tblEmployee where empid = 1
select * from tblEmployee

--applying constraint with alter query
alter table tblEmployee alter column salary  int not null
sp_help tblEmployee

--dml --insert,update ,delete

--dql --data query language
--1) select
select deptname from tblDeptartment
select empid,city from tblEmployee

--where with select
select * from tblEmployee where salary <> 10000 
select * from tblEmployee where salary between 15000 and 40000

--order by
select empid,empname
from tblEmployee
order by empname

--group by
select count(empid) as 'emp sal count',salary
from tblEmployee
group by salary

--avg
select max(salary) as 'emp sal count'
from tblEmployee
group by salary 

--Assignment:
--1. create table product(id,name,price,company)
--2. display the product with hightest price to lowest price (first 3 products)
--3. display product name whose price is lowset price in product table
--4. display the product with lowest to highest price (skip first 3 products & display next 5 products)
--5. display product details with alphbetical order of product name & price 
--6. display product details with alphabetical order of company name& price
select * from product
--top with order by
select top 3 * from product
order by price desc

--top with where
select top 1 * from product
where pname = 'chair'

--3
SELECT pname,company,price
FROM product
ORDER BY
price     
offset 0 ROWS
fetch next 1 rows only;

--4display the product with lowest to highest price (skip first 3 products & display 
SELECT pname,company,price
FROM product
ORDER BY
price     
offset 3 ROWS
fetch next 10 rows only;


select top 50 percent * from product;

--5. display product details with alphbetical order of product name & price 
select pname,price,company,id
from product
order by pname,price


--6
select pname,price,company,id
from product
order by company,price

--column alise

select pname + ' ' + company as 'Product with company' from product





select pname +' '+ company as 'Product name & ' from product

--aggrgate functions

select count(id) as 'prod id' from product
select sum(salary) as 'total sal' from tblEmployee
select count(distinct salary) from tblEmployee

--like operators
select * from tblemployee where empname not like '___o_'


select top 1 * from tblEmployee

select top 1 * from tblEmployee
order  by empid desc



select distinct(salary) as 'emp third highest sal'
from tblEmployee
order by salary
offset 2 rows
fetch next 1 rows only;


select depid , count(depid) as 'employee with same depid'
from tblEmployee
group by depid
having count(depid) > 1










select * from tblEmployee
select sum(salary) as 'dept 1 sum sal'
from tblEmployee
where depid in (1)
select sum(salary) 
from tblEmployee
where depid = 2
select sum(salary) 
from tblEmployee
where depid = 3
select sum(salary) 
from tblEmployee
where depid = 4


select empname , salary from tblEmployee
where salary >= 15000
order by empid



select deptname
from tblEmployee emp
inner join tblDeptartment dep
on emp.depid = dep.depid

select * from tblEmployee
select * from tblDeptartment

--joins
--inner join
select te.empname,te.salary,td.depid,td.deptname
from tblEmployee as te
inner join tblDeptartment as td
on te.depid = td.depid;
--inner join with where clause

select tblEmployee.empname,tblEmployee.salary,tblDeptartment.depid,tblDeptartment.deptname
from tblEmployee 
inner join tblDeptartment 
on tblEmployee.depid = tblDeptartment.depid
where tblEmployee.salary> 20000

drop table customers
create table customers
(
customerid int primary key,
firstname varchar(20)
)
insert into customers values(1,'John')
insert into customers values(2,'Robert')
insert into customers values(3,'David')
insert into customers values(4,'Beth')
insert into customers values(5,'Cathy')

select * from customers
drop table orders
create table orders
( 
orderid int,
amount int,
customerid int foreign key references customers (customerid)

)
alter table orders
add foreign key (customerid) references  customers(customerid)
insert into orders values (1,200,1)
insert into orders values (2,600,3)
insert into orders values (3,800,4)
insert into orders values (4,400,5)
insert into orders values (5,900,2)

--left join

select c.firstname,o.amount,o.orderid
from customers as c 
left join orders as o
on  c.customerid = o.customerid
where o.amount > 200
--left join
select te.empname,te.salary,td.depid,td.deptname
from tblEmployee as te
left join tblDeptartment as td
on te.depid =td.depid ;

--right join


--self join 
--a self joinis a regular join .a table that joins itself
select * from tblEmployee
alter table tblEmployee add managerid int
update tblEmployee set managerid = 30 where empid in (10,40,60,80)
update tblEmployee set managerid = 70 where empid in (20,50,90,100)
--write a query to display the manger name
select empname as 'Manager name' from tblEmployee where managerid is null

--write a query to display which employee works under which manager
select emp.empname as 'Employee Name', man.empname as 'Manager Name'
from tblemployee emp , tblemployee man
where man.empid=emp.managerid

select * from tblEmployee
--cross join
select * from Drinks cross join breakfast

--group by
select count(empid) as 'Count',city
from tblEmployee
group by city
--display dept wise count of emp
select count(empid) as 'Count',depid
from tblEmployee
group by depid

select dep.deptname,count(emp.empid) as 'Count'
from tblEmployee emp
inner join tblDeptartment dep
on emp.depid = dep.depid
group by dep.deptname
--display city wise count of emp
select  count(empid),city 
from tblEmployee 
group by city


--having clause
select  count(empid),city 
from tblEmployee 
group by city
having avg(salary) > 30000


--case
select * from tblEmployee


select empname,

case 
when managerid is  null then 'It is a Manager'
else 'He is a employee'
end as 'Row'
from tblEmployee
--

select * from Book
--
select bookname,
case 
when price >500 then 'Expensive'
when price <500 then 'Cheap'
else 'average'
end as 'Row'
from Book


--union
select b





--display emp who is from pune city & hr dept

--display emp from development & hr desc of their salary
select * from tblDeptartment


select emp.empname,emp.city,dep.deptname
from tblEmployee emp
inner join tblDeptartment dep
on emp.depid = dep.depid
where dep.depid = 1 and emp.city = 'Pune'

-- display emp from hr dept & salary is less than 30000
select emp.empname,emp.salary,dep.deptname
from tblEmployee emp
inner join tblDeptartment dep
on emp.depid = dep.depid
where emp.depid =1 and emp.salary <30000
select * from tblEmployee

--display emp from development & hr desc of their salary
select emp.empname,emp.salary,dep.deptname
from tblEmployee emp
inner join tblDeptartment dep
on emp.depid = dep.depid
where emp.depid in (1,3)
order by salary desc

--subquery

select * from tblEmployee where salary= 
(
   select min(salary) from tblEmployee
)

--2
select * from tblEmployee where salary >
(
  select salary from tblEmployee where empid= 40
)

--3

select * from tblEmployee where salary <
(
 select avg(salary) from tblEmployee
)

--4

select * from tblEmployee where depid = 1 and salary <
(
 select avg(salary) from tblEmployee
)
select * from tblEmployee
-- select emp whose city is same as empid 3


select * from tblEmployee where  city =
(
   select  city from tblEmployee  where empid = 30
)

-- display dept wise sum their salaries
select sum(salary) as 'Average sal of every dep', depid from tblEmployee group by depid
select sum (salary) from tblEmployee


select * from tblEmployee
--subquer with update

update tblEmployee set salary = salary + (salary * 0.20) where depid =
(
   select depid  from tblDeptartment where deptname = 'development'
)


drop table tblproject

create  table tblproject
(
empid int ,
empname varchar(20),
city varchar(20)

)
select * from tblproject

insert into tblproject select empid,empname,city from tblEmployee where depid = 
(
   select depid from tblDeptartment where deptname = 'HR'
)

--user defined function 
create function Calculation(@a int , @b int)
returns int
as
begin
declare @c int
set @c = @a + @b
return @c
end
select dbo.Calculation(10,30) as 'Addition'


--2 
create function Substraction(@a int ,@b int)
returns int
as begin
declare @c int
set @c = @a - @b
return @c
end
select dbo.substraction(5,10)
drop function substraction
--3 multiplication
create function Multi (@a int,@b int)
returns int
as 
begin
declare @c int
set @c = @a * @b
return @c
end

select dbo.Multi(2,23)
select * from tblEmployee
--2 multivalue function
create function getempbyempid(@empid int) 
returns table
as 
return
(
select * from tblEmployee where empid = @empid
)

select * from dbo.getempbyempid(70)
drop function getempbydepid


--2
create function getempbydepid(@depid int)
returns table
as
return
(
select * from tblEmployee where depid = @depid
)
select * from dbo.getempbydepid(1)

select * from product

--3
create function Prodpricead(@price int ,@dp decimal)
returns decimal
as begin
declare @priceafd decimal
set @priceafd = @price + @dp
return @priceafd
end
drop function Prodpricead
select dbo.Prodpricead(100,0.25)

