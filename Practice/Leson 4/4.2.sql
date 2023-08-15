create database companydemo;

use companydemo;

create table LOAIHANG
(
    MaLoaiHang  int primary key auto_increment,
    TenLoaiHang int
);


create table NHACUNGCAP
(
    MaCongTy    int primary key auto_increment,
    TenCongTy   varchar(60),
    TenGiaoDich varchar(60),
    DiaChi      varchar(60),
    DienThoai   varchar(60),
    Fax         varchar(60),
    Email       varchar(60)
);


create table KHACHHANG
(
    MaKhachHang int primary key auto_increment,
    TenCongTy   varchar(60),
    TenGiaoDich varchar(60),
    DiaChi      varchar(60),
    Email       varchar(60),
    DienThoai   varchar(60),
    Fax         varchar(60)
);

create table NHANVIEN
(
    MaNhanVien  int primary key auto_increment,
    Ho          varchar(60),
    Ten         varchar(60),
    NgaySinh    date,
    NgayLamViec date,
    DiaChi      varchar(60),
    DienThoai   varchar(60),
    LuongCoBan  double,
    PhuCap      double
);


create table MATHANG (
    MaHang int primary key auto_increment,
    TenHang varchar(60) not null ,
    MaCongty int,
    MaLoaiHang int,
    SoLuong int,
    DonViTinh varchar(60),
    GiaHang double,
    foreign key (MaCongty) references NHACUNGCAP(MaCongTy),
    foreign key (MaLoaiHang) references LOAIHANG(MaLoaiHang)
);


create table DONDATHANG
(
    SoHoaDon     int primary key auto_increment,
    MaKhachHang  int,
    MaNhanVien   int,
    NgayDatHang  date,
    NgayGiaoHang date,
    NoiGiaoHang  varchar(60),
    foreign key (MaKhachHang) references KHACHHANG(MaKhachHang),
    foreign key (MaNhanVien) references NHANVIEN(MaNhanVien)
);




create table CHITIETDATHANG
(
    SoHoaDon   int,
    MaHang     int,
    GiaBan     double,
    SoLuong    int,
    MucGiamGia varchar(60),
    foreign key (SoHoaDon) references DONDATHANG(SoHoaDon),
    foreign key (MaHang) references MATHANG(MaHang)
);