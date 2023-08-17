create database bt4;
use bt4;
create table loai_hang
(
    ma_loai_hang  varchar(50) primary key,
    ten_loai_hang varchar(50)
);

create table nha_cung_cap
(
    ma_cong_ty    varchar(50) primary key,
    ten_cong_ty   varchar(50),
    ten_giao_dich varchar(50),
    dia_chi       varchar(50),
    dien_thoai    varchar(50),
    fax           varchar(50),
    email         varchar(50)
);

create table ma_hang
(
    ma_hang      varchar(50) primary key,
    ten_hang     varchar(50),
    ma_cong_ty   varchar(50),
    ma_loai_hang varchar(50),
    so_luong     varchar(50),
    don_vi_tinh  varchar(50),
    gia_hang     varchar(50)
);
alter table ma_hang
    add foreign key (ma_cong_ty) references nha_cung_cap (ma_cong_ty);
alter table ma_hang
    add foreign key (ma_loai_hang) references loai_hang (ma_loai_hang);

create table chi_tiet_dat_hang
(
    so_hoa_don   varchar(50),
    ma_hang      varchar(50),
    gia_ban      varchar(50),
    so_luong     varchar(50),
    muc_giam_gia varchar(50),
    primary key (so_hoa_don, ma_hang),
    foreign key (so_hoa_don) references don_dat_hang (so_hoa_don),
    foreign key (ma_hang) references ma_hang (ma_hang)
);

create table nhan_vien
(
    ma_nhan_vien  varchar(50) primary key,
    ho            varchar(50),
    ten           varchar(50),
    ngay_sinh     varchar(50),
    ngay_lam_viec varchar(50),
    dia_chi       varchar(50),
    dien_thoai    varchar(50),
    luong_co_ban  varchar(50),
    phu_cap       varchar(50)
);

create table khach_hang
(
    ma_khach_hang varchar(50) primary key,
    ten_cong_ty   varchar(50),
    ten_giao_dich varchar(50),
    dia_chi       varchar(50),
    email         varchar(50),
    dien_thoai    varchar(50),
    fax           varchar(50)
);

create table don_dat_hang
(
    so_hoa_don       varchar(50) primary key,
    ma_khach_hang    varchar(50),
    ma_nhan_vien     varchar(50),
    ngay_dat_hang    varchar(50),
    ngay_giao_hang   varchar(50),
    ngay_chuyen_hang varchar(50),
    noi_giao_hang    varchar(50),
    foreign key (ma_khach_hang) references khach_hang (ma_khach_hang),
    foreign key (ma_nhan_vien) references nhan_vien (ma_nhan_vien)
);

insert into loai_hang
values ('01lh', 'điện thoại'),
       ('02lh', 'xe máy'),
       ('03lh', 'ô tô');
insert into nha_cung_cap
values ('01cc', 'apple', 'abc', 'abc', 'abc', 'abc', 'abc@gmail.com'),
       ('02cc', 'honda', 'honda', 'honda', 'honda', 'honda', 'honda@gmail.com'),
       ('03cc', 'bmw', 'bmw', 'bmw', 'bmw', 'bmw', 'bmw@gmail.com');

insert into ma_hang
values ('01mh', 'iphone', '01cc', '01lh', '50', 'dong', '1000000'),
       ('02mh', 'wave', '02cc', '02lh', '50', 'dong', '10000000'),
       ('03mh', 'bmv_i8', '03cc', '03lh', '50', 'dong', '100000000');

insert into nhan_vien
values ('01nv', 'Long', 'Oanh', '2006-01-01', 10, 'HCM', '0987654321', '1000000', '20000'),
       ('02nv', 'Nguyen', 'phu', '1998-05-01', 15, 'HN', '0987654321', '1500000', '50000'),
       ('03nv', 'Vu', 'Chien', '2002-03-01', 20, 'TB', '0987654321', '2000000', '100000');

insert into khach_hang
values ('01kh', 'Chienne', '01gd', 'hn', 'chien@gmail.com', '0987654321', '012'),
       ('02kh', 'vuchien', '02gd', 'hcm', 'alo@gmail.com', '0987666321', '0012'),
       ('03kh', 'ChienVu', '03gd', 'tb', 'chienne@gmail.com', '0987688321', '0012');

insert into don_dat_hang
values ('01hd', '01kh', '01nv', '2023-02-02', '2023-03-03', '2023-02-02', 'TB'),
       ('02hd', '02kh', '02nv', '2023-02-02', '2023-03-03', '2023-02-02', 'HN'),
       ('03hd', '03kh', '03nv', '2023-02-02', '2023-03-03', '2023-02-02', 'HCM');

insert into chi_tiet_dat_hang
values ('01hd', '01mh', '50000', '2', '10'),
       ('02hd', '02mh', '50000', '2', '10'),
       ('03hd', '03mh', '50000', '2', '10');
       
