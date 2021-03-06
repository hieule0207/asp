/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.1601)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [QLWEBTINTUC]    Script Date: 11/12/2018 11:43:58 PM ******/
CREATE DATABASE [QLWEBTINTUC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLWEBTINTUC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\QLWEBTINTUC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLWEBTINTUC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\QLWEBTINTUC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLWEBTINTUC] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLWEBTINTUC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLWEBTINTUC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLWEBTINTUC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLWEBTINTUC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLWEBTINTUC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLWEBTINTUC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET RECOVERY FULL 
GO
ALTER DATABASE [QLWEBTINTUC] SET  MULTI_USER 
GO
ALTER DATABASE [QLWEBTINTUC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLWEBTINTUC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLWEBTINTUC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLWEBTINTUC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLWEBTINTUC] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLWEBTINTUC', N'ON'
GO
ALTER DATABASE [QLWEBTINTUC] SET QUERY_STORE = OFF
GO
USE [QLWEBTINTUC]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QLWEBTINTUC]
GO
/****** Object:  Table [dbo].[BINHLUAN]    Script Date: 11/12/2018 11:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BINHLUAN](
	[ID] [int] NULL,
	[MA_BL] [char](20) NOT NULL,
	[MATIN] [int] NULL,
	[NGUOI_BL] [nvarchar](20) NULL,
	[NOIDUNG] [nvarchar](max) NULL,
	[NGAY_TAO] [date] NULL,
	[DAXOA] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_BL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HINHANH]    Script Date: 11/12/2018 11:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HINHANH](
	[ID] [int] NULL,
	[MA_HA] [char](20) NOT NULL,
	[MATIN] [int] NULL,
	[URL] [char](50) NULL,
	[NGAYTAO] [date] NULL,
	[DAXOA] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_HA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_NHANVIEN]    Script Date: 11/12/2018 11:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_NHANVIEN](
	[ID] [int] NULL,
	[MALOAI_NV] [int] NOT NULL,
	[TENLOAI_NV] [nvarchar](20) NULL,
	[DAXOA] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOAI_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI_TAIKHOAN]    Script Date: 11/12/2018 11:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI_TAIKHOAN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MA_LOAITK] [int] NOT NULL,
	[TENLOAI_TK] [nvarchar](100) NULL,
	[DAXOA] [bit] NULL,
 CONSTRAINT [PK_LOAITK_MALOAITK] PRIMARY KEY CLUSTERED 
(
	[MA_LOAITK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 11/12/2018 11:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[ID] [int] NULL,
	[MANV] [int] NOT NULL,
	[TENNV] [nvarchar](100) NULL,
	[BUT_DANH] [nvarchar](30) NULL,
	[PHAI] [bit] NULL,
	[NGAY_SINH] [date] NULL,
	[DC] [nvarchar](max) NULL,
	[NGAY_VAOLAM] [date] NULL,
	[NGAY_KETTHUC] [date] NULL,
	[LOAINV] [int] NULL,
	[TENTK] [nvarchar](255) NULL,
	[DAXOA] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 11/12/2018 11:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TENTK] [nvarchar](255) NOT NULL,
	[MK] [nvarchar](max) NULL,
	[DANGNHAP] [bit] NULL,
	[LOAI_TK] [int] NULL,
	[DAXOA] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TENTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THE_LOAI]    Script Date: 11/12/2018 11:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THE_LOAI](
	[ID] [int] NULL,
	[MATHELOAI] [int] NOT NULL,
	[TENTHELOAI] [nvarchar](255) NULL,
	[DAXOA] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MATHELOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINTUC]    Script Date: 11/12/2018 11:43:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINTUC](
	[ID] [int] NULL,
	[MA_TIN] [int] NOT NULL,
	[T_GIA] [int] NULL,
	[TIEUDE] [nvarchar](100) NULL,
	[TOMTAT] [varchar](50) NULL,
	[NGAYTAO] [date] NULL,
	[NOIDUNG] [nvarchar](max) NULL,
	[SOLANXEM] [int] NULL,
	[TIN_NOI_BAT] [nvarchar](50) NULL,
	[LOAI_TIN] [int] NULL,
	[NGUOI_UPDATE] [int] NULL,
	[NGAY_UPDATE] [date] NULL,
	[HINHANH] [nvarchar](max) NULL,
	[DAXOA] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MA_TIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LOAI_NHANVIEN] ([ID], [MALOAI_NV], [TENLOAI_NV], [DAXOA]) VALUES (NULL, 1, N'Admin', 0)
INSERT [dbo].[LOAI_NHANVIEN] ([ID], [MALOAI_NV], [TENLOAI_NV], [DAXOA]) VALUES (NULL, 2, N'Writer', 0)
SET IDENTITY_INSERT [dbo].[LOAI_TAIKHOAN] ON 

INSERT [dbo].[LOAI_TAIKHOAN] ([ID], [MA_LOAITK], [TENLOAI_TK], [DAXOA]) VALUES (1, 1, N'Admin', 0)
INSERT [dbo].[LOAI_TAIKHOAN] ([ID], [MA_LOAITK], [TENLOAI_TK], [DAXOA]) VALUES (2, 2, N'Writer', 0)
SET IDENTITY_INSERT [dbo].[LOAI_TAIKHOAN] OFF
INSERT [dbo].[NHANVIEN] ([ID], [MANV], [TENNV], [BUT_DANH], [PHAI], [NGAY_SINH], [DC], [NGAY_VAOLAM], [NGAY_KETTHUC], [LOAINV], [TENTK], [DAXOA]) VALUES (NULL, 1, N'pham tran phi lam', NULL, 1, CAST(N'1998-01-01' AS Date), N'tphcm', CAST(N'2016-01-01' AS Date), NULL, 1, N'lam123', 0)
INSERT [dbo].[NHANVIEN] ([ID], [MANV], [TENNV], [BUT_DANH], [PHAI], [NGAY_SINH], [DC], [NGAY_VAOLAM], [NGAY_KETTHUC], [LOAINV], [TENTK], [DAXOA]) VALUES (NULL, 2, N'bui quoc khanh', NULL, 1, CAST(N'1997-02-02' AS Date), N'tphcm', CAST(N'2016-01-01' AS Date), NULL, 2, N'khanh123', 0)
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([ID], [TENTK], [MK], [DANGNHAP], [LOAI_TK], [DAXOA]) VALUES (2, N'khanh123', N'123', NULL, 2, 0)
INSERT [dbo].[TAIKHOAN] ([ID], [TENTK], [MK], [DANGNHAP], [LOAI_TK], [DAXOA]) VALUES (1, N'lam123', N'123', NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
INSERT [dbo].[THE_LOAI] ([ID], [MATHELOAI], [TENTHELOAI], [DAXOA]) VALUES (1, 1, N'Phap luat ', 0)
INSERT [dbo].[THE_LOAI] ([ID], [MATHELOAI], [TENTHELOAI], [DAXOA]) VALUES (2, 2, N'Tin tuc', 0)
INSERT [dbo].[THE_LOAI] ([ID], [MATHELOAI], [TENTHELOAI], [DAXOA]) VALUES (3, 3, N'Doi song', 0)
INSERT [dbo].[TINTUC] ([ID], [MA_TIN], [T_GIA], [TIEUDE], [TOMTAT], [NGAYTAO], [NOIDUNG], [SOLANXEM], [TIN_NOI_BAT], [LOAI_TIN], [NGUOI_UPDATE], [NGAY_UPDATE], [HINHANH], [DAXOA]) VALUES (1, 1, 2, N'Xử phúc thẩm Đinh La Thăng: Bất ngờ triệu tập nhân chứng mới', N'Xet xu dinh la thang', NULL, N'Sáng 9/5, HĐXX cấp phúc thẩm xét hỏi bị cáo Đinh La Thăng (nguyên Chủ tịch PVN) về nội dung ông kháng cáo. Bị cáo này cho rằng bản thân không phạm tội Cố ý làm trái trong vụ án xảy ra tại dự án Nhà máy nhiệt điện Thái Bình 2.

Chủ tọa Nguyễn Văn Sơn cho biết theo bản án sơ thẩm, TAND Hà Nội quy kết Đinh La Thăng biết rõ Tổng công ty xây lắp dầu khí (PVC) gặp khó khăn về tài chính, chưa có kinh nghiệm làm tổng thầu dự án nhưng ông ta vẫn chỉ định PVC làm tổng thầu dự án nhiệt điện. Bị cáo là người đứng đầu tập đoàn, biết dù hồ sơ dự án thiếu cơ sở pháp lý, nhưng vẫn chỉ đạo cấp dưới ký hợp đồng EPC số 33.
Tại tòa hôm nay, cựu Chủ tịch PVN tiếp tục khẳng định không phạm tội. Ông Thăng lý giải, phiên tòa hồi tháng 1 chưa xem xét toàn diện bối cảnh dự án Thái Bình 2 trong hoàn cảnh chung. Lúc đó, các tập đoàn kinh tế được phép đầu tư, phát triển kinh tế đa ngành.

Theo lời bị cáo, giai đoạn đó, các dự án trọng điểm như thế được phép vừa thiết kế, vừa thi công để đảm bảo tiến độ.
Chủ tọa hỏi, là người đứng đầu PVN, với những hậu quả đã xảy ra, bị cáo thấy mình có phạm tội? Đáp lại, ông Thăng một lần nữa khẳng định việc chỉ định PVC làm tổng thầu dự án không trái pháp luật. Về lựa chọn này, PVN đã thực hiện đúng theo chỉ đạo.

Tuy nhiên, cựu Chủ tịch tập đoàn lý giải vai trò của ông ta là đôn đốc các đơn vị thành viên thực hiện chủ trương khởi công dự án. “Còn thực hiện như thế nào là việc của nhà đầu tư, tức là PVC và PVPower”, ông Thăng nói.

Với quy kết của tòa sơ thẩm, việc bị cáo biết rõ năng lực tài chính của PVC không đủ nhưng vẫn chỉ định làm tổng thầu, ông Thăng giãi bày lúc đó, theo báo cáo của đơn vị này, các chỉ tiêu tài chính đều đạt. Các năm 2009, 2010 và 2011 PVC đều có lãi. Thậm chí, năm 2011 lãi khoảng 1.000 tỷ đồng.

"Tháng 8/2011, tôi đã chuyển công tác nhưng báo cáo tài chính cho thấy PVC vẫn có lãi", bị cáo 58 tuổi khai.
Tiếp tục xét hỏi, chủ tọa truy vấn lý do ông Đinh La Thăng chỉ thị giao PVC làm tổng thầu dự án Thái Bình 2.

Trả lời HĐXX, nguyên Chủ tịch PVN cho hay trước dự án này, PVC đã từng thực hiện nhiều dự án lớn hơn như Nhà máy lọc hóa dầu Dung Quất, công trình Nhà máy đạm Cà Mau,… theo cả hình thức tổng thầu lẫn liên danh tổng thầu.

"Vì sao PVN giao cho PVC làm tổng thầu dự án Thái Bình 2?", vị chủ tọa hỏi. Ông Thăng trả lời, ban đầu, tập đoàn tìm liên danh tổng thầu. Tuy nhiên, sau đàm phán, một nhà thầu nước ngoài không đồng ý nên PVN đã giao PVC làm tổng thầu duy nhất.
Sau nhiều câu hỏi dồn dập, chủ tọa phiên tòa tiếp tục truy vấn ông Thăng về việc giao Nguyễn Xuân Sơn và Phùng Đình Thực lo tạm ứng 10% chi phí hợp đồng (tương đương hơn 6,6 triệu USD và 1.300 tỷ đồng cho PVC). Theo bản án sơ thẩm, bị cáo Đinh La Thăng đã chỉ đạo các thuộc cấp phải ứng tiền cho đơn vị này dù biết hợp đồng số 33 chưa đủ pháp lý. Trước mắt, phải tạm ứng 6% cho PVC.

Thực hiện chỉ đạo, Nguyễn Xuân Sơn và các đồng phạm đã làm thủ tục tạm ứng hơn 6,6 triệu USD cho chủ đầu tư. Sau đó, Trịnh Xuân Thanh, Vũ Đức Thuận và 6 người khác đã lập 4 “hợp đồng ma”, rút 13 tỷ đồng để chia nhau.

Giải thích trước tòa phúc thẩm, Đinh La Thăng nói bản thân không được cấp dưới báo cáo về nội dung hợp đồng số 33 trong các cuộc họp.

Tuy nhiên, chủ tọa lập tức phản bác, rằng ở phần xét hỏi một ngày trước, các bị cáo Nguyễn Xuân Sơn, Nguyễn Quốc Khánh và Phùng Đình Thực đều khai họ đã vào phòng Chủ tịch, nghe chỉ đạo việc thực hiện nội dung trong hợp đồng số 33.

Đáp lại HĐXX, ông Thăng thừa nhận việc ép tiến độ khởi công dự án là điều đương nhiên, giám sát đẩy nhanh tiến độ là việc bắt buộc.

"Tuy nhiên, việc ký hợp đồng là quyền của các đơn vị PVC và PVPower, lãnh đạo tập đoàn không ai chỉ đạo 2 đơn vị này phải ký theo nội dung nào", bị cáo Thăng khai và cho biết, 2 đơn vị đó đã tự bịa ra các hợp đồng khống.

Sau khi nghe những lời khai của Đinh La Thăng, lúc 9h30, chủ tọa bất ngờ tuyên bố tạm dừng phiên tòa. Theo HĐXX, để làm rõ lời khai của ông Thăng và các bị cáo, tòa sẽ triệu tập ông Hồ Công Kỳ (nguyên Chánh văn phòng PVN giai đoạn 2010-2011) vào 14h ngày 9/5.', 999, N'1', 1, NULL, NULL, N'images/1.jpg', 0)
INSERT [dbo].[TINTUC] ([ID], [MA_TIN], [T_GIA], [TIEUDE], [TOMTAT], [NGAYTAO], [NOIDUNG], [SOLANXEM], [TIN_NOI_BAT], [LOAI_TIN], [NGUOI_UPDATE], [NGAY_UPDATE], [HINHANH], [DAXOA]) VALUES (2, 2, 2, N'Bà lão làm giả con dấu của cơ quan điều tra', N'Lam gia con dau', NULL, N'Ngày 8/5, Công an tỉnh Nghệ An xác nhận đã khởi tố bị can với bà Nguyễn Thị Hương (64 tuổi, trú thành phố Vinh) về tội Làm giả con dấu, tài liệu của cơ quan, tổ chức, theo điều 341 Bộ luật hình sự 2015.

Cuối tháng 4, Cơ quan An ninh điều tra Công an tỉnh Nghệ An bắt quả tang bà Hương đang giao bằng và một số giấy tờ giả cho một người đàn ông ở thành phố Vinh.

Khám nơi ở của nghi can, cảnh sát thu gần 300 con dấu giả của rất nhiều cơ quan tổ chức như trường đại học, doanh nghiệp, có cả con dấu của cơ quan an ninh điều tra và công an thành phố Vinh. Cùng với đó là các máy, thiết bị phục vụ cho việc làm giả con dấu.
Làm việc với cơ quan điều tra, bà Hương thừa nhận là người trực tiếp làm bằng cấp chứng chỉ giả bán cho những người có nhu cầu với giá vài trăm nghìn đồng tới gần một triệu đồng mỗi chiếc.

Nhà chức trách đánh giá đây là vụ làm giả con dấu và tài liệu của cơ quan điều tra có quy mô lớn nhất tại địa bàn Nghệ An.

Hai năm trước, bà Hương từng lĩnh án tù treo về tội Làm giả con dấu, tài liệu của cơ quan, tổ chức.', 888, NULL, 1, NULL, NULL, N'images/16.jpg', 0)
INSERT [dbo].[TINTUC] ([ID], [MA_TIN], [T_GIA], [TIEUDE], [TOMTAT], [NGAYTAO], [NOIDUNG], [SOLANXEM], [TIN_NOI_BAT], [LOAI_TIN], [NGUOI_UPDATE], [NGAY_UPDATE], [HINHANH], [DAXOA]) VALUES (3, 3, 2, N'Đường dây'' của ông Trịnh Xuân Thanh tham ô 13 tỷ đồng bằng cách nào', N'Tham o', NULL, N'Ngày thẩm vấn thứ hai của phiên phúc thẩm xét kháng cáo vụ án Cố ý làm trái và Tham ô tài sản xảy ra tại Tập đoàn Dầu khí Việt Nam (PVN) và Tổng công ty Xây lắp Dầu khí (PVC), HĐXX TAND Cấp cao tập trung làm rõ hành vi tham ô 13 tỷ đồng của cựu chủ tịch PVC Trịnh Xuân Thanh và các đồng phạm.
TAND Hà Nội xác định, tháng 7/2011, ông Nguyễn Anh Minh (khi đó là Phó tổng giám đốc PVC) được phân công phụ trách Ban điều hành dự án Vũng Áng - Quảng Trạch (ở Hà Tĩnh). Các ông Trịnh Xuân Thanh (Chủ tịch HĐQT PVC) và Vũ Đức Thuận (Tổng giám đốc PVC) giao cho Nguyễn Anh Minh chỉ đạo Lương Văn Hòa (Giám đốc Ban điều hành dự án dự án Nhiệt điện Vũng Áng - Quảng Trạch) chuyển tiền để sử dụng.

Từ ngày 28/9/2011 đến ngày 23/2/2012, ông Lương Văn Hòa cùng với Lê Thị Anh Hoa, Nguyễn Thành Quỳnh (Giám đốc và Kế toán trưởng Công ty TNHH MTV Quỳnh Hoa) lập, ký bốn hợp đồng khống thuê công ty này thi công các hạng mục để rút tổng số hơn 13 tỷ đồng từ Ban điều hành.

Trong 13 tỷ đồng, ông Trịnh Xuân Thanh chiếm hưởng 4 tỷ đồng, ông Vũ Đức Thuận nhận 800 triệu đồng, Nguyễn Anh Minh được chia 3,6 tỷ đồng, Bùi Mạnh Hiển nhận 400 triệu đồng, Lương Văn Hòa nhận 757 triệu đồng. Lê Thị Anh Hoa và Nguyễn Thành Quỳnh chiếm hưởng gần 2 tỷ đồng. Số tiền 1,5 tỷ đồng còn lại các ông Trịnh Xuân Thanh, Vũ Đức Thuận, Nguyễn Anh Minh và Bùi Mạnh Hiển sử dụng chung.
Ở phiên tòa sơ thẩm, ông Trịnh Xuân Thanh khi đối chất với các thuộc cấp đã phủ nhận có chủ trương chuyển tiền từ ban điều hành dự án để đi lễ tết. Ông Thanh khi đó còn nhiều lần nói coi bị cáo Minh như anh em ruột. "Minh từng hỏi có cần tiền tiêu Tết không và bị cáo nói: Tao chẳng cho mày tiền thì thôi", một lời đối chất của ông Thanh ở phiên xử sơ thẩm.

Tuy nhiên, sáng nay, một lần nữa, các bị cáo dưới quyền ông Thanh đều cho rằng có những việc làm vi phạm pháp luật là do ‘thừa lệnh cấp trên’.

Bị cáo Lương Văn Hòa (cựu giám đốc ban điều hành dự án) khai được ông Minh chỉ đạo lo tiền để chuẩn bị lễ khởi công dự án Quảng Trạch với lời nhắn ‘cứ lấy đại trong quỹ ra rồi hoàn lại sau’. Những khoản tiền khác sau đó đều được ‘rút ra’ trên tinh thần như vậy.

Nam bị cáo còn khai được chỉ đạo ‘vẽ’ ra dự án cần thi công sau đó lập hồ sơ khống. “Sau đó bị cáo lập ra các hạng mục công việc và được Minh đồng ý, phê duyệt mới làm”, Hòa trình bày và chỉ xin được giảm án.

Bị cáo Minh khai "chỉ là người thực hiện theo chỉ đạo cấp trên là anh Thanh, Thuận". Nhiều lần nhắc lại việc "xin chịu trách nhiệm thay cấp dưới" ở hành vi tham ô, nhưng ông Minh cũng xin giảm nhẹ hình phạt.

“Một thời gian dài trong trại giam bị cáo rất buồn, nặng nề. Trong tâm của bị cáo không muốn làm nặng nề thêm cho các bị cáo khác”, ông Minh khai và cho hay vẫn nhớ như in cuộc điện thoại của ông Trịnh Xuân Thanh chỉ đạo mình chuyển 5 tỷ đồng để đối ngoại dịp Tết.

Cựu chánh văn phòng PVC Bùi Mạnh Hiển khi trình bày kháng cáo xin giảm nhẹ hình phạt cũng giữ nguyên quan điểm ở cấp sơ thẩm, cho rằng mình chỉ là đầu mối nhận tiền. Bị cáo này khai không biết nguồn tiền chuyển về từ đâu, do đâu mà có. Việc chuyển sử dụng tiền cũng theo sự chỉ đạo của lãnh đạo cao nhất ở PVC.
Ông Thực bị tuyên phạt 9 năm tù về tội Cố ý làm trái quy định của Nhà nước về quản lý kinh tế gây hậu quả nghiêm trọng (điều 165 Bộ luật Hình sự 1999) trong việc ký hợp đồng thi công dự án Nhà máy Nhiệt điện Thái Bình 2, tạm ứng hơn 1.000 tỷ đồng cho PVC khi chưa đủ điều kiện gây thiệt hại 119 tỷ đồng. 

Chiều 8/5, ông trình bày kháng cáo kêu oan cho rằng tại dự án Nhà máy Nhiệt điện Thái Bình 2 vai trò của ông rất hạn chế do sự phân cấp tại PVN. "Tuy nhiên, cấp sơ thẩm đánh giá bị cáo với vai trò như Tổng giám đốc dự án”, ông nói.
Ông Thực cho rằng với quy mô doanh nghiệp lớn lại hoạt động đa ngành nghề, Tổng giám đốc PVN chỉ điều hành chung và đã phân công lĩnh vực cho ba tổng giám đốc phụ trách dự án Nhà máy Nhiệt điện Thái Bình 2. Cụ thể, về điện là ông Nguyễn Quốc Khánh, về tài chính là cựu phó tổng giám đốc Nguyễn Xuân Sơn, phụ trách cơ sở hạ tầng là phó tổng giám đốc Thu Hà.

Ông Thực khẳng định không chỉ đạo PVPower ký hợp đồng 33 (hợp đồng tổng thầu EPC thi công dự án Nhà máy nhiệt điện Thái Bình 2). Trước ngày 26/12/2011, ông không biết Hợp đồng 33 không có căn cứ pháp lý, không được phép thi hành. Ông Thực khẳng định không có vai trò gì trong việc PVN tạm ứng cho PVC... Khép lại phần trình bày, ông nói nói nhiều chứng cứ gỡ tội cho mình chưa được cấp sơ thẩm thu thập đánh giá toàn diện. Ông bị khởi tố hôm trước, hôm sau vụ án đã có kết luận điều tra.

Cũng trong chiều 8/5, các ông Nguyễn Xuân Sơn, Nguyễn Quốc Khánh, Vũ Huy Quang (cựu tổng giám đốc PVPower), Vũ Hồng Chương đều đối chất với ông Thực.

Trong khi ông Thực cho rằng các văn bản gửi từ dưới lên nếu liên quan tới chuyên môn của ai thì chuyển thẳng tới người đó, ông Nguyễn Quốc Khánh lại cho rằng ‘chúng’ được gửi tới Tổng giám đốc PVN.

Ông Thực khai chỉ ký quyết định cho đoàn công tác sang Trung Quốc học kinh nghiệm về chuyển đổi kỹ thuật trong xây dựng nhiệt điện. Đoàn khi về thì không báo cáo ông mà báo cáo Chủ tịch PVN. Còn ông Khánh lại nói việc báo cáo này công khai, lãnh đạo PVN nào cũng biết.', 989, NULL, 1, NULL, NULL, N'images/17.jpg', 0)
INSERT [dbo].[TINTUC] ([ID], [MA_TIN], [T_GIA], [TIEUDE], [TOMTAT], [NGAYTAO], [NOIDUNG], [SOLANXEM], [TIN_NOI_BAT], [LOAI_TIN], [NGUOI_UPDATE], [NGAY_UPDATE], [HINHANH], [DAXOA]) VALUES (4, 4, 2, N'7 năm tù cho kẻ khoét tường buồng biệt giam để bỏ trốn', N'Bo tron', NULL, N'Hôm nay, TAND Hà Nội mở phiên sơ thẩm xét xử Lê Văn Thọ (tức Thọ “Sứt”) và Nguyễn Văn Tình, cùng về tội Trốn khỏi nơi giam giữ, theo Điều 386 Bộ Luật hình sự 2015.

Liên quan vụ án, Nguyễn Thị Phương Lan (24 tuổi), Nguyễn Văn Việt, Nguyễn Văn Ba, Nguyễn Văn Hạnh bị xét xử về tội Che giấu tội phạm theo Điều 386, Bộ Luật hình sự 2015.

Trước xét hỏi, HĐXX cho phép nhân viên y tế của trại giam kiểm tra sức khoẻ cho Thọ “Sứt” do bị cáo này kêu mệt mỏi, tăng huyết áp.
Thừa nhận tội danh là đúng, Thọ khai ngày 1/7/2017, được chuyển vào giam chung cùng Tình tại buồng số 3, khu D, trại tạm giam T16 (Bộ Công an). Hai hôm sau, thấy cơ sở vật chất buồng giam yếu kém, cùm gỗ được tháo nếu đi vệ sinh, Thọ nói với Tình kế hoạch bỏ trốn và nhận được sự hưởng ứng. 

Hai người bàn cách thoát ra ngoài bằng việc trèo sang khu C. Với chiếc vít lở lấy trộm trước đó, Thọ buộc vào bàn chải đánh răng, tự chế thành dụng cụ để khoét tường. Để che giấu chỗ khoét, hàng ngày chúng dùng kem đánh răng và giấy vệ sinh nhét vào.

Ngày 6/9/2017, Thọ “Sứt” và Tình nghe loa phát thanh dự báo thời tiết khu vực Hà Nội do ảnh hưởng hoàn lưu bão, có mưa. Ngay sau đó, hai tử tù thống nhất sẽ bỏ trốn lúc trời mưa và xé hai chiếc khăn dùng làm dây...

Sau nhiều ngày khoét tường và cùng với 10 tiếng "làm việc" liên tục trong đêm 10/9/2017, đến rạng sáng 11/9/2017 nhân lúc trời mưa, chúng quyết định đào tẩu. Với lỗ hổng chui vừa người, Thọ “Sứt” ra khỏi buồng biệt giam đầu tiên, Tình theo sau.
"Hai bị cáo vào bếp ăn của khu tạm giam, lấy móc chữ U gần bếp lò, lấy búa đập hàng rào chui ra. Khi đến chòi gác khu C, quan sát thấy cán bộ đang đổi gác, chưa đến vị trí nên các bị cáo đi lên chòi. Thấy có camera, bị cáo bảo Tình lấy áo bịt lại, sau đó dùng dây đã bện, móc vào khóa chữ U để đi xuống", Thọ "Sứt" khai.

Theo lời Thọ “Sứt”, khi trốn được ra ngoài, Tình "dẫn đi đâu thì đi đấy". Sau một ngày lẩn trốn cùng nhau, Thọ về quê ở Hưng Yên, vào nhà bạn vay 100 triệu đồng rồi thuê taxi đi Quảng Ninh liên lạc với Lan. 

“Nếu bị cáo không bị tử hình, sẽ không bao giờ trốn trại. Bị cáo không phục bản án nên có ý định trốn”, Thọ trình bày trước khi chủ tọa chuyển sang thẩm vấn Tình.

Trước tòa, Tình thừa nhận lời khai của Thọ “Sứt” là đúng. Sau khi trốn trại, bị cáo dẫn Thọ lên đồi, ghé qua nhà. Tình đến gặp Hạnh (cậu họ) nói vừa trốn trại ra rồi đi vào rừng ngay, được cung cấp đồ ăn và một chiếc xe máy.

Sau một tuần vượt ngục, ngày 16-17/9/2017, Thọ “Sứt” và Tình bị bắt ở Hải Dương và Hòa Bình.
Trước tòa, Lan khai sáng 12/9/2017 thấy được tin nhắn và nhiều cuộc gọi của Thọ “Sứt”. Sau đó, Lan nhận được năm chiếc điện thoại do Thọ “Sứt” chuyển qua người quen để đưa cho cô với lý do "tiện liên lạc". Cô sau đó đã làm theo sai bảo của Thọ "Sứt" như thuê nhà nghỉ, gọi taxi...

Trước lời khai này, Thọ “Sứt” thừa nhận dùng nhiều số điện thoại vì sợ nếu gọi bằng máy cố định sẽ bị công an phát hiện. Bị cáo dặn Lan khi thấy ai gọi điện thoại thì không được nghe.

Theo Thọ, lần đầu tiên gặp nhau, Lan không biết bị cáo trốn trại. Hôm sau, cô này mới biết qua các phương tiện thông tin. “Lan không bao giờ dám báo công an vì sợ tôi và cũng vì cái tình. Bị cáo cũng không bao giờ cho Lan biết đang ở đâu”, Thọ “Sứt” khai.

Các bị cáo Hạnh, Việt, Ba đều thừa nhận có che giấu tử tù này song thanh minh làm vậy vì chưa hiểu hết tội trạng của Thọ "Sứt".

Mẹ của Tình có mặt tại tòa, nghẹn ngào trả lời, hôm thấy con về nhà bà đã đưa quần áo và tiền do "không biết là bỏ trốn hay được tha về".

Sau hai tiếng thẩm vấn, nghị án, tòa tuyên phạt Thọ “Sứt” và Tình mỗi người bảy năm tù; các bị cáo còn lại 9-12 tháng.', 777, NULL, 1, NULL, NULL, N'images/3.jpg', 0)
INSERT [dbo].[TINTUC] ([ID], [MA_TIN], [T_GIA], [TIEUDE], [TOMTAT], [NGAYTAO], [NOIDUNG], [SOLANXEM], [TIN_NOI_BAT], [LOAI_TIN], [NGUOI_UPDATE], [NGAY_UPDATE], [HINHANH], [DAXOA]) VALUES (5, 5, 2, N'Tuấn Hưng gọi liveshow ở phố đi bộ Hà Nội là ''khoảnh khắc điên rồ''', N'Live show tuan hung', NULL, N'Đêm nhạc Cảm ơn diễn ra ở quảng trường Đông Kinh Nghĩa Thục tối 26/10. Liveshow gây chú ý với giới truyền thông, khán giả. Nhiều người tò mò Tuấn Hưng trở lại như thế nào sau sự cố bị hủy show vào phút chót vào ngày 5/10, kiệt sức nhập viện và gặp tai nạn khiến siêu xe tiền tỷ nát bét phần đầu
Từ 18h30, các con phố xung quanh quảng trường chật kín người. Những người có vé được sắp xếp vào khu vực có ghế ngồi ở trước sân khấu. Hàng nghìn khán giả còn lại chen chân phía ngoài hàng rào. Các quán cà phê trên cao ở khu vực gần quảng trường nhanh chóng hết chỗ. 

"Đây là một khoảnh khắc điên rồ. Tôi đã được vực dậy từ vực thẳm. Từ 1.300 khán giả ở Nhà thi đấu Quần Ngựa, tôi được hát cho vài nghìn người", Tuấn Hưng nói. Sau Mỹ Tâm, Tuấn Hưng là ca sĩ thứ hai tổ chức liveshow ở địa điểm công cộng lớn của thủ đô.
Hơn 20h, Tuấn Hưng xuất hiện. Chọn trình diễn bài Ngựa hoang ở đầu chương trình, ca sĩ thể hiện tính cách ngang tàng và hình ảnh tràn đầy năng lượng. Anh mặc cây trắng, làm nổi bật những hình xăm họa tiết trên ngực và hai cánh tay. Ca sĩ cầm hai chiếc micro như thường lệ. Trong tiết tấu sôi động của ca khúc phối theo phong cách Rock, Tuấn Hưng khoe chất giọng mạnh mẽ.
Sân khấu ngoài trời mang đến không gian phóng khoáng cho Tuấn Hưng hát hết sức với những bản remix sôi động. Chất "điên" - như anh tự nhận - được thể hiện xuyên suốt từ đầu đến cuối liveshow. Anh hò reo, lôi kéo khán giả, nhảy cùng vũ đoàn, tự tay chơi chiêng, dùng máy xịt khói... để khiến người xem cùng hòa vào chương trình.

Ca sĩ dốc sức qua nhiều ca khúc như Đam mê, Đốt chút lá khô, Độc thoại... Các bản tình ca nổi tiếng như Nắm lấy tay anh, Anh nhớ em, Tìm lại bầu trời... khắc khoải ở phần đầu và bùng nổ ở phần sau. Màu sắc âm nhạc của chương trình thay đổi từ Rock đến Dance, Disco, Ballad, giúp chương trình không bị đơn điệu. 

Ban nhạc Màu nước đóng vai trò quan trọng trong việc hỗ trợ Tuấn Hưng hoàn thành các tiết mục. Họ chơi tiết tấu nhạc mạnh, tạo sự phấn khích nhưng không làm mờ giọng hát ca sĩ. Màu Nước là ban nhạc riêng của Tuấn Hưng, được anh thành lập từ năm 2015. Nhờ ban nhạc, các tiết mục live của Tuấn Hưng ổn định và chuyên nghiệp hơn. Anh và nhóm chuẩn bị nhiều bản phối khác nhau cho mỗi ca khúc để phù hợp với mỗi chương trình. Vì thế, trong hai tuần, Tuấn Hưng không mất nhiều thời gian tập luyện khi đổi địa điểm tổ chức liveshow. 
 Anh luôn chủ động giao lưu với khán giả, yêu cầu họ hát với mình để khuấy động không khí. Khi đang trình diễn máu lửa, anh yêu cầu ban nhạc dừng lại, nhẹ nhàng nhắc nhở vài khán giả đang xô xát vì tranh chỗ đứng. Khi MC gợi lại những trải nghiệm buồn về sự cố hủy show, vụ tai nạn, anh khéo léo né tránh, lèo lái câu chuyện, hướng khán giả tập trung vào đêm diễn.

Tuấn Hưng cũng nhiều lần rơi nước mắt khi nghĩ đến gia đình và những người bạn. Anh khóc lúc hát tặng mẹ ca khúc Mẹ yêu, rớm nước mắt khi song ca cùng Tú Dưa bài Tình bạn. "Tôi là người sống hoang dã. Tôi có được ngày hôm nay không phải vì tôi giỏi mà vì tôi may mắn có gia đình và những người bạn ở bên. Tôi thành công không phải vì tôi hát hay mà vì tôi hát từ trái tim. Mọi giá trị bền vững đều tồn tại nhờ tình yêu", Tuấn Hưng chia sẻ. Anh vài lần quỳ gối trên sân khấu, xúc động nghẹn ngào. 
 Anh luôn chủ động giao lưu với khán giả, yêu cầu họ hát với mình để khuấy động không khí. Khi đang trình diễn máu lửa, anh yêu cầu ban nhạc dừng lại, nhẹ nhàng nhắc nhở vài khán giả đang xô xát vì tranh chỗ đứng. Khi MC gợi lại những trải nghiệm buồn về sự cố hủy show, vụ tai nạn, anh khéo léo né tránh, lèo lái câu chuyện, hướng khán giả tập trung vào đêm diễn.

Tuấn Hưng cũng nhiều lần rơi nước mắt khi nghĩ đến gia đình và những người bạn. Anh khóc lúc hát tặng mẹ ca khúc Mẹ yêu, rớm nước mắt khi song ca cùng Tú Dưa bài Tình bạn. "Tôi là người sống hoang dã. Tôi có được ngày hôm nay không phải vì tôi giỏi mà vì tôi may mắn có gia đình và những người bạn ở bên. Tôi thành công không phải vì tôi hát hay mà vì tôi hát từ trái tim. Mọi giá trị bền vững đều tồn tại nhờ tình yêu", Tuấn Hưng chia sẻ. Anh vài lần quỳ gối trên sân khấu, xúc động nghẹn ngào. 
Sự nhiệt thành của khán giả cũng góp phần vào thành công của đêm diễn. Họ hào hứng hát theo Tuấn Hưng các ca khúc quen thuộc, bật đèn flash điện thoại cổ vũ nam ca sĩ. Đến 21h30, sau khi chương trình đi được hơn một nửa, trời bất ngờ đổ mưa lớn. Khán giả không đứng lên bỏ về mà tìm áo mưa, vật che chắn để thưởng thức tiếp đêm nhạc. Sự ủng hộ của người xem càng khiến Tuấn Hưng "sung" hơn. Giữa trời mưa, anh vẫn hát, nhảy cuồng nhiệt. Đôi lúc, giọng nam ca sĩ khản đặc, lạc đi. Tuy nhiên, điều này không ảnh hưởng đến tổng thể tiết mục và buổi trình diễn.

Với mục đích tập trung vào hình ảnh của chủ nhân đêm nhạc, chương trình được dàn dựng theo cách mỗi khách mời chỉ song ca với Tuấn Hưng một tiết mục. Anh dịu dàng khi hát Dẫu có lỗi lầm với Mỹ Dung, thiết tha khi hát Mẹ yêu với Tú Dưa và tràn trề hứng khởi với tiết mục Đam mê, kết hợp với Oplus. 
', 666, NULL, 2, NULL, NULL, N'images/26.jpg', 0)
INSERT [dbo].[TINTUC] ([ID], [MA_TIN], [T_GIA], [TIEUDE], [TOMTAT], [NGAYTAO], [NOIDUNG], [SOLANXEM], [TIN_NOI_BAT], [LOAI_TIN], [NGUOI_UPDATE], [NGAY_UPDATE], [HINHANH], [DAXOA]) VALUES (6, 6, 2, N'Duy Khánh đóng chính phim kinh dị pha hài', N'Duy khanh dong phim', NULL, N'Duy Khánh hóa thân sinh viên y khoa tên Vĩnh Khang. Cậu luôn bị bạn bè trêu chọc, nghi kỵ do có người mẹ (Lê Giang đóng) làm nghề hầu đồng, bói toán. Vĩnh Khang nhiều lần thuyết phục mẹ bỏ nghề nhưng bà không quan tâm. Mâu thuẫn giữa hai mẹ con dâng cao trong gia đình.
Trong khi đó, người bảo vệ bí ẩn tên Tâm (Quang Minh đóng) lan truyền thông tin về các xác chết biết đi (tức cương thi) tại nơi cậu học. Những câu nói khó hiểu của ông gây hoang mang cho một số sinh viên. Phim còn quy tụ Emma, BB Trần, Bảo Trí và Quang Trung tham gia diễn xuất.
Tác phẩm đánh dấu sự trở lại của Duy Khánh trong làng phim chiếu mạng sau một năm kể từ My Sky - Bầu Trời Của Khánh. Ngoài vai trò diễn viên chính, anh còn đầu tư cho dự án. Ở họp báo ngày 26/10 tại TP HCM, anh cho biết muốn đóng nhân vật mạnh mẽ hơn sau thời gian gắn liền các vai giả gái. Duy Khánh sinh năm 1995, gây sốt với vai "cô giáo Khánh" trong loạt video cùng tên. Anh giành giải nhất chương trình Gương mặt thân quen hồi tháng 9. 

Cương thi biến do Neko Lê đạo diễn, thuộc thể loại kinh dị pha hài. Tập đầu của phim phát trên Youtube tối 26/10, thu hút hơn 100.000 lượt xem sau 15 giờ đăng tải. Làm phim chiếu trên mạng là trào lưu hiện nay của nghệ sĩ Việt, với một số sản phẩm gây tiếng vang như Ai chết giơ tay (của Huỳnh Lập), Thập tam muội (của Thu Trang - Tiến Luật, đang được phát triển thành bản điện ảnh).', 555, NULL, 2, NULL, NULL, N'images/27.jpg', 0)
INSERT [dbo].[TINTUC] ([ID], [MA_TIN], [T_GIA], [TIEUDE], [TOMTAT], [NGAYTAO], [NOIDUNG], [SOLANXEM], [TIN_NOI_BAT], [LOAI_TIN], [NGUOI_UPDATE], [NGAY_UPDATE], [HINHANH], [DAXOA]) VALUES (7, 7, 2, N'Thúy Ngân, Trung Dũng tận hưởng trời thu Đà Lạt', N'Trung dung thuy ngan', NULL, N'Thúy Ngân và Trung Dũng đi nghỉ mát nhân dịp "Gạo nếp gạo tẻ" phát sóng đến tập 75, đi được ba phần tư chặng đường. Nội dung bộ phim gần đây xoay quanh chuyện ly hôn của Hân (Thúy Ngân) và Kiệt (Trung Dũng). Hân ngoại tình khiến Kiệt đau khổ, quyết định không níu kéo cuộc hôn nhân. Mặc cho bố mẹ Hân khuyên ngăn, cả hai vẫn ra tòa ly hôn.
Ngoài đời, Thúy Ngân và Trung Dũng là cặp diễn viên thân nhất đoàn làm phim. Nam diễn viên quý ở đàn em tính tự lập, biết quan tâm chia sẻ với mọi người.
Trung Dũng chia sẻ: "Thúy Ngân là đồng nghiệp thân thiết. Cô ấy còn trẻ, đang độc thân, tôi không muốn chuyện ''phim giả tình thật'' ảnh hưởng đến cuộc sống đàn em".
Thúy Ngân kể, lúc mới đóng phim, cô thấy khó gần Trung Dũng vì anh nghiêm nghị. Sau một thời gian, cô được đàn anh tận tình chỉ bảo kinh nghiệm diễn xuất. "Ở các phim tới, nếu có cơ hội, tôi vẫn muốn đóng cặp với anh", cô chia sẻ.
Thúy Ngân, sinh năm 1991, tên đầy đủ là Lê Huỳnh Thúy Ngân đến từ Tiền Giang. Cô từng đoạt Á khôi Hoa khôi Trang sức 2009. Cô góp mặt trong nhiều bộ phim truyền hình như "Hoa vẫn nở mùa đông", "Nước mắt chảy ngược", "Lấy chồng sớm làm gì", "Bến nước 13", "Sao đổi ngôi"...', 765, NULL, 2, NULL, NULL, N'images/29.jpg', 0)
INSERT [dbo].[TINTUC] ([ID], [MA_TIN], [T_GIA], [TIEUDE], [TOMTAT], [NGAYTAO], [NOIDUNG], [SOLANXEM], [TIN_NOI_BAT], [LOAI_TIN], [NGUOI_UPDATE], [NGAY_UPDATE], [HINHANH], [DAXOA]) VALUES (8, 8, 2, N'Phụ huynh Hà Nội cân não chọn trường cho con vào lớp 10', N'chon lop 10', NULL, N'Ngày 10/5 là hạn cuối thu phiếu đăng ký dự tuyển vào lớp 10 THPT ở Hà Nội, chị An (quận Cầu Giấy) rối bời khi vẫn chưa thống nhất được với con trai về trường đăng ký nguyện vọng một.

Năm nay, Hà Nội tăng 22.000 học sinh thi vào lớp 10, nâng tổng số thí sinh lên hơn 100.000. Trong khi đó, chỉ tiêu các trường công lập chỉ 64.990; 35.000 học sinh còn lại sẽ phải vào trường ngoài công lập có chi phí cao gấp nhiều lần hoặc chuyển sang học nghề. Cuộc đua vào lớp 10 công lập, nhất là khu vực nội thành của Hà Nội, do đó khốc liệt hơn năm ngoái.

"Con thích vào THPT Thăng Long nhưng trường này năm ngoái thuộc tốp lấy điểm chuẩn cao nhất thành phố. Năm nay tỷ lệ chọi tăng, trường chắc chắn nâng điểm trúng tuyển. Với sức học của con, may mắn thì được 52,5, bằng điểm trúng tuyển của THPT Thăng Long năm ngoái. Vì thế, tôi rất lo khi cháu kiên quyết chọn trường này để đăng ký nguyện vọng một", chị An giải thích.

Người mẹ mong muốn con chọn một trường có điểm chuẩn năm ngoái thấp hơn là THPT Trần Phú - Hoàn Kiếm (50,5 điểm) để tăng cơ hội đỗ.
Gia đình anh Vinh (Cầu Giấy) những ngày qua cũng đau đầu để chọn trường đăng ký nguyện vọng một cho con vào lớp 10. Theo quy định, mỗi học sinh chỉ được đăng ký dự tuyển vào hai trường THPT công lập, xếp thứ tự ưu tiên là nguyện vọng một (NV1) và nguyện vọng hai (NV2). 

Con gái anh có năng khiếu ngoại ngữ nên muốn học chuyên Anh. Ngoài THPT chuyên Ngoại ngữ thuộc Đại học Ngoại ngữ (Đại học Quốc gia Hà Nội), gia đình "đặt lên bàn cân" hai trường công là THPT chuyên Hà Nội - Amsterdam và THPT Chu Văn An. Chưa bao giờ một trường cấp ba tư thục nào được nhắc đến trong câu chuyện chọn trường của gia đình, bởi chi phí học đắt đỏ. Lương công chức của vợ chồng anh Vinh chỉ đủ cho hai con học trường công.

"Trong khi bố mẹ cho rằng trường Chu Văn An là lựa chọn an toàn vì điểm chuẩn luôn thấp hơn Ams thì con gái lại nhất mực đăng ký chuyên Hà Nội - Amsterdam là nguyện vọng một, bởi các bạn trong lớp đều chọn vào đó", anh Vinh than thở. Cuối cùng, để không tạo thêm căng thẳng cho con gái đang ở giai đoạn dậy thì, vợ chồng anh Vinh đồng ý để con ghi nguyện vọng một là THPT chuyên Hà Nội - Amsterdam. Nguyện vọng hai vào lớp 10 công lập của con gái anh là THPT Yên Hòa. 

Là học sinh trường THCS Cầu Giấy, con gái anh Vinh coi việc vào cấp 3 chuyên là chuyện đương nhiên. Với điểm tổng kết các năm hơn 9, cô bé cảm thấy khá chấp chới để đỗ trường mong muốn nên gắng sức học hành. Ngoài giờ trên lớp, mỗi tuần con học thêm 3 buổi môn Toán - Văn - tiếng Anh và tự ôn ở nhà. Nhìn con thời gian gần đây gầy gò, ăn uống kém, anh Vinh thấy xót ruột. 

"Thâm tâm tôi rất muốn con đỗ trường chuyên nhưng thấy con tự áp lực cho bản thân, tôi lại muốn động viên để Linh hạ tiêu chuẩn chọn trường. Không học chuyên mà vào THPT Yên Hòa cũng là một lựa chọn tốt, nhiều bạn khác mong muốn", anh Linh nói.

Phụ huynh có con thi vào lớp 10 mong muốn Sở Giáo dục Hà Nội thay đổi quy định về giới hạn số lượng nguyện vọng đăng ký dự tuyển cho học sinh. Theo đó, học sinh nên được đăng ký không giới hạn số nguyện vọng và các trường xét tuyển lấy điểm từ cao xuống thấp cho đến hết chỉ tiêu. Cách làm giống xét tuyển đại học này, theo anh Vinh, vẫn giúp các trường chọn được học sinh phù hợp mà sĩ tử đỡ áp lực vì có quá ít lựa chọn vào trường công. 

Ngoài ra, ngày thi vào lớp 10 THPT cách thời điểm kết thúc năm học chưa đầy 2 tuần, phụ huynh Vinh cho rằng quá ngắn để học sinh kịp ôn tập đầy đủ kiến thức. Đây cũng là điều gây áp lực cho các sĩ tử tuổi 15.

"Học trường công là lựa chọn duy nhất của chúng tôi. Gia đình không có điều kiện chi trả cho con những khoản phí đắt đỏ của trường tư thục. Nếu không đỗ trường công, con chỉ còn nước đi học nghề. Là cha mẹ và bản thân các cháu, không ai muốn điều đó", chị Hoa, một phụ huynh ở quận Thanh Xuân nói. 

Ở khu vực ngoại thành, thuộc huyện Hoài Đức, chị Mai cũng áp lực trước cuộc đua vào lớp 10 công lập của con trai bởi "vợ chồng đều là nông dân, không kham nổi học phí của trường tư thục". Đăng ký nguyện vọng một cho con vào cấp ba Hoài Đức B để gần nhà, chị Mai lo lắng khi nghe thông tin năm nay trường sẽ lấy điểm chuẩn cao hơn năm trước (42,5 điểm).

Để tăng cơ hội cho con đỗ vào cấp ba công lập, từ đầu lớp 9, chị Mai mời thầy mỗi tuần tới nhà dạy cho con  6 buổi Toán - Văn - tiếng Anh và thêm một buổi chở con ra trung tâm Hà Nội ôn luyện. Chi phí tiền học thêm mỗi tháng khoảng 900.000 đồng. "Tôi không ngại nếu con trượt lớp 10 công lập nhưng chỉ lo tâm lý con ảnh hưởng, thấy xấu hổ với bạn bè và khó đứng lên", bà mẹ chia sẻ.

Theo kế hoạch, sau khi hoàn tất việc nhận đăng ký dự thi của học sinh, ngày 19/5 Sở Giáo dục và Đào tạo Hà Nội sẽ công bố tỷ lệ chọi vào lớp 10 công lập. Trong ngày 20-21/5, học sinh được quyền thay đổi nguyện vọng bằng cách nộp đơn tại các phòng Giáo dục. Tuy nhiên, học sinh chỉ được thay đổi nguyện vọng giữa các trường trong khu vực tuyển sinh đã đăng ký, không được thay đổi nguyện vọng dự tuyển vào các lớp chuyên, trường chuyên.', 546, N'1', 3, NULL, NULL, N'images/8.jpg', 0)
INSERT [dbo].[TINTUC] ([ID], [MA_TIN], [T_GIA], [TIEUDE], [TOMTAT], [NGAYTAO], [NOIDUNG], [SOLANXEM], [TIN_NOI_BAT], [LOAI_TIN], [NGUOI_UPDATE], [NGAY_UPDATE], [HINHANH], [DAXOA]) VALUES (9, 9, 2, N'Ngày hội khoa học lớn của học sinh miền Bắc', N'ngay hoi khoa hoc', NULL, N'Ngày hội STEM 2018 dành cho học sinh từ 8 đến 18 tuổi khu vực phía Bắc diễn ra từ 8h đến 17h ngày 13/5 tại Đại học Khoa học tự nhiên (Đại học Quốc gia Hà Nội). STEM là viết tắt của khoa học (Science), công nghệ (Technology), kỹ thuật (Engineering) và toán học (Mathematics). Đây là mô hình giáo dục hiện đại được triển khai tại nhiều nước Âu - Mỹ.

Với chủ đề "Chạm oooo - Touch oooo" (chạm vào cách mạng công nghệ 4.0), Ban tổ chức hy vọng giúp học sinh bắt đầu tập học cách học và học cách giải quyết vấn đề thông qua thực hành, thực nghiệm công nghệ mới của thời đại 4.0 như in 3D, trí tuệ nhân tạo, lập trình robot tự hành, thực tế ảo.

Ngày hội STEM lần thứ tư được tổ chức, trong khuôn khổ Ngày Khoa học và Công nghệ Việt Nam 18/5, là cơ hội để học sinh làm quen với việc phát triển ý tưởng sáng tạo và hướng nghiệp ngay khi ngồi trên ghế nhà trường. Sự kiện dự kiến đón 3.000 lượt học sinh và 500 lượt cha mẹ, giáo viên và nhà quản lý giáo dục
Tại buổi họp báo thông tin về ngày hội hôm nay, tiến sĩ Đặng Văn Sơn, thành viên Ban tổ chức cho biết, so với các năm trước, sự kiện năm nay có bốn điểm mới. Thứ nhất, ngày hội ngày càng thu hút sự tham gia của các địa phương khu vực phía Nam. Năm nay hai đại diện mới bên ngoài Hà Nội là trường THPT An Dương và trường THPT chuyên Hưng Yên sẽ đem tới ứng dụng STEM vào giải quyết các vấn đề thiết thực mang tính địa phương.

Thứ hai, học sinh có cơ hội tham quan, thực nghiệm thí nghiệm tại những phòng lab hiện đại của Đại học Khoa học tự nhiên, như: phòng thí nghiệm của Trung tâm Nano và Năng lượng - phòng thí nghiệm hiện đại nhất Việt Nam hiện nay; phòng thí nghiệm trọng điểm quốc gia Enzyme và protein; phòng thí nghiệm trọng điểm phân tích phục vụ kiểm định môi trường và an toàn thực phẩm… Đó đều là nơi tạo ra nhiều sáng chế, phát minh, công bố quốc tế trên các tạp chí hàng đầu về khoa học và công nghệ của các nhà khoa học Việt Nam.

Thứ ba, tại ngày hội STEM, Đại học Khoa học tự nhiên sẽ phát động cuộc thi tìm hiểu Bảng tuần hoàn các nguyên tố hóa học cho học sinh toàn quốc, trong đó chủ yếu là khối trung học phổ thông. Các em sẽ trải nghiệm thí nghiệm hóa học được lồng ghép kịch có nội dung liên quan tới bảng tuần hoàn.
Hai hoạt động lớn dành cho học sinh tham gia ngày hội (đăng ký trước) bao gồm: Labtour (thăm các phòng thí nghiệm và thực hiện một số thí nghiệm nhỏ); lớp học STEM (trải nghiệm một tiết học định hướng: lập trình, robot, hóa học vui, toán học ứng dụng…).

Ngoài ra, nhiều hoạt động tự do dành cho học sinh (không cần đăng ký trước) được tổ chức tại khu vực trưng bày. Các trường sẽ giới thiệu nhiều sản phẩm khám phá khoa học như giải mật mã, makey makey (chơi nhạc cụ với trái cây), nhiễm điện do cọ sát, ống ma thuật, vẽ tranh bằng con lắc đơn, xây dựng mô hình gỗ Kapla, cân bằng trong thế giới tự nhiên, xe robot tự hành, bong bóng xà phòng...

Ở khu vực này, học sinh còn được trải nghiệm một số hoạt động như tập làm index, làm đồ tái chế, làm xe bóng bay, làm con rối, làm thí nghiệm vui, xem trình diễn robot xếp rubic, xem một thí nghiệm về chất nổ…

Song song với hoạt động dành cho học sinh còn có hội thảo dành cho phụ huynh và giáo viên, nhằm đưa ra một số gợi ý với các bài dạy định hướng STEM', NULL, NULL, 3, NULL, NULL, N'images/22.jpg', 0)
INSERT [dbo].[TINTUC] ([ID], [MA_TIN], [T_GIA], [TIEUDE], [TOMTAT], [NGAYTAO], [NOIDUNG], [SOLANXEM], [TIN_NOI_BAT], [LOAI_TIN], [NGUOI_UPDATE], [NGAY_UPDATE], [HINHANH], [DAXOA]) VALUES (10, 10, 2, N'Người dân Thủ Thiêm: "Còn phải bao lâu nữa, chúng tôi đã mất 20 năm cuộc đời"', N'Thu thiem', NULL, N'Sáng 20/10, Bí thư Thành ủy TP HCM Nguyễn Thiện Nhân cùng tổ đại biểu Quốc hội gặp gỡ cử tri quận 2 nhằm đối thoại về vấn đề dự án Khu đô thị mới Thủ Thiêm sau khi có kết quả kiểm tra của Thanh tra Chính phủ
Ngoài Bí thư Thành ủy TP HCM Nguyễn Thiện Nhân, tham dự còn có Chủ tịch HĐND TP Nguyễn Thị Quyết Tâm, ông Võ Văn Hoan (Chánh Văn phòng UBND TP HCM), ông Phan Nguyễn Như Khuê (Phó đoàn chuyên trách, Đoàn đại biểu Quốc hội TP HCM) và bà Trịnh Ngọc Thuý (Phó Chánh án TAND TP HCM).

Đây là lần thứ 3 Bí thư Nguyễn Thiện Nhân gặp bà con Thủ Thiêm. Trước đó, ngày 16/7, ông đến chung cư Bình Khánh và khu tạm cư của bà con Thủ Thiêm để thăm hỏi người dân.

Từ sáng sớm, nhiều người dân Thủ Thiêm đã có mặt để tham gia buổi tiếp xúc xử tri. Nhiều người dân không đến kịp giờ, bày tỏ sự bức xúc vì không thể tham gia. Khoảng 9h cùng ngày, lực lượng chức năng đã lắt một màn hình trực tiếp để người dân có thể theo dõi buổi tiếp xúc cử tri.
"Tôi đã gửi đơn khiếu nại gần 20 năm nay nhưng chưa được giải quyết. Những người dân tạm cư như chúng tôi chịu khổ bao nhiêu năm rồi. Bây giờ tôi chỉ còn 1 đứa con duy nhất, chính quyền phải trả nhà, trả đất lại cho tôi để mẹ con tôi ổn định cuộc sống. Còn phải bao lâu nữa, từ năm 2000 đến giờ, chúng tôi đã mất 20 năm cuộc đời" - Cử tri Phan Thị Thủy (người dân Thủ Thiêm, quận 2).

Cùng chung sự bức xúc, cử tri Nguyễn Thế Vinh (phường Bình An, quận 2) bày tỏ: "Ai đã ra quyết định đập phá nhà tôi? Tôi đã 82 tuổi còn vợ tôi cũng 70 tuổi. Chúng tôi dành dụm ít tiền để xây một căn nhà để dưỡng già, vậy mà bị đập phá, toàn bộ tài sản cũng bị dọn hết. Chúng tôi hỏi chính quyền đã bao năm nay nhưng chưa có câu trả lời".
Trong khi đó, cử tri Cao Thanh Ca (phường Bình Khánh, quận 2) kiến nghị các đại biểu cần đưa những sai phạm ở Thủ Thiêm vào cuộc họp Quốc hội để ra nghị quyết, từ đó có cơ sở để Ủy ban Kiểm tra trung ương vào cuộc. Ông Ca cũng cho rằng, kết luận của Thanh Tra Chính phủ hồi đầu tháng 9 là chưa đầy đủ, chưa căn cứ vào đơn kiến nghị của bà con Thủ Thiêm.

"Thành phố đừng xin lỗi chúng tôi nữa. Mỗi lần xin lỗi là lại xát muối vào nỗi đau của chúng tôi. Chúng tôi cần xử lý những người đã làm sai phạm trong việc thực hiện việc thu hồi, cưỡng chế nhà đất của chúng tôi...

Tôi không định phát biểu, nhưng tôi tin tưởng ở đại biểu Nguyễn Thiện Nhân. Chúng tôi xin đặt hết niềm tin vào đại biểu Nguyễn Thiện Nhân để giải quyết dứt điểm dự án này”, ông Ca nói.', NULL, N'1', 3, NULL, NULL, N'images/10.jpg', 0)
ALTER TABLE [dbo].[BINHLUAN]  WITH CHECK ADD FOREIGN KEY([MATIN])
REFERENCES [dbo].[TINTUC] ([MA_TIN])
GO
ALTER TABLE [dbo].[HINHANH]  WITH CHECK ADD FOREIGN KEY([MATIN])
REFERENCES [dbo].[TINTUC] ([MA_TIN])
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD FOREIGN KEY([LOAINV])
REFERENCES [dbo].[LOAI_NHANVIEN] ([MALOAI_NV])
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD FOREIGN KEY([TENTK])
REFERENCES [dbo].[TAIKHOAN] ([TENTK])
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN] FOREIGN KEY([LOAI_TK])
REFERENCES [dbo].[LOAI_TAIKHOAN] ([MA_LOAITK])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN]
GO
ALTER TABLE [dbo].[TINTUC]  WITH CHECK ADD FOREIGN KEY([LOAI_TIN])
REFERENCES [dbo].[THE_LOAI] ([MATHELOAI])
GO
ALTER TABLE [dbo].[TINTUC]  WITH CHECK ADD FOREIGN KEY([NGUOI_UPDATE])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[TINTUC]  WITH CHECK ADD FOREIGN KEY([T_GIA])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
USE [master]
GO
ALTER DATABASE [QLWEBTINTUC] SET  READ_WRITE 
GO
