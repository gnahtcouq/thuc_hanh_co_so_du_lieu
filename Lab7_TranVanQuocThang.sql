--Họ tên: Trần Văn Quốc Thắng
--MSSV: DH52007101 
--Lớp: D20_TH11

--Bài 2
--1/ Thêm mới thông tin của 1 khoa:
-- Makhoa: TT
-- Tenkhoa: Toán tin
-- Tongsocb: 10
insert into khoa(makhoa, tenkhoa, tongsocb) values ('TT', N'Toán Tin', 10)

--2/ Thêm mới thông tin của 1 giảng viên:
-- Magv: G009
-- Hogv: Đinh Công
-- Tengv: Nam
-- Hocvi:TH
-- Makhoa: “TT”
insert into giangvien(magv, hoten, hocvi, makhoa) values ('G010', N'Đinh Công Nam', 'TH', 'TT')

--3/ Thêm thông tin thân nhân của giảng viên Đinh Công Nam
-- Hotentn: Đinh Công Nữ
-- Ngaysinh: 9/26/2006
-- Moiquanhe: Con

-- Hotentn: Mai Lan
-- Ngaysinh: 2/15/1977
-- Moiquanhe: Vợ
insert into thannhan(magv, hotentn, ngaysinhtn, moiquanhe) values ((select magv from giangvien where hoten=N'Đinh Công Nam'), N'Đinh Công Nữ', '2006/9/26', 'Con')
insert into thannhan(magv, hotentn, ngaysinhtn, moiquanhe) values ((select magv from giangvien where hoten=N'Đinh Công Nam'), 'Mai Lan', '1977/2/15', N'Vợ')

--4/
create table SV_HOCBONG(
	masv nchar(5),
	hosv nvarchar(20),
	tensv nvarchar(10),
	nu bit,
	makhoa varchar(4),
	hocbong real,
	primary key (masv)
)

insert into SV_HOCBONG select masv, hosv, tensv, phai, makhoa, hocbong from sinhvien where hocbong is not null

--5/ Tăng 30% học bổng cho các sinh viên của khoa Vật Lý và có matinhtp là 51
update sinhvien
set hocbong = hocbong * 0.3
where makhoa='VL' and matinhtp=51

--6/ Cập nhật thông tin của giảng viên có magv ‘G001’ như sau:
-- Tengv: Sơn
-- Hocham: PGS
update giangvien set
hoten = N'Sơn',
hocham = 'PGS'
where magv='G001'

--7/ Cập nhật thông tin của phòng thi là 307 của môn TKMC, học kỳ 2, năm học 2014-1015, giám thị G005
update thi set
mamh = 'TKMC',
hocky = 2,
namhoc = '2014-2015',
giamthi = 'G005'
where phongthi=307

--8/ Cập nhật thông tin của sinh viên 91045 như sau:
-- Nu: True
-- Ngaysinh: 26/7/1993
update sinhvien set
phai = 1,
ngaysinh = '1993/7/26'
where masv=91045

--9/ Xóa thông tin các sinh viên nam ra khỏi bảng SV_HOCBONG.
delete SV_HOCBONG
where nu = 0

--10/ Xóa bảng SV_HOCBONG
delete SV_HOCBONG
-- drop table SV_HOCBONG

select * from thi
select * from SV_HOCBONG
select * from khoa
select * from giangvien
select * from thannhan
select * from sinhvien