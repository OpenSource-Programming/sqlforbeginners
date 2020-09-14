create database school;

use school; 

create table student (
  student_id int,
  name varchar(20),
  major varchar(20),
  primary key(student_id)
);

insert into student values (1, 'Jack','Biology');
insert into student values (2, 'Kate','Sociology');
insert into student(student_id, name) values (3,'Claire');
insert into student(student_id, name, major) values (4,'Jack','Biology');
insert into student(student_id, name, major) values (5,'Mike','Comp. Sci');