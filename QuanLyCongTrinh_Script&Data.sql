USE [QuanLyCongTrinh]
GO
/****** Object:  Table [dbo].[PHANCONG]    Script Date: 05/23/2020 15:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANCONG](
	[manv] [nchar](3) NOT NULL,
	[mact] [nchar](4) NOT NULL,
	[sogiotuan] [int] NULL,
 CONSTRAINT [PK_PHANCONG] PRIMARY KEY CLUSTERED 
(
	[manv] ASC,
	[mact] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N01', N'CT01', 18)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N01', N'CT02', 30)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N02', N'CT01', 12)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N02', N'CT02', 18)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N02', N'CT03', 22)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N02', N'CT04', 32)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N02', N'CT05', 16)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N02', N'CT06', 20)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N03', N'CT04', 28)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N03', N'CT06', 8)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N04', N'CT05', 16)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N04', N'CT06', 24)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N05', N'CT03', 20)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N06', N'CT04', 26)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N06', N'CT05', 12)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N07', N'CT04', 12)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N07', N'CT06', 32)
INSERT [dbo].[PHANCONG] ([manv], [mact], [sogiotuan]) VALUES (N'N08', N'CT05', 18)
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 05/23/2020 15:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[manv] [nchar](3) NOT NULL,
	[honv] [nvarchar](20) NULL,
	[tennv] [nvarchar](10) NULL,
	[phai] [nvarchar](3) NULL,
	[ngaysinh] [date] NULL,
	[mucluong] [real] NULL,
	[macn] [nchar](3) NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NHANVIEN] ([manv], [honv], [tennv], [phai], [ngaysinh], [mucluong], [macn]) VALUES (N'N01', N'Trần Ngọc', N'An', N'Nam', CAST(0x51F30A00 AS Date), 4500000, N'C03')
INSERT [dbo].[NHANVIEN] ([manv], [honv], [tennv], [phai], [ngaysinh], [mucluong], [macn]) VALUES (N'N02', N'Lưu An', N'Tư', N'Nam', CAST(0xD6080B00 AS Date), 9000000, N'C03')
INSERT [dbo].[NHANVIEN] ([manv], [honv], [tennv], [phai], [ngaysinh], [mucluong], [macn]) VALUES (N'N03', N'Lý Thanh', N'Ngọc', N'Nữ', CAST(0xF4130B00 AS Date), 4300000, N'C02')
INSERT [dbo].[NHANVIEN] ([manv], [honv], [tennv], [phai], [ngaysinh], [mucluong], [macn]) VALUES (N'N04', N'Lê Kim', N'Oanh', N'Nữ', CAST(0x08010B00 AS Date), 5000000, N'C02')
INSERT [dbo].[NHANVIEN] ([manv], [honv], [tennv], [phai], [ngaysinh], [mucluong], [macn]) VALUES (N'N05', N'Lý Văn', N'Năm', N'Nam', CAST(0x2A130B00 AS Date), 5000000, N'C03')
INSERT [dbo].[NHANVIEN] ([manv], [honv], [tennv], [phai], [ngaysinh], [mucluong], [macn]) VALUES (N'N06', N'Nguyễn Thị', N'Chín', N'Nữ', CAST(0x24F70A00 AS Date), 4300000, N'C03')
INSERT [dbo].[NHANVIEN] ([manv], [honv], [tennv], [phai], [ngaysinh], [mucluong], [macn]) VALUES (N'N07', N'Lê Văn', N'Bốn', N'Nam', CAST(0x00FA0A00 AS Date), 4500000, N'C02')
INSERT [dbo].[NHANVIEN] ([manv], [honv], [tennv], [phai], [ngaysinh], [mucluong], [macn]) VALUES (N'N08', N'Lê Hùng', N'Sư', N'Nam', CAST(0x7EF30A00 AS Date), 9000000, N'C01')
INSERT [dbo].[NHANVIEN] ([manv], [honv], [tennv], [phai], [ngaysinh], [mucluong], [macn]) VALUES (N'N09', N'Đinh Thi ', N'Tâm', N'Nữ', CAST(0xE5080B00 AS Date), 6500000, N'C01')
INSERT [dbo].[NHANVIEN] ([manv], [honv], [tennv], [phai], [ngaysinh], [mucluong], [macn]) VALUES (N'N10', N'Lý', N'Thông', N'Nam', CAST(0x04030B00 AS Date), 4500000, N'C01')
/****** Object:  Table [dbo].[CHINHANH]    Script Date: 05/23/2020 15:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHINHANH](
	[macn] [nchar](3) NOT NULL,
	[tencn] [nvarchar](30) NULL,
	[manvptr] [nchar](3) NULL,
	[ngaynhamchuc] [date] NULL,
 CONSTRAINT [PK_CHINHANH] PRIMARY KEY CLUSTERED 
(
	[macn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHINHANH] ([macn], [tencn], [manvptr], [ngaynhamchuc]) VALUES (N'C01', N'Chi nhánh 1', N'N08', CAST(0x4C320B00 AS Date))
INSERT [dbo].[CHINHANH] ([macn], [tencn], [manvptr], [ngaynhamchuc]) VALUES (N'C02', N'Chi nhánh 2', NULL, NULL)
INSERT [dbo].[CHINHANH] ([macn], [tencn], [manvptr], [ngaynhamchuc]) VALUES (N'C03', N'Chi nhánh 3', N'N02', CAST(0x19310B00 AS Date))
/****** Object:  Table [dbo].[VPHONGCN]    Script Date: 05/23/2020 15:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VPHONGCN](
	[macn] [nchar](3) NOT NULL,
	[matp] [nchar](2) NOT NULL,
 CONSTRAINT [PK_VPHONGCN] PRIMARY KEY CLUSTERED 
(
	[macn] ASC,
	[matp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[VPHONGCN] ([macn], [matp]) VALUES (N'C01', N'01')
INSERT [dbo].[VPHONGCN] ([macn], [matp]) VALUES (N'C02', N'02')
INSERT [dbo].[VPHONGCN] ([macn], [matp]) VALUES (N'C03', N'01')
INSERT [dbo].[VPHONGCN] ([macn], [matp]) VALUES (N'C03', N'03')
INSERT [dbo].[VPHONGCN] ([macn], [matp]) VALUES (N'C03', N'04')
/****** Object:  Table [dbo].[CONGTRINH]    Script Date: 05/23/2020 15:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGTRINH](
	[mact] [nchar](4) NOT NULL,
	[tenct] [nvarchar](50) NULL,
	[ngaybd] [date] NULL,
	[ngaykt] [date] NULL,
	[matp] [nchar](2) NULL,
	[macn] [nchar](3) NULL,
 CONSTRAINT [PK_CONGTRINH] PRIMARY KEY CLUSTERED 
(
	[mact] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CONGTRINH] ([mact], [tenct], [ngaybd], [ngaykt], [matp], [macn]) VALUES (N'CT01', N'Công trình số 1', CAST(0x8D320B00 AS Date), CAST(0xD2320B00 AS Date), N'03', N'C03')
INSERT [dbo].[CONGTRINH] ([mact], [tenct], [ngaybd], [ngaykt], [matp], [macn]) VALUES (N'CT02', N'Công trình số 2', CAST(0x7A320B00 AS Date), CAST(0xD2320B00 AS Date), N'04', N'C03')
INSERT [dbo].[CONGTRINH] ([mact], [tenct], [ngaybd], [ngaykt], [matp], [macn]) VALUES (N'CT03', N'Công trình số 3', CAST(0x85310B00 AS Date), CAST(0x12330B00 AS Date), N'01', N'C03')
INSERT [dbo].[CONGTRINH] ([mact], [tenct], [ngaybd], [ngaykt], [matp], [macn]) VALUES (N'CT04', N'Công trình số 4', CAST(0xA5310B00 AS Date), CAST(0xB2330B00 AS Date), N'02', N'C02')
INSERT [dbo].[CONGTRINH] ([mact], [tenct], [ngaybd], [ngaykt], [matp], [macn]) VALUES (N'CT05', N'Công trình số 5', CAST(0xF8320B00 AS Date), CAST(0xB2330B00 AS Date), N'01', N'C01')
INSERT [dbo].[CONGTRINH] ([mact], [tenct], [ngaybd], [ngaykt], [matp], [macn]) VALUES (N'CT06', N'Công trình số 6', CAST(0xF8320B00 AS Date), CAST(0xA3330B00 AS Date), N'02', N'C02')
/****** Object:  Table [dbo].[THANHPHO]    Script Date: 05/23/2020 15:04:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHPHO](
	[matp] [nchar](2) NOT NULL,
	[tentp] [nvarchar](50) NULL,
 CONSTRAINT [PK_THANHPHO] PRIMARY KEY CLUSTERED 
(
	[matp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[THANHPHO] ([matp], [tentp]) VALUES (N'01', N'Hà Nội')
INSERT [dbo].[THANHPHO] ([matp], [tentp]) VALUES (N'02', N'Tp HCM')
INSERT [dbo].[THANHPHO] ([matp], [tentp]) VALUES (N'03', N'Đà Nẵng')
INSERT [dbo].[THANHPHO] ([matp], [tentp]) VALUES (N'04', N'Cần Thơ')
/****** Object:  ForeignKey [FK_CHINHANH_NHANVIEN]    Script Date: 05/23/2020 15:04:54 ******/
ALTER TABLE [dbo].[CHINHANH]  WITH CHECK ADD  CONSTRAINT [FK_CHINHANH_NHANVIEN] FOREIGN KEY([manvptr])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[CHINHANH] CHECK CONSTRAINT [FK_CHINHANH_NHANVIEN]
GO
/****** Object:  ForeignKey [FK_CONGTRINH_CHINHANH]    Script Date: 05/23/2020 15:04:54 ******/
ALTER TABLE [dbo].[CONGTRINH]  WITH CHECK ADD  CONSTRAINT [FK_CONGTRINH_CHINHANH] FOREIGN KEY([macn])
REFERENCES [dbo].[CHINHANH] ([macn])
GO
ALTER TABLE [dbo].[CONGTRINH] CHECK CONSTRAINT [FK_CONGTRINH_CHINHANH]
GO
/****** Object:  ForeignKey [FK_CONGTRINH_THANHPHO]    Script Date: 05/23/2020 15:04:54 ******/
ALTER TABLE [dbo].[CONGTRINH]  WITH CHECK ADD  CONSTRAINT [FK_CONGTRINH_THANHPHO] FOREIGN KEY([matp])
REFERENCES [dbo].[THANHPHO] ([matp])
GO
ALTER TABLE [dbo].[CONGTRINH] CHECK CONSTRAINT [FK_CONGTRINH_THANHPHO]
GO
/****** Object:  ForeignKey [FK_NHANVIEN_CHINHANH]    Script Date: 05/23/2020 15:04:54 ******/
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_CHINHANH] FOREIGN KEY([macn])
REFERENCES [dbo].[CHINHANH] ([macn])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_CHINHANH]
GO
/****** Object:  ForeignKey [FK_PHANCONG_CONGTRINH]    Script Date: 05/23/2020 15:04:54 ******/
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_CONGTRINH] FOREIGN KEY([mact])
REFERENCES [dbo].[CONGTRINH] ([mact])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_CONGTRINH]
GO
/****** Object:  ForeignKey [FK_PHANCONG_NHANVIEN]    Script Date: 05/23/2020 15:04:54 ******/
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_NHANVIEN] FOREIGN KEY([manv])
REFERENCES [dbo].[NHANVIEN] ([manv])
GO
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_NHANVIEN]
GO
/****** Object:  ForeignKey [FK_VPHONGCN_CHINHANH]    Script Date: 05/23/2020 15:04:54 ******/
ALTER TABLE [dbo].[VPHONGCN]  WITH CHECK ADD  CONSTRAINT [FK_VPHONGCN_CHINHANH] FOREIGN KEY([macn])
REFERENCES [dbo].[CHINHANH] ([macn])
GO
ALTER TABLE [dbo].[VPHONGCN] CHECK CONSTRAINT [FK_VPHONGCN_CHINHANH]
GO
/****** Object:  ForeignKey [FK_VPHONGCN_THANHPHO]    Script Date: 05/23/2020 15:04:54 ******/
ALTER TABLE [dbo].[VPHONGCN]  WITH CHECK ADD  CONSTRAINT [FK_VPHONGCN_THANHPHO] FOREIGN KEY([matp])
REFERENCES [dbo].[THANHPHO] ([matp])
GO
ALTER TABLE [dbo].[VPHONGCN] CHECK CONSTRAINT [FK_VPHONGCN_THANHPHO]
GO
