create database Demo;

use demo;

create table order_table(
	STT int 	,
    customer_name varchar(200),
    Customer_Description text,
    type_of_money varchar(30),
    product_number int
    );
    
    
    insert into order_table (STT,customer_name,Customer_Description,type_of_money,product_number)
    value(4,'Quang', 'Quang ở thái bình', 'vnd', 2000),
		(5,'Hải', 'Hải ở Hòa Bình', 'vnd', 20000),
        (6,'Triệu', 'Hải ở Quảng Bình', 'vnd', 500);
update order_table set STT = 1,customer_name = 'Bình' ,Customer_Description = 'Sống tại Hà Nội' ,type_of_money = '$',product_number = 8000
where STT=5; 
