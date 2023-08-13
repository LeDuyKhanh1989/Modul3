create database Student_Management; 
use Student_Management;

create table Student(
S_ID int auto_increment primary key, 
S_Name varchar(50) not null,
address varchar(50) not null, 
sex int	default 1 not null, 
age int not null,
check (age>=18 and age<= 25), 
email varchar(50) not null unique, 
phone varchar(10) not null
);
create table classes(
C_ID int auto_increment primary key,
C_Name varchar(50) not null unique
);
ALTER TABLE Student
ADD C_ID int;
ALTER TABLE Student
ADD CONSTRAINT FK_cID
FOREIGN KEY (C_ID) REFERENCES classes(C_ID);

select * from student order by s_name DESC;
