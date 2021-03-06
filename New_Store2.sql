USE [New_Store2]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminID] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] NOT NULL,
	[NoiDungBL] [nvarchar](max) NULL,
	[MaThanhVien] [int] NULL,
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauHinh]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHinh](
	[MaCH] [int] IDENTITY(1,1) NOT NULL,
	[ManHinh] [nvarchar](50) NULL,
	[HeDieuHanh] [nvarchar](50) NULL,
	[Camera] [nvarchar](50) NULL,
	[CPU] [varchar](50) NULL,
	[GPU] [nchar](10) NULL,
	[Ram] [varchar](10) NULL,
	[Rom] [varchar](10) NULL,
	[Pin] [varchar](10) NULL,
	[MaSP] [int] NULL,
	[TenCH] [nvarchar](250) NULL,
 CONSTRAINT [PK_CauHinh] PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaCTDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[TenSP] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaCTDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaCTPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuongNhap] [int] NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[MaKH] [int] NULL,
	[UuDai] [int] NULL,
	[HuyDon] [bit] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](50) NULL,
	[Link] [varchar](250) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](15) NULL,
	[MaThanhVien] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTV] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
 CONSTRAINT [PK_LoaiThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](15) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuangCao]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCao](
	[MaQQ] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](max) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_QuangCao] PRIMARY KEY CLUSTERED 
