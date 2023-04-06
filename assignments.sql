
--1.	Write a statement that will select the City column from the Customers table
drop table customers
create table customers
(
id int primary key,
name varchar(20) not null,
city varchar (20) not null,
pincode int not null,
country varchar(20),

)
--sp_help customers
select * from customers
insert into customers values (1,'Mike','Berlin',411019,'US')
insert into customers values (2,'Maddy','Berlin',411019,'US')
insert into customers values (3,'Michin','Palmero',411011,'UK')
insert into customers values (4,'Michael','Tokyo',419819,'China')
insert into customers values (5,'Mchool','Denver',419819,'china')
insert into customers values (6,'Marshall','Palermo',411011,'UK')
insert into customers values (7,'Mitchell','Denver',412139,'Japan')
insert into customers values (8,'Molly','Nairobi',48719,'Germany')
insert into customers values (9,'Mihu','tokyo',24519,'Japan')
insert into customers values (10,'Oelfila','LA',42789,'Germany')
select city from customers

--2.	Select all the different values from the Country column in the Customers table.
select  Distinct country from customers

--3.	Select all records where the City column has the value Berlin
select * from customers where city ='Berlin'
--4.	Use the NOT keyword to select all records where City is NOT "Berlin".
select * from customers where not city ='Berlin'
--5.	Select all records where the CustomerID column has the value 2.
select * from customers where id = 2

--6.	Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select * from customers where city = 'Berlin' and pincode = 411019

--7.	Select all records where the City column has the value 'Berlin' or 'London'.
select * from customers where city ='Berlin' or city ='Tokyo'

--8.	Select all records from the Customers table, sort the result alphabetically by the column City.
select city from customers
order by city 

--9.	Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select city from customers
order by city desc

--10.	Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City

select country,city from customers
order by country,city

--29.	Use the IN operator to select all the records where the Country is either "Norway" or "France".
select * from customers where city in ('Denver','LA')

--30.	Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select * from customers where not city in ('Denver','LA')

--31.	Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
create table Product(
pid int primary key,
pname varchar(20),
price int not null,

)
select * from Product
insert into Product values(100,'pen',10)
insert into Product values(200,'sharpner',15)
insert into Product values(300,'eraser',50)
insert into Product values(400,'pencil',10)
insert into Product values(500,'scale',20)
insert into Product values(600,'Compass',120)
insert into Product values(700,'Rounder',15)
insert into Product values(800,'Pouch',35)
insert into Product values(900,'Lead pencil',20)
insert into Product values(1000,'Kit kat',50)

select * from Product where price between 10 and 20

--40.	Add a column of type DATE called Birthday in Persons table
drop table Person
create table Person(
birthdayd date,
)
select * from Person
insert into Person values('11-22-2022')

--41.	Delete the column Birthday from the Persons table
alter table Person drop column birthdayd 
alter table Person
add id int;

--11. Select all records from the Customers where the PostalCode column is empty.
select * from customers where pincode = null

--12 Select all records from the Customers where the PostalCode column is NOT empty.

select * from customers where  pincode is not null
--13 .Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "US".
update customers  set city  = 'Oslo' where country = 'US'

--14. Delete all the records from the Customers table where the Country value is 'UK'. 
delete from customers where country = 'UK'

--15 . Use the correct function to return the number of records that have the Price value set to 20
select * from Product where price = 20

--20 Select all records where the value of the City column starts with the letter "a".
select * from customers where city like 'n%'

--21 .Select all records where the value of the City column ends with the letter "a".
select * from customers where city like '%o'

--22 Select all records where the value of the City column ends with the letter "a".
select * from customers where city like '%a%'

--23Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from customers where city like 'T%%o'

--24)Select all records where the value of the City column does NOT start with the letter "a".
select * from customers where city not  like 'D%'

--25)Select all records where the second letter of the City is an "s".
select * from customers where city like '_s__'

--26)Select all records where the first letter of the City is an "a" or a "o" or an "e".
select * from customers where city   like '%[eao]%'

--27)Select all records where the first letter of the City starts with anything from an "D" to an "L".
select * from customers where city like '[dl]%'

--28)Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from customers where city not like '[l]%'

--33)Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Pen' and 'Pencil'.
select * from Product where pname  between 'pen' and 'pencil'
order by pname

