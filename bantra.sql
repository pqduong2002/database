CREATE DATABASE BanTra
GO
create table DanhMucSanPham (
	MaSP int identity(1,1) primary key,
	TenSP nvarchar(255) not null,
	NgaySX datetime,
	HanSD datetime,
	GiaBan money,
)
go

create table KhachHang (
	MaKH int primary key not null,
	HoKH nvarchar(20),
	TenKH nvarchar(100),
	GioiTinh bit,
	DiaChi nvarchar(255)
)
go
create table HoaDon (
	MaHD int identity(1,1) primary key,
	NgayXuat datetime,
	MaSP int,
	MaKH int,
	TongSP int,
	ThanhToan money
	constraint FK_HoaDon_DMSP foreign key (MaSP)
    references DanhMucSanPham(MaSP),
	constraint FK_HoaDon_KhachHang foreign key (MaKH)
    references KhachHang(MaKH)
)
go
create table DanhGia (
	DanhGiaSP nvarchar(255) primary key,
	MaKH int,
	constraint FK_DanhGia_KhachHang foreign key (MaKH)
    references KhachHang(MaKH)
)
go

