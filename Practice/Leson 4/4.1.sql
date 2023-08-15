create database thueptgt;

use thueptgt;

create table dangkycungcap(
    madkcc varchar(60) primary key ,
    manhacc varchar(60),
    maloaidv varchar(60),
    dongxe varchar(60),
    mamp varchar(60),
    ngaybatdaucungcap varchar(60),
    ngayketthuccungcap varchar(60),
    soluongxedangky int default 1,
    foreign key (manhacc) references nhacungcap(manhacc),
    foreign key (maloaidv) references loaidichvu(maloaidv),
    foreign key (dongxe) references dongxe(dongxe),
    foreign key (mamp) references mucphi(mamp)
);

create table nhacungcap (
    manhacc varchar(60) primary key,
    tennhacc varchar(60) not null ,
    diachi varchar(60) not null ,
    sodt varchar(60) not null ,
    masothue varchar(60) not null
);

create table loaidichvu (
    maloaidv varchar(60) primary key ,
    tenloaidv varchar(60) not null
);

create table mucphi (
    mamp varchar(60) primary key ,
    dongia varchar(60) not null ,
    mota varchar(60)
);


create table dongxe (
    dongxe varchar(60) primary key ,
    hangxe varchar(60) not null ,
    sochongoi int not null
);


Insert Into LOAIDICHVU (MaLoaiDV, TenLoaiDV)
Values ('DV01', N'DV xe taxi');
Insert Into LOAIDICHVU (MaLoaiDV, TenLoaiDV)
Values ('DV02', N'DV xe cố định');
Insert Into LOAIDICHVU (MaLoaiDV, TenLoaiDV)
Values ('DV03', N'Dịch vụ cho thuê xe theo hợp đồng');

Insert Into MUCPHI (MaMP, DonGia, MoTa)
Values ('MP01', '10000', N'Áp dụng từ ngày 1/2015');
Insert Into MUCPHI (MaMP, DonGia, MoTa)
Values ('MP02', '15000', N'Áp dụng từ ngày 2/2015');
Insert Into MUCPHI (MaMP, DonGia, MoTa)
Values ('MP03', '20000', N'Áp dụng từ ngày 1/2010');
Insert Into MUCPHI (MaMP, DonGia, MoTa)
Values ('MP04', '25000', N'Áp dụng từ ngày 2/2011');

Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Hiace', 'Toyota', 16);
Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Vios', 'Toyota', 5);
Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Escape', 'Ford', 5);
Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Cerato', 'KIA', 7);
Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Forte', 'KIA', 5);
Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Starex', 'Huyndai', 7);
Insert Into DONGXE (DongXe, HangXe, SoChoNgoi)
Values ('Grand-i10', 'Huyndai', 7);


