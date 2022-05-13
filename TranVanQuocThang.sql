--Họ tên: Trần Văn Quốc Thắng
--MSSV: DH52007101
--Lớp: D20_TH11

--1/ Tạo kiểm tra ràng buộc Check2 cho cột NgaySinh bảng SinhVien như sau: Tính tới thời điểm hiện tại sinh viên nhập học phải lớn hơn 17 tuổi
alter table sinhvien add constraint kiemtra_ngaysinh
check(year(getdate())-year(ngaysinh) > 17)

--2/ Hiển thị danh sách các sinh viên thuộc các khoa có mã là 'CNTT', 'VL', 'QTKD', 'XD'
select *
from sinhvien
where makhoa in ('CNTT', 'VL', 'QTKD', 'XD')

--3/ Hiển thị danh sách các sinh viên sinh quí 4, năm 1996
select *
from sinhvien
where year(ngaysinh)='1996' and datepart(qq, ngaysinh)=4

--4/ Danh sách tên của những môn học có số tín chỉ lớn hơn số tín chỉ của môn ‘Cơ sở dữ liệu’
select mamh, tenmh, sotinchi
from monhoc
where sotinchi > (select sotinchi from monhoc where tenmh=N'Cơ sở dữ liệu')

--5/ Danh sách tên của những môn học đứng đầu về số tín chỉ
select mamh, tenmh, sotinchi
from monhoc
where sotinchi = (select max(sotinchi) from monhoc)

--6/ Tạo view cho biết tên các môn học mà giáo viên “Nguyễn Kim Oanh” không giảng dạy
create view DSMH_GVNKOKhongDay
as
select distinct tenmh
from giangday join monhoc on giangday.mamh=monhoc.mamh
where monhoc.mamh != (select giangday.mamh from giangvien join giangday on giangvien.magv=giangday.magv where hoten=N'Nguyễn Kim Oanh')

--7/ Danh sách mã số và họ tên giảng viên có trên 2 thân nhân
select giangvien.magv, hoten, count (*) as SLThanNhan
from giangvien join thannhan on giangvien.magv = thannhan.magv
where giangvien.magv in (select magv from thannhan)
group by giangvien.magv, hoten
having count (*) > 2

--8/ Tạo bảng KETQUADAU(namhoc, hocky,masv,mamh,lanthi,diemLT,diemTH). Sau đó, thêm vào bảng KETQUADAU danh sách các sinh viên có kết quả điểm trung bình thực hanh và lý thuyết trên 5 từ bảng KETQUA
create table KETQUADAU(
	namhoc date,
	hocky int,
	masv nchar(10),
	mamh nchar(10),
	lanthi int,
	diemLT real,
	diemTH real,
)

insert into KETQUADAU select namhoc, hocky, masv, mamh, lanthi, diemlt, diemth from ketqua where (diemlt+diemth)/2 > 5

--9/ Cập nhật ngày sinh của sinh viên ‘91002’ thành 17/4/1995
update sinhvien set
ngaysinh = '1995/04/17'
where masv = 91002

--10/ Sửa lại mối quan hệ con trai của giảng viên ‘G005’ thành  ‘Con gái’
update thannhan set
moiquanhe = N'con gái'
where magv = 'G005' and moiquanhe = 'con trai'

select * from sinhvien
select * from thannhan
select * from giangday
select * from giangvien





select * from monhoc
select * from sinhvien