drop table Product
--Assignments
--1
create table product(
id int primary key,
pname varchar(20),
price int not null,
company varchar(20),

)
select * from product
insert into product values(1,'earphone',500,'BOAT')
insert into product values(2,'laptop',50000,'HP')
insert into product values(3,'battery',5000,'exide')
insert into product values(4,'chair',500,'hick')
insert into product values(5,'mobile',15000,'nokia')
insert into product values(6,'pendrive',450,'abc')
insert into product values(7,'powerbank',800,'realme')
insert into product values(8,'charger',150,'asus')

--2
select * from product
order by price desc
offset 0 rows
fetch next  3 rows only


--3
select pname from product
order by price
offset 0 rows
fetch next  1 rows only

--4
select * from product
order by price 
offset 3 rows
fetch next  5 rows only

--5
select * from product
order by pname,price

--6
select * from product
order by company,price



---column alias
select pname +' ' + company as 'Product with company' from product
select pname,pname as 'Product Name',price,price as 'Product Price' from product
--Aggregrate functions in SQL
--avg,sum,max,min
--returns a scalar value - Single value


select count(pname) as 'Product nos' from product

select sum(price) as 'Price sum ' from product

select avg(price) as 'Price avg ' from product

select max(price) as 'Price maximum ' from product

select min(price) as 'Price min ' from product






--36)List the number of customers in each country.
select id from customers

--15)Use the MIN function to select the record with the smallest value of the Price column.
select min (price ) as 'Min Product price' from product

--16) Use an SQL function to select the record with the highest value of the Price column.
select max (price ) as 'Max Product Price' from product

--17)Use the correct function to return the number of records that have the Price value set to 500
select count(price)as 'Product prices' from product where price= 500

--18)Use an SQL function to calculate the average price of all products.
select avg(price) as 'average price' from product

--19)Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(price) as'Sum price' from product


--34) When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select * from customers
select pincode,pincode  as 'pcno' from customers

select * from tblemp
delete  from tblemp where empid = 7
--inner join
select  emp.*,dept.depname
from tblemp emp
inner join tbldept dept on dept.depid = emp.depid

insert into tblemp values ('Amit','Nashik',2)
insert into tblemp values ('Alberto','Nashik',3)
insert into tblemp values ('Alavro','Mumbai',1)
insert into tblemp values ('AK','Mumbai',3)
select * from tbldept
--display emp who is from pune city & hr dept
select emp.*,dept.depname
from tblemp emp
inner join tbldept dept on dept.depid = emp.empid
where dept.depname='HR' and emp.city = 'Pune'
update tblemp set empid =1  where  empid =3

update customers  set city  = 'Oslo' where country = 'US'

--left join
select emp.*,dept.depname
from tblemp emp
left join tbldept dept on dept.depid = emp.empid

--right join
select emp.*,dept.depname
from tblemp emp
right join tbldept dept on dept.depid = emp.empid





--inner join must have a common column in both table by which we can join 2 table
select * from tblemp
select * from tbldept

update  tbldept set depname = 'Testing' where depid = 3 
--1 solved
select emp.*,dept.depname
from tblemp emp
inner join tbldept dept on dept.depid = emp.depid
where emp.city = 'Nashik' and dept.depname='ll'


-- left join
select emp.*,dept.depname
from tblemp emp
left join tbldept dept on dept.depid = emp.depid

insert into tblemp values('Ashish','Nashik',2)

--right join
select emp.*,dept.depname
from tblemp emp
right join tbldept dept on dept.depid = emp.depid


insert into tblemp values('Ashotosh','Nashik',null)
insert into tblemp values('AJ','Mumbai',null)

--full outer join
select emp.*,dept.depname
from tblemp emp1, managerid man
full outer join tbldept dept on dept.depid = emp.depid


--self join
alter table tblemp add managerid int
select * from tblemp
update tblemp set managerid = 15 where empid in (4,6,12,13)
update tblemp set managerid = 18 where empid in (5,11,14,15)
update tblemp set managerid = null where empid = 15
update tblemp set managerid = 18 where empid in (16,17)
update tblemp set managerid = 18 where empid in (3)

select empname as 'Manager' from tblemp where managerid is null

--show which emp work under which manager
select * from tblemp where   managerid = empid
order by empname

select * from tblemp,tbldept
--display dept wise count of emp
select depid,count(empid) as 'Count'
from tblemp
group by depid
--select depname from tbldept

--display country wise count of customer
--select * from customers
--select country ,count (id) as 'Count' 
--from customers
--group by country
select depid,count(empid) as 'Count'
from tblemp
group by depid
















--full join