Insert Into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC001', N'Cty TNHH Toàn Phát', 'Hai Chau', '051133999888', '568941');
Insert Into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC002', N'Cty Cổ Phần Đông Du', 'Lien Chieu', '051133999889', '456789');
Insert Into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC003', N'Ông Nguyễn Văn A', 'Hoa Thuan', '051133999890', '321456');
Insert Into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC004', N'Cty Cổ Phần Toàn Cầu Xanh', 'Hai Chau', '05113658945', '513364');
Insert Into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC005', N'Cty TNHH AMA', 'Thanh Khe', '051103875466', '546546');
Insert Into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC006', N'Bà Trần Thị Bích Vân', 'Lien Chieu', '05113587469', '524545');
Insert Into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC007', N'Cty TNHH Phan Thành', 'Thanh Khe', '05113987456', '113021');
Insert Into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC008', N'Ông Phan Đình Nam', 'Hoa Thuan', '05113532456', '121230');
Insert Into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC009', N'Tập đoàn Đông Nam Á', 'Lien Chieu', '05113987121', '533654');
Insert Into NHACUNGCAP (MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
Values ('NCC010', N'Cty Cổ Phần Rạng đông', 'Lien Chieu', '05113569654', '187864');



Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK001', 'NCC001', 'DV01', 'Hiace', 'MP01', '2015/11/20', '2016/11/20',1);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK002', 'NCC002', 'DV02', 'Vios', 'MP02', '2015/11/20', '2017/11/20',2);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK003', 'NCC003', 'DV03', 'Escape', 'MP03', '2017/11/20', '2018/11/20',3);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK004', 'NCC005', 'DV01', 'Cerato', 'MP04', '2015/11/20', '2019/11/20',4);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK005', 'NCC002', 'DV02', 'Forte', 'MP03', '2019/11/20', '2020/11/20',5);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK006', 'NCC004', 'DV03', 'Starex', 'MP04', '2016/11/10', '2021/11/20',6);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK007', 'NCC005', 'DV01', 'Cerato', 'MP03', '2015/11/30', '2016/01/25',6);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK008', 'NCC006', 'DV01', 'Vios', 'MP02', '2016/02/28', '2016/08/15',5);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK009', 'NCC005', 'DV03', 'Grand-i10', 'MP02', '2016/04/27', '2017/04/30',4);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK010', 'NCC006', 'DV01', 'Forte', 'MP02', '2016/11/21', '2016/02/22',3);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK011', 'NCC007', 'DV01', 'Forte', 'MP01', '2016/12/25', '2017/02/20',2);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK012', 'NCC007', 'DV03', 'Cerato', 'MP01', '2016/04/14', '2017/12/20',1);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK013', 'NCC003', 'DV02', 'Cerato', 'MP01', '2015/12/21', '2016/12/21',1);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK014', 'NCC008', 'DV02', 'Cerato', 'MP01', '2016/05/20', '2016/12/30',2);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK015', 'NCC003', 'DV01', 'Hiace', 'MP02', '2018/04/24', '2019/11/20',3);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK016', 'NCC001', 'DV03', 'Grand-i10', 'MP02', '2016/06/22', '2016/12/21',4);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK017', 'NCC002', 'DV03', 'Cerato', 'MP03', '2016/09/30', '2019/09/30',5);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK018', 'NCC008', 'DV03', 'Escape', 'MP04', '2017/12/13', '2018/09/30',6);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK019', 'NCC003', 'DV03', 'Escape', 'MP03', '2016/01/24', '2016/12/30',6);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK020', 'NCC002', 'DV03', 'Cerato', 'MP04', '2016/05/03', '2017/10/21',5);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK021', 'NCC006', 'DV01', 'Forte', 'MP02', '2015/01/30', '2016/12/30',4);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK022', 'NCC002', 'DV02', 'Cerato', 'MP04', '2016/07/25', '2017/12/30',3);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK023', 'NCC002', 'DV01', 'Forte', 'MP03', '2017/11/30', '2018/05/20',2);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK024', 'NCC003', 'DV03', 'Forte', 'MP04', '2017/12/23', '2019/11/30',1);
Insert Into DANGKYCUNGCAP (madkcc, manhacc, maloaidv, dongxe, mamp, ngaybatdaucungcap, ngayketthuccungcap, soluongxedangky)
Values ('DK025', 'NCC003', 'DV03', 'Hiace', 'MP02', '2016/08/24', '2017/10/25',1);

-- câu 3: Câu 3: Liệt kê những dòng xe có số chỗ ngồi trên 5 chỗ
select * from dongxe where sochongoi > 5; 

-- Câu 4: Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp những dòng xe
-- thuộc hãng xe “Toyota” với mức phí có đơn giá là 15.000 VNĐ/km hoặc những dòng xe
-- thuộc hãng xe “KIA” với mức phí có đơn giá là 20.000 VNĐ/km

select nhacungcap.* from nhacungcap;
select nhacungcap.* from nhacungcap join dangkycungcap on nhacungcap.manhacc = dangkycungcap.manhacc group by nhacungcap.manhacc ;

select nhacungcap.*, dongxe.hangxe
from nhacungcap 
join dangkycungcap on nhacungcap.manhacc = dangkycungcap.manhacc 
join dongxe on  dongxe.dongxe = dangkycungcap.dongxe
where hangxe = 'Toyota';

