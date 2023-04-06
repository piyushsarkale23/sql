create table car(
carno int,
carname varchar(10),
carprice int,
)
alter table car alter column carname varchar(15)
alter table car add cartype varchar(10) 
alter table car drop column cartype 
sp_help car
drop table Employee
--select * from car
create table Employee
(
empid int primary key,
empname varchar(10) not null,
empemail varchar(10) unique,
empage int check(empage>18),
country varchar(10) default('India')
)
select * from Employee
sp_help Employee