create database StudentGrades character set 'utf8mb4'; 
use StudentGrades;
create table Students (
	student_id int auto_increment primary key,
    first_name varchar(40) ,
    last_name varchar(30),
    age int,
    grade_math int,
    grade_science int,
    grade_history int
);
insert into Students (first_name,last_name ,age,grade_math,grade_science, grade_history) 
values ("Marx Gary","Lordeus",22,8,7,9);
insert into Students (first_name,last_name ,age,grade_math,grade_science, grade_history) 
values ("Rose Kerlie","Dorsainvil",20,9,6,9);
insert into Students (first_name,last_name ,age,grade_math,grade_science, grade_history) 
values ("Rose Casha","Mathieu",19,9,7,9);
insert into Students (first_name,last_name ,age,grade_math,grade_science, grade_history) 
values ("Rico","Marseille",23,5,7,6);
insert into Students (first_name,last_name ,age,grade_math,grade_science, grade_history) 
values ("Ruth","Dorsainvil",22,9,9,8);
select * from Students;
update Students set grade_math=10 where first_name="Rico";
select first_name , last_name ,(grade_math+grade_science+grade_history)/3 as avg from Students;
alter table Students add grade_english int;
delete from Students where first_name="Rose Casha" and age=19;