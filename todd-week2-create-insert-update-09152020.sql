-- create database school;

-- Use the school database
use school; 

-- Drop old table       
drop table student;

-- Create the new table
create table student (
  student_id int auto_increment,
  name varchar(20) not NULL,
  major varchar(20) default 'undecided',
  primary key(student_id)
);


-- Build some students
insert into student (name, major) values ('Jack','Biology');
insert into student (name, major) values ('Kate','Sociology');
insert into student (name) values ('Claire');
insert into student (name, major) values ('Jack','Chemistry');
insert into student (name, major) values ('Mike','Comp. Sci');

-- Some selects
select * from student where student_id <=3;
select * from student where name <> 'Jack';
select * from student where name in ('Claire', 'Kate', 'Mike');

-- Updates 
update student set student.major = 'Bio' where student.major = 'Biology';
update student set student.major = 'Computer Science' where student.major = 'Comp. Sci';
select * from student where student.major = 'Bio';
select * from student where student.major = 'Computer Science';

-- Deletes ID 1 and 2
delete from student where student.student_id < 3;
select * from student;