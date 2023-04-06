--3Append letter ‘_spl’ to all batch ids of trainer ‘Akkon’
--maja trainer name vegalya aahe question madhya ‘Deepa’ aahe.
select CONCAT(trainername,'spl')as 'result' from Trainer where trainerid = 11
 
--4. Update table student. Update ‘remark’ field. Remark should be ‘Eligible for exam’ if fees paid
--by student is more than 60%.
update Student
set remark ='Eligible for exam'
where feespaid >=20000 ;