USE MASTER
GO 
DROP DATABASE QLCuaHangMayTinh
create database QLCuaHangMayTinh
GO
use QLCuaHangMayTinh
--Bang 4
create table ThongTinMayTinh(MaMT char(10) primary key, tenmt varchar(50), MaNCC char(10)
, soluong int, giaban int)
--Bang 1
create table NhanVien(MaNV char(10) primary key, TenNV varchar(50), GioiTinh nvarchar(50), DiaChi nvarchar(50),sdt int)
--Bang 2
create table NhaCungCap(MaNCC char(10) primary key, TenNCC varchar(50),Diachi nvarchar(50),sdt int)
--Bang 3
create table KhachHang(MaKH char(10) primary key, TenKH varchar(50), GioiTinh nvarchar(50), DiaChi nvarchar(50), sdt int)
--Bang 5
create table Hoadonnhap(MaHDN char(10) primary key,MaNV char(10) foreign key (MaNV) references NhanVien(MaNV) on delete cascade on update cascade
,MaMT char(10) foreign key (MaMT) references ThongTinMayTinh(MaMT) on delete cascade on update cascade
,MaNCC char(10)foreign key (MaNCC) references NhaCungCap(MaNCC) on delete cascade on update cascade
,Soluong int,Ngayban date,Diachi varchar(50),sdt int, Dongia float,Tongtien float)
--Bang 6
create table Hoadonban(MaHDB char(10) primary key,MaNV char(10) foreign key (MaNV) references NhanVien(MaNV) on delete cascade on update cascade
,MaKH char(10) foreign key (MaKH) references KhachHang(MaKH) on delete cascade on update cascade
,MaMT char(10)foreign key (MaMT) references ThongTinMayTinh(MaMT) on delete cascade on update cascade
,Soluong int,Ngayban date,Diachi varchar(50),sdt int, Dongia float,Tongtien float)

--Them thong tin nha cung cap
insert into NhaCungCap values('NCC01','TRANTUYEN','HY','1659939186')
insert into NhaCungCap values('NCC02','TRINHTHUY','HY','122345')

--Them thong tin may tinh
insert into ThongTinMayTinh values('MT01','DELL','NCC01','2','1200')
insert into ThongTinMayTinh values('MT02','ASUS','NCC01','2','1200')

--Them thong tin Nhan Vien
insert into NhanVien values('NV01','Trung Hieu','Nu','HCM','03333393')
insert into NhanVien values('MV02','Thanh Khang','Nam','Ben tre','393839389')



--Them thong tin hoa don ban
insert into Hoadonban values ('HDB01','NV01','KH01','MT01','1200','2014-01-01','HY','1659939285','120','144000')
insert into Hoadonban values ('HDB02','NV02','KH01','MT01','12','2014-01-03','HY','1356789','100','1200')

--Them thong tin hoa don nhap
insert into Hoadonnhap values ('HDN01','NV01','MT01','NCC01','125','2014-01-10','HN','1465676778','1005','125625')
insert into Hoadonnhap values ('HDN02','NV02','MT01','NCC01','23','2014-01-01','HY','2132456','12000','276000')