select nhacungcap.*, dongxe.hangxe, mucphi.dongia
from nhacungcap 
join dangkycungcap on nhacungcap.manhacc = dangkycungcap.manhacc 
join dongxe on  dongxe.dongxe = dangkycungcap.dongxe
join mucphi on mucphi.mamp = dangkycungcap.mamp
where hangxe = 'KIA' and mucphi.dongia>20000;

-- Câu 5: Liệt kê thông tin toàn bộ nhà cung cấp được sắp xếp tăng dần theo tên nhà cung
-- cấp và giảm dần theo mã số thuế

select * from nhacungcap order by tennhacc ASC; 
select * from nhacungcap order by masothue DESC; 
-- Câu 6: Đếm số lần đăng ký cung cấp phương tiện tương ứng cho từng nhà cung cấp với
-- yêu cầu chỉ đếm cho những nhà cung cấp thực hiện đăng ký cung cấp có ngày bắt đầu
-- cung cấp là “20/11/2015”

select nhacungcap.tennhacc, count(ngaybatdaucungcap) from dangkycungcap
join nhacungcap on nhacungcap.manhacc = dangkycungcap.manhacc where ngaybatdaucungcap = '2015/11/20'
group by nhacungcap.tennhacc;

-- Câu 7: Liệt kê tên của toàn bộ các hãng xe có trong cơ sở dữ liệu với yêu cầu mỗi hãng xe
-- chỉ được liệt kê một lần

select hangxe from dongxe d group by d.hangxe;

-- Câu 8: Liệt kê MaDKCC, MaNhaCC, TenNhaCC, DiaChi, MaSoThue, TenLoaiDV, DonGia,
-- HangXe, NgayBatDauCC, NgayKetThucCC của tất cả các lần đăng ký cung cấp phương
-- tiện với yêu cầu những nhà cung cấp nào chưa từng thực hiện đăng ký cung cấp phương
-- tiện thì cũng liệt kê thông tin những nhà cung cấp đó ra

select dangkycungcap.madkcc, dangkycungcap.manhacc, nhacungcap.tennhacc, nhacungcap.diachi, loaidichvu.tenloaidv, mucphi.dongia,dongxe.hangxe, dangkycungcap.ngaybatdaucungcap, dangkycungcap.ngayketthuccungcap from dangkycungcap 
join nhacungcap on dangkycungcap.manhacc = nhacungcap.manhacc
join loaidichvu on loaidichvu.maloaidv = dangkycungcap.maloaidv 
join mucphi on dangkycungcap.mamp = mucphi.mamp
join dongxe on dongxe.dongxe = dangkycungcap.dongxe;


CREATE VIEW View_2 AS
SELECT dangkycungcap.manhacc
from dangkycungcap 
join nhacungcap on dangkycungcap.manhacc = nhacungcap.manhacc
join loaidichvu on loaidichvu.maloaidv = dangkycungcap.maloaidv 
join mucphi on dangkycungcap.mamp = mucphi.mamp
join dongxe on dongxe.dongxe = dangkycungcap.dongxe;
select nhacungcap.manhacc from nhacungcap where manhacc not in (select * from view_2);


-- Câu 9: Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp phương tiện
-- thuộc dòng xe “Hiace” hoặc từng đăng ký cung cấp phương tiện thuộc dòng xe “Cerato”

select  ncc.*,d.* from nhacungcap ncc join dangkycungcap d on ncc.manhacc = d.manhacc where dongxe = 'Cerato' or dongxe='Hiace';


-- Câu 10: Liệt kê thông tin của các nhà cung cấp chưa từng thực hiện đăng ký cung cấp
-- phương tiện lần nào cả.

select nhacungcap.* from nhacungcap where manhacc not in (select nhacungcap.*, dongxe.hangxe from nhacungcap
left join dangkycungcap on dangkycungcap.manhacc = nhacungcap.manhacc
join dongxe on dongxe.dongxe = dangkycungcap.dongxe
order by nhacungcap.manhacc ASC);
