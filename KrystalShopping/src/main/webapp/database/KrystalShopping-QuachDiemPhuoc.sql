CREATE DATABASE [KrystalShopping-QuachDiemPhuoc]
GO
USE [KrystalShopping-QuachDiemPhuoc]
GO
/****** Object:  Table [dbo].[advertise]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[advertise](
	[id] [int] NOT NULL,
	[height] [int] NOT NULL,
	[link] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[orders] [int] NOT NULL,
	[postion] [int] NOT NULL,
	[status] [int] NOT NULL,
	[target] [int] NOT NULL,
	[url] [varchar](255) NULL,
	[width] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[base_entity]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_entity](
	[id] [bigint] NOT NULL,
	[created_by] [varchar](255) NULL,
	[created_date] [datetime2](7) NULL,
	[modified_by] [varchar](255) NULL,
	[modified_date] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[image] [varchar](255) NULL,
 CONSTRAINT [PK__category__3213E83F5C6E5F7F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[company]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company](
	[name] [varchar](255) NOT NULL,
	[address] [varchar](255) NULL,
	[fax] [varchar](255) NULL,
	[phone_number] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[id] [int] NOT NULL,
	[address] [varchar](255) NULL,
	[company] [varchar](255) NULL,
	[date] [datetime2](7) NULL,
	[detail] [varchar](255) NULL,
	[mal] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[tel] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [int] NOT NULL,
	[address] [varchar](255) NULL,
	[birth_day] [datetime2](7) NULL,
	[email] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[province] [varchar](255) NULL,
	[tel] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group_product]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_product](
	[id] [int] NOT NULL,
	[content] [nvarchar](255) NULL,
	[images] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[orders] [int] NOT NULL,
	[status] [int] NOT NULL,
	[category_id] [int] NULL,
 CONSTRAINT [PK__group_pr__3213E83F5754C343] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] NOT NULL,
	[link] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[orders] [int] NOT NULL,
	[parentid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](255) NULL,
	[dateorder] [datetime] NULL,
	[account_id] [varchar](255) NULL,
	[code] [int] NULL,
	[numberphone] [int] NULL,
	[email] [nvarchar](255) NULL,
 CONSTRAINT [PK__order__3213E83F9B528244] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[order_id] [int] NULL,
	[city] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[payment] [bit] NULL,
	[fullname] [nvarchar](255) NULL,
	[productid] [int] NULL,
 CONSTRAINT [PK__order_de__3213E83FFDA615F9] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] NOT NULL,
	[create_date] [date] NULL,
	[detail] [nvarchar](500) NULL,
	[image] [varchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[newprice] [int] NULL,
	[orders] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[sale] [decimal](3, 2) NULL,
	[status] [int] NULL,
	[group_id] [int] NULL,
 CONSTRAINT [PK__product__3213E83F93BCD079] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[province]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[province](
	[id] [int] NOT NULL,
	[name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report](
	[groups] [varbinary](255) NOT NULL,
	[count] [bigint] NULL,
	[sum] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[groups] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop](
	[id] [int] NOT NULL,
	[address] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[tel] [varchar](255) NULL,
	[province_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[support]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[support](
	[id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[nick] [varchar](255) NULL,
	[orders] [int] NOT NULL,
	[status] [int] NOT NULL,
	[tel] [varchar](255) NULL,
	[type] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 6/14/2021 1:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [varchar](255) NOT NULL,
	[address] [nvarchar](255) NULL,
	[email] [varchar](255) NULL,
	[fullname] [nvarchar](255) NULL,
	[password] [varchar](255) NULL,
	[role] [bit] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK__users__F3DBC5736FDDEF38] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[category] ([id], [name], [image]) VALUES (1, N'Điện Thoại', N'id (1).jpg')
INSERT [dbo].[category] ([id], [name], [image]) VALUES (2, N'Laptop', N'id (2).jpg')
INSERT [dbo].[category] ([id], [name], [image]) VALUES (3, N'Tablet', N'id (3).jpg')
INSERT [dbo].[category] ([id], [name], [image]) VALUES (4, N'Đồng Hồ', N'id (4).jpg')
INSERT [dbo].[category] ([id], [name], [image]) VALUES (5, N'Phụ Kiện', N'id (5).jpg')
INSERT [dbo].[category] ([id], [name], [image]) VALUES (6, N'PC, Máy in', N'id (6).jpg')
GO
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (1, N'Điện Thoại', NULL, N'Samsung', 0, 0, 1)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (2, N'Điện Thoại', NULL, N'Apple', 0, 0, 1)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (3, N'Laptop', NULL, N'MacBook', 0, 0, 2)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (4, N'Tablet', NULL, N'Samsung', 0, 0, 3)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (5, N'Tablet', NULL, N'iPad', 0, 0, 3)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (6, N'Đồng Hồ', NULL, N'Đồng Hồ', 0, 0, 4)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (7, N'Phụ Kiện', NULL, N'Sạc Dự Phòng', 0, 0, 5)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (8, N'Phụ Kiện', NULL, N'Sạc - Cáp', 0, 0, 5)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (9, N'Phụ Kiện', NULL, N'Miếng Dán Màng Hình', 0, 0, 5)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (10, N'Phụ Kiện', NULL, N'Ốp Lưng Điện Thoại', 0, 0, 5)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (11, N'Phụ Kiện', NULL, N'Ốp Lưng Máy Tính Bảng', 0, 0, 5)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (12, N'Phụ Kiện', NULL, N'Túi Chống Nước', 0, 0, 5)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (13, N'Phụ Kiện', NULL, N'Phụ Kiện iPad', 0, 0, 5)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (14, N'Phụ Kiện', NULL, N'Thẻ Nhớ', 0, 0, 5)
INSERT [dbo].[group_product] ([id], [content], [images], [name], [orders], [status], [category_id]) VALUES (15, N'Phụ Kiện', NULL, N'USB', 0, 0, 5)
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [address], [dateorder], [account_id], [code], [numberphone], [email]) VALUES (15, N'05-duong so 8, quan binh tan, thanh pho ho chi minh', CAST(N'2021-06-11T21:29:46.623' AS DateTime), N'user2', 0, 963230016, N'diemphuoc5555@gmail.com')
INSERT [dbo].[order] ([id], [address], [dateorder], [account_id], [code], [numberphone], [email]) VALUES (16, N'05-duong so 8, quan binh tan, thanh pho ho chi minh', CAST(N'2021-06-12T03:32:24.007' AS DateTime), N'user2', 0, 963230016, N'diemphuoc5555@gmail.com')
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[order_detail] ON 

INSERT [dbo].[order_detail] ([id], [price], [quantity], [order_id], [city], [country], [payment], [fullname], [productid]) VALUES (20, 15, 1, 15, N'Hồ Chí Minh', N'Việt Nam', 0, N'Hoàng Xuân Đạt', 2)
INSERT [dbo].[order_detail] ([id], [price], [quantity], [order_id], [city], [country], [payment], [fullname], [productid]) VALUES (21, 15, 1, 16, N'Hồ Chí Minh', N'Việt Nam', 0, N'Hoàng Xuân Đạt', 2)
SET IDENTITY_INSERT [dbo].[order_detail] OFF
GO
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (1, CAST(N'2001-03-15' AS Date), N'Samsung A11 là mẫu smartphone giá rẻ thuộc dòng Galaxy A được Samsung ra mắt trong năm 2020. Đây được xem là phiên bản kế nhiệm của Galaxy A10 - chiếc điện thoại Android bán chạy nhất trong năm 2019.

Màn hình Infinite-O, 6.4 inch, HD+, màn hình LCD cho trải nghiệm chân thực
Màn hình của Galaxy A11 được thiết kế phủ toàn bộ mặt trước của máy, và tối ưu hiển thị cho camera trước nằm trên góc phải. Đây còn gọi là màn hình notch, nhờ thế mà tỉ lệ hiển thị của màn hình đạt 19.5:9.', N'SamsungGalaxyA11', N'SamsungGalaxyA11', 0, 25, 23, 1, CAST(0.27 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (2, CAST(N'2001-03-15' AS Date), N'Điện thoại Samsung Galaxy A12 (4GB/128GB) đã được bán 2 sản phẩm. Bạn cần thỏa thuận riêng với shop trước khi đặt hàng vì shop vẫn chưa được xác thực. Kho hàng của sản phẩm được giao từ TP. Hồ Chí Minh', N'SamsungGalaxyA12', N'SamsungGalaxyA12', 0, 25, 23, 1, CAST(0.31 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (3, CAST(N'2001-03-15' AS Date), N'Galaxy A21s là chiếc điện thoại tầm trung của Samsung, mang trong mình với thiết kế màn hình nốt ruồi thời thượng, cùng cụm 4 camera sau độ phân giải lên đến 48 MP hỗ trợ nhiều tính năng chụp ảnh hấp dẫn.
Thiết kế cao cấp, cảm biến vân tay ở mặt lưng
Samsung Galaxy A21s sở hữu thiết kế siêu tràn viền theo xu hướng 2020 với viền màn hình tràn ra các cạnh và camera trước dạng nốt ruồi giúp không gian sử dụng rộng hơn, ít gây cảm giác khó chịu cho người dùng.', N'SamsungGalaxyA21s', N'SamsungGalaxyA21s', 0, 25, 23, 1, CAST(0.21 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (4, CAST(N'2001-03-15' AS Date), N'Galaxy A31 là mẫu smartphone tầm trung được ra mắt đầu năm 2020 của Samsung. Thiết bị gây ấn tượng mạnh với ngoại hình thời trang, cụm 4 camera đa chức năng, vân tay dưới màn hình và viên pin khủng lên đến 5000 mAh.
Thiết kế đặc trưng của dòng Galaxy A 2020
Tổng thể thiết kế của Galaxy A31 mang nhiều nét tương đồng với hai người anh em Galaxy A51 và A71. Mặt lưng của thiết bị vẫn được tạo điểm nhấn với cụm camera lớn và các vân kim cương đẹp mắt.', N'SamsungGalaxyA31', N'SamsungGalaxyA31', 0, 25, 23, 1, CAST(0.12 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (5, CAST(N'2001-03-15' AS Date), N'Samsung Galaxy A32 năm nay đã được Samsung sử dụng ngôn ngữ thiết kế mới, giúp nó trông hoàn toàn khác biệt so với mẫu máy tiền nhiệm. Trong đó, thay đổi đáng chú ý nhất của điện thoại này đến từ mặt lưng khi công ty Hàn Quốc thiết kế cụm camera của máy không hề được đặt trong bất kỳ một khung hình vuông hay hình chữ nhật nào, mà thay vào đó các cảm biến camera sẽ được đặt riêng rẽ. Cụm máy ảnh này này dường như được lấy cảm hứng từ điện thoại LG Velvet ra mắt trước đó không lâu', N'SamsungGalaxyA32', N'SamsungGalaxyA32', 0, 25, 23, 1, CAST(0.11 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (6, CAST(N'2001-03-15' AS Date), N'Theo Strategy Analytics, Galaxy A51 là Smartphone Android Bán Chạy Nhất Thế Giới Quý 1/2020, máy sở hữu cụm 4 camera, bao gồm camera macro chụp cận cảnh lần đầu xuất hiện trên smartphone Samsung, màn hình tràn viền vô cực cùng mặt lưng họa tiết kim cương nổi bật.
Thiết kế thời thượng, bật cá tính
Máy có thiết kế mỏng nhẹ thuộc hàng top trong phân khúc, chỉ 7.9 mm. Mặt lưng với họa tiết cắt kim cương đa sắc nổi bật, đi kèm là 4 tùy chọn màu sắc sành điệu: Xanh, Trắng, Đen, Bạc.', N'SamsungGalaxyA51', N'SamsungGalaxyA51', 0, 25, 23, 1, CAST(0.10 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (7, CAST(N'2001-03-15' AS Date), N'Thời gian vừa qua, chúng ta đã được chứng kiến những hình ảnh đầu tiên về chiếc Galaxy A72 4G. Mới đây, trang tin WinFuture đã tiếp tục đăng tải những hình ảnh render chính thức của chiếc Galaxy A52 bản 4G LTE và 5G. Theo đó, Galaxy A52 về cơ bản cũng có thiết kế giống hệt với những gì chúng ta thấy trên dòng A72 trước đó.', N'SamsungGalaxyA52', N'SamsungGalaxyA52', 0, 25, 23, 1, CAST(0.12 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (8, CAST(N'2001-03-15' AS Date), N'Samsung Galaxy A71 là đại diện kế tiếp thuộc thế hệ smartphone Galaxy A 2020. Máy được cải tiến với camera macro siêu cận đột phá, camera chính lên đến 64 MP cùng thiết kế thời thượng và cao cấp.
Màn hình lớn, trải nghiệm tràn viền cực đã
Galaxy A71 sở hữu màn hình tràn viền Infinity-O với rãnh camera được đặt chính giữa tương tự như trên flagship Note 10. Điểm cộng là phần rãnh camera nay đã được làm rất nhỏ, ít gây chú ý, cho trải nghiệm hình ảnh thoải mái và ít bị phân tâm hơn.', N'SamsungGalaxyA71', N'SamsungGalaxyA71', 0, 25, 23, 1, CAST(0.17 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (9, CAST(N'2001-03-15' AS Date), N'Samsung Galaxy A72 Vừa ra mắt nên giá bán của samsung galaxy A72 phải công nhận là quá ảo, nhưng bù lại thì đây là chiếc máy rất toàn diện, không có gì nổi bật nhưng cũng không có gì yếu kém. ', N'SamsungGalaxyA72', N'SamsungGalaxyA72', 0, 25, 23, 1, CAST(0.15 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (10, CAST(N'2001-03-15' AS Date), N'iPhone XS, XS Max chính hãng – Smartphone mới nhất từ Apple
Giá bán của iPhone tiếp tục được đẩy lên một tầm cao mới với chiếc iPhone XS Max sở hữu màn hình lớn nhất từ trước đến nay trên một chiếc iPhone. Tuy nhiên, cũng giống như iPhone X trước đó, những cải tiến trên iPhone XS Max đủ để người dùng cảm thấy hài lòng và sẵn sàng “móc hầu bao”.', N'iPhoneXSMax', N'iPhoneXS Max', 0, 35, 25, 1, CAST(0.16 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (11, CAST(N'2001-03-15' AS Date), N'Tháng 09/2019, Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.
Nâng cấp mạnh mẽ về camera
Nói về nâng cấp thì camera chính là điểm có nhiều cải tiến nhất trên thế hệ iPhone mới.', N'iPhone11', N'iPhone11', 0, 23, 30, 1, CAST(0.21 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (12, CAST(N'2001-03-15' AS Date), N'Nếu như bây giờ để lựa chọn một thiết bị có thể sử dụng ổn định và được cập nhật trong khoảng 3 năm nữa thì không có sự lựa chọn nào xuất sắc hơn chiếc iPhone 11 Pro 64GB, siêu phẩm mới được giới thiệu cách đây không lâu tới từ Apple.
Khi hiệu năng vượt qua mọi giới hạn
iPhone vốn nổi tiếng với sự mượt mà và ổn định, điều đó lại một lần nữa được Apple khẳng định với chiếc iPhone 11 Pro.', N'iPhone11', N'iPhone11 Pro', 0, 31, 34, 1, CAST(0.23 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (13, CAST(N'2001-03-15' AS Date), N'Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.
Hiệu năng vượt xa mọi giới hạn
Apple đã trang bị con chip mới nhất của hãng (tính đến 11/2020) cho iPhone 12 đó là A14 Bionic, được sản xuất trên tiến trình 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị trên phiên bản tiền nhiệm iPhone 11.', N'iPhone12', N'iPhone12', 0, 27, 38, 1, CAST(0.25 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (14, CAST(N'2001-03-15' AS Date), N'iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.
Thay đổi thiết kế mới sau 6 năm
Theo chu kỳ cứ mỗi 3 năm thì iPhone lại thay đổi thiết kế và 2020 là năm đánh dấu cột mốc quan trong này, vì thế rất có thể đây là thời điểm các mẫu iPhone 12 sẽ có một sự thay đổi mạnh mẽ về thiết kế.', N'iPhone12pro', N'iPhone12 Pro', 0, 29, 40, 1, CAST(0.24 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (15, CAST(N'2001-03-15' AS Date), N'Điện thoại iPhone 12 Pro Max: Nâng tầm đẳng cấp sử dụng
Cứ mỗi năm, đến dạo cuối tháng 8 và gần đầu tháng 9 thì mọi thông tin sôi sục mới về chiếc iPhone mới lại xuất hiện. Apple năm nay lại ra thêm một chiếc iPhone mới với tên gọi mới là iPhone 12 Pro Max, đây là một dòng điện thoại mới và mạnh mẽ nhất của nhà Apple năm nay. Mời bạn tham khảo thêm một số mô tả sản phẩm bên dưới để bạn có thể ra quyết định mua sắm.', N'iPhone12promax', N'iPhone12 Pro Max', 0, 38, 48, 1, CAST(0.19 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (16, CAST(N'2001-03-15' AS Date), N'Sau một thời gian dài chờ đợi thì mẫu điện thoại Apple - iPhone 12 cũng đã được ra mắt vào ngày 14/10 năm ngoái. Dẫu biết rằng iPhone 12 đã thực hiện rất nhiều cải tiến, nhưng chắc chắn vẫn sẽ có những hạn chế nhất định. Từ đó, mọi ánh nhìn bắt đầu đổ dồn về chiếc Apple iPhone tiếp theo đến từ nhà Táo. Liệu iPhone 13 sẽ có được những thay đổi đủ để thỏa mãn đại đa số người dùng? Chúng ta hãy cùng tổng hợp những thông tin nghe đồn về iPhone 13 trong bài viết này nhé.', N'iPhone13', N'iPhone13', 0, 12, 44, 1, CAST(0.18 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (17, CAST(N'2001-03-15' AS Date), N'Hiệu năng ấn tượng đến từ chip M1
Chip M1 được Apple thiết kế dành riêng cho MacBook mang đến hiệu năng vượt trội. Card đồ họa GPU 7 nhân mang lại hiệu suất cao hơn những thế hệ trước đó, đồ họa cao hơn gấp 5 lần, cho phép bạn xử lý hình ảnh, chỉnh sửa video đều tốt, hỗ trợ xuất video đến 4K. 

Bộ nhớ RAM 16 GB cho phép bạn sử dụng đa nhiệm thoải mái với những tác vụ như lướt web, soạn thảo, xem video hay thiết kế hình ảnh bằng Photoshop, Adobe IIIustrator,...', N'AppleMacBook(Z124000DE)', N'Laptop Apple MacBook Air M1 16GB/256GB/Space Gray (Z124000DE)', 0, 18, 20, 1, CAST(0.16 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (18, CAST(N'2001-03-15' AS Date), N'Apple Macbook Pro M1 2020 (Z11C) được nâng cấp với bộ vi xử lý mới cực kỳ mạnh mẽ, con laptop này sẽ phục vụ tốt cho công việc của bạn, đặc biệt bên lĩnh vực đồ họa, kỹ thuật.
Tăng cường không gian lưu trữ, tốc độ xử lý
Chip Apple M1 là một bộ vi xử lý mạnh mẽ, được ra mắt lần đầu tiên trên MAC. Đây là con chip với bộ xử lý 5 nm, tích hợp CPU 8 lõi với 4 lõi CPU tốc độ và và 4 lõi tiết kiệm năng lượng. Nhờ vậy, thời lượng pin của laptop được kéo dài đến tận 10 tiếng đồng hồ.', N'AppleMacBook(Z11C)', N'Laptop Apple MacBook Pro M1 16GB/512GB/Space Grey (Z11C)', 0, 21, 25, 1, CAST(0.11 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (19, CAST(N'2001-03-15' AS Date), N'Thiết kế mỏng nhẹ, màu sắc sang trọng
Thân máy của Macbook M1 có độ mỏng từ 4.1 mm đến 16.1 mm thuộc vào hàng ngũ những chiếc laptop mỏng nhất, vỏ máy được làm từ kim loại nguyên khối nhưng lại có khối cực nhẹ chỉ 1.29 kg. Tuy mỏng nhẹ là thế nhưng chiếc laptop này vẫn có độ bền vượt trội, bảo vệ tốt các linh kiện bên trong khi không may xảy ra va đập. Toàn thân máy được bao phủ với gam màu bạc sáng loáng càng tôn lên nét sang trọng của sản phẩm.', N'AppleMacBook(MGN93SA)', N'Laptop Apple MacBook Air M1 8GB/256GB/Silver (MGN93SA/A)', 0, 12, 23, 1, CAST(0.09 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (20, CAST(N'2001-03-15' AS Date), N'Chip Apple M1 tốc độ xử lý nhanh gấp 3.5 lần thế hệ trước
Chiếc laptop này được trang bị con chip Apple M1 được sản xuất trên tính trình 5 nm, 8 lõi bao gồm 4 lõi tiết kiệm điện và 4 lõi hiệu suất cao, con chip cho hiệu năng xử lý ổn định ngay cả khi đang chạy các ứng dụng đồ họa 3D hay chỉnh sửa ảnh nhưng chỉ tiêu thụ 1/4 mức điện năng giúp kéo dài thời lượng pin.', N'AppleMacBook(MGN63SA)', N'Laptop Apple MacBook Air M1 8GB/256GB/Space Grey (MGN63SA/A)', 0, 16, 28, 1, CAST(0.14 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (21, CAST(N'2001-03-15' AS Date), N'Samsung Galaxy Tab S7 chiếc máy tính bảng có thiết kế tuyệt đẹp, màn hình 120 Hz siêu mượt, camera kép ấn tượng, bút S Pen cùng một hiệu năng mạnh mẽ thuộc top đầu thị trường máy tính bảng Android.
Thiết kế tràn viền cao cấp, thời thượng
Galaxy Tab S7 vẫn giữ nguyên thiết kế kim loại nguyên khối, góc cạnh như người tiền nhiệm Samsung Galaxy Tab S6 trước đó, cho cảm giác sang trọng và cao cấp, cầm vào tay rất vừa vặn và thoải mái.', N'samsung-galaxy-tab-s7-gold', N'Máy tính bảng Samsung Galaxy Tab S7', 0, 12, 20, 1, CAST(0.23 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (22, CAST(N'2001-03-15' AS Date), N'Samsung Galaxy Tab A7 (2020) là một chiếc máy tính bảng có thiết kế đẹp, cấu hình khá, nhiều tính năng tiện ích, một công cụ đắc lực hỗ trợ bạn trong công việc cũng như trong học tập hay giải trí.
Màn hình lớn cho trải nghiệm bất tận
Chiếc Galaxy Tab A7 mang khá nhiều nét kế thừa từ người đàn anh ở phân khúc cao cấp là Galaxy Tab S7 vừa ra mắt không lâu, sở hữu thiết kế nguyên khối cứng cáp liền mạch, được hoàn thiện từ nhôm đi kèm khung viền kim loại sang trọng, ấn tượng.', N'samsung-galaxy-tab-a7-2020', N'Máy tính bảng Samsung Galaxy Tab A7 (2020)', 0, 12, 20, 1, CAST(0.21 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (23, CAST(N'2001-03-15' AS Date), N'Sau thành công của Galaxy Tab S6, Samsung tiếp tục chinh phục người dùng với Galaxy Tab S6 Lite có phân khúc giá rẻ hơn. Thiết bị vẫn hỗ trợ bút S Pen thần thánh, thiết kế kim loại cao cấp và màn hình, âm thanh giải trí đỉnh cao.
Thiết kế thời thượng và cao cấp
Máy tính bảng Galaxy Tab S6 Lite sở hữu thiết ấn tượng với độ dày chỉ 7mm và trọng lượng siêu nhẹ 467g, giúp người dùng dễ dàng bỏ vào túi xách hay mang theo bất kì đâu.', N'samsung-galaxy-tab-s6-lite', N'Máy tính bảng Samsung Galaxy Tab S6 Lite', 0, 12, 20, 1, CAST(0.22 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (24, CAST(N'2001-03-15' AS Date), N'Galaxy Tab A7 Lite là phiên bản rút gọn của dòng máy tính bảng "ăn khách" Galaxy Tab A7 thuộc thương hiệu Samsung, đáp ứng nhu cầu giải trí của khách hàng thuộc phân khúc bình dân với màn hình lớn nhưng vẫn gọn nhẹ hợp túi tiền.
Thiết kế siêu mỏng nhẹ
Galaxy Tab A7 Lite sở hữu kiểu thiết kế đặc trưng của dòng Galaxy Tab A7. Thiết bị sử dụng chất liệu nhôm với thiết kế nguyên khối giúp cho thiết bị trở nên cao cấp hơn dù chỉ thuộc phân khúc tầm trung giá rẻ.', N'samsung-galaxy-tab-a7-lite-gray', N'Máy tính bảng Samsung Galaxy Tab A7 Lite', 0, 12, 20, 1, CAST(0.24 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (25, CAST(N'2001-03-15' AS Date), N'Samsung Galaxy Tab A8 8 inch T295 (2019) là một chiếc máy tính bảng gọn nhẹ với màn hình vừa đủ có thể giúp bạn giải trí hay hỗ trợ trẻ nhỏ trong việc học tập.
Màn hình lớn thoải mái sử dụng
Ưu điểm của những chiếc máy tính bảng khi so với smartphone là kích thước màn hình lớn hơn đem lại không gian lớn hơn để sử dụng.', N'samsung-galaxy-tab-a8-t295-2019-silver', N'Máy tính bảng Samsung Galaxy Tab A8 8" T295 (2019)', 0, 12, 20, 1, CAST(0.14 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (26, CAST(N'2001-03-15' AS Date), N'Apple đã trình làng máy tính bảng iPad Air 4 Wifi 64 GB (2020). Đây là thiết bị đầu tiên của hãng được trang bị chip A14 Bionic - chip di động mạnh nhất của Apple (năm 2020). Và có màn lột xác nhờ thiết kế được thừa hưởng từ iPad Pro với viền màn hình mỏng bo cong quanh máy.
Chip mạnh hàng đầu cho trải nghiệm hoàn hảo
Apple trang bị cho iPad Air 4 chip A14 Bionic 6 nhân được sản xuất bởi TSMC với tiến trình 5 nm hiện đại nhất hiện nay.', N'ipad-air-4-wifi-64gb-2020-xanhduong', N'Máy tính bảng iPad Air 4 Wifi 64GB (2020)', 0, 12, 20, 1, CAST(0.15 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (27, CAST(N'2001-03-15' AS Date), N'iPad Pro 12.9 inch Wifi Cellular 128GB (2020) với thiết kế không mấy khác biệt so với người anh em tiền nhiệm nhưng được Apple nâng cấp hệ thống camera cùng con chip A12Z giúp iPad Pro 12.9 (2020) có một hiệu năng ấn tượng cho người dùng những trải nghiệm tuyệt vời.
Thiết kế tràn viền không khuyết điểm', N'ipad-pro-12-9-inch-wifi-cellular-128gb-2020', N'Máy tính bảng iPad Pro 12.9 inch Wifi Cellular 128GB (2020)', 0, 12, 20, 1, CAST(0.13 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (28, CAST(N'2001-03-15' AS Date), N'Sở hữu thiết kế tinh tế, màn hình xuất sắc và cấu hình mạnh mẽ, đáp ứng được hầu hết nhu cầu của một người sáng tạo chuyên nghiệp. Điều khó có một thế hệ máy tính bảng nào khác có thể làm được, đã xuất hiện trên iPad Pro 12.9 inch Wifi 128GB (2020). 
Màn hình tuyệt đẹp, nhiều công nghệ tích hợp', N'ipad-pro-12-9-inch-wifi-128gb-2020-bac', N'Máy tính bảng iPad Pro 12.9 inch Wifi 128GB (2020)', 0, 12, 20, 1, CAST(0.14 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (29, CAST(N'2001-03-15' AS Date), N'Chấn động giới công nghệ toàn cầu, khi một tablet lần đầu được tích hợp một trong những chipset hàng đầu 2020, iPad Air 4 Wifi Cellular 256GB 2020 sở hữu con chip A14 Bionic với hiệu năng vô cùng mạnh mẽ, kết nối 4G tiện dụng cùng bộ nhớ cực khủng lên đến 256 GB.
Màu sắc cá tính, nhẹ như Air', N'ipad-4-cellular-hong-new', N'Máy tính bảng iPad Air 4 Wifi Cellular 256GB (2020)', 0, 12, 20, 1, CAST(0.18 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (30, CAST(N'2001-03-15' AS Date), N'iPad Air 4 khi được cho ra mắt đã gây ra một cơn sốt cho giới công nghệ toàn cầu, khi sử dụng chipset A14 Bionic với hiệu năng cực khủng, bên cạnh một thiết kế cao cấp và những công nghệ hàng đầu.
Thiết kế hoàn mỹ, công nghệ hiển thị đỉnh cao', N'ipad-air-4-wifi-64gb-2020-xanhla', N'Máy tính bảng iPad Air 4 Wifi 256GB (2020)', 0, 12, 20, 1, CAST(0.16 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (31, CAST(N'2001-03-15' AS Date), N'Trong sự kiện Time Flies, Apple đã giới thiệu đến người dùng chiếc iPad Air 4 Wifi Cellular 64GB (2020) với thiết kế tương tự iPad Pro, ngoại hình của Air 4 đã được làm mới so với thế hệ iPad Air 3, cấu hình được nâng cấp mạnh mẽ cùng với nhiều cải tiến đáng giá. 
Màn hình Liquid Retina hiển thị màu sắc cực chuẩn', N'ipad-4-cellular-den-new', N'Máy tính bảng iPad Air 4 Wifi Cellular 64GB (2020)', 0, 12, 20, 1, CAST(0.17 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (32, CAST(N'2001-03-15' AS Date), N'Sau iPad 7 thì Apple đã tung ra thế hệ máy tính bảng tiếp theo với iPad Wifi 8 Cellular 128 GB (2020). Mặc dù không có quá nhiều nâng cấp nổi bật, nhưng iPad 8 vẫn ghi điểm với người dùng nhờ vào hiệu năng mạnh mẽ đến từ vi xử lý A12 Bionic, iPadOS mượt mà tối ưu cho giải trí và công việc.
Thiết kế cũ nhưng không lạc hậu', N'ipad-gen-8-cellular-den-new', N'Máy tính bảng iPad 8 Wifi Cellular 128GB (2020)', 0, 12, 20, 1, CAST(0.12 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (33, CAST(N'2001-03-15' AS Date), N'iPad mini 7.9 inch Wifi Cellular 64GB (2019) đánh dấu sự trở lại mạnh mẽ của Apple trong phân khúc máy tính bảng nhỏ gọn, có thể dễ dàng mang theo bên mình.
Hiệu năng mạnh mẽ hàng đầu', N'ipad-mini-79-inch-wifi-cellular-64gb-2019-silver', N'Máy tính bảng iPad mini 7.9 inch Wifi Cellular 64GB (2019)', 0, 12, 20, 1, CAST(0.11 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (34, CAST(N'2001-03-15' AS Date), N'Sau khi ra mắt, iPad gen 8 2020 dần điền tên mình vào danh sách những mẫu "tablet quốc dân" với hiệu năng mạnh mẽ, giao diện thân thiện với người dùng, những tiện ích phục vụ tối đa cho công việc và học tập, bên cạnh một mức giá vô cùng phải chăng.
Mỏng nhẹ và thân thiện môi trường', N'ipad-gen-8-cellular-vang-new', N'Máy tính bảng iPad 8 Wifi Cellular 32GB (2020)', 0, 12, 20, 1, CAST(0.06 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (35, CAST(N'2001-03-15' AS Date), N'Nhiều người đồn đoán rằng Apple đã khai tử dòng iPad Mini của mình khi đã 4 năm kể từ thế hệ mới nhất không có thêm bất cứ nâng cấp nào. Tuy nhiên iPad Mini 7.9 inch Wifi 2019 (iPad Mini 5) ra mắt và đánh dấu sự trở lại của một chiếc máy tính bảng nhỏ gọn như ngày nào.
Tất cả nâng cấp đều ở bên trong', N'ipad-mini-79-inch-wifi-2019-gold', N'Máy tính bảng iPad mini 7.9 inch Wifi 64GB (2019)', 0, 12, 20, 1, CAST(0.02 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (36, CAST(N'2001-03-15' AS Date), N'iPad 8 Wifi 32 GB (2020) có giá trị tuyệt vời cho một iPad khi mang lại hiệu suất tốt, các nâng cấp iPadOS hữu ích cùng với một mức giá phải chăng rất đáng để sở hữu.
Chip A12 Bionic cho trải nghiệm mạnh mẽ', N'ipad-gen-8-wifi-den-new', N'Máy tính bảng iPad 8 Wifi 32GB (2020)', 0, 12, 20, 1, CAST(0.19 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (37, CAST(N'2001-03-15' AS Date), N'Đồng hồ thông minh Samsung Galaxy Watch Active 2 nổi bật với màn hình rộng 1.2 Inch với độ phân giải 360 x 360 Pixels và mặt kính cường lực giúp người đeo an tâm khi mang ra ngoài. Giao diện mặt đồng hồ có thể thay đổi tuỳ ý theo phòng cách người dùng. Dây đeo Silicone hạn chế bị trầy xước và dễ lau khô khi tiếp xúc với nước hay mồ hôi.', N'samsung-galaxy-watch-active-2-44-mm-sillicon-01-600x600', N'Samsung Galaxy Watch Active 2 40mm viền nhôm dây silicone đen', 0, 18, 12, 1, CAST(0.19 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (38, CAST(N'2001-03-15' AS Date), N'Samsung Galaxy Watch 3 LTE 41mm mang trong mình thiết kế cổ điển pha lẫn chút hiện đại nhưng không kém phần cao cấp, lịch lãm. Sở hữu màn hình hiển thị 1.2 inch, rực rỡ và sắc nét với công nghệ màn hình Super AMOLED cao cấp mang lại trải nghiệm tốt nhất. Dây đồng hồ bằng chất liệu da cao cấp, vừa sang trọng vừa thoải mái khi đeo trên tay. Khung viền xoay bezel bằng thép không gỉ chắc chắn nhưng vẫn giữ được độ mỏng tối ưu, gọn gàng cho mặt đồng hồ.', N'samsung-galaxy-watch-3-41mm-bac-thum-600x600', N'Samsung Galaxy Watch 3 LTE 41mm viền thép dây da', 0, 18, 12, 1, CAST(0.22 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (39, CAST(N'2001-03-15' AS Date), N'Đồng hồ thông minh Samsung Galaxy Watch 3 41 mm sở hữu 2 nút bấm và vòng bezel xoay điều khiển vật lý, thay cho mặt xoay cảm ứng ở phiên bản Watch Active 2. Màn hình Super Amoled 1.2 inch cùng độ phân giải 360 x 360 pixels giúp hình ảnh hiển thị được chân thật, rõ nét. Thân đồng hồ được làm bằng thép cứng cáp, khác với Watch Active 2 được làm bằng nhôm. Dây đeo bằng da tạo cảm giác chắc chắn và dễ chịu cho người dùng khi đeo.', N'samsung-galaxy-watch-3-41mm-vang-dong-thumb-1-600x600', N'Samsung Galaxy Watch 3 41mm viền thép hồng dây da', 0, 18, 12, 1, CAST(0.27 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (40, CAST(N'2001-03-15' AS Date), N'Samsung Galaxy Watch 3 41mm viền thép bạc dây da sở hữu 2 nút bấm và vòng bezel xoay điều khiển vật lý độc đáo. Màn hình 1.2 inch cùng độ phân giải 360 x 360 pixels giúp hình ảnh hiển thị được chân thật, rõ nét. Viền đồng hồ được làm bằng thép cứng cáp cùng dây đeo bằng da tạo cảm giác chắc chắn và dễ chịu cho người dùng khi đeo.', N'samsung-galaxy-watch-3-lte-41mm-thum-600x600', N'Samsung Galaxy Watch 3 41mm viền thép bạc dây da', 0, 18, 12, 1, CAST(0.23 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (41, CAST(N'2001-03-15' AS Date), N'Samsung Galaxy Watch 3 LTE 41mm mang trong mình thiết kế cổ điển pha lẫn chút hiện đại nhưng không kém phần cao cấp, lịch lãm. Sở hữu màn hình hiển thị 1.2 inch, rực rỡ và sắc nét với công nghệ màn hình Super AMOLED cao cấp mang lại trải nghiệm tốt nhất. Dây đồng hồ bằng chất liệu da cao cấp, vừa sang trọng vừa thoải mái khi đeo trên tay. Khung viền xoay bezel bằng thép không gỉ chắc chắn nhưng vẫn giữ được độ mỏng tối ưu, gọn gàng cho mặt đồng hồ.', N'samsung-galaxy-watch-3-41mm-bac-thum-600x600', N'Samsung Galaxy Watch 3 LTE 41mm viền thép dây da', 0, 18, 12, 1, CAST(0.21 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (42, CAST(N'2001-03-15' AS Date), N'Đồng hồ thông minh Samsung Galaxy Watch Active 2 44mm là phiên bản có sự cải tiến về công nghệ để mang đến những trải nghiệm tốt nhất cho người dùng với nhiều tính năng chăm sóc sức khỏe, nhận cuộc gọi trực tiếp cũng như nhiều tính năng tiện ích khác.
', N'samsung-galaxy-watch-active-2-44-mm-day-da-01-600x600', N'Samsung Galaxy Watch Active 2 44mm viền thép dây da', 0, 18, 12, 1, CAST(0.24 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (43, CAST(N'2001-03-15' AS Date), N'Samsung Galaxy Watch 3 LTE 41mm mang trong mình thiết kế cổ điển pha lẫn chút hiện đại nhưng không kém phần cao cấp, lịch lãm. Sở hữu màn hình hiển thị 1.2 inch, rực rỡ và sắc nét với công nghệ màn hình Super AMOLED cao cấp mang lại trải nghiệm tốt nhất. Dây đồng hồ bằng chất liệu da cao cấp, vừa sang trọng vừa thoải mái khi đeo trên tay. Khung viền xoay bezel bằng thép không gỉ chắc chắn nhưng vẫn giữ được độ mỏng tối ưu, gọn gàng cho mặt đồng hồ.', N'samsung-galaxy-watch-3-41mm-bac-thum-600x600', N'Samsung Galaxy Watch 3 LTE 41mm viền thép dây da', 0, 18, 12, 1, CAST(0.11 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (44, CAST(N'2001-03-15' AS Date), N'Thiết kế sang trọng, chất liệu Titanium cao cấp
Đồng hồ Samsung Galaxy Watch 3 45mm titanium được trang bị dây đeo thép không gỉ sang trọng, kết hợp cùng lớp màu Mystic Black độc quyền với nét đẹp huyền bí, tinh tế giúp cho mẫu Samsung Galaxy Watch 3 này trở nên cao cấp và đặc biệt hơn hẳn những phiên bản khác.', N'samsung-galaxy-watch-3-45mm-titanium-thum-600x600', N'Samsung Galaxy Watch 3 45mm titanium', 0, 18, 12, 1, CAST(0.12 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (45, CAST(N'2001-03-15' AS Date), N'Samsung Galaxy Watch 3 LTE 41mm mang trong mình thiết kế cổ điển pha lẫn chút hiện đại nhưng không kém phần cao cấp, lịch lãm. Sở hữu màn hình hiển thị 1.2 inch, rực rỡ và sắc nét với công nghệ màn hình Super AMOLED cao cấp mang lại trải nghiệm tốt nhất. Dây đồng hồ bằng chất liệu da cao cấp, vừa sang trọng vừa thoải mái khi đeo trên tay. Khung viền xoay bezel bằng thép không gỉ chắc chắn nhưng vẫn giữ được độ mỏng tối ưu, gọn gàng cho mặt đồng hồ.', N'samsung-galaxy-watch-3-41mm-bac-thum-600x600', N'Samsung Galaxy Watch 3 LTE 41mm viền thép dây da', 0, 18, 12, 1, CAST(0.13 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (46, CAST(N'2001-03-15' AS Date), N'Thiết kế sang trọng nhưng không kém phần thoải mái
Samsung Galaxy Watch 3 LTE 45mm dây da có thiết kế cổ điển, lịch lãm và hiện đại. Với tấm nền Super AMOLED 1.4 inch và độ phân giải 360x360 pixels, đồng hồ có khả năng hiển thị xuất sắc với màu sắc rực rỡ, thông tin hiển thị đầy đủ, rõ ràng. Khung viền xoay bezel được thay thế cho mặt xoay cảm ứng ở bản Watch Active 2', N'samsung-galaxy-watch-3-lte-45mm-thum-600x600', N'Samsung Galaxy Watch 3 LTE 45mm viền thép dây da', 0, 18, 12, 1, CAST(0.14 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (47, CAST(N'2001-03-15' AS Date), N'Thiết kế tinh tế
Đồng hồ thông minh Samsung Galaxy Watch Active 2 vẫn giữ nguyên thiết kế mặt tròn sang trọng, dây da mền mại, đường kính mặt 40 mm vừa vặn với cổ tay.

Trở nên cá nhân hơn với mặt đồng hồ tùy biến linh hoạt theo sở thích cùng thiết kế dây tháo rời linh hoạt cho bạn tự do thay đổi màu dây theo ý muốn.', N'samsung-galaxy-watch-active-2-40-mm-day-da-01-600x600', N'Samsung Galaxy Watch Active 2 40mm viền thép dây da', 0, 18, 12, 1, CAST(0.15 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (48, CAST(N'2001-03-15' AS Date), N'Thiết kế sang trọng đẳng cấp
Samsung Galaxy Watch 3 45mm viền thép bạc dây da với tấm nền Super AMOLED 1.4 inch và độ phân giải 360x360 pixels, đồng hồ có khả năng hiển thị xuất sắc với màu sắc rực rỡ, thông tin hiển thị đầy đủ, rõ ràng. Khung viền của đồng hồ được làm bằng thép không gỉ chắc chắn và chống ăn mòn.', N'samsung-galaxy-watch-3-45mm-bac-thumb-600x600', N'Samsung Galaxy Watch 3 45mm viền thép bạc dây da', 0, 18, 12, 1, CAST(0.16 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (49, CAST(N'2001-03-15' AS Date), N'Thiết kế cổ điển, vòng bezel xoay vật lý độc đáo
Đồng hồ thông minh Galaxy Watch 3 45 mm sở hữu phong cách thiết kế thanh lịch, cổ điển với viền mặt bằng thép và chất liệu dây da. Dây da được chế tác một cách tinh xảo, mang lại vẻ đẹp sang trọng cho thiết bị.', N'samsung-galaxy-watch-3-45mm-thumb-1-600x600', N'Samsung Galaxy Watch 3 45mm viền thép đen dây da', 0, 18, 12, 1, CAST(0.17 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (50, CAST(N'2001-03-15' AS Date), N'Đồng hồ thông minh Samsung Galaxy Watch Active 2 cải tiến hơn với màn hình chống chói, hiển thị thông tin sắc nét. Các tiện ích khác cũng được nâng cấp nhằm mang lại sự tiện lợi nhất cho người dùng.
Sang trọng, thời trang
Galaxy Watch Active 2 mang thiết kế gọn gàng, mặt kính tròn 44 mm viền cong sang trọng tôn dáng tay. Dây đeo chất liệu Sillicone mềm mại có thể tháo rời tiện lợi để bạn thay màu dây tùy ý. ', N'samsung-galaxy-watch-active-2-40-mm-den-01-600x600', N'Samsung Galaxy Watch Active 2 44mm viền nhôm dây sillicone', 0, 18, 12, 1, CAST(0.12 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (51, CAST(N'2001-03-15' AS Date), N'Thiết kế dành cho bạn
Samsung Galaxy Watch Active 2 mặt tròn truyền thống, đường kính mặt 30 mm phù hợp với người có cổ tay nhỏ, giao diện dễ thay đổi tùy theo sở thích của bạn.

Tùy ý thay đổi màu dây bạn thích với thiết kế tháo rời tiện lợi. Chất liệu sillicone mềm mại, hạn chế bị trầy xước và dễ lau khô khi tiếp xúc với nước hay mồ hôi.', N'samsung-galaxy-watch-active-2-40-mm-thumb-600x600', N'Samsung Galaxy Watch Active 2 40mm viền nhôm dây silicone hồng', 0, 18, 12, 1, CAST(0.16 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (52, CAST(N'2001-03-15' AS Date), N'Kiểu dáng hiện đại và nhỏ gọn
- Phiên bản Samsung Galaxy Fit 2 chỉ nặng khoảng 30g, thiết kế nhỏ gọn mang đến sự thoải mái nhất cho người dùng khi đeo.

- Mặt đồng hồ 1.5 inch, trang bị kính cường lực bền bỉ, dây đeo silicone co giãn, thông thoáng và ôm tay tốt.', N'samsung-galaxy-fit2-den-thumb-600x600', N'Vòng tay thông minh Samsung Galaxy Fit2 đen', 0, 18, 12, 1, CAST(0.15 AS Decimal(3, 2)), 0, NULL)
INSERT [dbo].[product] ([id], [create_date], [detail], [image], [name], [newprice], [orders], [price], [quantity], [sale], [status], [group_id]) VALUES (53, CAST(N'2001-03-15' AS Date), N'Thiết kế thanh mảnh và gọn nhẹ, kiểu dáng thể thao
Mang nét hiện đại, trẻ trung, Samsung Galaxy Fit2 đỏ được trang bị màn hình có kích thước 1.1 inch, sử dụng tấm nền AMOLED cùng độ phân giải 126 x 294 pixels cho khả năng hiển thị thông báo, hình ảnh tốt. Dây đeo silicone bền bỉ, nhẹ nhàng, không thấm nước, thiết kế dạng rãnh giúp ngăn sự tích tụ mồ hôi.', N'samsung-galaxy-fit2-do-thumb1-600x600', N'Vòng tay thông minh Samsung Galaxy Fit2 đỏ', 0, 18, 12, 1, CAST(0.13 AS Decimal(3, 2)), 0, NULL)
GO
INSERT [dbo].[users] ([username], [address], [email], [fullname], [password], [role], [status]) VALUES (N'admin', N'05-duong so 8, quan binh tan, thanh pho ho chi minh', N'diemphuoc5555@gmail.com', N'Quach Diem Phuoc', N'123', 1, 1)
INSERT [dbo].[users] ([username], [address], [email], [fullname], [password], [role], [status]) VALUES (N'user2', N'05-duong so 8, quan binh tan, thanh pho ho chi minh', N'diemphuoc5555@gmail.com', N'Quach Diem Phuoc', N'123', 0, 1)
GO
ALTER TABLE [dbo].[group_product]  WITH CHECK ADD  CONSTRAINT [FKekx7mrbfd33x87elxx5ul7q6e] FOREIGN KEY([category_id])
REFERENCES [dbo].[group_product] ([id])
GO
ALTER TABLE [dbo].[group_product] CHECK CONSTRAINT [FKekx7mrbfd33x87elxx5ul7q6e]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FKleuuxcwyvdebj807i2a4h0j5i] FOREIGN KEY([account_id])
REFERENCES [dbo].[users] ([username])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FKleuuxcwyvdebj807i2a4h0j5i]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FKlb8mofup9mi791hraxt9wlj5u] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FKlb8mofup9mi791hraxt9wlj5u]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FKlsvx45m4io6a6fdwpa14pvn92] FOREIGN KEY([productid])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FKlsvx45m4io6a6fdwpa14pvn92]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FKq00w6mttf99jqkj73j3tg31u5] FOREIGN KEY([group_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKq00w6mttf99jqkj73j3tg31u5]
GO
ALTER TABLE [dbo].[shop]  WITH CHECK ADD  CONSTRAINT [FK2ddabr6auqpr3ffi2af8mswoq] FOREIGN KEY([province_id])
REFERENCES [dbo].[province] ([id])
GO
ALTER TABLE [dbo].[shop] CHECK CONSTRAINT [FK2ddabr6auqpr3ffi2af8mswoq]
GO
