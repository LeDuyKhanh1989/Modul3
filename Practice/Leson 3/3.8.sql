create database QL_Ban_Hang;
use QL_Ban_Hang;
create table catelory(
cID int auto_increment primary key,
cName varchar(50)
);
insert into catelory(cName)
value ('Sách nấu ăn'), 
('Sách tiếng anh'),
('Sách giải trí'),
('Sách văn hóa'),
('Sách sử');

create table product(
pID int auto_increment primary key, 
cID int,
name varchar(50), 
donGia double,
soLuong int, 
ngayNhap date, 
loai varchar(50),
FOREIGN KEY (cID) REFERENCES catelory(cID)
);
insert into product (cID,name,donGia,soLuong,ngayNhap,loai)
value (2,'Y học 4 phương', 23000, 10, '20230220','FK2'),
(3,'Y học phương đông', 24000, 9, '20230520','FK2'),
(1,'Tiêng anh south american', 288000, 100, '20230225','FK'),
(2,'Tin tức hôm nay', 888000, 180, '20231225','FK'),
(1,'anh hùng chuyện', 29000, 10, '20230215','FK5');
-- Hiển thị tất cả product
select * from Product;
-- Hiển thị tất cả product của 1 category
select * from product join catelory on product.cID = catelory.cID where catelory.cID=1;

-- Hiển thị tất cả product có chung nơi cung cấp
select * from product having count(loai)>1;

-- Hiển thị tất cả product có ngày cung cấp trong 1 tháng trở lại đây
select * from product where ngayNhap>='20230714';

-- Tìm tất cả product có giá cao nhất/thấp nhất
select * from product where donGia = (select max(donGia) as giá_Cao_Nhất from product);
select * from product where donGia = (select Min(donGia) as giá_nhỏ_Nhất from product);

-- Tính toán: nếu product có số ngày nhập vào lớn hơn 1 tháng thì hiển thị giảm 30% giá tiền, nếu lớn hơn 2 tháng thì giảm 50% giá tiền. Còn lại hiển thị bình thường
SELECT
????????????
-- Đếm số product của từng cơ sở cung cấp
????????????
-- Hiển thị tất cả product có số lượng lớn hơn 50
????????????