select emp.*,dept.depname
from tblemp emp
full join tbldept dept on dept.depid = emp.empid
where depname in('HR','Testing','Admin')
order by emp.empid


--print manager
select * from tblemp where managerid is null
--self join
--select emp.empname as 'Employee Name', man.empname as 'Manager Name'
--from tblemp emp , tblemp man
--where man.empid=emp.managerid
--which employee works under which manager
select emp.empname as 'Employee name ', man.empname as 'Manager name'
from tblemp emp,tblemp man
where man.empid = emp.managerid

-- cross join
create table breakfast(
id int primary key,
name varchar(19),

)
insert into breakfast values(1,'Poha')
insert into breakfast values(2,'upma')
insert into breakfast values(3,'Idli')

select * from breakfast

create table Drinks(
did int primary key,
dname varchar(10),

)
insert into Drinks values(1,'Tea')
insert into Drinks values(2,'Coffee')

select * from Drinks

select * from breakfast cross join Drinks 


--group by clause
select city ,count(empid) as 'Employee count'
from tblemp
group by city

----display dept wise count of emp
select depid,count(empid)as'Employee count'
from tblemp
group by depid

--select dept.depname,count(emp.empid) as 'emp count'
--from tblemp emp 
--inner join tbldept dept on dept.depid=emp.depid
--group by dept.depname

select dept.depname,count(emp.empid) as'Employee count'
from tblemp emp
inner join tbldept dept on dept.depid =emp.depid
group by dept.depname
--display country wise count of customer
select cust.country,count(cust.id) as'Customer count'
from customers cust
group by cust.country
select * from customers

--having clause
select * from tblemp
where city in ('Pune')





--Book table	– Book id , book name , author id , price , published date
--Author table 	– author id , author name , ph no , email , address, city 
--Awards table 	– award id , award type id, author id , book id , year 
--Awards master table – award type id , award name , award price

--Write a query to show book name , author name and award name for all books which has received any award. 
drop table Book
create table Book
(
bookid int not null,
bookname varchar(20) ,
authorid int primary key,
price int,
publisheddate date,
)
Alter table Book add primary key (bookid);

insert into Book values(1,'Lord of rings',100,119,'2016-11-5')
insert into Book values(2,'Lord of powers',200,299,'2018-4-9')
insert into Book values(3,'The magic tree',300,799,'2018-2-9')
insert into Book values(4,'Call of forest',400,499,'2013-8-4')
insert into Book values(5,'Tower to the stars',500,389,'2012-10-4')
insert into Book values(6,'Star wars',600,299,'2019-11-4')
insert into Book values(7,'emma',700,878,'2016-11-4')


drop table author
--Author table 	– author id , author name , ph no , email , address, city 
create table author
(
authorname varchar(20),
phoneno int,
email varchar(20),
address varchar(20),
city varchar(15),
authorid int foreign key references Book(authorid)

)
alter table author 
add foreign key(authorid) references Book(authorid);
insert into author values('J.K',2345678,'jk@test.com','near KK bridge','Pune',100)
insert into author values('B.J',1245678,'bj@test.com','near BK town','Mumbai',200)
insert into author values('A.K',4561678,'ak@test.com',' ll apartment','Pune',300)
insert into author values('Ollie',9876678,'oll@test.com',' K-town','Mumbai',400)
insert into author values('bally',234567811,'bally@test.com','paul colony','Pune',500)
insert into author values('fally',834562178,'fally@test.com','Aoin apartments','Mumbai',600)
insert into author values('kally',22345678,'kally@test.com','near pp bridge','Pune',700)

select * from author

select * from Book
--Awards table 	– award id , award type id, author id , book id , year 
drop table Award
create table Award
(
awardid int,
awardtype varchar(20) primary key ,
year int,
authorid int foreign key references Book(authorid),
)
alter table Award
add foreign key(authorid) references Book(authorid);
insert into Award values(10,'National Book award',2022,100)
insert into Award values(11,'Noble prize',2022,200)
insert into Award values(12,'The Booker award',2022,500)
insert into Award values(13,'Costa Book award',2022,600)

select * from Award 

--Awards master table – award type id , award name , award price
create table Awardmaster
(
awardname varchar(20),
awardprize int,
awardtype varchar (20) foreign key references Award(awardtype),
authorid int foreign key references Book(authorid),
)
alter table Awardmaster
add foreign key(authorid) references Book(authorid);

