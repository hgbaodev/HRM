USE [master]
GO
/****** Object:  Database [HRMSystem]    Script Date: 5/17/2023 8:07:16 AM ******/
CREATE DATABASE [HRMSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HRMSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HRMSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HRMSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\HRMSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [HRMSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HRMSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HRMSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HRMSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HRMSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HRMSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HRMSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [HRMSystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HRMSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HRMSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HRMSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HRMSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HRMSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HRMSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HRMSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HRMSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HRMSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HRMSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HRMSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HRMSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HRMSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HRMSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HRMSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HRMSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HRMSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HRMSystem] SET  MULTI_USER 
GO
ALTER DATABASE [HRMSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HRMSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HRMSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HRMSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HRMSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HRMSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [HRMSystem] SET QUERY_STORE = OFF
GO
USE [HRMSystem]
GO
/****** Object:  Table [dbo].[BANGCHAMCONG]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANGCHAMCONG](
	[maBangChamCong] [nvarchar](20) NOT NULL,
	[maNhanVien] [nvarchar](20) NULL,
	[thangChamCong] [int] NULL,
	[namChamCong] [int] NULL,
	[soNgayLamViec] [int] NULL,
	[soNgayNghi] [int] NULL,
	[soNgayTre] [int] NULL,
	[soGioLamThem] [int] NULL,
	[chiTiet] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[maBangChamCong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BANGDANHGIA]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANGDANHGIA](
	[maDanhGia] [nvarchar](20) NOT NULL,
	[maNhanVien] [nvarchar](20) NOT NULL,
	[nguoiDanhGia] [nvarchar](20) NOT NULL,
	[ngayDanhGia] [date] NOT NULL,
	[diemDanhGia] [float] NULL,
	[xepLoaiDanhGia] [nvarchar](100) NULL,
	[chiTietDanhGia] [nvarchar](300) NULL,
	[loaiDanhGia] [nvarchar](100) NULL,
	[ghiChu] [nvarchar](500) NULL,
 CONSTRAINT [PK__BANGDANH__6B15DD9AEDECB200] PRIMARY KEY CLUSTERED 
(
	[maDanhGia] ASC,
	[maNhanVien] ASC,
	[nguoiDanhGia] ASC,
	[ngayDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAOCAOTUYENDUNG]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAOCAOTUYENDUNG](
	[maTuyenDung] [nvarchar](20) NOT NULL,
	[chucVu] [nvarchar](20) NULL,
	[hocVan] [nvarchar](20) NULL,
	[yeuCauGioiTinh] [nvarchar](5) NULL,
	[yeuCauDoTuoi] [nvarchar](5) NULL,
	[soLuongCanTuyen] [int] NULL,
	[hanNopHoSo] [date] NULL,
	[mucLuongToiThieu] [float] NULL,
	[mucLuongToiDa] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[maTuyenDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CMND]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CMND](
	[soCMND] [nvarchar](20) NOT NULL,
	[noiCap] [nvarchar](20) NULL,
	[ngayCap] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[soCMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONNGUOI]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONNGUOI](
	[CMND] [nvarchar](20) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[gioiTinh] [nvarchar](5) NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](100) NULL,
	[SDT] [nvarchar](20) NULL,
	[tinhTrangHonNhan] [nvarchar](50) NULL,
	[danToc] [nvarchar](20) NULL,
	[tonGiao] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETNHOMQUYEN]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETNHOMQUYEN](
	[maNhomQuyen] [nvarchar](20) NOT NULL,
	[maChucNang] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_CHITIETNHOMQUYEN] PRIMARY KEY CLUSTERED 
(
	[maNhomQuyen] ASC,
	[maChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUCNANG]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCNANG](
	[maChucNang] [nvarchar](20) NOT NULL,
	[tenChucNang] [nvarchar](200) NULL,
 CONSTRAINT [PK_CHUCNANG] PRIMARY KEY CLUSTERED 
(
	[maChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUCVU]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVU](
	[maChucVu] [nvarchar](20) NOT NULL,
	[tenChucVu] [nvarchar](50) NULL,
	[phuCapChucVu] [float] NULL,
	[ngayNhanChuc] [date] NULL,
 CONSTRAINT [PK__CHUCVU__6E42BCD9575206FA] PRIMARY KEY CLUSTERED 
(
	[maChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUCVUCONGTY]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCVUCONGTY](
	[maChucVu] [nvarchar](20) NULL,
	[tenChucVu] [nvarchar](200) NULL,
	[phuCapChucVu] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOTTUYENDUNG]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOTTUYENDUNG](
	[maTuyenDung] [nvarchar](20) NOT NULL,
	[maNhanVien] [nvarchar](20) NOT NULL,
	[ngayTuyenDung] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTuyenDung] ASC,
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DUONG]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DUONG](
	[maDuong] [nvarchar](20) NOT NULL,
	[tenDuong] [nvarchar](100) NULL,
	[maPhuongXa] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOPDONGLAODONG]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOPDONGLAODONG](
	[maHopDong] [nvarchar](20) NOT NULL,
	[tuNgay] [date] NULL,
	[denNgay] [date] NULL,
	[loaiHopDong] [nvarchar](50) NULL,
	[luongCoBan] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[maHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LUONG]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUONG](
	[maLuong] [nvarchar](20) NOT NULL,
	[maBangChamCong] [nvarchar](20) NULL,
	[phuCapChucVu] [float] NULL,
	[phuCapKhac] [float] NULL,
	[luongThucTe] [float] NULL,
	[luongThuong] [float] NULL,
	[khoanTruBaoHiem] [float] NULL,
	[khoanTruKhac] [float] NULL,
	[thue] [float] NULL,
	[thucLanh] [float] NULL,
 CONSTRAINT [PK__LUONG__31F4B611E377D9C9] PRIMARY KEY CLUSTERED 
(
	[maLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[maNhanVien] [nvarchar](20) NOT NULL,
	[CMND] [nvarchar](20) NULL,
	[maPhong] [nvarchar](20) NULL,
	[maTrinhDo] [nvarchar](20) NULL,
	[maChucVu] [nvarchar](20) NULL,
	[maHopDong] [nvarchar](20) NULL,
	[ngayBatDauThuViec] [date] NULL,
	[ngayKetThucThuViec] [date] NULL,
	[luongThuViec] [float] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHOMQUYEN]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHOMQUYEN](
	[maNhomQuyen] [nvarchar](20) NOT NULL,
	[tenNhomQuyen] [nvarchar](100) NULL,
 CONSTRAINT [PK_NHOMQUYEN] PRIMARY KEY CLUSTERED 
(
	[maNhomQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHONGBAN]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONGBAN](
	[maPhong] [nvarchar](20) NOT NULL,
	[tenPhong] [nvarchar](50) NULL,
	[ngayThanhLap] [date] NULL,
	[maTruongPhong] [nvarchar](20) NULL,
 CONSTRAINT [PK__PHONGBAN__4CD55E1062DC3351] PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHUONGXA]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHUONGXA](
	[maPhuongXa] [nvarchar](20) NOT NULL,
	[tenPhuongXa] [nvarchar](100) NOT NULL,
	[maQuanHuyen] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK__PHUONGXA__2AC205B0CF738490] PRIMARY KEY CLUSTERED 
(
	[maPhuongXa] ASC,
	[maQuanHuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUANHUYEN]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUANHUYEN](
	[maQuanHuyen] [nvarchar](20) NOT NULL,
	[tenQuanHuyen] [nvarchar](100) NULL,
	[maTinhThanhPho] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maQuanHuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYETDINH]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYETDINH](
	[maQuyetDinh] [nvarchar](20) NOT NULL,
	[maNhanVien] [nvarchar](20) NULL,
	[ngayQuyetDinh] [date] NULL,
	[nguoiLapQuyetDinh] [nvarchar](20) NULL,
	[loaiQuyetDinh] [nvarchar](20) NULL,
	[lyDo] [nvarchar](20) NULL,
	[luongBanDau] [float] NULL,
	[luongSauQuyetDinh] [float] NULL,
	[chucVuBanDau] [float] NULL,
	[chucVuSauQuyetDinh] [float] NULL,
	[thoiGianGiaHan] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[maQuyetDinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[username] [nvarchar](20) NOT NULL,
	[pass] [nvarchar](20) NULL,
	[maNhomQuyen] [nvarchar](20) NULL,
	[avatar] [nvarchar](40) NULL,
 CONSTRAINT [pk_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINHTHANHPHO]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINHTHANHPHO](
	[maTinhThanhPho] [nvarchar](20) NOT NULL,
	[tenTinhThanhPho] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTinhThanhPho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGKE]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGKE](
	[maDonVi] [nvarchar](20) NULL,
	[slnvNam1] [int] NULL,
	[slnvNam2] [int] NULL,
	[slnvNam3] [int] NULL,
	[luongTbNam1] [float] NULL,
	[luongTbNam2] [float] NULL,
	[luongTbNam3] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRINHDO]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRINHDO](
	[maTrinhDo] [nvarchar](20) NOT NULL,
	[trinhDoHocVan] [nvarchar](20) NULL,
	[trinhDoChuyenMon] [nvarchar](20) NULL,
	[chuyenNganh] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTrinhDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UNGVIEN]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UNGVIEN](
	[maTuyenDung] [nvarchar](20) NULL,
	[maUngVien] [nvarchar](20) NOT NULL,
	[CMND] [nvarchar](20) NULL,
	[mucLuongDeal] [float] NULL,
	[maTrinhDo] [nvarchar](20) NULL,
	[tenChucVu] [nvarchar](200) NULL,
	[trangThai] [nvarchar](30) NULL,
 CONSTRAINT [pk_UNGVIEN] PRIMARY KEY CLUSTERED 
(
	[maUngVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YEUCAU]    Script Date: 5/17/2023 8:07:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YEUCAU](
	[maYeuCau] [nvarchar](20) NOT NULL,
	[maNguoiGui] [nvarchar](20) NULL,
	[thongTinYeuCau] [nvarchar](20) NULL,
	[lyDo] [nvarchar](20) NULL,
	[ngayGui] [date] NULL,
	[nguoiXacNhan] [nvarchar](20) NULL,
	[trangThai] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[maYeuCau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC12021002', N'002', 1, 2021, 30, 1, 1, 1, N'T-1/1/2021,N-4/1/2021,TC-21/1/2021-1,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC12021003', N'003', 1, 2021, 31, 0, 0, 0, N'')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC12021004', N'004', 1, 2021, 29, 2, 2, 3, N'TC-12/1/2021-1,TC-13/1/2021-1,N-14/1/2021,TC-20/1/2021-1,T-21/1/2021,N-23/1/2021,T-29/1/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC12021007', N'007', 1, 2021, 31, 0, 0, 0, N'')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC12021008', N'008', 1, 2021, 31, 0, 0, 0, N'')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC12021009', N'009', 1, 2021, 31, 0, 0, 0, N'')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC12023002', N'002', 1, 2023, 29, 2, 2, 9, N'T-12/1/2023,N-13/1/2023,TC-14/1/2023-3,T-19/1/2023,TC-20/1/2023-3,N-21/1/2023,TC-22/1/2023-3,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC12023009', N'009', 1, 2023, 27, 4, 1, 2, N'N-14/1/2023,N-16/1/2023,N-18/1/2023,T-21/1/2023,N-23/1/2023,TC-29/1/2023-1,TC-30/1/2023-1,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC12023017', N'017', 1, 2023, 30, 1, 0, 0, N'N-31/1/2023,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC12023069', N'069', 1, 2023, 29, 2, 1, 2, N'T-12/1/2023,N-13/1/2023,N-14/1/2023,TC-20/1/2023-1,TC-21/1/2023-1,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC22021002', N'002', 2, 2021, 28, 3, 0, 1, N'N-10/2/2021,N-12/2/2021,TC-21/2/2021-1,N-28/2/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC22021003', N'003', 2, 2021, 27, 4, 0, 1, N'N-10/2/2021,N-12/2/2021,TC-21/2/2021-1,N-23/2/2021,N-28/2/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC22021004', N'004', 2, 2021, 29, 2, 0, 0, N'N-19/2/2021,N-21/2/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC22021007', N'007', 2, 2021, 25, 3, 0, 0, N'N-10/2/2021,N-12/2/2021,N-28/2/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC22021008', N'008', 2, 2021, 26, 2, 0, 0, N'N-19/2/2021,N-21/2/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC22021009', N'009', 2, 2021, 26, 2, 0, 2, N'N-4/2/2021,TC-21/2/2021-2,N-23/2/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC22021014', N'014', 2, 2021, 26, 2, 0, 2, N'N-4/2/2021,TC-21/2/2021-2,N-23/2/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC22021016', N'016', 2, 2021, 26, 2, 0, 2, N'TC-13/2/2021-1,TC-15/2/2021-1,N-19/2/2021,N-21/2/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC22023069', N'069', 2, 2023, 28, 3, 2, 2, N'N-3/2/2023,N-8/2/2023,TC-14/2/2023-1,N-19/2/2023,TC-21/2/2023-1,T-22/2/2023,T-23/2/2023,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC32021002', N'002', 3, 2021, 30, 1, 0, 0, N'N-1/3/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC32023002', N'002', 3, 2023, 31, 0, 0, 12, N'TC-22/3/2023-4,TC-29/3/2023-4,TC-31/3/2023-4,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC32023003', N'003', 3, 2023, 29, 2, 0, 12, N'TC-9/3/2023-4,TC-11/3/2023-4,TC-20/3/2023-4,N-29/3/2023,N-30/3/2023,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC32023004', N'004', 3, 2023, 29, 2, 0, 12, N'TC-9/3/2023-4,TC-11/3/2023-4,TC-20/3/2023-4,N-29/3/2023,N-30/3/2023,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC32023069', N'069', 3, 2023, 27, 4, 1, 2, N'N-7/3/2023,N-11/3/2023,TC-13/3/2023-1,TC-14/3/2023-1,T-20/3/2023,N-22/3/2023,N-28/3/2023,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC42021002', N'002', 4, 2021, 29, 2, 1, 2, N'N-12/4/2021,TC-13/4/2021-1,TC-18/4/2021-1,N-21/4/2021,T-28/4/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC42021003', N'003', 4, 2021, 28, 3, 1, 2, N'N-12/4/2021,TC-13/4/2021-1,TC-18/4/2021-1,N-21/4/2021,T-28/4/2021,N-30/4/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC42021004', N'004', 4, 2021, 27, 3, 0, 0, N'N-1/4/2021,N-22/4/2021,N-28/4/2021,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC42023002', N'002', 4, 2023, 27, 4, 2, 3, N'N-3/4/2023,N-4/4/2023,TC-12/4/2023-1,TC-13/4/2023-1,TC-14/4/2023-1,N-16/4/2023,T-20/4/2023,T-21/4/2023,N-27/4/2023,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC42023069', N'069', 4, 2023, 27, 4, 2, 3, N'N-3/4/2023,N-4/4/2023,TC-12/4/2023-1,TC-13/4/2023-1,TC-14/4/2023-1,N-16/4/2023,T-20/4/2023,T-21/4/2023,N-27/4/2023,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC52023002', N'002', 5, 2023, 28, 3, 1, 2, N'N-15/5/2023,N-18/5/2023,TC-21/5/2023-1,TC-22/5/2023-1,T-23/5/2023,N-28/5/2023,')
INSERT [dbo].[BANGCHAMCONG] ([maBangChamCong], [maNhanVien], [thangChamCong], [namChamCong], [soNgayLamViec], [soNgayNghi], [soNgayTre], [soGioLamThem], [chiTiet]) VALUES (N'BCC52023003', N'003', 5, 2023, 28, 3, 1, 5, N'N-10/5/2023,T-12/5/2023,N-15/5/2023,TC-20/5/2023-1,TC-21/5/2023-1,TC-23/5/2023-3,N-28/5/2023,')
GO
INSERT [dbo].[BANGDANHGIA] ([maDanhGia], [maNhanVien], [nguoiDanhGia], [ngayDanhGia], [diemDanhGia], [xepLoaiDanhGia], [chiTietDanhGia], [loaiDanhGia], [ghiChu]) VALUES (N'DG00213052023069', N'002', N'069', CAST(N'2023-05-13' AS Date), 101, N'Giỏi', N'2,2,1,1,1,2,2,2,3,3,3,3,3,3,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3', N'Được đánh giá', N'')
INSERT [dbo].[BANGDANHGIA] ([maDanhGia], [maNhanVien], [nguoiDanhGia], [ngayDanhGia], [diemDanhGia], [xepLoaiDanhGia], [chiTietDanhGia], [loaiDanhGia], [ghiChu]) VALUES (N'DG00213052023222', N'002', N'222', CAST(N'2023-05-13' AS Date), 52, N'Trung bình', N'2,2,1,1,1,2,2,2,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', N'Được đánh giá', N'')
INSERT [dbo].[BANGDANHGIA] ([maDanhGia], [maNhanVien], [nguoiDanhGia], [ngayDanhGia], [diemDanhGia], [xepLoaiDanhGia], [chiTietDanhGia], [loaiDanhGia], [ghiChu]) VALUES (N'DG00413052023222', N'004', N'222', CAST(N'2023-05-13' AS Date), 109, N'Giỏi', N'3,3,2,2,2,3,3,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2', N'Được đánh giá', N'')
INSERT [dbo].[BANGDANHGIA] ([maDanhGia], [maNhanVien], [nguoiDanhGia], [ngayDanhGia], [diemDanhGia], [xepLoaiDanhGia], [chiTietDanhGia], [loaiDanhGia], [ghiChu]) VALUES (N'DG00814052023222', N'008', N'222', CAST(N'2023-05-14' AS Date), 113, N'Xuất sắc', N'3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,3,2', N'Được đánh giá', N'')
INSERT [dbo].[BANGDANHGIA] ([maDanhGia], [maNhanVien], [nguoiDanhGia], [ngayDanhGia], [diemDanhGia], [xepLoaiDanhGia], [chiTietDanhGia], [loaiDanhGia], [ghiChu]) VALUES (N'DG02413012023069', N'024', N'069', CAST(N'2023-01-13' AS Date), 110, N'Xuất sắc', N'3,3,2,2,2,3,3,3,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,0', N'Được đánh giá', N'')
INSERT [dbo].[BANGDANHGIA] ([maDanhGia], [maNhanVien], [nguoiDanhGia], [ngayDanhGia], [diemDanhGia], [xepLoaiDanhGia], [chiTietDanhGia], [loaiDanhGia], [ghiChu]) VALUES (N'DG02413012023222', N'024', N'222', CAST(N'2023-01-13' AS Date), 113, N'Xuất sắc', N'3,3,2,2,2,3,3,3,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3', N'Được đánh giá', N'')
INSERT [dbo].[BANGDANHGIA] ([maDanhGia], [maNhanVien], [nguoiDanhGia], [ngayDanhGia], [diemDanhGia], [xepLoaiDanhGia], [chiTietDanhGia], [loaiDanhGia], [ghiChu]) VALUES (N'DG06913052023069', N'069', N'069', CAST(N'2023-05-13' AS Date), 93, N'Giỏi', N'2,2,1,1,1,2,2,2,3,3,3,3,3,3,2,2,2,2,2,2,2,2,3,3,2,2,0,0,3,3', N'Tự đánh giá', N'')
INSERT [dbo].[BANGDANHGIA] ([maDanhGia], [maNhanVien], [nguoiDanhGia], [ngayDanhGia], [diemDanhGia], [xepLoaiDanhGia], [chiTietDanhGia], [loaiDanhGia], [ghiChu]) VALUES (N'DG06913052023222', N'069', N'222', CAST(N'2023-05-13' AS Date), 79, N'Khá', N'2,2,1,1,1,2,2,2,3,3,3,3,3,3,2,2,2,2,2,2,0,0,0,0,0,0,0,0,3,3', N'Được đánh giá', N'')
INSERT [dbo].[BANGDANHGIA] ([maDanhGia], [maNhanVien], [nguoiDanhGia], [ngayDanhGia], [diemDanhGia], [xepLoaiDanhGia], [chiTietDanhGia], [loaiDanhGia], [ghiChu]) VALUES (N'DG07014052023222', N'070', N'222', CAST(N'2023-05-14' AS Date), 93, N'Giỏi', N'2,2,1,1,1,2,2,2,3,3,3,3,3,3,2,2,2,2,2,2,2,2,3,3,2,2,0,0,3,3', N'Được đánh giá', N'')
GO
INSERT [dbo].[BAOCAOTUYENDUNG] ([maTuyenDung], [chucVu], [hocVan], [yeuCauGioiTinh], [yeuCauDoTuoi], [soLuongCanTuyen], [hanNopHoSo], [mucLuongToiThieu], [mucLuongToiDa]) VALUES (N'BCT003', N'QTV Hệ thống', N'9/9', N'Nam', N'18-35', 20, CAST(N'2023-12-12' AS Date), 15000000, 20000000)
INSERT [dbo].[BAOCAOTUYENDUNG] ([maTuyenDung], [chucVu], [hocVan], [yeuCauGioiTinh], [yeuCauDoTuoi], [soLuongCanTuyen], [hanNopHoSo], [mucLuongToiThieu], [mucLuongToiDa]) VALUES (N'BCTD001', N'Chuyên viên SEO', N'12/12', N'Không', N'Không', 5, CAST(N'2023-04-23' AS Date), 10000000, 12000000)
INSERT [dbo].[BAOCAOTUYENDUNG] ([maTuyenDung], [chucVu], [hocVan], [yeuCauGioiTinh], [yeuCauDoTuoi], [soLuongCanTuyen], [hanNopHoSo], [mucLuongToiThieu], [mucLuongToiDa]) VALUES (N'BCTD002', N'Phó phòng', N'9/9', N'Không', N'18-35', 12, CAST(N'2022-12-12' AS Date), 10000000, 200000000)
INSERT [dbo].[BAOCAOTUYENDUNG] ([maTuyenDung], [chucVu], [hocVan], [yeuCauGioiTinh], [yeuCauDoTuoi], [soLuongCanTuyen], [hanNopHoSo], [mucLuongToiThieu], [mucLuongToiDa]) VALUES (N'BCTD003', N'Quản lý nhân sự', N'12/12', N'Không', N'18-35', 20, CAST(N'2023-03-31' AS Date), 10000000, 20000000)
INSERT [dbo].[BAOCAOTUYENDUNG] ([maTuyenDung], [chucVu], [hocVan], [yeuCauGioiTinh], [yeuCauDoTuoi], [soLuongCanTuyen], [hanNopHoSo], [mucLuongToiThieu], [mucLuongToiDa]) VALUES (N'BCTD004', N'Kĩ sư phần mềm', N'Không', N'Nam', N'Không', 12, CAST(N'2023-04-05' AS Date), 9000000, 10000000)
INSERT [dbo].[BAOCAOTUYENDUNG] ([maTuyenDung], [chucVu], [hocVan], [yeuCauGioiTinh], [yeuCauDoTuoi], [soLuongCanTuyen], [hanNopHoSo], [mucLuongToiThieu], [mucLuongToiDa]) VALUES (N'BCTD005', N'Quản lý nhân sự', N'12/12', N'Không', N'Không', 15, CAST(N'2023-12-28' AS Date), 10000000, 15000000)
INSERT [dbo].[BAOCAOTUYENDUNG] ([maTuyenDung], [chucVu], [hocVan], [yeuCauGioiTinh], [yeuCauDoTuoi], [soLuongCanTuyen], [hanNopHoSo], [mucLuongToiThieu], [mucLuongToiDa]) VALUES (N'BCTD006', N'Kĩ thuật viên', N'Đại học', N'Nam', N'18-35', 5, CAST(N'2023-08-28' AS Date), 12000000, 15000000)
GO
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'000000001', N'An Giang', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'000000002', N'An Giang', CAST(N'2023-03-20' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'000000004', N'An Giang', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'000011111', N'An Giang', CAST(N'2023-03-24' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'001145676', N'An Giang', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'012322221', N'An Giang', CAST(N'2023-05-08' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'012344444', N'An Giang', CAST(N'2018-03-31' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'014401441', N'An Giang', CAST(N'2023-04-19' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'033445510', N'An Giang', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'037503751', N'An Giang', CAST(N'2018-10-08' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'078674412', N'An Giang', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'090909987', N'An Giang', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'092211331', N'An Giang', CAST(N'2018-10-01' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'09661294', N'Cần Thơ', CAST(N'2013-02-01' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'098778945', N'An Giang', CAST(N'2023-04-19' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'11001011', N'An Giang', CAST(N'2015-09-08' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'112214167', N'An Giang', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'112312312', N'An Giang', CAST(N'2018-12-12' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'12120968', N'Hà Nội', CAST(N'2016-10-22' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'12121212', N'An Giang', CAST(N'2018-10-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'121212121', N'An Giang', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'121212546', N'An Giang', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'123123123', N'An Giang', CAST(N'2018-12-12' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'123123132', N'An Giang', CAST(N'2023-04-02' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'123123321', N'An Giang', CAST(N'2023-03-31' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'123412341', N'An Giang', CAST(N'2023-03-21' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'123432156', N'An Giang', CAST(N'2023-04-28' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'123765987', N'An Giang', CAST(N'2023-05-08' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'123776144', N'An Giang', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'124124124', N'An Giang', CAST(N'2018-04-28' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'124412567', N'An Giang', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'13131313', N'Cần Thơ', CAST(N'2018-10-03' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'131313131', N'An Giang', CAST(N'2023-03-19' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'13132298', N'TPHCM', CAST(N'2018-06-14' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'13311966', N'Cần Thơ', CAST(N'2013-02-01' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'141414141', N'TP.Hồ Chí Minh', CAST(N'2018-03-26' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'15151515', N'An Giang', CAST(N'2018-10-10' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'17171717', N'An Giang', CAST(N'2018-10-10' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'171717171', N'An Giang', CAST(N'2018-10-02' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'18181818', N'An Giang', CAST(N'2018-10-10' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'181818181', N'An Giang', CAST(N'2018-10-08' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'187187187', N'TP.Hồ Chí Minh', CAST(N'2018-04-28' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'188822344', N'An Giang', CAST(N'2023-03-31' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'190976554', N'An Giang', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'191181711', N'An Giang', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'199188177', N'TP.Hồ Chí Minh', CAST(N'2018-10-03' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'20202020', N'An Giang', CAST(N'2018-10-10' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'345345678', N'An Giang', CAST(N'2023-05-08' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'564456765', N'An Giang', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'566666666', N'An Giang', CAST(N'2023-03-08' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'678876678', N'An Giang', CAST(N'2018-04-02' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'876543556', N'An Giang', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'966955922', N'Bình Dương', CAST(N'2018-10-03' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'985985985', N'Cần Thơ', CAST(N'2018-04-28' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'987786124', N'An Giang', CAST(N'2023-05-08' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'987789987', N'An Giang', CAST(N'2018-04-02' AS Date))
INSERT [dbo].[CMND] ([soCMND], [noiCap], [ngayCap]) VALUES (N'987987789', N'An Giang', CAST(N'2018-04-02' AS Date))
GO
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'000000001', N'Nguyễn Thị Mỹ Nương ', N'Nữ', CAST(N'2003-01-14' AS Date), N'90/A Nguyễn Thị Tú, Bình Hưng Hòa B, Bình Tân, TP.Hồ Chí Minh', N'01212121212', N'Độc thân', N'Không', N'Không', N'mynuong@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'000000002', N'Võ Phát Thành ', N'Nam', CAST(N'2003-09-17' AS Date), N'12A Phước Thành, Vĩnh Bình, Châu Thành, An Giang', N'0932133144', N'Độc thân', N'Không', N'Không', N'thanhvo@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'000000004', N'Nguyễn Thị Khánh Huyền ', N'Nữ', CAST(N'2004-03-21' AS Date), N'123 Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'0199199199', N'Độc thân', N'Không', N'Không', N'khanhhuyen@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'000011111', N'Nguyễn Thị Như Mai', N'Nữ', CAST(N'2001-03-24' AS Date), N'1s Khóm 1, An Phú, An Phú, An Giang', N'012312313', N'Độc thân', N'Không', N'Không', N'nhumai@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'001145676', N'Huỳnh Thanh H', N'Nam', CAST(N'2000-04-09' AS Date), N'TDUV12 Khóm 1, An Phú, An Phú, An Giang', N'0123123123', N'Độc thân', N'Không', N'Không', N'thanhh@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'012322221', N'Nguyễn Văn B ', N'Nam', CAST(N'2000-05-08' AS Date), N'123 Khóm 1, An Phú, An Phú, An Giang', N'0123123123', N'Độc thân', N'Kinh', N'Không', N'vanb123@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'012344444', N'Nguyễn Văn F', N'Nam', CAST(N'2018-03-31' AS Date), N'4f Tân Thạnh, Tân Phú, Châu Thành, An Giang', N'0123123123', N'Độc thân', N'Kinh', N'Không', N'vanfff@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'014401441', N'Nguyễn Thanh Đức', N'Nam', CAST(N'2000-04-19' AS Date), N'111 Khóm 1, An Phú, An Phú, An Giang', N'0123123123', N'Độc thân', N'Kinh', N'Không', N'thanhduc@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'033445510', N'Phùng Thanh Độ', N'Nam', CAST(N'1989-05-09' AS Date), N'123 Khóm 1, An Phú, An Phú, An Giang', N'0123123123', N'Độc thân', N'Tày', N'Không', N'thanhdo@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'037503751', N'Lê Quan Phát', N'Nam', CAST(N'2003-11-22' AS Date), N'157/89 Khóm 1, An Phú, An Phú, An Giang', N'0383642670', N'Độc thân', N'Kinh', N'Không', N'lequanphat3579@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'078674412', N'Trương Huỳnh K ', N'Nam', CAST(N'2000-05-09' AS Date), N'12A Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'0123123123', N'Độc thân', N'Không', N'Không', N'huynhd@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'090909987', N'Huỳnh Văn Đ ', N'Nam', CAST(N'2001-05-09' AS Date), N'12A Trần Kế Xương, Phường 03, Bình Thạnh, TP.Hồ Chí Minh', N'0123123123', N'Độc thân', N'Kinh', N'Không', N'huynhvan@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'092211331', N'Trần Ngọc Thảo Ngân', N'Nữ', CAST(N'2003-06-09' AS Date), N'157/89 Khóm 1, An Phú, An Phú, An Giang', N'0200986711', N'Độc thân', N'Kinh', N'Không', N'ngantran2003@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'09661294', N'Trương Thành D', N'Nam', CAST(N'1998-08-04' AS Date), N'12 Quang Trung, phường 02, quận 4, TPHCM', N'0321141169', N'Độc thân', N'Kinh', N'Không', N'truongthanhd@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'098778945', N'Nguyễn Văn Thành ', N'Nam', CAST(N'2000-04-19' AS Date), N'111 Lê Duẫn, Phường 01, TP.Cà Mau, Cà Mau', N'012121212', N'Độc thân', N'Kinh', N'Không', N'vanthanh@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'11001011', N'Nguyễn Văn A', N'Nam', CAST(N'2003-12-23' AS Date), N'157/89 Dương Bá Trạc, phường 01, quận 8, TPHCM', N'0923133156', N'Độc thân', N'Kinh', N'Không', N'nguyenvana@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'112214167', N'Nguyễn Thị Tuyết Nga ', N'Nữ', CAST(N'2002-05-09' AS Date), N'19/8A Khu phố 2, Phước Hưng, TP.Bà Rịa, Bà Rịa Vũng Tàu', N'0123123123', N'Độc thân', N'Kinh', N'Không', N'tuyetnga@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'112312312', N'Hihihi Hihiihi ', N'Nam', CAST(N'2003-03-20' AS Date), N'1 Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'0123123135', N'Độc thân', N'Không', N'Không', N'hihiiiih@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'12120968', N'Lê Thị H', N'Nữ', CAST(N'2000-11-20' AS Date), N'123 Hà Hoàng Hổ, phường 10, quận 3, TPHCM', N'0368198198', N'Độc thân', N'Kinh', N'Không', N'mail01@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'12121212', N'Tăng Hồng Nguyên Đán', N'Nam', CAST(N'2003-06-06' AS Date), N'157/89 Dương Bá Trạc,phường 01, quận 8, TPHCM', N'01414141414', N'Độc thân', N'Kinh', N'Không', N'huynhthanhk@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'121212121', N'Nguyễn Văn C', N'Nam', CAST(N'2006-03-21' AS Date), N'12S Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'0123123123', N'Độc thân', N'Không', N'Không', N'nguyenvanc@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'121212546', N'Đỗ Thị Như N', N'Nữ', CAST(N'2000-04-09' AS Date), N'TDUV12A Khóm 1, An Phú, An Phú, An Giang', N'0123123132', N'Độc thân', N'Không', N'Không', N'nhun12@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'123123123', N'Hihihi Hihiihi ', N'Nam', CAST(N'2003-03-20' AS Date), N'1 Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'0123123132', N'Độc thân', N'Không', N'Không', N'hihiiiih123@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'123123132', N'Trần Văn A', N'Nam', CAST(N'2000-04-02' AS Date), N'TDUV12F/A Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'0123123132', N'Độc thân', N'Không', N'Không', N'vana123@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'123123321', N'Nguyễn Văn AK', N'Nữ', CAST(N'1993-03-31' AS Date), N'TDUV123 Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'0123123132', N'Độc thân', N'Kinh', N'Không', N'nguyenvanak@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'123412341', N'Nguyễn Thanh B ', N'Nam', CAST(N'1992-03-21' AS Date), N'12 Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'099112861', N'Độc thân', N'Không', N'Không', N'thanhbinh@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'123432156', N'Nguyễn Thị B', N'Nữ', CAST(N'2003-04-28' AS Date), N'TDUV12A Khóm 1, An Phú, An Phú, An Giang', N'0123123123', N'Độc thân', N'Không', N'Không', N'nguyenthib@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'123765987', N'Huỳnh Văn F', N'Nam', CAST(N'2000-05-08' AS Date), N'TDUV123 Khóm 1, An Phú, An Phú, An Giang', N'0123123123', N'Độc thân', N'Không', N'Không', N'huynhvanf@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'123776144', N'Nguyễn Văn Doraemon ', N'Nam', CAST(N'2000-05-09' AS Date), N'190 Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'0123123123', N'Độc thân', N'Không', N'Không', N'doraemon@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'124124124', N'Lê Thanh Q', N'Nam', CAST(N'2003-04-28' AS Date), N'TDUV476C Khóm 1, An Phú, An Phú, An Giang', N'0987987987', N'Độc thân', N'Không', N'Không', N'thanhq@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'124412567', N'Nguyễn Thị Hồng Như', N'Nữ', CAST(N'2000-05-09' AS Date), N'TDUV129A Khóm 1, An Phú, An Phú, An Giang', N'0123123123', N'Độc thân', N'Kinh', N'Không', N'hongnhu@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'13131313', N'Hồ Đỗ Hoàng Khang', N'Nam', CAST(N'2003-03-02' AS Date), N'157/89 Dương Bá Trạc,phường 01, quận 8, TPHCM', N'0123123123', N'Độc thân', N'Kinh', N'Không', N'huynhthanhk@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'131313131', N'Hahahah Hahaha', N'Nam', CAST(N'2000-03-19' AS Date), N'90/1 Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'0123123132', N'Độc thân', N'Không', N'Không', N'hahahaha@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'13132298', N'Trương Hoàng T', N'Nam', CAST(N'2002-07-16' AS Date), N'15 Cao Lỗ, phường 4, quận 8, TPHCM', N'02991213123', N'Độc thân', N'Kinh', N'Không', N'truonghoangthai@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'13311966', N'Huỳnh Thanh K', N'Nam', CAST(N'1996-03-04' AS Date), N'146 Nam Kì, phường 13, quận 6, TPHCM', N'0967167167', N'Đã kết hôn', N'Kinh', N'Không', N'huynhthanhk@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'141414141', N'Trần Xuân Danh', N'Nam', CAST(N'2003-10-17' AS Date), N'809/33D Khóm 1, An Phú, An Phú, An Giang', N'0121212445', N'Độc thân', N'Kinh', N'Không', N'xuandanh@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'15151515', N'Đỗ Thị Cẩm Tiên', N'Nữ', CAST(N'2003-11-04' AS Date), N'12A Khóm 1, An Phú, An Phú, An Giang', N'0121212445', N'Độc thân', N'Kinh', N'Không', N'mail12345@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'171717171', N'Trương Thị Cẩm Tú', N'Nữ', CAST(N'2003-05-03' AS Date), N'157/89 Khóm 1, An Phú, An Phú, An Giang', N'0121212445', N'Độc thân', N'Kinh', N'Không', N'mail123@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'181818181', N'Nguyễn Ngọc Huy ', N'Nam', CAST(N'2003-09-10' AS Date), N'157/89 Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'0121212445', N'Độc thân', N'Kinh', N'Không', N'mail123@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'187187187', N'Nguyễn Thành T ', N'Nam', CAST(N'2003-04-28' AS Date), N'12C Kinh Dương Vương, An Lạc, Bình Tân, TP.Hồ Chí Minh', N'0198198198', N'Độc thân', N'Kinh', N'Không', N'thanht@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'188822344', N'Nguyến Thị Ss ', N'Nữ', CAST(N'2001-04-19' AS Date), N'12A Khóm 1, An Phú, An Phú, An Giang', N'0123123123', N'Độc thân', N'Kinh', N'Không', N'thisinh@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'190976554', N'Lý Thành T', N'Nam', CAST(N'2003-04-09' AS Date), N'TDUV12 Khóm 1, An Phú, An Phú, An Giang', N'0123123132', N'Độc thân', N'Không', N'Không', N'thanhtu@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'191181711', N'Nguyễn Văn P', N'Nam', CAST(N'2000-05-09' AS Date), N'TDUV18H Khóm 1, An Phú, An Phú, An Giang', N'0123123123', N'Độc thân', N'Kinh', N'Không', N'vanphong@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'199188177', N'Trương Thái H ', N'Nam', CAST(N'2002-04-28' AS Date), N'88A Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'0922122133', N'Độc thân', N'Kinh', N'Không', N'thaih@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'20202020', N'Nguyễn Thị Diễm My', N'Nữ', CAST(N'2003-01-23' AS Date), N'157/89 Dương Bá Trạc,phường 01, quận 8, TPHCM', N'0121212445', N'Độc thân', N'Kinh', N'Không', N'mail@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'345345678', N'Trần Thị C', N'Nữ', CAST(N'2000-05-08' AS Date), N'TDUV123 Khóm 1, An Phú, An Phú, An Giang', N'01231233123', N'Độc thân', N'Kinh', N'Không', N'thic123@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'564456765', N'Trương Thị Mai Hoa    ', N'Nữ', CAST(N'2001-05-09' AS Date), N'TDUV12/3A Khóm 1, An Phú, An Phú, An Giang', N'0123123132', N'Độc thân', N'Kinh', N'Không', N'maihoa@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'566666666', N'hahahaha hahah', N'Nữ', CAST(N'2000-03-17' AS Date), N'69A Nguyễn Văn Linh, Bình Hưng, Bình Chánh, TP.Hồ Chí Minh', N'0123123132', N'Độc thân', N'Không', N'Không', N'hahahah@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'678876678', N'Lê Văn Nobita ', N'Nam', CAST(N'2000-04-02' AS Date), N'485 Tân Thạnh, Tân Phú, Châu Thành, An Giang', N'0123123123', N'Độc thân', N'Kinh', N'Không', N'nobianedoraemon@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'876543556', N'Nguyễn Thị K ', N'Nữ', CAST(N'2000-05-09' AS Date), N'129A Khóm 1, An Phú, An Phú, An Giang', N'0123123123', N'Độc thân', N'Không', N'Không', N'thik123@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'966955922', N'Trần Công T ', N'Nam', CAST(N'2001-04-28' AS Date), N'134A Hai Bà Trưng, Dĩ An, TP.Dĩ An, Bình Dương', N'0123123123', N'Độc thân', N'Kinh', N'Không', N'congt@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'985985985', N'Lê Công D ', N'Nam', CAST(N'2002-04-10' AS Date), N'86H Ngô Gia Tự, Tân An, Ninh Kiều, Cần Thơ', N'0155155155', N'Độc thân', N'Kinh', N'Không', N'congd@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'987786124', N'Huỳnh Thanh M', N'Nam', CAST(N'2000-05-08' AS Date), N'TDUV123 Khóm 1, An Phú, An Phú, An Giang', N'0123131231', N'Độc thân', N'Không', N'Không', N'thahm@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'987789987', N'Lý Văn Luffy ', N'Nam', CAST(N'2000-04-02' AS Date), N'12A Tân Lợi, Tân Phú, Châu Thành, An Giang', N'0123123123', N'Độc thân', N'Kinh', N'Không', N'luffy123@gmail.com')
INSERT [dbo].[CONNGUOI] ([CMND], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [SDT], [tinhTrangHonNhan], [danToc], [tonGiao], [email]) VALUES (N'987987789', N'Trần Văn Doraemon ', N'Nam', CAST(N'2000-04-02' AS Date), N'485 Tân Thạnh, Tân Phú, Châu Thành, An Giang', N'0123132123', N'Độc thân', N'Kinh', N'Không', N'doraemon@gmail.com')
GO
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'abc', N'1')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'abc', N'13')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'abc', N'14')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'abc', N'2')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'abc', N'6')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'1')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'10')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'11')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'12')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'13')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'14')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'15')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'16')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'17')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'18')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'19')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'2')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'20')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'21')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'22')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'23')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'24')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'25')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'26')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'27')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'28')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'29')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'3')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'30')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'31')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'32')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'33')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'34')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'35')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'36')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'37')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'38')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'4')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'5')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'6')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'7')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'8')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN1', N'9')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'1')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'10')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'11')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'12')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'13')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'16')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'18')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'19')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'2')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'21')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'24')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'25')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'26')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'27')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'28')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'29')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'3')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'35')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'38')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'6')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'7')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'ADMIN2', N'9')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'NHANVIEN1', N'1')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'NHANVIEN1', N'24')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'NHANVIEN1', N'25')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'NHANVIEN1', N'26')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'NHANVIEN1', N'29')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'NHANVIEN1', N'30')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'NHANVIEN1', N'34')
INSERT [dbo].[CHITIETNHOMQUYEN] ([maNhomQuyen], [maChucNang]) VALUES (N'NHANVIEN2', N'1')
GO
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'1', N'Xem thông tin cá nhân')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'10', N'Thêm ứng viên')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'11', N'Sửa xóa ứng viên')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'12', N'Tuyển ứng viên')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'13', N'Xem danh sách hợp đồng')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'14', N'Kí hợp đồng')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'15', N'Gia hạn, hủy hợp đồng')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'16', N'Thống kê hợp đồng')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'17', N'Xuất file Excel')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'18', N'Xem phòng ban')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'19', N'Thêm phòng ban')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'2', N'Xem danh sách nhân viên')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'20', N'Sửa xóa phòng ban')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'21', N'Điều chỉnh nhân sự')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'22', N'Thống kê phòng ban')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'23', N'Xuất file')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'24', N'Xem chấm công cá nhân')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'25', N'Xem danh sách chấm công')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'26', N'Chấm công')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'27', N'Sửa xóa chấm công')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'28', N'Xuất file Excel chấm công')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'29', N'Xem lương cá nhân')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'3', N'Thêm nhân viên')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'30', N'Xem danh sách lương')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'31', N'Cập nhật lương thưởng')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'32', N'Cập nhật phụ cấp, khoản trừ')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'33', N'Điều chỉnh lương')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'34', N'Xuất file Excel lương')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'35', N'Xem đánh giá cá nhân')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'36', N'Xem danh sách đánh giá')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'37', N'Đánh giá nhân viên')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'38', N'Phân quyền người dùng')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'4', N'Sửa xóa nhân viên')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'5', N'Xuất file Excel')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'6', N'Xem đợt tuyển dụng')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'7', N'Thêm đợt tuyển dụng')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'8', N'Sửa xóa đợt tuyển dụng')
INSERT [dbo].[CHUCNANG] ([maChucNang], [tenChucNang]) VALUES (N'9', N'Xem danh sách ứng viên')
GO
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV000', N'Phó phòng', 14, CAST(N'2023-03-10' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV001', N'Trưởng phòng', 16, CAST(N'2023-03-17' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV002', N'Phó phòng', 14, CAST(N'2023-03-22' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV003', N'Trưởng phòng', 16, CAST(N'2023-03-26' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV004', N'Phó phòng', 14, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV007', N'Kĩ sư phần mềm', 12, CAST(N'2023-03-19' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV008', N'Phó phòng', 14, CAST(N'2023-03-24' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV009', N'Trưởng phòng', 16, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV011', N'Kĩ thuật viên', 5, CAST(N'2023-03-30' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV012', N'Kĩ thuật viên', 5, CAST(N'2023-03-30' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV013', N'Kĩ thuật viên', 5, CAST(N'2023-03-31' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV014', N'Digital Marketing', 8, CAST(N'2023-03-26' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV016', N'Chuyên viên đào tạo', 8, CAST(N'2023-03-21' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV017', N'Trưởng phòng', 16, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV022', N'Kế toán doanh thu', 8, CAST(N'2023-04-28' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV023', N'Chuyên viên hành chính', 8, CAST(N'2023-04-28' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV024', N'Kế toán lương thưởng', 8, CAST(N'2023-03-24' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV025', N'Kĩ sư bảo mật', 12, CAST(N'2023-03-24' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV033', N'Phó phòng', 14, CAST(N'2023-03-26' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV034', N'Phó phòng', 14, CAST(N'2023-03-22' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV043', N'Chuyên viên SEO', 10, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV045', N'Kĩ sư phần mềm', 12, CAST(N'2023-03-26' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV067', N'Quản lý nhân sự', 10, CAST(N'2023-04-02' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV068', N'Trưởng phòng', 16, CAST(N'2023-04-02' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV069', N'Chuyên viên tuyển dụng', 8, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV070', N'Phát triển sản phẩm', 8, CAST(N'2023-04-02' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV071', N'Kế toán', 0, CAST(N'2020-12-12' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV077', N'Chuyên viên SEO', 10, CAST(N'2023-05-08' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV089', N'Chuyên viên SEO', 10, CAST(N'2023-05-08' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV090', N'Chuyên viên SEO', 10, CAST(N'2023-05-08' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV091', N'Phó phòng', 14, CAST(N'2023-03-26' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV092', N'Kĩ sư phần mềm', 12, CAST(N'2023-04-19' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV094', N'Kế toán doanh thu', 8, CAST(N'2023-04-02' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV095', N'Chuyên viên đào tạo', 8, CAST(N'2023-04-19' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV097', N'QTV Hệ thống', 10, CAST(N'2023-05-08' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV099', N'Kĩ sư bảo mật', 12, CAST(N'2023-03-26' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV110', N'Chuyên viên CNTT', 10, CAST(N'2023-03-31' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV111', N'Chuyên viên SEO', 10, CAST(N'2023-05-08' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV120', N'Trưởng phòng', 16, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV122', N'Kế toán', 0, CAST(N'2020-12-12' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV123', N'Chuyên viên SEO', 10, CAST(N'2023-05-08' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV124', N'Phó phòng', 14, CAST(N'2023-03-24' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV125', N'Quản lý nhân sự', 10, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV127', N'Chuyên viên SEO', 10, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV129', N'Kế toán doanh thu', 8, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV131', N'Chuyên viên SEO', 10, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV139', N'Quản lý nhân sự', 10, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV155', N'Trưởng phòng', 16, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV159', N'Chuyên viên SEO', 10, CAST(N'2023-05-09' AS Date))
INSERT [dbo].[CHUCVU] ([maChucVu], [tenChucVu], [phuCapChucVu], [ngayNhanChuc]) VALUES (N'CV222', N'Chuyên viên SEO', 10, CAST(N'2023-05-09' AS Date))
GO
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'KTV', N'Kĩ thuật viên', 5)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'QTVHT', N'QTV Hệ thống', 10)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'KSBM', N'Kĩ sư bảo mật', 12)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'CVCNTT', N'Chuyên viên CNTT', 10)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'KSPM', N'Kĩ sư phần mềm', 12)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'KTT', N'Kế toán trưởng', 12)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'KTLT', N'Kế toán lương thưởng', 8)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'KTDT', N'Kế toán doanh thu', 8)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'KTTH', N'Kế toán tổng hợp', 8)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'KTTS', N'Kế toán tài sản', 8)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'TTNB', N'Truyền thông nội bộ', 6)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'QHCC', N'Quan hệ công chúng', 6)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'DM', N'Digital Marketing', 8)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'PM', N'PR Media', 6)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'CVTD', N'Chuyên viên tuyển dụng', 8)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'CVDT', N'Chuyên viên đào tạo', 8)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'CVHC', N'Chuyên viên hành chính', 8)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'QLNS', N'Quản lý nhân sự', 10)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'PTSP', N'Phát triển sản phẩm', 8)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'PTQT', N'Phát triển quy trình', 8)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'PTCN', N'Phát triển công nghệ', 10)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'TP', N'Trưởng phòng', 16)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'PP', N'Phó phòng', 14)
INSERT [dbo].[CHUCVUCONGTY] ([maChucVu], [tenChucVu], [phuCapChucVu]) VALUES (N'CVS', N'Chuyên viên SEO', 10)
GO
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'1', N'Tân Lợi', N'53')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'10', N'Cần Thuận', N'46')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'100', N'Trần Hưng Đạo', N'94')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'101', N'Nguyễn Trãi', N'94')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'102', N'Võ Văn Kiệt', N'94')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'103', N'Phan Văn Trí', N'94')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'104', N'Cao Đạt', N'94')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'105', N'Nguyễn Biểu', N'94')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'106', N'Huỳnh Mẫn Đạt', N'94')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'107', N'Huỳnh Mẫn Đạt', N'95')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'108', N'Trần Bình Trọng', N'95')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'109', N'An Dương Vương', N'95')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'11', N'Hòa A', N'46')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'110', N'Nguyễn Trãi', N'95')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'111', N'Trần Hưng Đạo', N'95')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'112', N'Trần Hưng Đạo', N'96')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'113', N'Trần Phú', N'96')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'114', N'Hùng Vương', N'96')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'115', N'Phan Văn Trí', N'96')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'116', N'Bạch Vân', N'97')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'117', N'Đào Tấn', N'97')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'118', N'Nghĩa Thục', N'97')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'119', N'Trần Tuấn Khải', N'97')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'12', N'Hòa B', N'46')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'120', N'Võ Văn Kiệt', N'97')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'121', N'Võ Văn Kiệt', N'98')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'122', N'Hàm Tử', N'98')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'123', N'Trần Phú', N'98')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'124', N'Trần Hưng Đạo', N'98')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'125', N'Hai Bà Trưng', N'63')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'126', N'Trần Quang Khải', N'63')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'127', N'Nguyễn Phi Khanh', N'63')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'128', N'Đinh Công Tráng', N'63')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'129', N'Hoàng Sa', N'63')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'13', N'Vĩnh Phú', N'51')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'130', N'Hoàng Sa', N'64')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'131', N'Hai Bà Trưng', N'64')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'132', N'Võ Thị Sáu', N'64')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'133', N'Điện Biên Phủ', N'64')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'134', N'Đinh Tiên Hoàng', N'64')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'135', N'Nguyễn Bỉnh Khiêm', N'64')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'136', N'Nguyễn Đình Chiểu', N'64')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'137', N'Tôn Đức Thắng', N'65')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'138', N'Nguyễn Hữu Cảnh', N'65')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'139', N'Hàm Nghi', N'65')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'14', N'Vĩnh Quới', N'51')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'140', N'Nguyễn Du', N'65')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'141', N'Lê Duẩn', N'65')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'142', N'Lê Thánh Tôn', N'65')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'143', N'Nguyễn Du', N'66')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'144', N'Lê Lai', N'66')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'145', N'Lý Tự Trọng', N'66')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'146', N'Trương Định', N'66')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'147', N'Võ Văn Kiệt', N'67')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'148', N'Nam Kì Khởi Nghĩa', N'67')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'149', N'Tôn Thất Đạm', N'67')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'15', N'Vĩnh Thành', N'51')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'150', N'Bùi Viện', N'68')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'151', N'Phạm Ngũ Lão', N'68')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'152', N'Lê Lai', N'68')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'153', N'Cống Quỳnh', N'68')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'154', N'Trần Hưng Đạo', N'69')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'155', N'Trần Đình Xu', N'69')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'156', N'Nguyễn Cảnh Chân', N'69')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'157', N'Điện Biên Phủ', N'99')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'158', N'Lý Thái Tổ', N'99')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'159', N'Nguyễn Thiện Thuật', N'99')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'16', N'Bình Phú I', N'50')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'160', N'Nguyễn Đình Chiểu', N'100')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'161', N'Cao Thắng', N'100')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'162', N'Bàn Cờ', N'100')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'163', N'Nguyễn Thị Minh Khai', N'100')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'164', N'Nguyễn Thiện Thuật', N'101')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'165', N'Điện Biên Phủ', N'101')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'166', N'Cao Thắng', N'101')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'167', N'Nguyễn Hiền', N'102')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'168', N'Đường số 2', N'102')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'169', N'Đường số 3', N'102')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'17', N'Bình Phú II', N'50')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'170', N'Đường số 4', N'102')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'171', N'Đường số 1', N'102')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'172', N'Cao Thắng', N'103')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'173', N'Võ Văn Tần', N'103')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'174', N'Nguyễn Thương Hiền', N'103')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'175', N'Võ Thị Sáu', N'104')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'176', N'Hai Bà Trưng', N'104')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'177', N'Cách Mạng Tháng Tám', N'104')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'178', N'Trương Định', N'104')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'179', N'Khu phố 1', N'211')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'18', N'Phú Hòa I', N'50')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'180', N'Khu phố 2', N'211')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'181', N'Khu phố 3', N'211')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'182', N'Khu phố 4', N'211')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'183', N'Khu phố 5', N'211')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'184', N'Khu phố 1', N'210')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'185', N'Khu phố 2', N'210')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'186', N'Khu phố 3', N'210')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'187', N'Khu phố 1', N'209')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'188', N'Khu phố 2', N'209')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'189', N'Khu phố 3', N'209')
GO
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'19', N'Phú Hòa II', N'50')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'190', N'Khu phố 3', N'208')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'191', N'Khu phố 1', N'208')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'192', N'Khu phố 2', N'208')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'193', N'Khu phố 1', N'212')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'194', N'Khu phố 2', N'212')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'195', N'Khu phố 3', N'212')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'196', N'Khu phố 1', N'213')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'197', N'Khu phố 2', N'213')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'198', N'Khu phố 3', N'213')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'199', N'Khu phố 1', N'215')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'2', N'Tân Thành', N'53')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'20', N'Phú An I', N'50')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'200', N'Khu phố 2', N'215')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'201', N'Khu phố 3', N'215')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'202', N'Khu phố 1', N'216')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'204', N'Khu phố 2', N'216')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'205', N'Khu phố 2', N'217')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'206', N'Khu phố 1', N'217')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'207', N'Khu phố 1', N'218')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'208', N'Khu phố 2', N'218')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'209', N'An Xá', N'219')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'21', N'Phú An II', N'50')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'210', N'Hồng Hà', N'219')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'211', N'Phúc Xá', N'219')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'212', N'Tân Ấp', N'219')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'213', N'Khu phố 1', N'220')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'214', N'Khu phố 2', N'220')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'215', N'Khu phố 2', N'222')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'216', N'Khu phố 1', N'222')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'217', N'Khu phố 1', N'221')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'218', N'Khu phố 2', N'221')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'219', N'Nguyễn Văn Linh', N'135')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'22', N'Vĩnh Hiệp', N'52')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'220', N'Nguyễn Văn Linh', N'132')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'221', N'Nguyễn Văn Linh', N'137')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'222', N'Nguyễn Văn Linh', N'133')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'223', N'Nguyễn Văn Linh', N'134')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'224', N'Nguyễn Văn Linh', N'135')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'225', N'Nguyễn Văn Linh', N'136')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'226', N'Nguyễn Văn Linh', N'129')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'227', N'Nguyễn Văn Linh', N'130')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'228', N'Nguyễn Văn Linh', N'131')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'229', N'Võ Văn Kiệt', N'145')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'23', N'Vĩnh Hòa 1', N'52')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'230', N'Kinh Dương Vương', N'145')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'231', N'Võ Văn Kiệt', N'144')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'232', N'Đường số 7', N'144')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'233', N'Nguyễn Thị Tú', N'138')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'234', N'Nguyễn Thị Tú', N'139')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'235', N'Nguyễn Thị Tú', N'140')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'236', N'Thoại Ngọc Hầu', N'141')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'237', N'Thoại Ngọc Hầu', N'142')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'238', N'Thoại Ngọc Hầu', N'143')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'239', N'Tân Hòa Đông', N'143')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'24', N'Vĩnh Hòa 2', N'52')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'240', N'Tân Hòa Đông', N'142')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'241', N'Tân Hòa Đông', N'141')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'242', N'Diên Hồng', N'146')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'243', N'Yên Đỗ', N'146')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'244', N'Vũ Tùng', N'147')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'245', N'Bùi Hữu Nghĩa', N'147')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'246', N'Trần Kế Xương', N'148')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'247', N'Vũ Huy Tấn', N'148')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'248', N'Nguyễn Trung Trực', N'149')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'249', N'Nguyễn Trung Trực', N'150')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'25', N'Vĩnh Lợi', N'52')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'250', N'Nguyễn Trung Trực', N'151')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'251', N'Nguyễn Trung Trực', N'152')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'252', N'Nguyễn Trung Trực', N'153')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'253', N'Trần Bình Trọng', N'153')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'254', N'Trần Bình Trọng', N'152')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'255', N'Trần Bình Trọng', N'151')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'256', N'Trần Bình Trọng', N'150')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'257', N'Trần Bình Trọng', N'149')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'258', N'Nguyễn Thượng Hiền', N'149')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'259', N'Nguyễn Thượng Hiền', N'150')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'26', N'Vĩnh Thuận', N'52')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'260', N'Nguyễn Thượng Hiền', N'151')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'261', N'Nguyễn Thượng Hiền', N'152')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'262', N'Nguyễn Thượng Hiền', N'153')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'263', N'Vĩnh Chánh', N'10')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'264', N'Vĩnh Phú', N'10')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'265', N'Vĩnh Phú', N'11')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'267', N'Vĩnh Chánh', N'11')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'268', N'Châu Thạnh', N'11')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'269', N'Châu Long 1', N'12')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'27', N'Bình Long 1', N'1')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'270', N'Châu Long 2', N'12')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'271', N'Khóm 1', N'13')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'272', N'Khóm 1', N'14')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'273', N'Khóm 1', N'15')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'274', N'Khóm 1', N'16')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'275', N'Khóm 1', N'17')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'276', N'Khóm 1', N'18')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'277', N'Khóm 1', N'19')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'278', N'Khóm 1', N'20')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'279', N'Khóm 1', N'21')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'28', N'Bình Long 2', N'1')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'280', N'Khóm 1', N'22')
GO
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'281', N'Khóm 1', N'23')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'282', N'Khóm 1', N'24')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'283', N'Khóm 1', N'25')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'284', N'Khóm 1', N'26')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'285', N'Khóm 1', N'27')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'286', N'Khóm 1', N'28')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'287', N'Khóm 1', N'29')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'288', N'Khóm 1', N'30')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'289', N'Khóm 1', N'31')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'29', N'Bình Long 3', N'1')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'290', N'Khóm 1', N'32')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'291', N'Khóm 1', N'33')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'292', N'Khóm 1', N'34')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'293', N'Khóm 1', N'35')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'294', N'Khóm 1', N'36')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'295', N'Khóm 1', N'37')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'296', N'Khóm 1', N'38')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'297', N'Khóm 1', N'39')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'298', N'Khóm 1', N'40')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'299', N'Khóm 1', N'41')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'3', N'Tân Thạnh', N'53')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'30', N'Bình Long 4', N'1')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'300', N'Khóm 1', N'42')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'301', N'Khóm 1', N'43')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'302', N'Khóm 1', N'44')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'303', N'Khóm 1', N'45')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'304', N'Khóm 1', N'47')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'305', N'Khóm 1', N'48')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'306', N'Khóm 1', N'54')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'307', N'Khóm 1', N'8')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'308', N'Khóm 1', N'9')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'309', N'Khóm 1', N'214')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'31', N'Nguyễn Du', N'1')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'310', N'Võ Văn Kiệt', N'105')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'311', N'Võ Văn Kiệt', N'106')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'312', N'Võ Văn Kiệt', N'107')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'313', N'Võ Văn Kiệt', N'108')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'314', N'Võ Văn Kiệt', N'109')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'315', N'Võ Văn Kiệt', N'110')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'316', N'Cao Văn Lầu', N'111')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'317', N'Cao Văn Lầu', N'112')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'318', N'Cao Văn Lầu', N'113')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'319', N'Cao Văn Lầu', N'114')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'32', N'Khóm 1', N'2')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'320', N'Cao Văn Lầu', N'115')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'321', N'Cao Văn Lầu', N'116')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'322', N'Lý Thái Tổ', N'117')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'323', N'Lý Thái Tổ', N'118')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'324', N'Lý Thái Tổ', N'119')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'325', N'Lý Thái Tổ', N'120')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'326', N'Lý Thái Tổ', N'121')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'327', N'Lý Thái Tổ', N'122')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'328', N'Thành Thái', N'117')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'329', N'Thành Thái', N'118')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'33', N'Khóm 2', N'2')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'330', N'Thành Thái', N'119')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'331', N'Thành Thái', N'120')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'332', N'Thành Thái', N'121')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'333', N'Thành Thái', N'122')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'334', N'Hồng Bàn', N'123')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'335', N'Hồng Bàn', N'124')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'336', N'Hồng Bàn', N'125')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'337', N'Hồng Bàn', N'126')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'338', N'Hồng Bàn', N'127')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'339', N'Hồng Bàn', N'128')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'34', N'Khóm 3', N'2')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'340', N'Khóm 1', N'154')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'341', N'Khóm 1', N'155')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'342', N'Khóm 1', N'156')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'343', N'Khóm 1', N'157')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'344', N'Khóm 1', N'158')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'345', N'Khóm 1', N'159')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'346', N'Khóm 2', N'154')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'347', N'Khóm 2', N'155')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'348', N'Khóm 2', N'156')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'349', N'Khóm 2', N'157')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'35', N'Khóm 4', N'2')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'350', N'Khóm 2', N'158')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'351', N'Khóm 2', N'159')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'352', N'Nguyễn Thị Rành', N'160')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'353', N'Nguyễn Thị Rành', N'161')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'354', N'Phước An', N'165')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'355', N'Phước Lộc', N'165')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'356', N'Bàu Chứa', N'163')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'357', N'Ngã Tư', N'163')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'358', N'Nguyễn Thị Rành', N'162')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'359', N'Xuyên Á', N'166')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'36', N'Khóm 5', N'2')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'360', N'Tam Tân', N'166')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'361', N'Trung An', N'164')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'362', N'Nguyễn Thị Ni', N'164')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'363', N'Phạm Văn Đồng', N'167')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'364', N'Lê Quang Định', N'167')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'365', N'Lê Đức Thọ', N'168')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'366', N'Lê Đức Thọ', N'167')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'367', N'Lê Đức Thọ', N'168')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'368', N'Lê Đức Thọ', N'169')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'369', N'Lê Đức Thọ', N'170')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'37', N'Khóm 6', N'2')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'370', N'Lê Đức Thọ', N'171')
GO
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'371', N'Thống Nhất', N'168')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'372', N'Thống Nhất', N'169')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'373', N'Thống Nhất', N'170')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'374', N'Thống Nhất', N'171')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'375', N'Song Hành', N'176')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'376', N'Bùi Công Trừng', N'173')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'377', N'Tân Thời 1', N'172')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'378', N'Tân Thời 2', N'172')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'379', N'Tân Thời 3', N'172')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'38', N'Khóm 7', N'2')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'380', N'Bà Triệu', N'175')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'381', N'Lê Thị Hà', N'175')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'382', N'Ấp 4', N'174')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'383', N'Ấp 6', N'174')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'384', N'Ấp 1', N'177')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'385', N'Ấp 2', N'177')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'386', N'Ấp 2', N'178')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'387', N'Ấp 1', N'178')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'388', N'Ấp 1', N'179')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'389', N'Ấp 1', N'180')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'39', N'Phó Quế', N'2')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'390', N'Ấp 2', N'180')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'391', N'Ấp 2', N'179')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'392', N'Phan Xích Long', N'181')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'393', N'Phan Xích Long', N'182')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'394', N'Phan Xích Long', N'183')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'395', N'Phan Xích Long', N'184')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'396', N'Phan Xích Long', N'185')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'397', N'Xuân Thủy', N'186')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'398', N'Thảo Điền', N'186')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'399', N'Mai Chí Thọ', N'187')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'4', N'Vĩnh Phước', N'49')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'40', N'Đông An 1', N'3')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'400', N'Đường số 3', N'188')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'401', N'Đường số 4', N'188')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'402', N'Đường số 5', N'188')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'403', N'Nguyễn Cơ Thạch', N'189')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'404', N'Nguyễn Thị Định', N'190')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'405', N'Nguyễn Lương Bằng', N'196')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'406', N'Nguyễn Văn Linh', N'193')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'407', N'Nguyễn Thị Thập', N'193')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'408', N'Trần Xuân Soạn', N'193')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'409', N'Nguyễn Văn Linh', N'195')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'41', N'Đông An 2', N'3')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'410', N'Nguyễn Văn Linh', N'194')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'411', N'Nguyễn Văn Linh', N'192')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'412', N'Nguyễn Văn Linh', N'197')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'413', N'Nguyễn Văn Linh', N'191')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'414', N'Hoàng Văn Thụ', N'198')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'415', N'Hoàng Văn Thụ', N'199')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'416', N'Lê Văn Sỹ', N'199')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'417', N'Lê Văn Sỹ', N'198')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'418', N'Trường Sa', N'200')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'419', N'Bùi Thị Xuân', N'200')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'42', N'Đông An 3', N'3')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'420', N'Xuân Hồng', N'201')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'421', N'Cộng Hòa', N'201')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'422', N'Hoàng Sa', N'202')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'423', N'Lê Trọng Tấn', N'203')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'424', N'Lê Trọng Tấn', N'204')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'425', N'Lê Trọng Tấn', N'205')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'426', N'Lê Trọng Tấn', N'206')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'427', N'Lê Trọng Tấn', N'207')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'428', N'Khu phố 1', N'70')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'429', N'Khu phố 1', N'71')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'43', N'Đông An 4', N'3')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'430', N'Khu phố 1', N'72')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'431', N'Khu phố 1', N'73')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'432', N'Khu phố 1', N'74')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'433', N'Khu phố 1', N'75')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'434', N'Khu phố 1', N'76')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'435', N'Khu phố 2', N'70')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'436', N'Khu phố 2', N'71')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'437', N'Khu phố 2', N'72')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'438', N'Khu phố 2', N'73')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'439', N'Khu phố 2', N'74')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'44', N'Đông An 5', N'3')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'440', N'Khu phố 2', N'75')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'441', N'Khu phố 2', N'76')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'442', N'Phạm Văn Đồng', N'78')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'443', N'Kha Vạn Cân', N'85')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'444', N'Đường số 6', N'77')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'445', N'Đường số 8', N'77')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'446', N'Tây Hòa', N'90')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'447', N'Tây Hòa', N'91')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'448', N'Liên Phương', N'91')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'449', N'Ngô Quyền', N'89')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'45', N'Đông An 6', N'3')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'450', N'Lê Văn Kiệt', N'89')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'451', N'Phú Hòa', N'223')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'452', N'Phú Lợi', N'223')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'453', N'Tân Trung', N'224')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'454', N'Tân Thuận', N'224')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'455', N'Tân Bình', N'224')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'456', N'Ngô Gia Tự', N'225')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'457', N'Nguyễn Thái Học', N'225')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'458', N'Nguyễn Huệ', N'226')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'459', N'Nguyễn Trãi', N'226')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'46', N'Bình Khánh 1', N'4')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'460', N'Lê Duẫn', N'227')
GO
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'461', N'Vành Đai', N'227')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'462', N'Nguyễn Văn Trỗi', N'228')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'463', N'Phạm Ngọc Thạch', N'228')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'464', N'Nguyễn Thái Học', N'229')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'465', N'Hai Bà Trưng', N'229')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'466', N'Thủ Khoa Huân', N'230')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'467', N'Nguyễn Thị Minh Khai', N'230')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'468', N'Thủ Khoa Huận', N'231')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'469', N'Rạch Gầm', N'231')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'47', N'Bình Khánh 2', N'4')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'470', N'Nguyễn Huệ', N'232')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'471', N'Nguyễn Văn Trung', N'232')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'472', N'Lý Tự Trọng', N'233')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'473', N'Nguyễn Thái Học', N'233')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'474', N'Lê Văn Tám', N'234')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'475', N'Võ Thị Sáu', N'234')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'476', N'Hòa Hưng', N'235')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'477', N'Hòa Long', N'235')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'478', N'Thuận An', N'236')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'479', N'Thuận Phát', N'236')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'48', N'Bình Khánh 3', N'4')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'480', N'Thuận Trung', N'236')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'481', N'Khóm 1', N'237')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'482', N'Khóm 2', N'237')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'483', N'Khóm 3', N'237')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'484', N'Khóm 4', N'237')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'485', N'Trần Phú', N'238')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'486', N'Đường số 3', N'238')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'487', N'Đường số 6', N'238')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'488', N'Nguyễn Trung Trực', N'239')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'489', N'Võ Thị Sáu', N'239')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'49', N'Bình Khánh 4', N'4')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'490', N'Đông Hồ', N'239')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'491', N'Hoàng Diệu', N'240')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'492', N'Hoàng Văn Thụ', N'240')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'493', N'Cù Chính Lan', N'241')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'494', N'Phù Long', N'241')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'495', N'Đinh Tiên Hoàng', N'242')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'496', N'Tôn Đức Thắng', N'242')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'497', N'Nguyễn Biểu', N'243')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'498', N'Hà Huy Tập', N'243')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'499', N'Khu phố 1', N'244')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'5', N'Vĩnh Lộc', N'49')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'50', N'Bình Khánh 5', N'4')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'500', N'Khu phố 2', N'244')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'501', N'Nguyễn Hữu Tiến', N'245')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'502', N'Đông Hải', N'245')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'503', N'Quang Trung', N'246')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'504', N'Lê Lợi', N'246')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'505', N'Trần Hoàn', N'247')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'506', N'Thanh Niên', N'247')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'51', N'Bình Khánh 6', N'4')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'52', N'Bình Khánh 7', N'4')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'53', N'Bình Quới 1', N'4')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'54', N'Bình Quới 2', N'4')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'55', N'Bình Quới 3', N'4')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'56', N'Bình Hòa', N'5')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'57', N'Bình Hòa 1', N'5')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'58', N'Bình Hòa 2', N'5')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'59', N'Bình Khánh', N'5')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'6', N'Vĩnh Thọ', N'49')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'60', N'Mỹ Phú', N'6')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'61', N'Mỹ Quới', N'6')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'62', N'Mỹ Thọ', N'6')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'63', N'Tân Phú', N'6')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'64', N'Tân Quới', N'6')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'65', N'Tây Thạnh', N'7')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'66', N'Trung Thạnh', N'7')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'67', N'Thạnh An', N'7')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'68', N'Tây An', N'7')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'69', N'Trung An', N'7')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'7', N'Phước Thành', N'49')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'70', N'An Thới', N'7')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'71', N'An Hưng', N'7')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'72', N'Trung Hưng', N'7')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'73', N'Long Hưng 1', N'7')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'74', N'Long Hưng 2', N'7')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'75', N'Dương Bá Trạc', N'55')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'76', N'Phạm Thế Hiển', N'58')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'77', N'Phạm Thế Hiển', N'59')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'78', N'Phạm Thế Hiển', N'60')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'79', N'Phạm Thế Hiển', N'61')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'8', N'Cần Thạnh', N'46')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'80', N'Phạm Thế Hiển', N'62')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'81', N'Cao Lỗ', N'58')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'82', N'Tạ Quang Bửu', N'58')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'83', N'Tạ Quang Bửu', N'59')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'84', N'Tạ Quang Bửu', N'60')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'85', N'Ba Tơ', N'61')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'86', N'Bông Sao', N'59')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'87', N'Chánh Hưng', N'58')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'88', N'Chánh Hưng', N'59')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'89', N'Đông Hồ', N'58')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'9', N'Cần Thới', N'46')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'90', N'Nguyễn Thị Tần', N'56')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'91', N'Âu Duơng Lân', N'56')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'92', N'Dạ Nam', N'56')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'93', N'Phạm Thế Hiển', N'56')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'94', N'Nguyễn Thị Tần', N'57')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'95', N'Âu Dương Lân', N'57')
GO
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'96', N'Tạ Quang Bửu', N'57')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'97', N'Hưng Phú', N'62')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'98', N'Ba Đình', N'62')
INSERT [dbo].[DUONG] ([maDuong], [tenDuong], [maPhuongXa]) VALUES (N'99', N'Lê Quang Kim', N'62')
GO
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD000', CAST(N'2023-03-08' AS Date), CAST(N'2026-03-08' AS Date), N'3 năm', 12600000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD002', CAST(N'2020-05-03' AS Date), CAST(N'2030-05-03' AS Date), N'10 năm', 17500000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD003', CAST(N'2022-03-09' AS Date), CAST(N'2026-03-09' AS Date), N'4 năm', 13370569)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD004', CAST(N'2020-04-29' AS Date), CAST(N'2024-04-29' AS Date), N'4 năm', 15000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD007', CAST(N'2020-05-05' AS Date), CAST(N'2024-05-05' AS Date), N'4 năm', 8000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD008', CAST(N'2020-05-05' AS Date), CAST(N'2026-05-05' AS Date), N'6 năm', 15000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD009', CAST(N'2020-05-05' AS Date), CAST(N'2028-05-05' AS Date), N'8 năm', 10000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD011', CAST(N'2020-12-12' AS Date), CAST(N'2025-12-12' AS Date), N'5 năm', 11000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD012', CAST(N'2023-12-12' AS Date), CAST(N'2027-12-12' AS Date), N'4 năm', 11500000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD014', CAST(N'2020-05-05' AS Date), CAST(N'2023-05-05' AS Date), N'3 năm', 12000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD033', CAST(N'2023-04-17' AS Date), CAST(N'2024-04-17' AS Date), N'1 năm', 11250000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD034', CAST(N'2023-03-21' AS Date), CAST(N'2028-03-21' AS Date), N'5 năm', 12000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD043', CAST(N'2023-05-08' AS Date), CAST(N'2023-05-08' AS Date), N'1 năm', 12500000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD045', CAST(N'2023-04-17' AS Date), CAST(N'2024-04-17' AS Date), N'1 năm', 10000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD067', CAST(N'2023-04-02' AS Date), CAST(N'2026-04-02' AS Date), N'3 năm', 12500000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD068', CAST(N'2023-04-02' AS Date), CAST(N'2026-04-02' AS Date), N'3 năm', 14000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD069', CAST(N'2020-05-03' AS Date), CAST(N'2020-05-03' AS Date), N'2 năm', 11000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD070', CAST(N'2023-04-17' AS Date), CAST(N'2034-04-17' AS Date), N'11 năm', 16000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD071', CAST(N'2021-10-20' AS Date), CAST(N'2022-10-20' AS Date), N'1 năm', 12000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD077', CAST(N'2023-05-08' AS Date), CAST(N'2024-05-08' AS Date), N'1 năm', 12000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD089', CAST(N'2023-05-08' AS Date), CAST(N'2024-05-08' AS Date), N'1 năm', 12500000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD090', CAST(N'2023-05-08' AS Date), CAST(N'2024-05-08' AS Date), N'1 năm', 12000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD091', CAST(N'2023-03-24' AS Date), CAST(N'2025-03-24' AS Date), N'2 năm', 12500500)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD092', CAST(N'2023-04-19' AS Date), CAST(N'2023-04-19' AS Date), N'1 năm', 12000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD094', CAST(N'2023-04-17' AS Date), CAST(N'2029-04-17' AS Date), N'6 năm', 14000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD097', CAST(N'2023-05-08' AS Date), CAST(N'2024-05-08' AS Date), N'1 năm', 15500000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD099', CAST(N'2023-03-21' AS Date), CAST(N'2025-03-21' AS Date), N'2 năm', 11000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD110', CAST(N'2023-03-31' AS Date), CAST(N'2023-03-31' AS Date), N'1 năm', 12000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD120', CAST(N'2023-05-09' AS Date), CAST(N'2024-05-09' AS Date), N'1 năm', 18000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD122', CAST(N'2021-10-20' AS Date), CAST(N'2031-10-20' AS Date), N'10 năm', 12000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD124', CAST(N'2023-03-21' AS Date), CAST(N'2025-03-21' AS Date), N'2 năm', 11000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD129', CAST(N'2023-05-09' AS Date), CAST(N'2025-05-09' AS Date), N'2 năm', 16000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD131', CAST(N'2023-05-09' AS Date), CAST(N'2026-05-09' AS Date), N'3 năm', 19000000)
INSERT [dbo].[HOPDONGLAODONG] ([maHopDong], [tuNgay], [denNgay], [loaiHopDong], [luongCoBan]) VALUES (N'HD222', CAST(N'2023-05-09' AS Date), CAST(N'2023-05-09' AS Date), N'1 năm', 24000000)
GO
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L12021002', N'BCC12021002', 3809369, 0, 31526715, 0, 1632587, 0, 5175874, 28527623)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L12021003', N'BCC12021003', 2139291, 0, 15941832, 0, 802234, 0, 1841833, 15437056)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L12021004', N'BCC12021004', 1600000, 0, 11298077, 0, 600000, 0, 1844712, 10453365)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L12021007', N'BCC12021007', 960000, 0, 9538462, 0, 480000, 0, 752769, 9265693)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L12021008', N'BCC12021008', 1960000, 0, 16692308, 0, 840000, 0, 1921846, 15890462)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L12021009', N'BCC12021009', 1600000, 0, 11923077, 0, 600000, 0, 1188462, 11734615)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L12023002', N'BCC12023002', 2841785, 0, 23518895, 0, 1217908, 0, 5028554, 20114218)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L12023009', N'BCC12023009', 1200000, 0, 10480769, 0, 600000, 0, 912115, 10168654)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L12023017', N'BCC12023017', 960000, 0, 9230769, 0, 480000, 0, 971077, 8739692)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L12023069', N'BCC12023069', 1540000, 0, 12375000, 0, 660000, 0, 1988250, 11266750)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L22021002', N'BCC22021002', 2841785, 0, 21957474, 0, 1217908, 0, 2966270, 20615081)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L22021003', N'BCC22021003', 1760000, 0, 11475962, 0, 660000, 0, 1136394, 11439568)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L22021004', N'BCC22021004', 1600000, 0, 11153846, 0, 600000, 0, 1073077, 11080769)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L22021007', N'BCC22021007', 960000, 0, 7692308, 0, 480000, 0, 567231, 7605077)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L22021008', N'BCC22021008', 1960000, 0, 14000000, 0, 840000, 0, 1518000, 13602000)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L22021009', N'BCC22021009', 1200000, 0, 10096154, 0, 600000, 0, 854423, 9841731)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L22021014', N'BCC22021014', 960000, 0, 12115385, 0, 720000, 0, 1103308, 11252077)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L22021016', N'BCC22021016', 960000, 0, 12115385, 0, 720000, 0, 1103308, 11252077)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L22023069', N'BCC22023069', 1540000, 0, 11951923, 0, 660000, 0, 1924788, 10907135)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L32021002', N'BCC32021002', 2841785, 0, 23421306, 0, 1217908, 0, 3259037, 21786146)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L32023002', N'BCC32023002', 2841785, 0, 25373081, 0, 1217908, 0, 5399392, 21597566)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L32023003', N'BCC32023003', 1760000, 0, 12903846, 0, 660000, 0, 2100577, 11903269)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L32023004', N'BCC32023004', 1600000, 0, 11730769, 0, 600000, 0, 1909615, 10821154)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L32023069', N'BCC32023069', 1540000, 0, 11528846, 0, 660000, 0, 1861327, 10547519)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L42021002', N'BCC42021002', 2841785, 0, 22835773, 0, 1217908, 0, 3141930, 21317720)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L42021003', N'BCC42021003', 1760000, 0, 11951923, 0, 660000, 0, 1207788, 11844135)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L42021004', N'BCC42021004', 1600000, 0, 10384615, 0, 600000, 0, 957692, 10426923)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L42023002', N'BCC42023002', 2841785, 0, 21371942, 0, 1217908, 0, 4599164, 18396655)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L42023069', N'BCC42023069', 1540000, 0, 11581731, 0, 660000, 0, 1869260, 10592471)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L52023002', N'BCC52023002', 2841785, 0, 22055063, 0, 1217908, 0, 2985788, 20693152)
INSERT [dbo].[LUONG] ([maLuong], [maBangChamCong], [phuCapChucVu], [phuCapKhac], [luongThucTe], [luongThuong], [khoanTruBaoHiem], [khoanTruKhac], [thue], [thucLanh]) VALUES (N'L52023003', N'BCC52023003', 1760000, 0, 12110577, 0, 660000, 0, 1231587, 11978990)
GO
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'000', N'566666666', N'NC', N'TD000', N'CV000', N'HD000', NULL, NULL, 0, 0)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'002', N'181818181', N'NS', N'TD002', N'CV002', N'HD002', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'003', N'092211331', N'NS', N'TD003', N'CV003', N'HD003', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'004', N'171717171', N'KD', N'TD004', N'CV004', N'HD004', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'007', N'12121212', N'TD', N'TD007', N'CV007', N'HD007', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'008', N'13131313', N'KD', N'TD008', N'CV008', N'HD008', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'009', N'15151515', N'TD', N'TD009', N'CV009', N'HD009', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'011', N'12120968', N'KD', N'TD011', N'CV011', N'HD011', NULL, NULL, 0, 0)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'012', N'13132298', N'KD', N'TD012', N'CV012', N'HD012', NULL, NULL, 0, 0)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'014', N'20202020', N'KD', N'TD014', N'CV014', N'HD014', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'016', N'000000001', N'NS', N'TD016', N'CV016', NULL, CAST(N'2023-03-20' AS Date), CAST(N'2023-03-20' AS Date), 12000000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'017', N'000000002', N'KD', N'TD017', N'CV017', NULL, CAST(N'2023-03-20' AS Date), CAST(N'2023-03-20' AS Date), 8000000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'022', N'187187187', N'TCKT', N'TD022', N'CV022', NULL, CAST(N'2023-04-28' AS Date), CAST(N'2023-07-28' AS Date), 11000000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'023', N'985985985', N'KD', N'TD023', N'CV023', NULL, CAST(N'2023-04-28' AS Date), CAST(N'2023-06-28' AS Date), 12500000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'024', N'966955922', N'TCKT', N'TD024', N'CV024', NULL, CAST(N'2023-04-28' AS Date), CAST(N'2023-09-28' AS Date), 14000000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'025', N'199188177', N'KTCN', N'TD025', N'CV025', NULL, CAST(N'2023-04-28' AS Date), CAST(N'2023-09-28' AS Date), 11000000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'033', N'131313131', N'KTCN', N'TD033', N'CV033', N'HD033', CAST(N'2023-03-19' AS Date), CAST(N'2026-03-19' AS Date), 9000000, 0)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'034', N'121212121', N'KTCN', N'TD034', N'CV034', N'HD034', NULL, NULL, 0, 0)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'043', N'012322221', N'NC', N'TD043', N'CV043', N'HD043', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'045', N'141414141', N'NC', N'TD045', N'CV045', N'HD045', CAST(N'2022-10-18' AS Date), CAST(N'2024-10-18' AS Date), 8000000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'067', N'987789987', N'NS', N'TD067', N'CV067', N'HD067', NULL, NULL, 0, 0)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'068', N'987987789', N'KTCN', N'TD068', N'CV068', N'HD068', NULL, NULL, 0, 0)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'069', N'037503751', N'NS', N'TD069', N'CV069', N'HD069', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'070', N'678876678', N'KTCN', N'TD070', N'CV070', N'HD070', CAST(N'2023-04-02' AS Date), CAST(N'2026-04-02' AS Date), 11500000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'071', N'123123123', N'NS', N'TD071', N'CV071', N'HD071', NULL, NULL, 0, 0)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'077', N'345345678', N'NS', N'TD077', N'CV077', N'HD077', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'089', N'123123132', N'NS', N'TD089', N'CV089', N'HD089', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'090', N'123432156', N'NS', N'TD090', N'CV090', N'HD090', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'091', N'000011111', N'KTCN', N'TD091', N'CV091', N'HD091', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'092', N'014401441', N'KTCN', N'TD092', N'CV092', N'HD092', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'094', N'123123321', N'NS', N'TD094', N'CV094', N'HD094', CAST(N'2023-04-02' AS Date), CAST(N'2023-04-20' AS Date), 11200000, 0)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'095', N'098778945', N'NS', N'TD095', N'CV095', NULL, CAST(N'2023-04-19' AS Date), CAST(N'2023-09-19' AS Date), 12000000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'097', N'124124124', N'NS', N'TD097', N'CV097', N'HD097', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'099', N'123412341', N'NC', N'TD099', N'CV099', N'HD099', NULL, NULL, 0, 0)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'110', N'188822344', N'NS', N'TD110', N'CV110', N'HD110', NULL, NULL, 0, 0)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'111', N'987786124', N'NS', N'TD111', N'CV111', NULL, CAST(N'2023-05-08' AS Date), CAST(N'2023-05-08' AS Date), 8800000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'120', N'123776144', N'KTCN', N'TD120', N'CV120', N'HD120', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'122', N'112312312', N'NS', N'TD122', N'CV122', N'HD122', NULL, NULL, 0, 0)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'123', N'123765987', N'NS', N'TD123', N'CV123', NULL, CAST(N'2023-05-08' AS Date), CAST(N'2023-09-08' AS Date), 8000000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'124', N'000000004', N'KTCN', N'TD124', N'CV124', N'HD124', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'125', N'112214167', N'NS', N'TD125', N'CV125', NULL, CAST(N'2023-05-09' AS Date), CAST(N'2023-08-09' AS Date), 11500000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'127', N'564456765', N'NS', N'TD127', N'CV127', NULL, CAST(N'2023-05-09' AS Date), CAST(N'2023-09-09' AS Date), 9600000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'129', N'090909987', N'TCKT', N'TD129', N'CV129', N'HD129', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'131', N'078674412', N'TD', N'TD131', N'CV131', N'HD131', NULL, NULL, 0, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'139', N'121212546', N'KD', N'TD139', N'CV139', NULL, CAST(N'2023-05-09' AS Date), CAST(N'2023-09-09' AS Date), 12000000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'155', N'876543556', N'KTCN', N'TD155', N'CV155', NULL, CAST(N'2023-05-09' AS Date), CAST(N'2023-06-09' AS Date), 11000000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'159', N'124412567', N'NS', N'TD159', N'CV159', NULL, CAST(N'2023-05-09' AS Date), CAST(N'2023-09-09' AS Date), 8560000, 1)
INSERT [dbo].[NHANVIEN] ([maNhanVien], [CMND], [maPhong], [maTrinhDo], [maChucVu], [maHopDong], [ngayBatDauThuViec], [ngayKetThucThuViec], [luongThuViec], [trangThai]) VALUES (N'222', N'033445510', N'KD', N'TD222', N'CV222', N'HD222', NULL, NULL, 0, 1)
GO
INSERT [dbo].[NHOMQUYEN] ([maNhomQuyen], [tenNhomQuyen]) VALUES (N'abc', N'abc')
INSERT [dbo].[NHOMQUYEN] ([maNhomQuyen], [tenNhomQuyen]) VALUES (N'ADMIN1', N'Quản trị viên 1')
INSERT [dbo].[NHOMQUYEN] ([maNhomQuyen], [tenNhomQuyen]) VALUES (N'ADMIN2', N'Quản trị viên 2')
INSERT [dbo].[NHOMQUYEN] ([maNhomQuyen], [tenNhomQuyen]) VALUES (N'NHANVIEN1', N'Nhân viên loại 1')
INSERT [dbo].[NHOMQUYEN] ([maNhomQuyen], [tenNhomQuyen]) VALUES (N'NHANVIEN2', N'Nhân viên loại 2')
INSERT [dbo].[NHOMQUYEN] ([maNhomQuyen], [tenNhomQuyen]) VALUES (N'NHANVIEN3', N'Nhân viên loại 3')
GO
INSERT [dbo].[PHONGBAN] ([maPhong], [tenPhong], [ngayThanhLap], [maTruongPhong]) VALUES (N'KD', N'Phòng kinh doanh', CAST(N'2023-03-09' AS Date), N'017')
INSERT [dbo].[PHONGBAN] ([maPhong], [tenPhong], [ngayThanhLap], [maTruongPhong]) VALUES (N'KTCN', N'Phòng kĩ thuật công nghệ', CAST(N'2008-09-22' AS Date), N'155')
INSERT [dbo].[PHONGBAN] ([maPhong], [tenPhong], [ngayThanhLap], [maTruongPhong]) VALUES (N'MKT', N'Phòng truyền thông marketing', CAST(N'2006-11-23' AS Date), NULL)
INSERT [dbo].[PHONGBAN] ([maPhong], [tenPhong], [ngayThanhLap], [maTruongPhong]) VALUES (N'NC', N'Phòng nghiên cứu và phát triển', CAST(N'2007-04-12' AS Date), NULL)
INSERT [dbo].[PHONGBAN] ([maPhong], [tenPhong], [ngayThanhLap], [maTruongPhong]) VALUES (N'NS', N'Phòng nhân sự', CAST(N'2005-09-24' AS Date), N'003')
INSERT [dbo].[PHONGBAN] ([maPhong], [tenPhong], [ngayThanhLap], [maTruongPhong]) VALUES (N'TCKT', N'Phòng tài chính kế toán', CAST(N'2005-10-06' AS Date), NULL)
INSERT [dbo].[PHONGBAN] ([maPhong], [tenPhong], [ngayThanhLap], [maTruongPhong]) VALUES (N'TD', N'Phòng tuyển dụng', CAST(N'2005-10-12' AS Date), N'009')
GO
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'1', N'Mỹ Bình', N'1')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'10', N'Châu Phú A', N'2')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'100', N'Phường 02', N'26')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'101', N'Phường 03', N'26')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'102', N'Phường 04', N'26')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'103', N'Phường 05', N'26')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'104', N'Phường 06', N'26')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'105', N'Phường 01', N'29')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'106', N'Phường 02', N'29')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'107', N'Phường 03', N'29')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'108', N'Phường 04', N'29')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'109', N'Phường 05', N'29')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'11', N'Châu Phú B', N'2')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'110', N'Phường 06', N'29')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'111', N'Phường 01', N'31')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'112', N'Phường 02', N'31')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'113', N'Phường 03', N'31')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'114', N'Phường 04', N'31')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'115', N'Phường 05', N'31')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'116', N'Phường 06', N'31')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'117', N'Phường 01', N'27')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'118', N'Phường 02', N'27')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'119', N'Phường 03', N'27')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'12', N'Vĩnh Mỹ', N'2')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'120', N'Phường 04', N'27')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'121', N'Phường 05', N'27')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'122', N'Phường 06', N'27')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'123', N'Phường 01', N'28')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'124', N'Phường 02', N'28')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'125', N'Phường 03', N'28')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'126', N'Phường 04', N'28')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'127', N'Phường 05', N'28')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'128', N'Phường 06', N'28')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'129', N'Tân Túc', N'37')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'13', N'Núi Sam', N'2')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'130', N'Vĩnh Lộc A', N'37')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'131', N'Vĩnh Lộc B', N'37')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'132', N'Bình Lợi', N'37')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'133', N'Tân Nhựt', N'37')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'134', N'Tân Kiên', N'37')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'135', N'Bình Hưng', N'37')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'136', N'Phong Phú', N'37')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'137', N'Hưng Long', N'37')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'138', N'Bình Hưng Hòa', N'33')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'139', N'Bình Hưng Hòa A', N'33')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'14', N'Vĩnh Tế', N'2')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'140', N'Bình Hưng Hòa B', N'33')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'141', N'Bình Trị Đông', N'33')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'142', N'Bình Trị Đông A', N'33')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'143', N'Bình Trị Đông B', N'33')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'144', N'Tân Tạo', N'33')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'145', N'An Lạc', N'33')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'146', N'Phường 01', N'21')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'147', N'Phường 02', N'21')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'148', N'Phường 03', N'21')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'149', N'Phường 04', N'21')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'15', N'An Phú', N'3')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'150', N'Phường 05', N'21')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'151', N'Phường 06', N'21')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'152', N'Phường 07', N'21')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'153', N'Phường 08', N'21')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'154', N'Bình Khánh', N'39')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'155', N'Tam Thôn Hiệp', N'39')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'156', N'An Thới Đông', N'39')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'157', N'Thạnh An', N'39')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'158', N'Long Hòa', N'39')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'159', N'Lý Nhơn', N'39')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'16', N'Khánh An', N'3')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'160', N'Phú Mỹ Hưng', N'35')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'161', N'An Phú', N'35')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'162', N'An Nhơn Tây', N'35')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'163', N'Nhuận Đức', N'35')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'164', N'Trung An', N'35')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'165', N'Phước Thạnh', N'35')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'166', N'Phước Hiệp', N'35')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'167', N'Phường 01', N'20')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'168', N'Phường 02', N'20')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'169', N'Phường 03', N'20')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'17', N'Long Bình', N'3')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'170', N'Phường 04', N'20')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'171', N'Phường 05', N'20')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'172', N'Tân Hiệp', N'36')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'173', N'Nhị Bình', N'36')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'174', N'Đông Thạnh', N'36')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'175', N'Tân Xuân', N'36')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'176', N'Trung Chánh', N'36')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'177', N'Phước Lộc', N'38')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'178', N'Nhơn Đức', N'38')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'179', N'Phú Xuân', N'38')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'18', N'Khánh Bình', N'3')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'180', N'Long Thới', N'38')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'181', N'Phường 01', N'24')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'182', N'Phường 02', N'24')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'183', N'Phường 03', N'24')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'184', N'Phường 04', N'24')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'185', N'Phường 05', N'24')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'186', N'Thảo Điền', N'25')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'187', N'An Phú', N'25')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'188', N'Bình An', N'25')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'189', N'An Khánh', N'25')
GO
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'19', N'Quốc Thái', N'3')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'190', N'Cát Lái', N'25')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'191', N'Tân Thuận Đông', N'34')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'192', N'Tân Thuận Tây', N'34')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'193', N'Tân Hưng', N'34')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'194', N'Tân Huy', N'34')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'195', N'Tân Phong', N'34')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'196', N'Tân Phú', N'34')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'197', N'Phú Mỹ', N'34')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'198', N'Phường 01', N'22')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'199', N'Phường 02', N'22')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'2', N'Mỹ Long', N'1')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'20', N'Nhơn Hội', N'3')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'200', N'Phường 03', N'22')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'201', N'Phường 04', N'22')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'202', N'Phường 05', N'22')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'203', N'Tây Thạnh', N'23')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'204', N'Sơn Kì', N'23')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'205', N'Tân Quý', N'23')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'206', N'Tân Thành', N'23')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'207', N'Phú Thạnh', N'23')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'208', N'Tân Phong', N'40')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'209', N'Tân Biên', N'40')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'21', N'Phú Hữu', N'3')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'210', N'Tân Hòa', N'40')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'211', N'Tân Hiệp', N'40')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'212', N'Phước Hưng', N'10')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'212', N'Phường 01', N'41')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'213', N'Phước Hiệp', N'10')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'213', N'Phường 02', N'41')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'214', N'Phường 03', N'41')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'214', N'Phường 01', N'9')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'215', N'Hưng Hà', N'42')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'215', N'Phường 02', N'9')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'216', N'Hưng Điền', N'42')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'217', N'Hưng Điền B', N'42')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'218', N'Hưng Thạnh', N'42')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'219', N' Phúc Xá', N'43')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'22', N'Phú Hội', N'3')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'220', N'Phúc Tân', N'44')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'220', N'Phường 01', N'47')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'221', N'Phú Thượng', N'45')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'222', N'Nhật Tân', N'45')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'223', N'Tây Phú', N'8')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'224', N'Tà Đảnh', N'7')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'225', N'Tân An', N'48')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'226', N'Phường I', N'49')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'227', N'Phường 01', N'50')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'228', N'Hiệp Thành', N'51')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'229', N'Dĩ An', N'52')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'23', N'Vĩnh Lộc', N'3')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'230', N'Thuận Giao', N'53')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'231', N'Phường 01', N'54')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'232', N'Phú Khương', N'55')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'233', N'Phường 01', N'56')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'234', N'Phường 01', N'57')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'235', N'Hòa An', N'58')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'236', N'Hòa Thuận', N'58')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'237', N'Phường 01', N'59')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'238', N'An Lộc', N'60')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'239', N'Vĩnh Thanh', N'61')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'24', N'Phú Mỹ', N'4')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'240', N'Lê Hồng Phong', N'62')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'241', N'Trần Tế Xương', N'63')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'242', N'Đông Thành', N'64')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'243', N'Nam Hà', N'65')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'244', N'Nam Hồng', N'66')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'245', N'Hải Thành', N'67')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'246', N'Đồng Lê', N'68')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'247', N'Đông Giang', N'69')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'25', N'Long Hòa', N'4')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'26', N'Phú Long', N'4')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'27', N'Phú Lâm', N'4')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'28', N'Phú Hiệp', N'4')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'29', N'Phú Thạnh', N'4')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'3', N'Mỹ Xuyên', N'1')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'30', N'Phú An', N'4')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'31', N'Phú Xuân', N'4')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'32', N'Phú Bình', N'4')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'33', N'Phú Thọ', N'4')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'34', N'Cái Dầu', N'5')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'35', N'Khánh Hòa', N'5')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'36', N'Mỹ Đức', N'5')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'37', N'Mỹ Phú', N'5')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'38', N'Thạnh Mỹ Tây', N'5')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'39', N'Bình Long', N'5')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'4', N'Bình Khánh', N'1')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'40', N'Bình Mỹ', N'5')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'41', N'Bình Thủy', N'5')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'42', N'Bình Phú', N'5')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'43', N'Bình Chánh', N'5')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'44', N'An Châu', N'6')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'45', N'An Hòa', N'6')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'46', N'Cần Đăng', N'6')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'47', N'Vĩnh Hanh', N'6')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'48', N'Bình Thạnh', N'6')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'49', N'Vĩnh Bình', N'6')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'5', N'Mỹ Khánh', N'1')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'50', N'Bình Hòa', N'6')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'51', N'Vĩnh An', N'6')
GO
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'52', N'Vĩnh Nhuận', N'6')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'53', N'Tân Phú', N'6')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'54', N'Vĩnh Thành', N'6')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'55', N'Phường 01', N'32')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'56', N'Phường 02', N'32')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'57', N'Phường 03', N'32')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'58', N'Phường 04', N'32')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'59', N'Phường 05', N'32')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'6', N'Mỹ Quý', N'1')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'60', N'Phường 06', N'32')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'61', N'Phường 07', N'32')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'62', N'Phường 08', N'32')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'63', N'Tân Định', N'16')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'64', N'Đa Kao', N'16')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'65', N'Bến Nghé', N'16')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'66', N'Bến Thành', N'16')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'67', N'Nguyễn Thái Bình', N'16')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'68', N'Phạm Ngũ Lão', N'16')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'69', N'Cầu Kho', N'16')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'7', N'Mỹ Thới', N'1')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'70', N'Thạnh Xuân', N'17')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'71', N'Thạnh Lọc', N'17')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'72', N'Hiệp Thành', N'17')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'73', N'Thới An', N'17')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'74', N'Tân Chánh Hiệp', N'17')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'75', N'Tân Thới Hiệp', N'17')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'76', N'An Phú Đông', N'17')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'77', N'Linh Xuân', N'18')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'78', N'Linh Trung', N'18')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'8', N'Mỹ Thạnh', N'1')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'85', N'Linh Đông', N'18')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'89', N'Hiệp Phú', N'19')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'9', N'Mỹ Hòa', N'1')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'90', N'Phước Long A', N'19')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'91', N'Phước Long B', N'19')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'94', N'Phường 01', N'30')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'95', N'Phường 02', N'30')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'96', N'Phường 03', N'30')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'97', N'Phường 05', N'30')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'98', N'Phường 06', N'30')
INSERT [dbo].[PHUONGXA] ([maPhuongXa], [tenPhuongXa], [maQuanHuyen]) VALUES (N'99', N'Phường 01', N'26')
GO
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'1', N'TP.Long Xuyên', N'1')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'10', N'TP.Bà Rịa', N'2')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'16', N'Quận 1', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'17', N'Quận 12', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'18', N'Thủ Đức', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'19', N'Quận 9', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'2', N'TP.Châu Đốc', N'1')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'20', N'Gò Vấp', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'21', N'Bình Thạnh', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'22', N'Tân Bình', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'23', N'Tân Phú', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'24', N'Phú Nhuận', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'25', N'Quận 2', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'26', N'Quận 3', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'27', N'Quận 10', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'28', N'Quận 11', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'29', N'Quận 4', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'3', N'An Phú', N'1')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'30', N'Quận 5', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'31', N'Quận 6', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'32', N'Quận 8', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'33', N'Bình Tân', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'34', N'Quận 7', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'35', N'Củ Chi', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'36', N'Hóc Môn', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'37', N'Bình Chánh', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'38', N'Nhà Bè', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'39', N'Cần Giờ', N'4')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'4', N'Phú Tân', N'1')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'40', N'TP.Biên Hòa', N'5')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'41', N'Tân An', N'6')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'42', N'Tân Hưng', N'6')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'43', N'Quận Ba Đình', N'7')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'44', N'Quận Hoàn Kiếm', N'7')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'45', N'Quận Tây Hồ', N'7')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'47', N'TP.Bạc Liêu', N'3')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'48', N'Ninh Kiều', N'8')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'49', N'Vị Thanh', N'9')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'5', N'Châu Phú', N'1')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'50', N'TP.Cà Mau', N'10')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'51', N'TP.Thủ Dầu Một', N'11')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'52', N'TP.Dĩ An', N'11')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'53', N'TP.Thuận An', N'11')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'54', N'Mỹ Tho', N'12')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'55', N'Tp.Bến Tre', N'13')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'56', N'Tp.Trà Vinh', N'14')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'57', N'Tp.Vĩnh Long', N'15')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'58', N'Tp.Cao Lãnh', N'16')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'59', N'Tp.Sa Đéc', N'16')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'6', N'Châu Thành', N'1')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'60', N'Tp.Hồng Ngự', N'16')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'61', N'Tp.Rạch Giá', N'17')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'62', N'Tp.Thái Bình', N'18')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'63', N'Tp.Nam Định', N'19')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'64', N'Tp.Ninh Bình', N'20')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'65', N'Tp.Hà Tĩnh', N'21')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'66', N'Hồng Lĩnh', N'21')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'67', N'TP.Đồng Hới', N'22')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'68', N'Tuyên Hóa', N'22')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'69', N'Đông Hà', N'23')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'7', N'Tri Tôn', N'1')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'8', N'Thoại Sơn', N'1')
INSERT [dbo].[QUANHUYEN] ([maQuanHuyen], [tenQuanHuyen], [maTinhThanhPho]) VALUES (N'9', N'TP.Vũng Tàu', N'2')
GO
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'000', N'000', NULL, N'21860376640140654331.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'002', N'abc12345', N'ADMIN2', N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'003', N'003', N'ADMIN2', N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'004', N'004', N'NHANVIEN1', N'76350728406774052727.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'007', N'NV001', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'008', N'NV001', N'ADMIN1', N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'009', N'NV001', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'011', N'NV011', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'012', N'012', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'014', N'NV001', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'016', N'016', N'ADMIN1', N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'017', N'017', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'022', N'022', N'ADMIN2', N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'023', N'023', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'024', N'024', N'ADMIN2', N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'025', N'025', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'033', N'033', NULL, N'17461877552200742346.png')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'034', N'034', NULL, N'08014851826052506073.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'043', N'043', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'045', N'045', NULL, N'52816478770268180734.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'067', N'067', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'068', N'068', NULL, N'66537554445764233752.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'069', N'123123', N'ADMIN1', N'84706818537734028837.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'070', N'070', N'ADMIN2', N'07867214477265001874.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'071', N'071', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'077', N'077', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'089', N'089', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'090', N'090', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'091', N'091', NULL, N'64814176124857271726.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'092', N'092', NULL, N'71157573305530473260.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'094', N'094', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'095', N'095', N'NHANVIEN2', N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'097', N'097', N'NHANVIEN1', N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'099', N'099', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'110', N'110', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'111', N'111', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'120', N'120', NULL, N'74271470807130670150.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'122', N'122', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'123', N'123', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'124', N'124', NULL, N'26365160773273275845.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'125', N'125', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'127', N'127', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'129', N'129', NULL, N'31211567278561384078.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'131', N'131', NULL, N'37575557775806500543.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'139', N'139', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'155', N'155', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'159', N'159', NULL, N'none_user.jpg')
INSERT [dbo].[TAIKHOAN] ([username], [pass], [maNhomQuyen], [avatar]) VALUES (N'222', N'222', N'ADMIN1', N'81767527306416186684.jpg')
GO
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'1', N'An Giang')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'10', N'Cà Mau')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'11', N'Bình Dương')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'12', N'Tiền Giang')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'13', N'Bến Tre')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'14', N'Trà Vinh')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'15', N'Vĩnh Long')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'16', N'Đồng Tháp')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'17', N'Kiên Giang')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'18', N'Thái Bình')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'19', N'Nam Định')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'2', N'Bà Rịa Vũng Tàu')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'20', N'Ninh Bình')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'21', N'Hà Tĩnh')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'22', N'Quãng Bình')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'23', N'Quãng Trị')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'3', N'Bạc Liêu')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'4', N'TP.Hồ Chí Minh')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'5', N'Đồng Nai')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'6', N'Long An')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'7', N'TP.Hà Nội')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'8', N'Cần Thơ')
INSERT [dbo].[TINHTHANHPHO] ([maTinhThanhPho], [tenTinhThanhPho]) VALUES (N'9', N'Hậu Giang')
GO
INSERT [dbo].[THONGKE] ([maDonVi], [slnvNam1], [slnvNam2], [slnvNam3], [luongTbNam1], [luongTbNam2], [luongTbNam3]) VALUES (N'CONGTY', 36, 45, 46, 15000000, 16500000, 22000000)
INSERT [dbo].[THONGKE] ([maDonVi], [slnvNam1], [slnvNam2], [slnvNam3], [luongTbNam1], [luongTbNam2], [luongTbNam3]) VALUES (N'KD', 4, 5, 7, 14000000, 15500000, 21000000)
INSERT [dbo].[THONGKE] ([maDonVi], [slnvNam1], [slnvNam2], [slnvNam3], [luongTbNam1], [luongTbNam2], [luongTbNam3]) VALUES (N'KTCN', 6, 7, 9, 15000000, 16500000, 20000000)
INSERT [dbo].[THONGKE] ([maDonVi], [slnvNam1], [slnvNam2], [slnvNam3], [luongTbNam1], [luongTbNam2], [luongTbNam3]) VALUES (N'MKT', 4, 5, 7, 12000000, 16500000, 23000000)
INSERT [dbo].[THONGKE] ([maDonVi], [slnvNam1], [slnvNam2], [slnvNam3], [luongTbNam1], [luongTbNam2], [luongTbNam3]) VALUES (N'NS', 12, 16, 22, 15000000, 16500000, 24000000)
INSERT [dbo].[THONGKE] ([maDonVi], [slnvNam1], [slnvNam2], [slnvNam3], [luongTbNam1], [luongTbNam2], [luongTbNam3]) VALUES (N'TCKT', 5, 8, 11, 11000000, 15500000, 21000000)
INSERT [dbo].[THONGKE] ([maDonVi], [slnvNam1], [slnvNam2], [slnvNam3], [luongTbNam1], [luongTbNam2], [luongTbNam3]) VALUES (N'TD', 5, 7, 9, 10000000, 13000000, 26000000)
INSERT [dbo].[THONGKE] ([maDonVi], [slnvNam1], [slnvNam2], [slnvNam3], [luongTbNam1], [luongTbNam2], [luongTbNam3]) VALUES (N'NC', 4, 6, 9, 15000000, 16500000, 21000000)
GO
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD000', N'12/12', N'Kĩ sư', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD001', N'12/12', N'Kĩ sư', N'Công nghệ thông tin')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD002', N'12/12', N'Cử nhân', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD003', N'12/12', N'Cử nhân', N'')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD004', N'12/12', N'Thạc sĩ', N'Quản trị kinh doanh')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD007', N'12/12', N'Kĩ sư', N'Công nghệ thông tin')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD008', N'12/12', N'Kĩ sư', N'Công nghệ thông tin')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD009', N'12/12', N'Cử nhân', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD011', N'12/12', N'Cử nhân', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD012', N'12/12', N'Cử nhân', N'Digital Marketing')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD013', N'12/12', N'Cử nhân', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD014', N'12/12', N'Cử nhân', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD016', N'12/12', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD017', N'12/12', N'Kĩ sư', N'Công nghệ thông tin')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD022', N'12/12', N'Cử nhân', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD023', N'12/12', N'Cử nhân', N'Quản trị kinh doanh')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD024', N'12/12', N'Cử nhân', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD025', N'12/12', N'Kĩ sư', N'Công nghệ thông tin')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD033', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD034', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD043', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD045', N'12/12', N'Cử nhân', N'')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD067', N'12/12', N'Tiến sĩ', N'Công nghệ thông tin')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD068', N'12/12', N'Cử nhân', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD069', N'12/12', N'Tiến sĩ', N'Trí tuệ nhân tạo')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD070', N'12/12', N'Tiến sĩ', N'Kĩ thuật phần mềm')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD071', N'12/12', N'Thạc sĩ', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD077', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD089', N'12/12', N'Tiến Sĩ', N'Công nghệ thông tin')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD090', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD091', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD092', N'12/12', N'Kĩ sư', N'')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD094', N'12/12', N'Cử nhân', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD095', N'12/12', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD097', N'12/12', N'Cử nhân', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD099', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD110', N'12/12', N'Kĩ sư', N'abc')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD111', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD120', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD122', N'12/12', N'Thạc sĩ', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD123', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD124', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD125', N'12/12', N'Thạc sĩ', N'Quản trị kinh doanh')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD127', N'12/12', N'Tiến Sĩ', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD129', N'12/12', N'Thạc sĩ', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD131', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD139', N'12/12', N'Thạc sĩ', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD155', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD159', N'12/12', N'Thạc sĩ', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TD222', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TDUV001', N'12/12', N'Cử nhân', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TDUV002', N'12/12', N'Cử nhân', N'Digital Marketing')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TDUV003', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TDUV007', N'12/12', N'Thạc sĩ', N'Kế toán')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TDUV012', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TDUV020', N'Không', N'Không', N'Không')
INSERT [dbo].[TRINHDO] ([maTrinhDo], [trinhDoHocVan], [trinhDoChuyenMon], [chuyenNganh]) VALUES (N'TDUV055', N'Không', N'Không', N'Không')
GO
INSERT [dbo].[UNGVIEN] ([maTuyenDung], [maUngVien], [CMND], [mucLuongDeal], [maTrinhDo], [tenChucVu], [trangThai]) VALUES (N'BCTD002', N'001', N'001145676', 14000000, N'TDUV001', N'Phó phòng', N'Chưa tuyển')
INSERT [dbo].[UNGVIEN] ([maTuyenDung], [maUngVien], [CMND], [mucLuongDeal], [maTrinhDo], [tenChucVu], [trangThai]) VALUES (N'BCTD001', N'002', N'13132298', 11500000, N'TDUV002', N'Kĩ thuật viên', N'Đã tuyển')
INSERT [dbo].[UNGVIEN] ([maTuyenDung], [maUngVien], [CMND], [mucLuongDeal], [maTrinhDo], [tenChucVu], [trangThai]) VALUES (N'BCTD002', N'003', N'190976554', 17000000, N'TDUV003', N'Phó phòng', N'Chưa tuyển')
INSERT [dbo].[UNGVIEN] ([maTuyenDung], [maUngVien], [CMND], [mucLuongDeal], [maTrinhDo], [tenChucVu], [trangThai]) VALUES (N'BCTD003', N'007', N'121212546', 15000000, N'TDUV007', N'Quản lý nhân sự', N'Đã tuyển')
INSERT [dbo].[UNGVIEN] ([maTuyenDung], [maUngVien], [CMND], [mucLuongDeal], [maTrinhDo], [tenChucVu], [trangThai]) VALUES (N'BCTD001', N'012', N'345345678', 12000000, N'TDUV012', N'Chuyên viên SEO', N'Đã tuyển')
INSERT [dbo].[UNGVIEN] ([maTuyenDung], [maUngVien], [CMND], [mucLuongDeal], [maTrinhDo], [tenChucVu], [trangThai]) VALUES (N'BCTD002', N'020', N'191181711', 11000000, N'TDUV020', N'Phó phòng', N'Chưa tuyển')
INSERT [dbo].[UNGVIEN] ([maTuyenDung], [maUngVien], [CMND], [mucLuongDeal], [maTrinhDo], [tenChucVu], [trangThai]) VALUES (N'BCTD001', N'055', N'123765987', 10000000, N'TDUV055', N'Chuyên viên SEO', N'Đã tuyển')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CHUCNANG]    Script Date: 5/17/2023 8:07:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_CHUCNANG] ON [dbo].[CHUCNANG]
(
	[maChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PHUONGXA]    Script Date: 5/17/2023 8:07:16 AM ******/
CREATE NONCLUSTERED INDEX [IX_PHUONGXA] ON [dbo].[PHUONGXA]
(
	[maPhuongXa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BANGCHAMCONG]  WITH CHECK ADD  CONSTRAINT [fk_BANGCHAMCONG_NHANVIEN] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NHANVIEN] ([maNhanVien])
GO
ALTER TABLE [dbo].[BANGCHAMCONG] CHECK CONSTRAINT [fk_BANGCHAMCONG_NHANVIEN]
GO
ALTER TABLE [dbo].[BANGDANHGIA]  WITH CHECK ADD  CONSTRAINT [FK__BANGDANHG__luuDi__0880433F] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NHANVIEN] ([maNhanVien])
GO
ALTER TABLE [dbo].[BANGDANHGIA] CHECK CONSTRAINT [FK__BANGDANHG__luuDi__0880433F]
GO
ALTER TABLE [dbo].[BANGDANHGIA]  WITH CHECK ADD  CONSTRAINT [FK_BANGDANHGIA_NHANVIEN] FOREIGN KEY([nguoiDanhGia])
REFERENCES [dbo].[NHANVIEN] ([maNhanVien])
GO
ALTER TABLE [dbo].[BANGDANHGIA] CHECK CONSTRAINT [FK_BANGDANHGIA_NHANVIEN]
GO
ALTER TABLE [dbo].[CONNGUOI]  WITH CHECK ADD  CONSTRAINT [fk_CONNGUOI_CMND] FOREIGN KEY([CMND])
REFERENCES [dbo].[CMND] ([soCMND])
GO
ALTER TABLE [dbo].[CONNGUOI] CHECK CONSTRAINT [fk_CONNGUOI_CMND]
GO
ALTER TABLE [dbo].[CHITIETNHOMQUYEN]  WITH CHECK ADD  CONSTRAINT [fk_CHITIETNHOMQUYEN_CHUCNANG] FOREIGN KEY([maChucNang])
REFERENCES [dbo].[CHUCNANG] ([maChucNang])
GO
ALTER TABLE [dbo].[CHITIETNHOMQUYEN] CHECK CONSTRAINT [fk_CHITIETNHOMQUYEN_CHUCNANG]
GO
ALTER TABLE [dbo].[CHITIETNHOMQUYEN]  WITH CHECK ADD  CONSTRAINT [fk_CHITIETNHOMQUYEN_NHOMQUYEN] FOREIGN KEY([maNhomQuyen])
REFERENCES [dbo].[NHOMQUYEN] ([maNhomQuyen])
GO
ALTER TABLE [dbo].[CHITIETNHOMQUYEN] CHECK CONSTRAINT [fk_CHITIETNHOMQUYEN_NHOMQUYEN]
GO
ALTER TABLE [dbo].[DOTTUYENDUNG]  WITH CHECK ADD  CONSTRAINT [fk_DOTTUYENDUNG_BAOCAOTUYENDUNG] FOREIGN KEY([maTuyenDung])
REFERENCES [dbo].[BAOCAOTUYENDUNG] ([maTuyenDung])
GO
ALTER TABLE [dbo].[DOTTUYENDUNG] CHECK CONSTRAINT [fk_DOTTUYENDUNG_BAOCAOTUYENDUNG]
GO
ALTER TABLE [dbo].[DOTTUYENDUNG]  WITH CHECK ADD  CONSTRAINT [fk_DOTTUYENDUNG_NHANVIEN] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NHANVIEN] ([maNhanVien])
GO
ALTER TABLE [dbo].[DOTTUYENDUNG] CHECK CONSTRAINT [fk_DOTTUYENDUNG_NHANVIEN]
GO
ALTER TABLE [dbo].[LUONG]  WITH CHECK ADD  CONSTRAINT [fk_LUONG_BANGCHAMCONG] FOREIGN KEY([maBangChamCong])
REFERENCES [dbo].[BANGCHAMCONG] ([maBangChamCong])
GO
ALTER TABLE [dbo].[LUONG] CHECK CONSTRAINT [fk_LUONG_BANGCHAMCONG]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [fk_NHANVIEN_CONNGUOI] FOREIGN KEY([CMND])
REFERENCES [dbo].[CONNGUOI] ([CMND])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [fk_NHANVIEN_CONNGUOI]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [fk_NHANVIEN_CHUCVU] FOREIGN KEY([maChucVu])
REFERENCES [dbo].[CHUCVU] ([maChucVu])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [fk_NHANVIEN_CHUCVU]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [fk_NHANVIEN_HOPDONGLAODONG] FOREIGN KEY([maHopDong])
REFERENCES [dbo].[HOPDONGLAODONG] ([maHopDong])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [fk_NHANVIEN_HOPDONGLAODONG]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [fk_NHANVIEN_PHONGBAN] FOREIGN KEY([maPhong])
REFERENCES [dbo].[PHONGBAN] ([maPhong])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [fk_NHANVIEN_PHONGBAN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [fk_NHANVIEN_TRINHDO] FOREIGN KEY([maTrinhDo])
REFERENCES [dbo].[TRINHDO] ([maTrinhDo])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [fk_NHANVIEN_TRINHDO]
GO
ALTER TABLE [dbo].[PHONGBAN]  WITH CHECK ADD  CONSTRAINT [fk_PHONGBAN_NHANVIEN] FOREIGN KEY([maTruongPhong])
REFERENCES [dbo].[NHANVIEN] ([maNhanVien])
GO
ALTER TABLE [dbo].[PHONGBAN] CHECK CONSTRAINT [fk_PHONGBAN_NHANVIEN]
GO
ALTER TABLE [dbo].[PHUONGXA]  WITH CHECK ADD  CONSTRAINT [FK__PHUONGXA__maQuan__395884C4] FOREIGN KEY([maQuanHuyen])
REFERENCES [dbo].[QUANHUYEN] ([maQuanHuyen])
GO
ALTER TABLE [dbo].[PHUONGXA] CHECK CONSTRAINT [FK__PHUONGXA__maQuan__395884C4]
GO
ALTER TABLE [dbo].[QUANHUYEN]  WITH CHECK ADD FOREIGN KEY([maTinhThanhPho])
REFERENCES [dbo].[TINHTHANHPHO] ([maTinhThanhPho])
GO
ALTER TABLE [dbo].[QUYETDINH]  WITH CHECK ADD  CONSTRAINT [fk_QUYETDINH_NHANVIEN] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NHANVIEN] ([maNhanVien])
GO
ALTER TABLE [dbo].[QUYETDINH] CHECK CONSTRAINT [fk_QUYETDINH_NHANVIEN]
GO
ALTER TABLE [dbo].[QUYETDINH]  WITH CHECK ADD  CONSTRAINT [fk_QUYETDINH_NHANVIEN_2] FOREIGN KEY([nguoiLapQuyetDinh])
REFERENCES [dbo].[NHANVIEN] ([maNhanVien])
GO
ALTER TABLE [dbo].[QUYETDINH] CHECK CONSTRAINT [fk_QUYETDINH_NHANVIEN_2]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [fk_TAIKHOAN_NHANVIEN] FOREIGN KEY([username])
REFERENCES [dbo].[NHANVIEN] ([maNhanVien])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [fk_TAIKHOAN_NHANVIEN]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [fk_TAIKHOAN_NHOMQUYEN] FOREIGN KEY([maNhomQuyen])
REFERENCES [dbo].[NHOMQUYEN] ([maNhomQuyen])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [fk_TAIKHOAN_NHOMQUYEN]
GO
ALTER TABLE [dbo].[UNGVIEN]  WITH CHECK ADD  CONSTRAINT [fk_UNGVIEN_BAOCAOTUYENDUNG] FOREIGN KEY([maTuyenDung])
REFERENCES [dbo].[BAOCAOTUYENDUNG] ([maTuyenDung])
GO
ALTER TABLE [dbo].[UNGVIEN] CHECK CONSTRAINT [fk_UNGVIEN_BAOCAOTUYENDUNG]
GO
ALTER TABLE [dbo].[UNGVIEN]  WITH CHECK ADD  CONSTRAINT [fk_UNGVIEN_CONNGUOI] FOREIGN KEY([CMND])
REFERENCES [dbo].[CONNGUOI] ([CMND])
GO
ALTER TABLE [dbo].[UNGVIEN] CHECK CONSTRAINT [fk_UNGVIEN_CONNGUOI]
GO
ALTER TABLE [dbo].[UNGVIEN]  WITH CHECK ADD  CONSTRAINT [fk_UNGVIEN_TRINHDO] FOREIGN KEY([maTrinhDo])
REFERENCES [dbo].[TRINHDO] ([maTrinhDo])
GO
ALTER TABLE [dbo].[UNGVIEN] CHECK CONSTRAINT [fk_UNGVIEN_TRINHDO]
GO
ALTER TABLE [dbo].[YEUCAU]  WITH CHECK ADD  CONSTRAINT [fk_YEUCAU_NHANVIEN] FOREIGN KEY([maNguoiGui])
REFERENCES [dbo].[NHANVIEN] ([maNhanVien])
GO
ALTER TABLE [dbo].[YEUCAU] CHECK CONSTRAINT [fk_YEUCAU_NHANVIEN]
GO
ALTER TABLE [dbo].[YEUCAU]  WITH CHECK ADD  CONSTRAINT [fk_YEUCAU_NHANVIEN_2] FOREIGN KEY([nguoiXacNhan])
REFERENCES [dbo].[NHANVIEN] ([maNhanVien])
GO
ALTER TABLE [dbo].[YEUCAU] CHECK CONSTRAINT [fk_YEUCAU_NHANVIEN_2]
GO
USE [master]
GO
ALTER DATABASE [HRMSystem] SET  READ_WRITE 
GO
