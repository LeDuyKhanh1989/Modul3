create database aaa;
use	aaa;
create table customer(
    cID int not null primary key,
    cName varchar(200) not null ,
    cAge int not null
);
create table ordering(
    oID int not null primary key ,
    cID int,
    constraint fk_cID foreign key (cID) REFERENCES customer(cID),
    oDate date not null ,
    oTotalPrice double
);
create table product (
    pID int not null primary key ,
   pName varchar(200) not null ,
 pPrice double not null
);
create table orderdetail (
ID int, 
oID int, 
constraint FK_oID foreign key (oID) references ordering( oID),
pID int,
constraint FK_pID foreign key (pID) references product( pID),
odQTY int 
);