insert into Awardmaster values('abcaward',100,'The Booker award')
insert into Awardmaster values('efgaward',1000,'National Book award')
insert into Awardmaster values('ghiaward',1800,'Noble prize')
insert into Awardmaster values('xyzaward',1070,'Costa Book award')
insert into Awardmaster values('klmaward',1001,'The Booker award')



--1. Write a query to show book name , author name and award name for all books which has received any award. 
select b.bookname,a.authorname,am.awardtype,am.year
from Book as b
inner join author as a
on b.authorid = a.authorid
inner join Award am
on b.authorid = am.authorid


--2.Write a query to update author name of authors whose book price is > 1000. Prefix author name with ‘Honourable’ .


--3.Write a query to display authors and number of books written by that author. Show author who has written maximum books at the top.


--4.Write a query to select book name with 5 th highest price.
select price  
from Book
where price>100
order by bookname
offset 5 rows
fetch next 1 rows only;

--7 Show award names and number of books which got these awards. 

select awa.awardtype,book.authorid
from Book book
full join award awa on awa.authorid=book.authorid

--1)Insert a new student sid = 5 , name = aman ,city = 'hyderabad' into the students table
create  table student
(
sid int primary key,
name varchar(10),
city varchar(20)

)
select * from Student
insert into student values(1,'Aman','hyderabad')
insert into student values(2,'Amit','Nashik')
insert into student values(3,'AK','Nagpur')
insert into student values(4,'Gita','Pune')
insert into student values(5,'AJ','mumbai')
insert into student values(6,'AM','Bangalore')
  --2) change city of sid =4 (gita)= sangli
update student set city = 'sangli' where sid =  4 



--

ALTER TABLE student
ADD Email varchar(255);
--3) return list of all students with columns sid,city,name
select sid,name,city from student

--4)return list containing columns sid,name,subname,marks,maxmarks



select * from tblemp
alter table tblemp
add salary int

update tblemp set salary = 35000 where empid in (3,6,11)
update tblemp set salary = 25000 where empid in (4,12,13)
update tblemp set salary = 85000 where empid in (18,15)
update tblemp set salary = 30000 where empid in (5,14,16,17)
select * from tbldept
--select emp whose  city is same as empid 3

select * from tblemp where city = 'Pune'

--display dept wise sum of salaries
select avg(salary )as ' average salary' from tblemp where depid in (1,2,3) 










select * from tblemp
--subquery with insert

create table tblproject
(
empid int,
empname varchar(20),
city varchar(10)
)

select * from tblproject

