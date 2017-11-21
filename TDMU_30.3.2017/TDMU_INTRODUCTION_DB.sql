USE [master]
GO
/****** Object:  Database [TDMU_INTRODUCTION]    Script Date: 17/04/2017 12:16:43 PM ******/
CREATE DATABASE [TDMU_INTRODUCTION]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TDMU_INTRODUCTION', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TDMU_INTRODUCTION.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TDMU_INTRODUCTION_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\TDMU_INTRODUCTION_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TDMU_INTRODUCTION].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET ARITHABORT OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET  MULTI_USER 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TDMU_INTRODUCTION]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 17/04/2017 12:16:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMIN](
	[AD_Id] [int] IDENTITY(1,1) NOT NULL,
	[AD_Name] [nvarchar](100) NOT NULL,
	[AD_Birth] [date] NULL,
	[AD_Username] [nvarchar](100) NOT NULL,
	[AD_Password] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[AD_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 17/04/2017 12:16:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[Department_Id] [int] IDENTITY(1,1) NOT NULL,
	[Department_Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
	[Department_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FOOTER]    Script Date: 17/04/2017 12:16:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOOTER](
	[Footer_Id] [int] IDENTITY(1,1) NOT NULL,
	[Footer_Name] [nvarchar](150) NULL,
	[Footer_Link] [nvarchar](100) NULL,
	[Footer_Images] [nvarchar](150) NULL,
	[Footer_Content] [nvarchar](max) NULL,
	[FooterType_ID] [int] NULL,
 CONSTRAINT [PK_FOOTER] PRIMARY KEY CLUSTERED 
(
	[Footer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FOOTER_TYPE]    Script Date: 17/04/2017 12:16:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FOOTER_TYPE](
	[FooterType_ID] [int] IDENTITY(1,1) NOT NULL,
	[Footer_Type] [nvarchar](100) NULL,
 CONSTRAINT [PK_FOOTER_TYPE] PRIMARY KEY CLUSTERED 
(
	[FooterType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MENU]    Script Date: 17/04/2017 12:16:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[Menu_Id] [int] IDENTITY(1,1) NOT NULL,
	[Menu_Name] [nvarchar](100) NULL,
	[Menu_color] [nvarchar](250) NULL,
	[Menu_Link] [nvarchar](255) NULL,
	[Menu_Active] [int] NULL,
	[Menu_Note] [nvarchar](150) NULL,
	[Menu_Paths] [nvarchar](255) NULL,
 CONSTRAINT [PK_MENU] PRIMARY KEY CLUSTERED 
(
	[Menu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MENU_CONTENT]    Script Date: 17/04/2017 12:16:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU_CONTENT](
	[MC_Id] [int] IDENTITY(1,1) NOT NULL,
	[MC_Title] [nvarchar](100) NULL,
	[MC_Images] [nvarchar](150) NULL,
	[MC_Position] [nvarchar](150) NULL,
	[MC_Description] [nvarchar](200) NULL,
	[MC_Sources] [nvarchar](200) NULL,
	[MC_Content] [nvarchar](max) NULL,
	[MC_Note] [nvarchar](100) NULL,
	[MC_Paths] [nvarchar](150) NULL,
	[Menu_Id] [int] NOT NULL,
	[Department_Id] [int] NOT NULL,
 CONSTRAINT [PK_MENU_CONTENT] PRIMARY KEY CLUSTERED 
(
	[MC_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUDY_ACTIVITY]    Script Date: 17/04/2017 12:16:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDY_ACTIVITY](
	[SA_Id] [int] IDENTITY(1,1) NOT NULL,
	[SA_Title] [nvarchar](100) NULL,
	[SA_Content] [nvarchar](max) NULL,
	[SA_Year] [nvarchar](100) NULL,
	[SA_Image] [nvarchar](100) NULL,
	[SA_Video] [nvarchar](100) NULL,
	[SA_Khoa] [nvarchar](100) NULL,
	[Menu_Id] [int] NULL,
	[SA_Type] [int] NULL,
 CONSTRAINT [PK_STUDY_ACTIVITY] PRIMARY KEY CLUSTERED 
(
	[SA_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUDY_ENVIRONMENT]    Script Date: 17/04/2017 12:16:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDY_ENVIRONMENT](
	[SE_Id] [int] IDENTITY(1,1) NOT NULL,
	[SE_Title] [nvarchar](100) NULL,
	[SE_Content] [nvarchar](max) NULL,
	[SE_Image] [nvarchar](100) NULL,
	[SE_Note] [nvarchar](100) NULL,
	[Menu_Id] [int] NULL,
	[SE_Type] [int] NOT NULL,
 CONSTRAINT [PK_STUDY_ENVIRONMENT] PRIMARY KEY CLUSTERED 
(
	[SE_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SUB_MENU_CONTENT]    Script Date: 17/04/2017 12:16:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUB_MENU_CONTENT](
	[SMC_Id] [int] IDENTITY(1,1) NOT NULL,
	[SMC_Images] [nvarchar](150) NULL,
	[SMC_Position] [nvarchar](150) NULL,
	[SMC_Description] [nvarchar](200) NULL,
	[SMC_Note] [nvarchar](100) NULL,
	[MC_Id] [int] NOT NULL,
 CONSTRAINT [PK_SUB_MENU_CONTENT] PRIMARY KEY CLUSTERED 
(
	[SMC_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VISIT_IMAGE]    Script Date: 17/04/2017 12:16:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VISIT_IMAGE](
	[Img_Id] [int] IDENTITY(1,1) NOT NULL,
	[Img_Src] [nvarchar](max) NOT NULL,
	[Img_Title] [nvarchar](100) NOT NULL,
	[Img_Link] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_VISIT_IMAGE] PRIMARY KEY CLUSTERED 
(
	[Img_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([AD_Id], [AD_Name], [AD_Birth], [AD_Username], [AD_Password]) VALUES (1, N'Con Trâu', NULL, N'truclinh', N'1234')
INSERT [dbo].[ADMIN] ([AD_Id], [AD_Name], [AD_Birth], [AD_Username], [AD_Password]) VALUES (2, N'Con An', NULL, N'an', N'1234')
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
SET IDENTITY_INSERT [dbo].[DEPARTMENT] ON 

INSERT [dbo].[DEPARTMENT] ([Department_Id], [Department_Name]) VALUES (1, N'Giới thiệu')
INSERT [dbo].[DEPARTMENT] ([Department_Id], [Department_Name]) VALUES (2, N'Hình ảnh')
INSERT [dbo].[DEPARTMENT] ([Department_Id], [Department_Name]) VALUES (3, N'Doanh nghiệp đối tác')
SET IDENTITY_INSERT [dbo].[DEPARTMENT] OFF
SET IDENTITY_INSERT [dbo].[FOOTER] ON 

INSERT [dbo].[FOOTER] ([Footer_Id], [Footer_Name], [Footer_Link], [Footer_Images], [Footer_Content], [FooterType_ID]) VALUES (18, N'Địa chỉ', NULL, NULL, N'Đại Học Thủ Dầu Một
Số 06, Trần Văn Ơn, Phú Hòa, Thủ Dầu Một, Bình Dương
(0650) 3.822.518 - (0650) 3.837.150', 1)
INSERT [dbo].[FOOTER] ([Footer_Id], [Footer_Name], [Footer_Link], [Footer_Images], [Footer_Content], [FooterType_ID]) VALUES (19, N'Chia sẻ qua Gmail', NULL, N'fa fa-envelope', NULL, 2)
INSERT [dbo].[FOOTER] ([Footer_Id], [Footer_Name], [Footer_Link], [Footer_Images], [Footer_Content], [FooterType_ID]) VALUES (20, N'Chia sẻ qua Facebook', NULL, N'fa fa-facebook', NULL, 2)
INSERT [dbo].[FOOTER] ([Footer_Id], [Footer_Name], [Footer_Link], [Footer_Images], [Footer_Content], [FooterType_ID]) VALUES (21, N'Chia sẻ qua Twitter', NULL, N'fa fa-twitter', NULL, 2)
INSERT [dbo].[FOOTER] ([Footer_Id], [Footer_Name], [Footer_Link], [Footer_Images], [Footer_Content], [FooterType_ID]) VALUES (22, N'Chia sẻ qua Instagram', NULL, N'fa fa-instagram', NULL, 2)
INSERT [dbo].[FOOTER] ([Footer_Id], [Footer_Name], [Footer_Link], [Footer_Images], [Footer_Content], [FooterType_ID]) VALUES (23, N'Đại học Thủ Dầu Một', N'http://tdmu.edu.vn/', NULL, NULL, 3)
INSERT [dbo].[FOOTER] ([Footer_Id], [Footer_Name], [Footer_Link], [Footer_Images], [Footer_Content], [FooterType_ID]) VALUES (24, N'Phòng Đào tạo', N'http://daa.tdmu.edu.vn/phongdaotao/', NULL, NULL, 3)
INSERT [dbo].[FOOTER] ([Footer_Id], [Footer_Name], [Footer_Link], [Footer_Images], [Footer_Content], [FooterType_ID]) VALUES (25, N'Phòng Công Tác Sinh Viên', N'http://congtacsinhvien.tdmu.edu.vn/', NULL, NULL, 3)
INSERT [dbo].[FOOTER] ([Footer_Id], [Footer_Name], [Footer_Link], [Footer_Images], [Footer_Content], [FooterType_ID]) VALUES (26, N'Trung tâm phát triển công tác xã hội', N'http://trungtamphattrienctxh.tdmu.edu.vn/', NULL, NULL, 3)
INSERT [dbo].[FOOTER] ([Footer_Id], [Footer_Name], [Footer_Link], [Footer_Images], [Footer_Content], [FooterType_ID]) VALUES (27, N'Trung tâm Công nghệ thông tin', N'http://itc.tdmu.edu.vn/', NULL, NULL, 3)
INSERT [dbo].[FOOTER] ([Footer_Id], [Footer_Name], [Footer_Link], [Footer_Images], [Footer_Content], [FooterType_ID]) VALUES (28, NULL, NULL, NULL, NULL, 3)
SET IDENTITY_INSERT [dbo].[FOOTER] OFF
SET IDENTITY_INSERT [dbo].[FOOTER_TYPE] ON 

INSERT [dbo].[FOOTER_TYPE] ([FooterType_ID], [Footer_Type]) VALUES (1, N'Địa chỉ')
INSERT [dbo].[FOOTER_TYPE] ([FooterType_ID], [Footer_Type]) VALUES (2, N'Chia sẻ')
INSERT [dbo].[FOOTER_TYPE] ([FooterType_ID], [Footer_Type]) VALUES (3, N'Liên kết Website')
SET IDENTITY_INSERT [dbo].[FOOTER_TYPE] OFF
SET IDENTITY_INSERT [dbo].[MENU] ON 

INSERT [dbo].[MENU] ([Menu_Id], [Menu_Name], [Menu_color], [Menu_Link], [Menu_Active], [Menu_Note], [Menu_Paths]) VALUES (1, N'Trang chủ', N'black', N'Index', 1, N'hghjgj', N'')
INSERT [dbo].[MENU] ([Menu_Id], [Menu_Name], [Menu_color], [Menu_Link], [Menu_Active], [Menu_Note], [Menu_Paths]) VALUES (2, N'Môi trường học tập', N'', N'MoiTruongHocTap', 1, N'hsgh', N'')
INSERT [dbo].[MENU] ([Menu_Id], [Menu_Name], [Menu_color], [Menu_Link], [Menu_Active], [Menu_Note], [Menu_Paths]) VALUES (3, N'Hoạt động nghiên cứu', NULL, N'HoatDongNghienCuu', NULL, NULL, NULL)
INSERT [dbo].[MENU] ([Menu_Id], [Menu_Name], [Menu_color], [Menu_Link], [Menu_Active], [Menu_Note], [Menu_Paths]) VALUES (6, N'Tham quan', N'black', N'ThamQuan', NULL, N'shshjgj', NULL)
SET IDENTITY_INSERT [dbo].[MENU] OFF
SET IDENTITY_INSERT [dbo].[MENU_CONTENT] ON 

INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (1, N'Nhân sự', N'fa fa-users', NULL, NULL, NULL, N'Đến năm 2016, đội ngũ cán bộ khoa học của trường có 01 giáo sư, 18 phó giáo sư tiến sĩ, 81 tiến sĩ, 490 thạc sĩ, 85 cán bộ - giảng viên đang làm nghiên cứu sinh trong và ngoài nước. Song song với việc xây dựng đội ngũ cán bộ khoa học cơ hữu, nhà trường còn tranh thủ sự hậu thuẫn của cán bộ khoa học có trình độ chuyên môn cao ở các trường thuộc Đại học Quốc gia Thành phố Hồ Chí Minh, Đại học Quốc gia Hà Nội, trường Đại học Sư phạm thành phố Hồ Chí Minh', NULL, NULL, 1, 1)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (2, N'Đào tạo', N'fa fa-book', NULL, NULL, NULL, N'Trường Đại học Thủ Dầu Một đang tập trung hoàn thiện lộ trình xây dựng chương trình đào tạo, đổi mới phương pháp giảng dạy theo sáng kiến CDIO. Tháng 8/2015, Trường chính thức được Bộ Giáo dục cho phép đào tạo Cao học, đánh dấu bước phát triển quan trọng của Nhà trường. Hiện nay, quy mô của Trường là 18.000 sinh viên đang học tập và nghiên cứu ở 9 ngành sau đại học, 26 ngành đại học thuộc các lĩnh vực kinh tế, kỹ thuật, khoa học tự nhiên, khoa học xã hội nhân văn, sư phạm. Trường đang xây dựng các ngành đào tạo chất lượng cao (đào tạo 100% chương trình bằng tiếng Anh) đáp ứng nhu cầu nguồn nhân lực chuẩn quốc tế, phục vụ nhu cầu hội nhập.', NULL, NULL, 1, 1)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (3, N'Nghiên cứu khoa học', N'fa fa-flask', NULL, NULL, NULL, N'Với chiến lược xây dựng Trường thành đại học định hướng nghiên cứu, Đại học Thủ Dầu Một đang đầu tư mạnh mẽ cho hoạt động nghiên cứu khoa học. Một trong những chương trình trọng điểm được triển khai từ năm 2015 là Đề án nghiên cứu về Đông Nam Bộ. Đề án hướng đến mục tiêu gắn kết hoạt động nghiên cứu khoa học, đào tạo với thực tiễn kinh tế, xã hội của khu vực Đông Nam Bộ; gắn kết chặt chẽ giữa nghiên cứu khoa học với ứng dụng triển khai, giữa đào tạo với sử dụng nguồn nhân lực theo yêu cầu công nghiệp hóa, hiện đại hóa.', NULL, NULL, 1, 1)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (4, N'Sân cờ', N'portfolio_01.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (5, N'Vườn học tập cổng 2', N'portfolio_02.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (6, N'Vườn học tập sau thư viện', N'portfolio_03.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (7, N'Cổng trường', N'portfolio_04.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (8, N'Dãy phòng máy', N'portfolio_05.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (9, N'Phòng thực hành hóa', N'portfolio_06.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (10, N'Hội trường 1', N'portfolio_07.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (11, N'Hội trường 2', N'portfolio_08.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (12, N'Sân bóng', N'portfolio_09.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (13, N'Phòng Lab', N'portfolio_10.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (15, N'VNPT', N'vnpt.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (16, N'VSIP', N'vsip.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (17, N'Sacombank', N'sacombank.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (18, N'Becamex', N'becamex.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3)
INSERT [dbo].[MENU_CONTENT] ([MC_Id], [MC_Title], [MC_Images], [MC_Position], [MC_Description], [MC_Sources], [MC_Content], [MC_Note], [MC_Paths], [Menu_Id], [Department_Id]) VALUES (19, N'd', N'd', N'd', N'd', N'd', N'd', N'd', N'd', 1, 2)
SET IDENTITY_INSERT [dbo].[MENU_CONTENT] OFF
SET IDENTITY_INSERT [dbo].[STUDY_ACTIVITY] ON 

INSERT [dbo].[STUDY_ACTIVITY] ([SA_Id], [SA_Title], [SA_Content], [SA_Year], [SA_Image], [SA_Video], [SA_Khoa], [Menu_Id], [SA_Type]) VALUES (1, N'HỆ THỐNG PHỤC VỤ TƯỚI TIÊU TỰ ĐỘNG VÀ ĐIỀU KHIỂN TỪ XA', N'<p>Nghi&ecirc;n cứu ứng dụng thiết bị cảm biến, bộ vi xử l&yacute; để lập tr&igrave;nh điều khiển thiết bị phục vụ tưới ti&ecirc;u tự động điều khiển từ xa qua tin nhắn SMS, hiển thị th&ocirc;ng tin trạng th&aacute;i v&agrave; điều khiển bằng điện thoại v&agrave;o một m&ocirc; h&igrave;nh trồng rau ăn l&aacute; tr&ecirc;n mặt phẳng thẳng đứng v&agrave; x&acirc;y dựng hệ thống trồng rau tiết kiệm v&agrave; bảo vệ m&ocirc;i trường tại nh&agrave;. Ngo&agrave;i ra, hướng đến ph&aacute;t triển hệ thống theo quy m&ocirc; c&ocirc;ng nghiệp.jjj</p>', N'2016', N'NCKH_2016.jpg', NULL, N'CNTT- Điện-Điện tử', NULL, NULL)
INSERT [dbo].[STUDY_ACTIVITY] ([SA_Id], [SA_Title], [SA_Content], [SA_Year], [SA_Image], [SA_Video], [SA_Khoa], [Menu_Id], [SA_Type]) VALUES (18, N'BÌNH NƯỚC THÔNG MINH', N'<p>T&iacute;nh to&aacute;n lượng nước cần cung cấp cho cơ thể từ số c&acirc;n nặng đ&atilde; nhập tr&ecirc;n ứng dụng điện thoại. Từ đ&oacute;, theo d&otilde;i lượng nước đ&atilde; uống trong ng&agrave;y bằng b&igrave;nh nước th&ocirc;ng minh th&ocirc;ng qua bluetooth kết nối với điện thoại. Ứng dụng tr&ecirc;n điện thoại sẽ cảnh b&aacute;o khi kh&ocirc;ng uống đủ nước, b&igrave;nh hết nước hoặc nhắc nhở người d&ugrave;ng thời gian uống nước.</p>', N'2016, 2017', N'bao1.png', N'SWB.mp4', N'CNTT- Điện - Điện tử', NULL, NULL)
INSERT [dbo].[STUDY_ACTIVITY] ([SA_Id], [SA_Title], [SA_Content], [SA_Year], [SA_Image], [SA_Video], [SA_Khoa], [Menu_Id], [SA_Type]) VALUES (19, N'GẤU BÔNG THÔNG MINH', N'<p><strong>&Yacute; tưởng</strong></p>
<p>- Trẻ em v&agrave; th&uacute; nhồi b&ocirc;ng l&agrave; những người bạn th&acirc;n thiết</p>
<p>- Phụ huynh kh&ocirc;ng c&oacute; thời gian nhiều trao đổi với con c&aacute;i</p>
<p>- Gi&uacute;p &iacute;ch cho việc giao tiếp với c&aacute;c trẻ em tự kỷ</p>
<p><strong>Chức năng</strong></p>
<p>- B&aacute;o thức</p>
<p>- Tr&ograve; chuyện giao tiếp với trẻ</p>
<p>- Kể chuyện, ru trẻ ngủ bằng b&agrave;i h&aacute;t</p>', N'2017', N'bao3.png', NULL, N'CNTT- Điện - Điện tử', NULL, NULL)
SET IDENTITY_INSERT [dbo].[STUDY_ACTIVITY] OFF
SET IDENTITY_INSERT [dbo].[STUDY_ENVIRONMENT] ON 

INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1, NULL, NULL, N'imgPhongHoc1.jpg', N'', NULL, 1)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (2, NULL, NULL, N'imgPhongHoc2.jpg', NULL, NULL, 1)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (3, NULL, NULL, N'imgPhongHoc3.jpg', NULL, NULL, 1)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (4, NULL, NULL, N'imgPhongHoc4.jpg', N'PhongHoc', NULL, 1)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1002, NULL, NULL, N'imgVuonHocTap.jpg', N'', NULL, 2)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1003, NULL, NULL, N'imgVuonHocTapCong2.jpg', NULL, NULL, 2)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1004, NULL, NULL, N'imgVuonHocTap1.jpg', N'VuonHocTap', NULL, 2)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1005, NULL, NULL, N'imgVuonHocTap2.jpg', NULL, NULL, 2)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1007, NULL, NULL, N'imgLab1.jpg', N'PhongLab', NULL, 3)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1008, NULL, NULL, N'imgLab2.jpg', NULL, NULL, 3)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1009, NULL, NULL, N'imgLab3.jpg', NULL, NULL, 3)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1010, NULL, NULL, N'imgLab4.jpg', NULL, NULL, 3)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1011, NULL, NULL, N'tdmu_1.jpg', N'PhongMay', NULL, 4)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1012, NULL, NULL, N'tdmu_2.jpg', NULL, NULL, 4)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1013, NULL, NULL, N'tdmu_3.jpg', NULL, NULL, 4)
INSERT [dbo].[STUDY_ENVIRONMENT] ([SE_Id], [SE_Title], [SE_Content], [SE_Image], [SE_Note], [Menu_Id], [SE_Type]) VALUES (1014, NULL, NULL, N'tdmu_4.jpg', NULL, NULL, 4)
SET IDENTITY_INSERT [dbo].[STUDY_ENVIRONMENT] OFF
SET IDENTITY_INSERT [dbo].[SUB_MENU_CONTENT] ON 

INSERT [dbo].[SUB_MENU_CONTENT] ([SMC_Id], [SMC_Images], [SMC_Position], [SMC_Description], [SMC_Note], [MC_Id]) VALUES (1, N'benphaisanco.jpg', N'', N'Bên phải sân cờ', NULL, 4)
INSERT [dbo].[SUB_MENU_CONTENT] ([SMC_Id], [SMC_Images], [SMC_Position], [SMC_Description], [SMC_Note], [MC_Id]) VALUES (2, N'bentraisanco.jpg', NULL, N'Bên trái sân cờ', NULL, 4)
INSERT [dbo].[SUB_MENU_CONTENT] ([SMC_Id], [SMC_Images], [SMC_Position], [SMC_Description], [SMC_Note], [MC_Id]) VALUES (3, N'phiatruocsanco.jpg', NULL, N'Phía trước sân cờ', NULL, 4)
INSERT [dbo].[SUB_MENU_CONTENT] ([SMC_Id], [SMC_Images], [SMC_Position], [SMC_Description], [SMC_Note], [MC_Id]) VALUES (4, N'dangsausanco.jpg', NULL, N'Đằng sau sân cờ', NULL, 4)
SET IDENTITY_INSERT [dbo].[SUB_MENU_CONTENT] OFF
SET IDENTITY_INSERT [dbo].[VISIT_IMAGE] ON 

INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link]) VALUES (1, N'imgCong1.jpg', N'Cổng 1', N'Cong1')
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link]) VALUES (2, N'imgSanCo.jpg', N'Sân cờ', N'SanCo')
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link]) VALUES (3, N'imgVuonHocTapCong2.jpg', N'Vườn học tập cổng 2', N'VuonHocTapCong2')
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link]) VALUES (5, N'imgVuonHocTap.jpg', N'Vườn học tập', N'VuonHocTap')
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link]) VALUES (6, N'imgHoiTruong1.jpg', N'Hội trường 1', N'HoiTruong1')
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link]) VALUES (7, N'imgHoiTruong2.jpg', N'Hội trường 2', N'HoiTruong2')
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link]) VALUES (8, N'imgThuVien.jpg', N'Thư viện', N'ThuVien')
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link]) VALUES (9, N'imgDayPhongMay.jpg', N'Dãy phòng máy', N'DayPhongMay')
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link]) VALUES (10, N'imgPhongLab.jpg', N'Phòng Lab', N'PhongLab')
INSERT [dbo].[VISIT_IMAGE] ([Img_Id], [Img_Src], [Img_Title], [Img_Link]) VALUES (11, N'imgBaiXe.jpg', N'Bãi xe', N'BaiXe')
SET IDENTITY_INSERT [dbo].[VISIT_IMAGE] OFF
ALTER TABLE [dbo].[FOOTER]  WITH CHECK ADD  CONSTRAINT [FK_FOOTER_FOOTER_TYPE] FOREIGN KEY([FooterType_ID])
REFERENCES [dbo].[FOOTER_TYPE] ([FooterType_ID])
GO
ALTER TABLE [dbo].[FOOTER] CHECK CONSTRAINT [FK_FOOTER_FOOTER_TYPE]
GO
ALTER TABLE [dbo].[MENU_CONTENT]  WITH CHECK ADD  CONSTRAINT [FK_MENU_CONTENT_DEPARTMENT] FOREIGN KEY([Department_Id])
REFERENCES [dbo].[DEPARTMENT] ([Department_Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MENU_CONTENT] CHECK CONSTRAINT [FK_MENU_CONTENT_DEPARTMENT]
GO
ALTER TABLE [dbo].[MENU_CONTENT]  WITH CHECK ADD  CONSTRAINT [FK_MENU_CONTENT_MENU] FOREIGN KEY([Menu_Id])
REFERENCES [dbo].[MENU] ([Menu_Id])
GO
ALTER TABLE [dbo].[MENU_CONTENT] CHECK CONSTRAINT [FK_MENU_CONTENT_MENU]
GO
ALTER TABLE [dbo].[STUDY_ACTIVITY]  WITH CHECK ADD  CONSTRAINT [FK_STUDY_ACTIVITY_MENU] FOREIGN KEY([Menu_Id])
REFERENCES [dbo].[MENU] ([Menu_Id])
GO
ALTER TABLE [dbo].[STUDY_ACTIVITY] CHECK CONSTRAINT [FK_STUDY_ACTIVITY_MENU]
GO
ALTER TABLE [dbo].[STUDY_ENVIRONMENT]  WITH CHECK ADD  CONSTRAINT [FK_STUDY_ENVIRONMENT_MENU] FOREIGN KEY([Menu_Id])
REFERENCES [dbo].[MENU] ([Menu_Id])
GO
ALTER TABLE [dbo].[STUDY_ENVIRONMENT] CHECK CONSTRAINT [FK_STUDY_ENVIRONMENT_MENU]
GO
ALTER TABLE [dbo].[SUB_MENU_CONTENT]  WITH CHECK ADD  CONSTRAINT [FK_SUB_MENU_CONTENT_MENU_CONTENT] FOREIGN KEY([MC_Id])
REFERENCES [dbo].[MENU_CONTENT] ([MC_Id])
GO
ALTER TABLE [dbo].[SUB_MENU_CONTENT] CHECK CONSTRAINT [FK_SUB_MENU_CONTENT_MENU_CONTENT]
GO
USE [master]
GO
ALTER DATABASE [TDMU_INTRODUCTION] SET  READ_WRITE 
GO
