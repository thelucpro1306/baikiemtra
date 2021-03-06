USE [master]
GO
/****** Object:  Database [Test22]    Script Date: 6/21/2022 9:45:40 AM ******/
CREATE DATABASE [Test22]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Test22', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Test22.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Test22_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Test22_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Test22] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Test22].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Test22] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Test22] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Test22] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Test22] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Test22] SET ARITHABORT OFF 
GO
ALTER DATABASE [Test22] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Test22] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Test22] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Test22] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Test22] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Test22] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Test22] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Test22] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Test22] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Test22] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Test22] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Test22] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Test22] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Test22] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Test22] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Test22] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Test22] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Test22] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Test22] SET  MULTI_USER 
GO
ALTER DATABASE [Test22] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Test22] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Test22] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Test22] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Test22] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Test22] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Test22] SET QUERY_STORE = OFF
GO
USE [Test22]
GO
/****** Object:  Table [dbo].[ChiTiet]    Script Date: 6/21/2022 9:45:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet](
	[mahd] [int] NOT NULL,
	[malich] [char](7) NOT NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[mahd] ASC,
	[malich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/21/2022 9:45:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayMua] [date] NULL,
	[MaKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/21/2022 9:45:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[makh] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[matkhau] [varchar](10) NULL,
	[diachi] [nvarchar](100) NULL,
	[dienthoai] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichChieu]    Script Date: 6/21/2022 9:45:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichChieu](
	[malich] [char](7) NOT NULL,
	[maphim] [int] NULL,
	[ngay] [date] NULL,
	[gio] [varchar](5) NULL,
	[gia] [decimal](18, 0) NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[malich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 6/21/2022 9:45:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[maphim] [int] NOT NULL,
	[tenphim] [nvarchar](30) NULL,
	[daodien] [nvarchar](30) NULL,
	[hinh] [varchar](50) NULL,
	[ngaychieu] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[maphim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F1X1   ', 1, CAST(N'2022-03-25' AS Date), N'10:20', CAST(70 AS Decimal(18, 0)), 100)
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F1X2   ', 1, CAST(N'2022-03-26' AS Date), N'13:00', CAST(70 AS Decimal(18, 0)), 0)
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F1X3   ', 1, CAST(N'2022-03-27' AS Date), N'18:30', CAST(90 AS Decimal(18, 0)), 100)
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F2X1   ', 2, CAST(N'2022-04-01' AS Date), N'18:30', CAST(90 AS Decimal(18, 0)), 0)
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F2X2   ', 2, CAST(N'2022-04-01' AS Date), N'20:00', CAST(105 AS Decimal(18, 0)), 100)
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F3X1   ', 3, CAST(N'2022-03-25' AS Date), N'18:30', CAST(90 AS Decimal(18, 0)), 100)
INSERT [dbo].[LichChieu] ([malich], [maphim], [ngay], [gio], [gia], [soluong]) VALUES (N'F3X2   ', 3, CAST(N'2022-03-26' AS Date), N'20:00', CAST(105 AS Decimal(18, 0)), 100)
GO
INSERT [dbo].[Phim] ([maphim], [tenphim], [daodien], [hinh], [ngaychieu]) VALUES (1, N'Thành phố mất tích', N'Aaron Nee, Adam 
Nee', N'/Content/images/phim1.jpg', CAST(N'2022-03-25' AS Date))
INSERT [dbo].[Phim] ([maphim], [tenphim], [daodien], [hinh], [ngaychieu]) VALUES (2, N'MORBIUS', N'Daniel 
Espinosa', N'/Content/images/phim2.jpg', CAST(N'2022-10-04' AS Date))
INSERT [dbo].[Phim] ([maphim], [tenphim], [daodien], [hinh], [ngaychieu]) VALUES (3, N'Những kẻ xấu xa', N'Pierre 
Perifel', N'/Content/images/phim3.jpg', CAST(N'2022-03-25' AS Date))
GO
ALTER TABLE [dbo].[ChiTiet]  WITH CHECK ADD FOREIGN KEY([mahd])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTiet]  WITH CHECK ADD FOREIGN KEY([malich])
REFERENCES [dbo].[LichChieu] ([malich])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([makh])
GO
ALTER TABLE [dbo].[LichChieu]  WITH CHECK ADD FOREIGN KEY([maphim])
REFERENCES [dbo].[Phim] ([maphim])
GO
USE [master]
GO
ALTER DATABASE [Test22] SET  READ_WRITE 
GO