insert into tblproject select  empid , empname,city from tblemp where depid =
(
 select depid from tbldept where depname = 'HR'

 select * from tblemp
 insert into tblproject select  empid , empname,city from tblemp where salary < all(
 select avg(salary) from tblemp
 )


 select * from tblemp where salary < all(
 select avg(salary) from tblemp group by depid
 )



 select * from tblemp where salary = (
 select max(salary)  from tblemp where salary <>
 (

 select max(salary)  from tblemp  
 )
 )

 select empname,len(empname) as 'name length' from tblemp
 select upper(empname) as 'upper name'from tblemp 

  select lower(empname) as 'lower name'from tblemp 
  select trim (empname) as 'trim fun 'from tblemp


  select empname,SUBSTRING (empname, 1,3) from tblemp
  select CONCAT(empname ,'-',city,'-',salary) as 'result' from tblemp

  select REPLACE(city ,'Pune','Poona') from tblemp
  select * from tblemp
  select * from tblemp
  select empname,REVERSE (empname) as 'reverse name ' from tblemp
  select * from tblemp
  select ISNULL(depid,'NA')as 'depid' from tblemp

  select CAST(salary as varchar(20))as 'salary' from tblemp
  select cast(CURRENT_TIMESTAMP as date)
  select year(cast(CURRENT_TIMESTAMP as date))
    select month(cast(CURRENT_TIMESTAMP as date))
	  select cast(CURRENT_TIMESTAMP as time)
	  alter table tblemp add joiningdate date
	  select * from tblemp -- yyyy-mm-dd
update tblemp set joiningdate= cast('2023-2-10'as date) where empid=3






select * from student
drop table student


--Student - rollno , sname , degree , birthdate , course id , batch id , fees paid , Remark, is placed
--Course – course id , course name, duration (in months), trainer id , total fees
--Trainer – Trainer id , trainer name , join date , email , experience in years 
create table Student(
rollno int,
sname varchar(20),
degree varchar(20),
birthdate date,
courseid int primary key,
batchid int,
feespaid varchar(10),
remark varchar(20)

)
alter table student
add feespaid int
select * from Student
insert into Student values(10,'Raju','Engineering','2003-11-1',1,100,20000,'Good')
insert into Student values(20,'Mike','Engineering','2003-10-10',2,100,12000,'Good')
insert into Student values(30,'Oliver','Engineering','2003-9-20',3,100,20000,'Good')
insert into Student values(40,'Rick','Engineering','2003-9-23',4,100,21000,'Good')
insert into Student values(50,'Negan','Engineering','2003-8-19',5,100,15000,'Good')
insert into Student values(60,'Karrion','Engineering','2003-11-9',6,100,30000,'Good')
insert into Student values(70,'Kofi','Engineering','2003-11-8',7,100,18000,'Good')
insert into Student values(80,'Bige','Engineering','2003-11-8',8,100,23000,'Good')
update Student set feespaid =20000 where rollno in(10,30,60,70)
update Student set feespaid =10000 where rollno in(20,40,50,80)
select * from Student

--Course – course id , course name, duration (in months), trainer id , total fees


create table course(
coursename varchar(20),
duration varchar(10),
trainerid int primary key,
totalfees int,
courseid int foreign key references Student(courseid)
)
alter table course
add foreign key(courseid) references Student(courseid);
insert into course values('dotnet-training','48 months',11,34000,1)
insert into course values('dotnet-training','48 months',21,34000,2)
insert into course values('dotnet-training','48 months',31,34000,3)
insert into course values('dotnet-training','48 months',41,34000,4)
insert into course values('javatraining','48 months',51,32000,5)
insert into course values('javatraining','48 months',61,32000,6)
insert into course values('javatraining','48 months',71,32000,7)
insert into course values('javatraining','48 months',81,32000,8)

select * from course

--Trainer – Trainer id , trainer name , join date , email , experience in years 
create table Trainer
(
trainerid int foreign key references course(trainerid),
trainername varchar(20),
joindate date,
email varchar(20),
experience date
)
alter table Trainer
add experience int
alter table Trainer
add foreign key(trainerid) references course(trainerid);
insert into Trainer values(11,'Akkon','2008-2-8','akkon@test.com',5)
insert into Trainer values(21,'Becca','2018-2-8','becca@test.com',5)
insert into Trainer values(31,'cathhy','2012-2-8','catthy@test.com',2)
insert into Trainer values(41,'Dom','2016-2-8','dom@test.com',8)
insert into Trainer values(51,'elias','2020-2-8','elias@test.com',2)
insert into Trainer values(61,'Famdango','2009-2-8','fam@test.com',7)
insert into Trainer values(71,'Gorge','2007-2-8','go@test.com',6)
insert into Trainer values(81,'michael','2008-2-8','akkon@test.com',5)

select * from Trainer


--Please write following queries.
--1. Show list of students. List contains roll no , student name , course name , trainer name in
--order of course name and student name.

select s.rollno,s.sname,c.coursename,t.trainername
from Student as s
inner join course as c
on s.courseid = c.courseid
inner join Trainer as t
on c.trainerid = t.trainerid
select * from Student
--2. Show list of students who have pending fees more than 2000rs . List should have student
--name , course name , balance fees . Show this list in descending order of balance fees. 
select * from Student where feespaid >= 20000
alter table student
add balancefess int
update Student set balancefess =0 where rollno in (10,20,30,40,50,60,70,80)
select * from Student
select * from course

update Student
set balancefess = totalfees - feespaid
from Student as s
inner join course as c
on s.courseid = c.courseid

--2. Show list of students who have pending fees more than 15000rs . List should have student
--name , course name , balance fees . Show this list in descending order of balance fees. 
select * from Student where balancefess >=15000
select * from Trainer
--3Append letter ‘_spl’ to all batch ids of trainer ‘Akkon’
--maja trainer name vegalya aahe question madhya ‘Deepa’ aahe.

select CONCAT(trainername,'spl')as 'result' from Trainer where trainerid = 11
 
--4. Update table student. Update ‘remark’ field. Remark should be ‘Eligible for exam’ if fees paid
--by student is more than 60%.
update Student
set remark ='Eligible for exam'
where feespaid >=20000 ;

--5. Create a index to make retrieval faster based on course name.
na

--7. List name of course for which maximum revenue was generated. ( max fee collection)
select * from Student

select * from course
alter table course
add revenuegen int;
update course 
set revenuegen = 34000 * 4 where coursename ='dotnet-training'

update course 
set revenuegen = 32000 * 4 where coursename ='javatraining'


select * from course where revenuegen> 128000

select * from Student
--8. Select name of student who are in same batch as ‘raju’.

select * from Student where batchid = 100

--9Delete all students who are in course which is less than 10 months duration.

DELETE FROM course
WHERE duration =' 10 months'


update course
set duration =' 10 months'
where trainerid in (11,31,51) ;


--function
create function Addition(@a int , @b int)
returns int
as
begin
declare @c int
set  @c = @a + @b
return @c
end

select dbo.Addition(10,30)


create function Multiplication (@a int , @b int)
returns int 
as 
begin
declare @c int
set @c = @a * @b
return @c
end

select dbo.Multiplication(12,2)

create function getnamebyid(@id int)
returns varchar(20)
as begin
return
(
select empname from tblemp where empid = @id


)
end

select dbo.getnamebyid(5) as 'Employee name'
drop function getnamebyid

--2 . multivalue function  -->which returns the recordset
create function getempbydepid(@did int)
returns table
as 
return
(
select * from tblemp where depid = @did
)
select * from dbo.getempbydepid(3)

-- create a function to pass product price & discount percentage
-- returns the discounted price
select * from product
alter table product
drop column discountedprice 

create function getdiscountedp(@price int,@discountper int)
returns int
as
begin
declare @discount int
set @discount = @price *@discountper/10
return @discount
end

drop function getdiscountedp
select dbo.getdiscountedp(100,10)











create proc GetAllEmps
as begin
select * from tblemp
return
end


exec GetAllEmps


create proc GetEmpByDept(@deptid int)
as begin
select * from tblemp where depid=@depid
return
end

exec GetEmpByDept @depid=4

create proc InsertEmp(
@empname varchar(20),
@city varchar(20),
@did int,
@salary int,
@managerid int,
@joiningdate date
)
as begin
insert into tblemp values(@empname,@city,@did,@salary,@managerid,cast(@joiningdate as date))
return 
end

exec InsertEmp
@empname='Test',
@city='Pune',
@did=4,
@salary=35500,
@managerid=3,
@joiningdate='2/3/2023'

select * from Product
select * from productlog
insert into Product values('Test','HP',100)
delete from Product where id=12
-- create a trigger that will maintain log for product table

create table ProductLog
(
logid int primary key identity(1,1),
description varchar(255)
)

-- any prodcut inserted in the product table log the details using trigger
-- triggers have built in properties 
-- inserted
--deleted
create trigger tr_product_insert
on product after insert
as begin
declare @prodid int
select @prodid = id from inserted
insert into ProductLog values('New Product id '+cast(@prodid as varchar(10))+
' added on '+cast(CURRENT_TIMESTAMP as varchar(20)))
end



create trigger tr_product_delete
on product after delete
as begin
declare @prodid int
select @prodid = id from deleted
insert into ProductLog values('Product id '+cast(@prodid as varchar(10))+
' removed from table on '+cast(CURRENT_TIMESTAMP as varchar(20)))
end

--update --> deleted (old data) inserted (new data)
--mouse HP 799 (deleted)
--mouse dell 899 (inserted)


--Stored Procedure

select * from tblEmployee

create proc GetallEmpbydepid
as begin
select * from tblEmployee where depid = 1
return
end
drop proc GetallEmpbydepid
exec GetallEmpbydepid


--stored procedure with parameter
create proc GetallEmpbydepid(@depid int)
as begin
select * from tblEmployee where depid = @depid
return
end

exec GetallEmpbydepid @depid = 1

select * from tblemp
create table emp
(
empname varchar(20),
city varchar(20),
did int,
salary int,
managerid int,
joiningdate date
)
select * from emp
--stored procedure with insert
create proc insertemp
(
@empname varchar(20),
@city varchar(20),
@did int,
@salary int,
@managerid int,
@joiningdate date
)
as begin
insert into emp
values(@empname,@city,@did,@salary,@managerid,cast(@joiningdate as date))
return 
end

exec insertemp
@empname ='Test',
@city ='Pune',
@did =1,
@salary= 5000,
@managerid =5,
@joiningdate ='2/3/2012'
select * from emp


--update

create proc Updateproc
as begin
update emp set empname = 'Saul',city = 'Mumbai'
where did = 1
end
drop proc Updateproc
exec Updateproc

--delete
create proc Deleteproc
as begin
delete emp where empname = 'Saul'
end
exec Deleteproc