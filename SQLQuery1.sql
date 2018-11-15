create database QLWEBTINTUC
go

--INSERT INTMsg 213, Level 16, State 1, Line 1
--Column name or number of supplied values does not match table definition.O TAIKHOAN
--VALUES ('lam','123',0,1,0)
--INSERT INTO TAIKHOAN
--VALUES (N'BẢO',N'CHÂU','chaungocbao123','123bao123',0,1,0)
create table LOAI_TAIKHOAN 
(
 ID int IDENTITY(1,1) not null ,
 MA_LOAITK int ,
 TENLOAI_TK Nvarchar(100),
 DAXOA bit
 CONSTRAINT PK_LOAITK_MALOAITK PRIMARY KEY(MA_LOAITK)
 ) 
 create table TAIKHOAN
(	ID int  IDENTITY(1,1) not null ,
	TENTK NVARCHAR(255)	primary key not null,
	MK nvarchar(max) null,
	DANGNHAP BIT,
	LOAI_TK int ,
	DAXOA bit
)
 --INSERT INTO LOAI_TAIKHOAN
 --VALUES (N'TÀI KHOẢN THƯỜNG',0)
 --INSERT INTO LOAI_TAIKHOAN
 --VALUES (N'TÀI KHOẢN ADMIN',0)

alter table TAIKHOAN
ADD CONSTRAINT FK_TAIKHOAN FOREIGN KEY (LOAI_TK) REFERENCES LOAI_TAIKHOAN(MA_LOAITK)

create table LOAI_NHANIEN
(
	ID int,
	MALOAI_NV int primary key,
	TENLOAI_NV nvarchar(20),
	DAXOA bit
)
create table THE_LOAI
(
	ID int,
	MATHELOAI int primary key,
	TENTHELOAI nvarchar(255),
	DAXOA bit 
)
create table NHANVIEN
(
	ID int,
	MANV int primary key,
	TENNV nvarchar(100),
	BUT_DANH nvarchar(30),
	PHAI BIT,
	NGAY_SINH date,
	DC NVARCHAR(MAX),
	NGAY_VAOLAM date,
	NGAY_KETTHUC date,
	LOAINV int foreign key (LOAINV) references LOAI_NHANIEN(MALOAI_NV),
	TENTK NVARCHAR(255) FOREIGN KEY (TENTK) REFERENCES TAIKHOAN(TENTK),
	DAXOA int
)
create table TINTUC
(
	ID int,
	MA_TIN int primary key,
	T_GIA INT foreign key (T_GIA) references NHANVIEN(MANV),
	TIEUDE NVARCHAR(100),
	TOMTAT varchar(50),
	NGAYTAO date,
	NOIDUNG nvarchar(max),
	SOLANXEM int,
	TIN_NOI_BAT nvarchar(50),
	LOAI_TIN int foreign key (LOAI_TIN) references THE_LOAI(MATHELOAI),
	NGUOI_UPDATE int foreign key (NGUOI_UPDATE) references NHANVIEN(MANV),
	NGAY_UPDATE date,
	HINHANH NVARCHAR(MAX),
	DAXOA bit	
)
create table BINHLUAN
(
	ID int,
	MA_BL char(20)primary key,
	MATIN int foreign key (MATIN) references TINTUC(MA_TIN),
	NGUOI_BL nvarchar(20),
	NOIDUNG nvarchar(max),
	NGAY_TAO date,
	DAXOA bit
)

create table HINHANH
(
	ID int,
	MA_HA char(20) primary key,
	MATIN int foreign key (MATIN) references TINTUC(MA_TIN),
	URL char(50),
	NGAYTAO date,
	DAXOA bit
)



--insert into LOAI_NHANIEN
--values('nv1','admins'),
--	  ('nv2','write'),
--	  ('nv3','eddit'),
--	  ('nv4','upload')
	

--insert into theloai
--values('tl1','phapluat'),
--	  ('tl2','doisong')
	
--insert into nhanvien
--values('tran van a','forever alone','males','2/3/1990','QUAN 9 TP HCM','5/2/2005',null,'nv1','admins')

--insert into nhanvien
--values('tran van b','hikimori','males','3/5/1992','QUAN 2 TP HCM','5/2/2005',null,'nv2','writer01')

--insert into nhanvien
--values('huynh van k','yandere','females','1/1/1991','QUAN 3 TP HCM','2/4/2005',null,'nv2','writer02')

--insert into nhanvien
--values  ('nguyen van j','megami','females','4/22/1992','QUAN 1 TP HCM','5/2/2005',null,'nv3','edditor')

--insert into nhanvien
--values  ('nguyen van ba','hacker','males','4/23/1992','QUAN 7 TP HCM','5/2/2005',null,'nv4','coder')
	  


--	  SELECT COUNT(*) FROM TAIKHOAN WHERE TENTK='minhanh1'  AND MK='202cb962ac59075b964b07152d234b70'
