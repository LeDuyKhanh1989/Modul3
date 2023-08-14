create database QuanLySinhVien;
use QuanLySinhVien;
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
insert into classes (C_Name)
value ('C01'),('C02'),('C03'),('C04'),('C05');
ALTER TABLE classes 
ADD Date_Start varchar(50);
update classes set
 Date_start = '9/2023'
 where C_ID=2;



ALTER TABLE Student
ADD C_ID int;
ALTER TABLE Student
ADD CONSTRAINT FK_cID
FOREIGN KEY (C_ID) REFERENCES classes(C_ID);

insert into Student (S_Name,address,sex,age,email,phone,C_ID)
value ('Hải', 'Hà Nam', 1, 18, 'Hai@gmail.com','0123456789',2),
('Nam', 'Hà Nội', 1, 19, 'Nam@gmail.com','0123456788',2),
('Quân', 'Hà Tĩnh', 1, 20, 'Quan@gmail.com','0123456787',3),
('Thái', 'Hà Tây', 0, 21, 'Thai@gmail.com','0123456786',5),
('Bình', 'Hà Nội', 0, 25, 'Binh@gmail.com','0123456785',5);

select * from student;
select student.*, classes.C_Name as class_Name from student join classes on classes.c_id = student.c_id;
select * from student where age <20;
select* from student where C_id = 2;
select classes.*, student.S_name from classes join student on student.c_id = classes.c_id having classes.date_start='12/2023';
select* from student having S_name like 'H%';
select * from student order by S_name DESC; 