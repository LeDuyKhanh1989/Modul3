use quanlysinhvien; 
SELECT * FROM quanlysinhvien.student;
create table monhoc(
idmonhoc int primary key auto_increment,
S_ID int, 
diemToan double,
diemLy double, 
diemHoa double, 
 foreign key (S_ID) references student(S_ID)
);

insert into monhoc(S_ID, diemToan, diemLy, diemHoa)
value(1, 6,7,8),
(2,4,8,6),
(3,5,6,9), 
(4,1,10,10),
(5,6,6,6);
select * from monhoc;
select address, count(S_ID) from student group by address;
create view overview as
select student.*, monhoc.diemHoa, monhoc.diemLy, monhoc.diemToan, classes.C_Name, classes.Date_Start from student 
join monhoc on student.S_ID= monhoc.S_ID
join classes on classes.C_ID = student.C_ID;


select student.*,(diemToan+diemLy+diemHoa)/3 as 'Điểm trung bình các môn học' from monhoc
join student on student.S_ID = monhoc.S_ID;


select student.* from monhoc
join student on student.S_ID = monhoc.S_ID
having (diemToan+diemLy+diemHoa)>15;

select * from overview where (diemToan+diemLy+diemHoa);

select * from overview
where (diemToan+diemLy+diemHoa)=(select max(diemToan+diemLy+diemHoa) as 'maxScore' from overview); 

select * from overview where (diemToan+diemLy+diemHoa)
order by (diemToan+diemLy+diemHoa) DESC;