(
	[MaQQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[TenTat] [nvarchar](250) NULL,
	[TenURL] [nvarchar](250) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[TrangThai] [bit] NULL,
	[NgayCapNhat] [datetime] NULL,
	[Moi] [bit] NULL,
	[HinhAnh1] [varchar](max) NULL,
	[HinhAnh2] [varchar](max) NULL,
	[HinhAnh3] [varchar](max) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[MaSlide] [int] IDENTITY(1,1) NOT NULL,
	[HinhAnh] [nvarchar](150) NULL,
	[Link] [nvarchar](250) NULL,
	[MoTa] [nvarchar](100) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[MaSlide] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[NgayDang] [datetime] NULL,
	[TinKhuyenMai] [bit] NULL,
	[TinMoi] [bit] NULL,
	[HuongDanKyThuat] [bit] NULL,
	[AnhBia] [varchar](100) NULL,
	[Link] [varchar](max) NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 07/12/2021 21:57:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](15) NULL,
	[MaLoaiTV] [int] NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([AdminID], [MatKhau]) VALUES (N'ad01', N'a123')
GO
SET IDENTITY_INSERT [dbo].[CauHinh] ON 

INSERT [dbo].[CauHinh] ([MaCH], [ManHinh], [HeDieuHanh], [Camera], [CPU], [GPU], [Ram], [Rom], [Pin], [MaSP], [TenCH]) VALUES (2, N'OLED6.7"Super Retina XDR', N'IOS', N'Sau: 3 camera 12 MP | Trước: 12MP', N'
Apple A15 Bionic', NULL, N'6 GB', N'128GB', N'4373MaH', 6, N'128GB')
INSERT [dbo].[CauHinh] ([MaCH], [ManHinh], [HeDieuHanh], [Camera], [CPU], [GPU], [Ram], [Rom], [Pin], [MaSP], [TenCH]) VALUES (3, N'OLED6.7"Super Retina XDR', N'IOS', N'Sau: 3 camera 12 MP | Trước: 12MP', N'
Apple A15 Bionic', NULL, N'6 GB', N'256GB', N'4373MaH', 6, N'256GB')
INSERT [dbo].[CauHinh] ([MaCH], [ManHinh], [HeDieuHanh], [Camera], [CPU], [GPU], [Ram], [Rom], [Pin], [MaSP], [TenCH]) VALUES (4, N'OLED6.7"Super Retina XDR', NULL, N'Sau: 3 camera 12 MP | Trước: 12MP', N'
Apple A15 Bionic', NULL, N'6 GB', N'512GB', N'4373MaH', 6, N'512GB')
SET IDENTITY_INSERT [dbo].[CauHinh] OFF
GO
SET IDENTITY_INSERT [dbo].[Footer] ON 

INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (1, N'NULLQuy Chế Hoạt Động', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (2, N'Dịch Vụ Bảo Hành Điện Thoại ', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (3, N'Thanh Toán Online', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (4, N'Trung Tâm Bảo Hành Chính Hãng', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (5, N'Tư Vấn & Khiếu Nại', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (6, N'Gọi Mua Hàng: 637294624 (8h-20h)', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (7, N'Hỗ Trợ Kỹ Thuật', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (8, N'Kết Nối Với Chùng Tôi', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (9, N'Email: gido@gmail.com', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (10, N'Hết rồi', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (11, N'Chính Sách Bảo Hành', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (12, N'Liên Hệ Hợp Tác Kinh Doanh', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (13, N'Khách Hàng Doanh Nghiệp', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (14, N'Ưu Đãi Từ Đối Tấc', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (15, N'Tuyển Dụng', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (16, N'Hỗ Trợ Khách Hàng', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (17, N'Mua Trả Góp Online', N'#', 1)
INSERT [dbo].[Footer] ([ID], [TieuDe], [Link], [TrangThai]) VALUES (18, N'Tra Thông Tin Đơn Hàng', N'#', 1)
SET IDENTITY_INSERT [dbo].[Footer] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (1, N'Laptop')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (2, N'Thiết Bị Âm Thanh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (3, N'Thiết Bị Lưu Trữ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (4, N'Smartphone')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (5, N'Phụ Kiện Điện Thoại')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (6, N'Phụ Kiện Máy Tính')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (7, N'Tablet')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP]) VALUES (8, N'Đồng Hồ Thông Minh')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (1, N'FPT', N'America', N'Apple@gmail.com', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (2, N'LG Việt Nam', N'Việt Nam', NULL, NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (3, N'JBL', NULL, NULL, NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (4, N'Dell', N'America', N'Dell@gamil.com', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (5, N'SamSung Việt Nam', N'VIệt Nam', N'SamSung@gmai.com', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (6, N'Công Ty Hưng Long', N'VIệt Nam', N'Edra@gmail.com', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (7, N'Digi World', N'VIệt Nam', N'Xiaomi@gmail.com', NULL)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (8, N'Akko', N'China', N'Akko@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (1, N'Apple', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (2, N'Oppo', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (3, N'Realme', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (4, N'Lg', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (5, N'JBL', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (6, N'Anker', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (7, N'Aukey', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (8, N'Logictech', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (9, N'Tenda', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (10, N'Corsair', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (11, N'Dell', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (12, N'Energizer', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (13, N'Hyper', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (14, N'Toto Link', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (15, N'Beats', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (16, N'Hyper X', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (17, N'Microsoft', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (18, N'SamSung', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (19, N'Edra', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (20, N'Xiaomi', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (21, N'Sony', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (22, N'Asus', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (23, N'Acer inc', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (24, N'Akko', NULL)
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (1, N'Laptop Apple MacBook Pro M1 2020 Grey', N'Macbook Pro M1', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'macbook-pro-m1-grey.png', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (2, N'Tai nghe Bluetooth AirPods 2 Apple MV7N2 ', N'Airpod 2', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'579cedde-1250-4500-83c8-ef34ba24e0d2-a117441a-db1e-473d-9da0-766a856946fc.png', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (3, N'Tai nghe True Wireless JBL LIVE300', N'JBL Live 300', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N's-l400.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (4, N'Iphone 12 Pro - Đen', N'Iphone 12 Pro', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'iphone-11-pro-max-space-select-2019-600x710-1-0daf5b72-449f-44c8-ba12-c8ff6d367920-02586c16-fcaa-45cc-9da6-f276140cd854.png', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (5, N'Iphone 12 - Đỏ- Chính hãng VNA', N'Iphone 12', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'ip12do.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (6, N'Iphone 13 Pro Max - Xanh', N'Iphone 13 Pro Max', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, 1, N'iphone-13-pro-max-128gb-3d62acf4-63f0-4a74-83a1-875ec0019c57-645242f7-f1ac-483e-a1d5-c80ab058c5aa.png', N'05abd6fb-48a4-40f5-9ae3-e05b531383ef-iphone-13-pro-review-33.jpg', N'55449e47-d865-4ba0-aca3-e80ebbf6a5aa.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (7, N'SamSung Galaxy Note 21 Ultra', N'Galaxy Note 21 Ultra', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'88726453-47ce-4f80-992c-d75cdb9545df-6aaea6db-77b9-4204-90d7-7b05d04d334e.png', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (8, N'Realme 8 Pro - Xanh Thiên Hà', N'Realme 8 Pro', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'realme-8-pro-002.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (9, N'Xiaomi Mi 11 Bạc Ánh Trăng', N'Xiaomi Mi 11', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'xiaomi-mi-11-pro-48e0aed6-7d23-4a94-bc98-9564c532ec84-507b3aa6-2999-464a-a642-e08215460e57.png', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (10, N'Oppo Find X2 Pro - Cam', N'Oppo Find X2 Pro', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'OPPO-Find-X2-Pro-1.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (11, N'Samsung Galaxy Z Fold3 5G', N'Galaxy Z Fold 3', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'galaxy_zfold3_zflip35g_main_kv.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (12, N'Máy Tính Bảng Xiaomi Mi Pad 5', N'Xiaomi Mi Pad 5', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'may-tinh-bang-xiaomi-mi-pad-5-128gb-68cf566a-2e8e-4e0a-b720-e7681cdc3797.png', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (13, N'Ipad Air 4 2020 - Chính Hãng VNA ', N'Ipad Air 4', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'ipad-air-4-2020-xanh-duong-d2446e21-5e66-435b-8a14-92936bdf3527.png', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (14, N'Ipad Mini 6 2021 - Rose Gold', N'Ipad Mini 6', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'ipad-mini-6-1-jpeg-2741bc5c-b92c-4583-b061-f6f8004abc04-af104857-20b3-412c-84b7-9413949ad840.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (15, N'Vòng Đeo Tay Thông Minh Mi Band 6', N'MiBand 5', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (16, N'iPhone 12 Pro Max - Pacific Blue', N'Iphone 12 Pro Max', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'ip12pm.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (17, N'Máy tính bảng iPad Pro M1 12.9 inch WiFi  (2021)', N'Ipad Pro M1', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'ipadm1.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (18, N'Máy tính bảng Samsung Galaxy Tab S7', N'Galaxy Tab S7', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'samsung-galaxy-tab-s7-1.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (19, N'Loa Bluetooth LG Xboom Go PL5 Xanh Đen', N'LG Xboom Go PL5', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'LG-XBOOM-Go-PL5-Portable-Bluetooth-Speaker.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (20, N'Loa Bluetooth Sony Extra Bass SRS-XB43', N'Sony Extra Bass SRS-XB43', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'loa-bluetooth-sony-srs-xb43-ava-600x600.jpg', NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [TenTat], [TenURL], [DonGia], [MoTa], [SoLuongTon], [MaNCC], [MaNSX], [MaLoaiSP], [TrangThai], [NgayCapNhat], [Moi], [HinhAnh1], [HinhAnh2], [HinhAnh3]) VALUES (21, N'Tai nghe Bluetooth True Wireless LG Tone Free HBS-FN4', N'LG Tone Free HBS-FN4', NULL, CAST(30000000 AS Decimal(18, 0)), N'iPhone 13 Pro Max - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 100, 1, 1, 1, 1, NULL, NULL, N'tai-nghe-bluetooth-true-wireless-lg-hbs-fn4-avatar-1-1-600x600.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([MaSlide], [HinhAnh], [Link], [MoTa], [TrangThai]) VALUES (1, N'https://bizweb.dktcdn.net/100/420/160/themes/825846/assets/slider_2.jpg?1633163964121', N'#', NULL, 1)
INSERT [dbo].[Slide] ([MaSlide], [HinhAnh], [Link], [MoTa], [TrangThai]) VALUES (2, N'https://bizweb.dktcdn.net/100/420/160/themes/825846/assets/slider_3.jpg?1633163964121', N'#', NULL, 1)
INSERT [dbo].[Slide] ([MaSlide], [HinhAnh], [Link], [MoTa], [TrangThai]) VALUES (3, N'https://bizweb.dktcdn.net/100/420/160/themes/825846/assets/slider_4.jpg?1633163964121', N'#', NULL, 1)
SET IDENTITY_INSERT [dbo].[Slide] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([MaTT], [TieuDe], [NgayDang], [TinKhuyenMai], [TinMoi], [HuongDanKyThuat], [AnhBia], [Link], [TrangThai]) VALUES (1, N'Yên tâm ở nhà tránh dich cùng điện thoại siêu ngon siêu rẻ tại New Store', CAST(N'2021-10-04T08:15:13.043' AS DateTime), 1, 0, 0, NULL, NULL, 1)
INSERT [dbo].[TinTuc] ([MaTT], [TieuDe], [NgayDang], [TinKhuyenMai], [TinMoi], [HuongDanKyThuat], [AnhBia], [Link], [TrangThai]) VALUES (2, N'Đăng ký đặt trước Iphone 13 Pro Max ngay hôm nay để hưởng những ưu đãi tốt nhất', CAST(N'2021-10-04T08:17:56.790' AS DateTime), 1, 0, 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[CauHinh]  WITH CHECK ADD  CONSTRAINT [FK_CauHinh_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CauHinh] CHECK CONSTRAINT [FK_CauHinh_SanPham]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ThanhVien]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_LoaiThanhVien]
GO
