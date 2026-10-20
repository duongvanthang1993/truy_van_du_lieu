use QuanLySinhVien1;




select*
from Student
where StudentName like 'h%';

select*
from class
where month(startdate)=12;

select*
from subject
where Credit between 3 and 5;

set sql_safe_updates=0;
update Student
set ClassID = 2
where StudentName ='hung';

set sql_safe_updates=1;

select S.StudentName,Sub.SubName,M.Mark
from mark m
join student s on m.StudentId=s.StudentId
join subject sub on m.SubId =sub.SubId
order by m.Mark desc,s.StudentName asc;
