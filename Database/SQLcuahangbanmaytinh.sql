create database QLCuaHangMayTinh
GO
use QLCuaHangMayTinh

--Bang 1
create table NhanVien(MaNV char(10) primary key, TenNV varchar(50), GioiTinh nvarchar(50), DiaChi nvarchar(50),sdt int)
--Bang 2
create table NhaCungCap(MaNCC char(10) primary key, TenNCC varchar(50),Diachi nvarchar(50),sdt int)
--Bang 3
create table KhachHang(MaKH char(10) primary key, TenKH varchar(50), GioiTinh nvarchar(50), DiaChi nvarchar(50), sdt int)
--Bang 4
create table ThongTinMayTinh(MaMT char(10) primary key, tenmt varchar(50), MaNCC char(10)
, soluong int, giaban int)
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












