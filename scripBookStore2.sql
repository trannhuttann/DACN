USE [QLBANSACH]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 8/20/2024 2:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[UserAdmin] [varchar](30) NOT NULL,
	[PassAdmin] [varchar](30) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[QLThanhVien] [nchar](10) NULL,
	[QLSach] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 8/20/2024 2:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[HoTen] [nchar](10) NULL,
	[DiaChi] [nchar](200) NULL,
	[MaDH] [nchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[MaSach] [int] NULL,
	[GiaBan] [int] NULL,
	[NgaySinh] [datetime] NULL,
	[DienThoaiKH] [varchar](50) NULL,
 CONSTRAINT [PK_ChiTietDH] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 8/20/2024 2:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [Pk_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 8/20/2024 2:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[SoDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDH] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[DatHang] [nchar](10) NULL,
	[NgayGiao] [nchar](10) NULL,
 CONSTRAINT [Pk_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 8/20/2024 2:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
	[DiachiKH] [nvarchar](200) NULL,
	[DienThoaiKH] [varchar](50) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [Pk_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 8/20/2024 2:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[MaNXB] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [Pk_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 8/20/2024 2:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](100) NOT NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](max) NULL,
	[AnhBia] [varchar](50) NULL,
	[NgayCapNhat] [datetime] NULL,
	[SoLuongTon] [int] NULL,
	[MaCD] [int] NULL,
	[MaNXB] [int] NULL,
	[MaKH] [int] NULL,
	[MaTG] [int] NULL,
 CONSTRAINT [Pk_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 8/20/2024 2:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[TenTG] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[TieuSu] [nvarchar](max) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [Pk_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 8/20/2024 2:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[HoTen] [nchar](10) NULL,
	[MaTV] [nchar](10) NOT NULL,
	[NgaySinh] [nchar](10) NULL,
	[DienThoai] [nchar](10) NULL,
	[DiaChi] [nchar](10) NULL,
	[Email] [nchar](10) NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIETSACH]    Script Date: 8/20/2024 2:43:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIETSACH](
	[MaTG] [int] IDENTITY(1,1) NOT NULL,
	[MaSach] [int] NULL,
	[VaiTro] [nvarchar](50) NULL,
	[ViTri] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[ADMIN] ([UserAdmin], [PassAdmin], [Hoten], [QLThanhVien], [QLSach]) VALUES (N'adim', N'123456', N'Tran Huu Thuan', NULL, NULL)
INSERT [dbo].[ADMIN] ([UserAdmin], [PassAdmin], [Hoten], [QLThanhVien], [QLSach]) VALUES (N'admin', N'123456', N'Tran Huu Thuan', NULL, NULL)
INSERT [dbo].[ADMIN] ([UserAdmin], [PassAdmin], [Hoten], [QLThanhVien], [QLSach]) VALUES (N'thuan123', N'123', N'Tân', NULL, NULL)
INSERT [dbo].[ADMIN] ([UserAdmin], [PassAdmin], [Hoten], [QLThanhVien], [QLSach]) VALUES (N'user', N'654321', N'Mr Thuan', NULL, NULL)
GO
INSERT [dbo].[ChiTietDH] ([HoTen], [DiaChi], [MaDH], [SoLuong], [MaSach], [GiaBan], [NgaySinh], [DienThoaiKH]) VALUES (N'thuan     ', N'APD 122                                                                                                                                                                                                 ', N'53        ', 3, 114, 60000, CAST(N'2003-04-07T00:00:00.000' AS DateTime), N'0123456789')
INSERT [dbo].[ChiTietDH] ([HoTen], [DiaChi], [MaDH], [SoLuong], [MaSach], [GiaBan], [NgaySinh], [DienThoaiKH]) VALUES (NULL, NULL, N'8         ', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (1, N'Khoa học')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (2, N'Giáo dục')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (3, N'Chiêm tinh học')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (4, N'Tâm lý con người')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (5, N'Sinh học con người')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (6, N'Công nghệ thông tin')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (7, N'Kỹ năng')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (8, N'Kinh doanh')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (9, N'Truyện cười')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
GO
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [DaThanhToan], [TinhTrangGiaoHang], [DatHang], [NgayGiao]) VALUES (53, 1, CAST(N'2024-08-17T14:56:51.710' AS DateTime), 0, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiachiKH], [DienThoaiKH], [NgaySinh]) VALUES (1, N'thuan1236555', N'thuan123', N'123', N'thuan123@gmail.com', N'APD 122', N'012345678', CAST(N'2024-08-30T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [Email], [DiachiKH], [DienThoaiKH], [NgaySinh]) VALUES (2, N'admin', N'admin', N'123', N'sd@123gmail.com', N'HCM,Q12', N'12345678', CAST(N'2022-11-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] ON 

INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (1, N'Nhà xuất bản trẻ', N' 161AB Lý Chính Thắng -Thành phố Hồ Chí Minh', N'123456789')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (2, N'Nhà xuất bản văn hóa thông tin', N'TP.HCM Quận 12 An Phú Đông', N'456789')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (3, N'Nhà xuất bản Đòng Nai', N' Đồng Tháp TP.CaoLanh', N'01234')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (4, N'Nhà xuất bản Thế Giới', N'Tây Ninh Nơi đó con tìm về', N'32589548')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (5, N'Nhà xuất bản Khoa học Kỹ Thuật', N'Vũng Tàu', N'012369')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (6, N'Nhà xuất Hồng Đức', N'Nha Trang', N'036884')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (7, N'Nhà xuất bản thời đại', N'Cần Thơ', N'1235785')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (8, N'Nhà xuất bản lao động - Xã hội', N'Vĩnh Long', N'222444888')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (9, N'Nhà xuất bản tổng hợp TP.HCM', N'Đăk Lăk', N'255588999')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (10, N'Nhà xuất bản Phương Đông', N'Nha Trang', N'36999988778')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (11, N'Nhà xuất bản lao động', N'Đà Lạt', N'22255555')
INSERT [dbo].[NHAXUATBAN] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (12, N'Nhà xuất bản tri thức', N'TP.HCM', N'111888855')
SET IDENTITY_INSERT [dbo].[NHAXUATBAN] OFF
GO
SET IDENTITY_INSERT [dbo].[SACH] ON 

INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (1, N' Cái vô hạn trong lòng bàn tay - Từ Bigbang đến giác ngộ', CAST(25000 AS Decimal(18, 0)), N' Cái Vô Hạn Trong Lòng Bàn Tay là nội dung toàn bộ cuộc nói chuyện giữa nhà vật lý thiên văn nổi tiếng Trịnh Xuân Thuận và một nhà sư, vốn là một nhà khoa học Mỹ, Matthieu Ricard, về bản chất của hiện thực và ý thức qua lăng kính của vật lý cùng các ngành khoa học tự nhiên và Phật giáo.', N'KH_CVHTLBT.png', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 0, 6, 1, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (2, N' Một vũ trụ lạ thường và một ngày khác lạ(phát minh vật lý)', CAST(15000 AS Decimal(18, 0)), N' Nhà vật lý đoạt giải Nobel Robert B. Laughlin đã lập luận rằng, ta vẫn chưa chạm được đến hồi kết của khoa học, mà thậm chí còn chưa tiến gần được đến đó. Ta mới chỉ đi tới cuối con đường của một lối suy nghĩ nào đấy theo quy giản luận mà thôi. Nếu thay cho việc tìm kiếm những lý thuyết tối hậu, ta hãy xem xét thế giới của những đặc tính đột sinh – có nghĩa là những đặc tính kiểu như tính rắn và hình dạng của một tinh thể, kết quả có được từ sự tổ chức của một số lượng lớn các nguyên tử – thì đột nhiên những điều huyền bí nhất sẽ trở nên gần gũi dễ hiểu như một cục nước đá hay một hạt muối vậy thôi. Và rồi Laughlin còn đi xa hơn nữa: những định luật cơ bản nhất của vật lý học – như các định luật chuyển động của Newton hay cơ học lượng tử – hẳn sẽ phải đột sinh. Các định luật này là những đặc tính của những tập hợp vật chất rộng lớn, và khi độ chính xác của chúng được nghiên cứu một cách thật gần cận, chúng sẽ tan biến thành hư không.', N'KH_MVTLT.jpg', CAST(N'2016-01-04T00:00:00.000' AS DateTime), 17, 7, 1, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (3, N' 100 nhà khoa học có ảnh hưởng nhất trên Thế Giới', CAST(35000 AS Decimal(18, 0)), N' Các nhà khoa học được giới thiệu trong cuốn sách này đều là những nhân vật hàng đầu trong lĩnh vực của mình, họ có ảnh hưởng sâu sắc đối với sự phát triển của thế giới hiện nay. Họ đã mô tả các quy luật vận động, phát hiện ra nguyên lý hoạt động của điện và mô tả kết cấu của nguyên tử. Họ phân giải hóa chất đến nguyên tố, đồng thời đã phát hiện ra sự tồn tại của nguyên tố trên mặt trời, trên mặt trăng, trên các tinh thể và cả nơi sâu nhất trong tâm trái đất.', N'KH_NKH.jpg', CAST(N'2016-02-04T00:00:00.000' AS DateTime), 30, 8, 2, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (8, N'SÁCH - Bách khoa thư về khoa học- Trái Đất và vũ trụ tại E3 Audio', CAST(54000 AS Decimal(18, 0)), N'THÔNG TIN CHI TIẾT. Mã sản phẩm: 8935212348867. Dịch giả : Thùy Dương. Độ tuổi : 8 tuổi trở lên. Năm xuất bản : 2022. NỘI DUNG Trạng thái: Còn hàng ', N'k1.jpg', CAST(N'2018-03-02T00:00:00.000' AS DateTime), 0, 1, 2, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (9, N'ĐI VÀO NGHIÊN CỨU KHOA HỌC và Tự Nhiên', CAST(72000 AS Decimal(18, 0)), N'Tác giả: GS. TS. Nguyễn Văn Tuấn

Dịch giả: Khác

Khổ sách: 13x19 cm

Số trang: 308 trang

Trọng lượng: 250 g

Năm xuất bản: 2018', N'k2.jpg', CAST(N'2023-01-03T00:00:00.000' AS DateTime), 40, 1, 3, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (12, N'Sách Khai Tâm - DÁM LÀM GIÀU - Phạm Tuấn Sơn', CAST(750000 AS Decimal(18, 0)), N'Tác giả: Phạm Tuấn Sơn
Nhà xuất bản: NXB Tổng hợp Tp.HCM
Công ty phát hành: First News
Số trang: 230
Hình thức bìa: Bìa mềm
Ngày xuất bản: 2022
Trọng lượng (gr):320 Giá trị & dịch vụ cộng thêm:
 Bookmark miễn phí
 Giao hàng miễn phí cho đơn hàng từ 200.000 đ (nội thành HCM) và từ 500.000 đ (ngoại thành HCM/ Tỉnh) 
 Với mỗi 90k trong đơn hàng, quý khách được tặng 1 
 Bao đọc sách hay, đổi ngay nếu dở (chi tiết)
 Bao sách miễn phí nếu có yêu cầu
', N'l2.jpg', CAST(N'2023-01-01T00:00:00.000' AS DateTime), 10, 2, 4, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (13, N'Tài Chính Cá Nhân Dành Cho Người Việt Nam', CAST(170000 AS Decimal(18, 0)), N'Tác giả: Lâm Minh Chánh
Nhà xuất bản: NXB Văn Hóa - Văn Nghệ
Công ty phát hành: Công ty cổ phẩn đào tạo quản trị kinh doanh BIZUNI
Số trang: 236
Hình thức bìa: Bìa mềm
Ngày xuất bản: 06/2020
Trọng lượng (gr):400 Giá trị & dịch vụ cộng thêm:
 Bookmark miễn phí
 Giao hàng miễn phí cho đơn hàng từ 200.000 đ (nội thành HCM) và từ 500.000 đ (ngoại thành HCM/ Tỉnh) 
 Với mỗi 90k trong đơn hàng, quý khách được tặng 1 
 Bao đọc sách hay, đổi ngay nếu dở (chi tiết)
 Bao sách miễn phí nếu có yêu cầu', N'k3.jpg', CAST(N'2022-02-01T00:00:00.000' AS DateTime), 15, 2, 12, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (14, N'27 Thách Thức Của Nhà Quản Lý - Bruce Tulgan', CAST(103000 AS Decimal(18, 0)), N'Tác giả: Bruce Tulgan
Dịch giả: Phan Tín Dụng
Nhà xuất bản: NXB Thế giới
Công ty phát hành: Alphabooks
Số trang: 300
Hình thức bìa: Bìa mềm (16x24cm)
Ngày xuất bản: 01/2020
Trọng lượng (gr):470Giá trị & dịch vụ cộng thêm:
 Bookmark miễn phí
 Giao hàng miễn phí cho đơn hàng từ 200.000 đ (nội thành HCM) và từ 500.000 đ (ngoại thành HCM/ Tỉnh) 
 Với mỗi 90k trong đơn hàng, quý khách được tặng 1 
 Bao đọc sách hay, đổi ngay nếu dở (chi tiết)
 Bao sách miễn phí nếu có yêu cầu', N'k4.jpg', CAST(N'2022-01-03T00:00:00.000' AS DateTime), 0, 3, 10, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (15, N'Cách Để Đạt 1 Triệu Follow Chỉ Trong 30 Ngày - Brendan Kane', CAST(132000 AS Decimal(18, 0)), N'Tác giả: Brendan Kane
Dịch giả: Thanh Mai
Nhà xuất bản: NXB Hồng Đức
Công ty phát hành: BizBook
Số trang: 468
Hình thức bìa: Bìa mềm (13x20,5cm)
Ngày xuất bản: 2019
Trọng lượng (gr):725 Giá trị & dịch vụ cộng thêm:
 Bookmark miễn phí
 Giao hàng miễn phí cho đơn hàng từ 200.000 đ (nội thành HCM) và từ 500.000 đ (ngoại thành HCM/ Tỉnh) 
 Với mỗi 90k trong đơn hàng, quý khách được tặng 1 
 Bao đọc sách hay, đổi ngay nếu dở (chi tiết)
 Bao sách miễn phí nếu có yêu cầu', N'k5.jpg', CAST(N'2021-02-05T00:00:00.000' AS DateTime), 30, 4, 5, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (17, N'Thuật Quản Lý Khủng Hoảng Bản Thân(BRIAN TRACY)', CAST(105000 AS Decimal(18, 0)), N'Tác giả: Brian Tracy
Dịch giả: Jessy
Nhà xuất bản: NXB Thế giới
Công ty phát hành: Alphabooks
Số trang: 184
Hình thức bìa: Bìa mềm
Ngày xuất bản: 09/2019
Trọng lượng (gr):380 Giá trị & dịch vụ cộng thêm:
 Bookmark miễn phí
 Giao hàng miễn phí cho đơn hàng từ 200.000 đ (nội thành HCM) và từ 500.000 đ (ngoại thành HCM/ Tỉnh) 
 Với mỗi 90k trong đơn hàng, quý khách được tặng 1 
 Bao đọc sách hay, đổi ngay nếu dở (chi tiết)
 Bao sách miễn phí nếu có yêu cầu', N'l8.jpg', CAST(N'2021-04-06T00:00:00.000' AS DateTime), 10, 5, 6, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (18, N'Kỷ Luật Bản Thân, Thói Quen Của Kẻ Mạnh - Brian Tracy', CAST(135000 AS Decimal(18, 0)), N'Tác giả: Brian Tracy
Dịch giả: Lương Như Ý
Nhà xuất bản: NXB Dân Trí
Công ty phát hành: 1980 Books
Số trang: 308
Hình thức bìa: Bìa mềm (13x19 cm)
Ngày xuất bản: 12/2022
Trọng lượng (gr):460
Giá bìa: 169.000 đ Giá trị & dịch vụ cộng thêm:
 Bookmark miễn phí
 Giao hàng miễn phí cho đơn hàng từ 200.000 đ (nội thành HCM) và từ 500.000 đ (ngoại thành HCM/ Tỉnh) 
 Với mỗi 90k trong đơn hàng, quý khách được tặng 1 
 Bao đọc sách hay, đổi ngay nếu dở (chi tiết)
 Bao sách miễn phí nếu có yêu cầu', N'k8.jpg', CAST(N'2020-12-12T00:00:00.000' AS DateTime), 12, 8, 6, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (19, N'Sức Hút Thu Phục Nhân Tâm - Brian Tracy, Ron Arden', CAST(68000 AS Decimal(18, 0)), N'Tác giả: Brian Tracy,Ron Arden
Dịch giả: Thành Khang,Trương Hiển
Nhà xuất bản: NXB Thanh Hóa
Công ty phát hành: Văn Lang
Số trang: 192
Hình thức bìa: Bìa mềm (13.5x20.5cm)
Ngày xuất bản: 04/2023
Trọng lượng (gr):300 Giá trị & dịch vụ cộng thêm:
 Bookmark miễn phí
 Giao hàng miễn phí cho đơn hàng từ 200.000 đ (nội thành HCM) và từ 500.000 đ (ngoại thành HCM/ Tỉnh) 
 Với mỗi 90k trong đơn hàng, quý khách được tặng 1 
 Bao đọc sách hay, đổi ngay nếu dở (chi tiết)
 Bao sách miễn phí nếu có yêu cầu', N'l3.jpg', CAST(N'2019-12-02T00:00:00.000' AS DateTime), 23, 9, 9, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (20, N'Năng Lượng Tích Cực, Thấu Hiểu Hành Vi, Quyết Định Logic', CAST(127000 AS Decimal(18, 0)), N'Tác giả: Brian Tracy
Dịch giả: Linh Nguyễn
Nhà xuất bản: NXB Lao Động
Công ty phát hành: 1980 Books
Số trang: 288
Hình thức bìa: Bìa mềm
Ngày xuất bản: 11/2022
Trọng lượng (gr):300 Giá trị & dịch vụ cộng thêm:
 Bookmark miễn phí
 Giao hàng miễn phí cho đơn hàng từ 200.000 đ (nội thành HCM) và từ 500.000 đ (ngoại thành HCM/ Tỉnh) 
 Với mỗi 90k trong đơn hàng, quý khách được tặng 1 
 Bao đọc sách hay, đổi ngay nếu dở (chi tiết)
 Bao sách miễn phí nếu có yêu cầu', N'l4.jpg', CAST(N'2018-12-04T00:00:00.000' AS DateTime), 25, 9, 9, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (21, N'Lập Kế Hoạch Phát Triển Kinh Doanh và Phát Triển', CAST(118000 AS Decimal(18, 0)), N'Tác giả: Brian Tracy
Dịch giả: Hoàng Long
Nhà xuất bản: NXB Công Thương
Công ty phát hành: 1980 Books
Số trang: 336
Hình thức bìa: Bìa mềm
Ngày xuất bản: 06/2020
Trọng lượng (gr):504Giá trị & dịch vụ cộng thêm:
 Bookmark miễn phí
 Giao hàng miễn phí cho đơn hàng từ 200.000 đ (nội thành HCM) và từ 500.000 đ (ngoại thành HCM/ Tỉnh) 
 Với mỗi 90k trong đơn hàng, quý khách được tặng 1 
 Bao đọc sách hay, đổi ngay nếu dở (chi tiết)
 Bao sách miễn phí nếu có yêu cầu', N'l5.jpg', CAST(N'2012-03-09T00:00:00.000' AS DateTime), 13, 1, 8, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (22, N'Phượng hoàng tái sinh - 12 Phẩm chất quan trọng để bứt phá sự nghiệp', CAST(121000 AS Decimal(18, 0)), N'Tác giả: Brian Tracy
Dịch giả: Quế Chi
Nhà xuất bản: NXB Hồng Đức
Công ty phát hành: BizBook
Số trang: 264
Hình thức bìa: Bìa mềm
Ngày xuất bản: 12/2022
Trọng lượng (gr):400 Giá trị & dịch vụ cộng thêm:
 Bookmark miễn phí
 Giao hàng miễn phí cho đơn hàng từ 200.000 đ (nội thành HCM) và từ 500.000 đ (ngoại thành HCM/ Tỉnh) 
 Với mỗi 90k trong đơn hàng, quý khách được tặng 1 
 Bao đọc sách hay, đổi ngay nếu dở (chi tiết)
 Bao sách miễn phí nếu có yêu cầu', N'l6.jpg', CAST(N'2011-11-02T00:00:00.000' AS DateTime), 5, 3, 8, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (23, N'21 nguyên tắc tự do tài chính(Brian Tracy)', CAST(44000 AS Decimal(18, 0)), N'Tác giả: Brian Tracy
Dịch giả: Chung Quy
Nhà xuất bản: NXB Công Thương
Công ty phát hành: Thái Hà
Số trang: 154
Hình thức bìa: Bìa mềm
Ngày xuất bản: 2021
Trọng lượng (gr):300Giá trị & dịch vụ cộng thêm:
 Bookmark miễn phí
 Giao hàng miễn phí cho đơn hàng từ 200.000 đ (nội thành HCM) và từ 500.000 đ (ngoại thành HCM/ Tỉnh) 
 Với mỗi 90k trong đơn hàng, quý khách được tặng 1 
 Bao đọc sách hay, đổi ngay nếu dở (chi tiết)
 Bao sách miễn phí nếu có yêu cầu', N'l7.jpg', CAST(N'2009-09-09T00:00:00.000' AS DateTime), 9, 4, 3, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (108, N'Bậc Thầy Về Tư Duy Thành Công - Brian Tracy', CAST(95000 AS Decimal(18, 0)), N'Tác giả: Brian Tracy Nhà xuất bản: NXB Đại học Kinh tế Quốc dân Công ty phát hành: 1980 Books Số trang: 272 Hình thức bìa: Bìa mềm Ngày xuất bản: 2019 Trọng lượng (gr):400 Giá trị & dịch vụ cộng thêm: Bookmark miễn phí Giao hàng miễn phí cho đơn hàng từ 200.000 đ (nội thành HCM) và từ 500.000 đ (ngoại thành HCM/ Tỉnh) Với mỗi 90k trong đơn hàng, quý khách được tặng 1 Bao đọc sách hay, đổi ngay nếu dở (chi tiết) Bao sách miễn phí nếu có yêu cầu', N'k6.jpg', CAST(N'2021-05-02T00:00:00.000' AS DateTime), 25, 2, 1, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (109, N'Sách Khai Tâm - GIẢI MÃ KHOA HỌC LÀM GIÀU - Fabian Lim', CAST(10000 AS Decimal(18, 0)), N'Tác giả: Fabian Lim Dịch giả: Phan Thị Duyên Nhà xuất bản: NXB Thanh Niên Công ty phát hành: Alphabooks Số trang: 264 Hình thức bìa: Bìa mềm Ngày xuất bản: 10/2016 Trọng lượng (gr):380', N'l1.jpg', CAST(N'2020-08-07T00:00:00.000' AS DateTime), 50, 2, 2, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (110, N'CARD CAPTOR SAKURA - THẺ BÀI PHA LÊ', CAST(25000 AS Decimal(18, 0)), N'Được “ma pháp thời gian” dẫn dắt, Alice bước đến “hồi kết của câu chuyện”…
Những mảnh kí ức dần dần hé lộ, nhóm Sakura bắt đầu nhận ra “ma pháp thời gian” của Kaito. Sakura quyết định làm theo những gì trái tim mách bảo, chọn tin tưởng vào Kaito và Akiho. Cô bé đã cùng Akiho đảm nhiệm vai chính trong vở kịch giao lưu của trường trung học Tomoeda. Vở kịch “Alice song sinh” mà nhóm Sakura diễn là…!?
', N'tr1.jpg', CAST(N'2024-07-11T00:00:00.000' AS DateTime), 2, 5, 11, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (111, N'DORAEMON MOVIE STORY MÀU: NOBITA VÀ BẢN GIAO HƯỞNG', CAST(35000 AS Decimal(18, 0)), N'Chuẩn bị cho buổi hòa nhạc ở trường, Nobita đang tập thổi sáo Recorder - nhạc cụ mà cậu chơi dở nhất. Thích thú trước nốt "No" lạc quẻ của Nobita, Micca - một cô bé bí ẩn đã mời Doraemon, Nobita cùng nhóm bạn đến "Farre" - Cung điện âm nhạc tọa lạc trên một hành tinh nơi âm nhạc sẽ hóa thành năng lượng. Nhằm cứu cung điện này, Micca và Chapeck đang tìm kiếm 5 "Virtouso" - bậc thầy âm nhạc huyền thoại sẽ cùng mình biểu diễn! Với bảo bối thần kì "Chứng chỉ chuyên viên âm nhạc", Doraemon và các bạn đã chọn nhạc bằng sợi dây thần định mệnh, cùng Micca hòa tấu, từng bước khôi phục cung điện "Farre". Tuy nhiên, một vật thể sống đáng sợ rất ghét âm nhạc sẽ xóa sổ âm nhạc khỏi thế giới đang đến gần, Trái Đất đang lâm nguy...! Liệu nhóm người bạn có thể cứu được "tương lai âm nhạc" và địa cầu này?', N'tr2.jpg', CAST(N'2024-07-11T00:00:00.000' AS DateTime), 35, 1, 3, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (112, N'Thỏ Bảy Màu Và Những Người Nghĩ Nó Là Bạn (Tái Bản 202)', CAST(45000 AS Decimal(18, 0)), N'Thỏ Bảy Màu là fanpage sở hữu hơn 2,6tr lượt thích trên mạng xã hội. Với hình tượng nhân vật thú vị cùng phong cách sáng tạo độc đáo, Thỏ bảy màu vẫn luôn là thu hút được số lượng lớn người quan tâm thể hiện qua nhiều bài viết với hàng chục nghìn lượt like và share.', N'tr3.jpg', CAST(N'2024-07-11T00:00:00.000' AS DateTime), 45, 3, 5, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (113, N'Mười Bảy Năm Ánh Sáng - Tái Bản 2022', CAST(55000 AS Decimal(18, 0)), N'“Vậy thì hay tạo ra một thế giới khác, thế giới chỉ có cậu cùng những điều tốt đẹp bên trong cậu mà thôi.”
Từng câu chuyện như cánh cửa dẫn sang những thế giới ấy, tập truyện tranh ngắn là chùm chìa khóa được đúc tạc bằng hình ảnh cùng ngôn từ, đưa bạn tới từng chiều không gian thời gian khác, nhỏ bé, tĩnh lặng và dễ thấu hiểu hơn.
', N'tr4.png', CAST(N'2024-07-11T00:00:00.000' AS DateTime), 0, 2, 11, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (114, N'Gia Đình Gãi Ngứa - Tuyển Tập Chúng Ta Rồi Sẽ Lớn - Bản Đặc Biệt', CAST(60000 AS Decimal(18, 0)), N'Sau một thời gian dài ấp ủ, cuối cùng tuyển tập “Gia đình gãi ngứa” đã bước sang cuốn thứ ba. Nếu hai tập trước giúp bạn một lần nữa quay về “làm một đứa trẻ” để thỏa sức vẫy vùng trong những năm tháng ấu thơ thì tuyển tập thứ ba này sẽ kéo bạn về với thế giới hiện tại, nơi mà mọi đứa trẻ đều sẽ phải trở thành người lớn.', N'tr5.jpg', CAST(N'2024-07-11T00:00:00.000' AS DateTime), 5, 3, 9, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (124, N'sách nè 44445', CAST(28000 AS Decimal(18, 0)), N'ha', N'/Images/bn1.png', CAST(N'2024-08-18T15:20:10.413' AS DateTime), 0, 5, 10, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (125, N'sách nè', CAST(28000 AS Decimal(18, 0)), N'gggg', N'/Images/h5.png', CAST(N'2024-08-18T15:25:01.790' AS DateTime), 2, 4, 6, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (126, N'sách nè', CAST(28000 AS Decimal(18, 0)), N'hhhh', N'/Images/h5.png', CAST(N'2024-08-18T15:28:04.510' AS DateTime), 2, 2, 2, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (127, N'sách nè', CAST(28000 AS Decimal(18, 0)), N'ggg', N'/Images/h2.png', CAST(N'2024-08-18T15:31:07.437' AS DateTime), 2, 6, 9, NULL, NULL)
INSERT [dbo].[SACH] ([MaSach], [TenSach], [GiaBan], [MoTa], [AnhBia], [NgayCapNhat], [SoLuongTon], [MaCD], [MaNXB], [MaKH], [MaTG]) VALUES (128, N'sách nè', CAST(28000 AS Decimal(18, 0)), N'hhhh', N'/Images/h1.png', CAST(N'2024-08-18T15:34:06.833' AS DateTime), 2, 2, 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[SACH] OFF
GO
SET IDENTITY_INSERT [dbo].[TACGIA] ON 

INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiaChi], [TieuSu], [DienThoai]) VALUES (1, N' Matthieu richard Trịnh Xuân Thuận', N'', N'', N'')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiaChi], [TieuSu], [DienThoai]) VALUES (2, N' Robert B. Laughlin', N'', N'', N'')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiaChi], [TieuSu], [DienThoai]) VALUES (3, N' John Simmons', N'', N'', N'')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiaChi], [TieuSu], [DienThoai]) VALUES (4, N' Joanna Martine Woolfolk', N'', N'', N'')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG], [DiaChi], [TieuSu], [DienThoai]) VALUES (5, N' Carl Sagan', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[TACGIA] OFF
GO
SET IDENTITY_INSERT [dbo].[VIETSACH] ON 

INSERT [dbo].[VIETSACH] ([MaTG], [MaSach], [VaiTro], [ViTri]) VALUES (1, 1, N'', N'')
INSERT [dbo].[VIETSACH] ([MaTG], [MaSach], [VaiTro], [ViTri]) VALUES (2, 2, N'', N'')
INSERT [dbo].[VIETSACH] ([MaTG], [MaSach], [VaiTro], [ViTri]) VALUES (3, 3, N'', N'')
INSERT [dbo].[VIETSACH] ([MaTG], [MaSach], [VaiTro], [ViTri]) VALUES (4, 4, N'', N'')
INSERT [dbo].[VIETSACH] ([MaTG], [MaSach], [VaiTro], [ViTri]) VALUES (5, 5, N'', N'')
SET IDENTITY_INSERT [dbo].[VIETSACH] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__A9D105340FA440AB]    Script Date: 8/20/2024 2:43:07 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__A9D10534EA91CD87]    Script Date: 8/20/2024 2:43:07 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__D5B8C7F0359D2A49]    Script Date: 8/20/2024 2:43:07 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KHACHHAN__D5B8C7F079116580]    Script Date: 8/20/2024 2:43:07 PM ******/
ALTER TABLE [dbo].[KHACHHANG] ADD UNIQUE NONCLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADMIN]  WITH CHECK ADD  CONSTRAINT [FK_ADMIN_ThanhVien] FOREIGN KEY([QLThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaTV])
GO
ALTER TABLE [dbo].[ADMIN] CHECK CONSTRAINT [FK_ADMIN_ThanhVien]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDH_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [FK_ChiTietDH_Sach]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_ChiTietDH] FOREIGN KEY([DatHang])
REFERENCES [dbo].[ChiTietDH] ([MaDH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_ChiTietDH]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [Fk_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [Fk_KhachHang]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [Fk_ChuDe] FOREIGN KEY([MaCD])
REFERENCES [dbo].[CHUDE] ([MaCD])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [Fk_ChuDe]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [Fk_NhaXuatBan] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NHAXUATBAN] ([MaNXB])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [Fk_NhaXuatBan]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_KHACHHANG]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_TACGIA] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TACGIA] ([MaTG])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_TACGIA]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_KhachHang]
GO
ALTER TABLE [dbo].[VIETSACH]  WITH CHECK ADD  CONSTRAINT [Fk_TacGia] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TACGIA] ([MaTG])
GO
ALTER TABLE [dbo].[VIETSACH] CHECK CONSTRAINT [Fk_TacGia]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD CHECK  (([GiaBan]>=(0)))
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD CHECK  (([GiaBan]>=(0)))
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD CHECK  (([GiaBan]>=(0)))
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD CHECK  (([GiaBan]>=(0)))
GO
