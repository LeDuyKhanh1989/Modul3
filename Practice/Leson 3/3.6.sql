create database QLSV; 
use QLSV;
create table Customer(
cID int auto_increment primary key, 
Name varchar(50),
age int
);
create table orderTable(
oID int auto_increment primary key, 
cID int, 
odate date, 
ototalPrice int,
FOREIGN KEY (cID) REFERENCES Customer(cID)
);
create table Product(
pID int auto_increment primary key, 
pName varchar(50),
pPrice int
);

create table orderDetail(
oID int, 
pID int, 
foreign key (oID) references orderTable(oID),
foreign key (pId) references product(pID),
odQTY int
);

-- Nhập data

insert into Customer(name, age)
value ('Hải', 23),('Nam', 24),('Triều', 20),('Quang', 17);

insert into orderTable(cID, odate, ototalPrice)
value 
(5,'20231002', 30000),
(2,'20230502', 50000);

insert into product(pName, pPrice)
value ('Bóng cười', 40000),
('Đá', 50000),
('Ke', 60000),
('Mai Thúy', 90000);

insert into orderDetail(oID, pID, odQTY)
value (1,1,100),
(1,2,100),
(2,3,100),
(2,1,100),
(3,1,50),
(4,1,100);
update orderDetail
set pID=4
where oID=3;

select oID, oDate, ototalPrice from orderTable; 
select customer.*, orderTable.name from  customer left join orderTable on orderTable.cID=customer.cID;

select customer.*, product.pName 
from customer join orderTable on orderTable.cID = customer.cID
join orderDetail on orderTable.oID = orderDetail.oID
join product on orderDetail.pID = product.pID;

SELECT *
FROM customer
WHERE cID NOT IN (SELECT cId FROM orderTable);

select ordertable.oID, ordertable.oDate, orderdetail.odQTY*product.pPrice as Price 
from ordertable
join orderdetail on ordertable.oID = orderdetail.oID
join product on orderdetail.pID = product.pID;
