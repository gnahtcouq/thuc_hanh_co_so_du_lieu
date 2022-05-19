--1. Ràng buộc các ràng buộc toàn vẹn sau: Số tín chỉ của một môn học thấp nhất là 1 và cao nhất là 6 (1điểm)
alter table monhoc add constraint chk2
check (sotinchi >= 1 and sotinchi <= 6) 

ALTER TABLE monhoc
WITH CHECK CHECK CONSTRAINT chk2

-- 2. Nhập thêm vào bảng sinh viên một dòng mới với thông tin như sau (1điểm)
-- + Mã sinh viên: 05555
-- + Các thông tin khác chính là các thông tin của mình
insert into sinhvien values ('05555', N'Trần Văn Quốc', N'Thắng', 0, '2002/10/29', '41', NULL, 'CNTT', '2020-2021', NULL)
--3. Thống kê tổng số sinh viên THEO TỪNG TÊN CHUYÊN NGÀNH (1điểm)

select khoa.makhoa,count(masv) as SL
from khoa left join sinhvien on khoa.makhoa=sinhvien.makhoa
group by khoa.makhoa

--4. Liệt kê những tên môn học bắt buộc (1điểm)


--5. Liệt kê những môn học chưa có sinh viên đăng ký, dùng truy vấn con (1điểm)
select mamh,tenmh,makhoa
from monhoc
where mamh not in(select distinct mamh
from dangky )

--6. Viết câu truy vấn để tạo bảng "SinhVienCNTT" với các thông tin của những sinh viên thuộc chuyên ngành CNTT (Gợi ý: SV tạo bảng "SinhVienCNTT" với cấu trúc giống với bảng sinh viên trước) (1 điểm)
create table SinhVienCNTT(
	masv nchar(10),
	hosv nvarchar(50),
	tensv nvarchar(10),
	phai bit,
	ngaysinh date,
	matinhtp nchar(10),
	tinhtranggd nchar(10),
	makhoa nchar(10),
	nhaphoc nchar(10),
	hocbong real,
	primary key (masv),
)

alter table SinhVienCNTT add constraint FK_SinhVienCNTT_Khoa
foreign key (makhoa) references khoa(makhoa)

insert into SinhVienCNTT select * from sinhvien where makhoa='CNTT'

select * from SinhVienCNTT

--7. Cập nhật lại số tín chỉ của môn "Tri tue nhan tao" là 6 (0.5 điểm)
update monhoc set
sotinchi = 6
where tenmh = 'Tri tue nhan tao'

--8. Liệt kê các môn học có số tín chỉ là nhỏ nhất (1 điểm)

select top 1 with ties mamh, tenmh, sotinchi
from monhoc
order by sotinchi asc

select mamh, tenmh, sotinchi
from monhoc
where sotinchi = (select min(sotinchi) from monhoc)

--9. Liệt kê các môn học có số tín chỉ lớn hơn số tín chỉ trung bình của các môn học (1 điểm)
select mamh, tenmh, sotinchi
from monhoc
where sotinchi > (select avg(sotinchi) from monhoc)

--10. Thống kê mỗi sinh viên có tổng số tín chỉ là bao nhiêu? Chỉ xuất những sinh viên có tổng số tín chỉ từ 5 trở lên (1.5 điểm)
select dangky.masv,sum(sotinchi) as [cu to]
from dangky join monhoc on dangky.mamh=monhoc.mamh
group by dangky.masv
having sum(sotinchi) > 5

select *
from dangky join monhoc on dangky.mamh=monhoc.mamh


select * from sinhvien
select * from monhoc
select * from dangky
