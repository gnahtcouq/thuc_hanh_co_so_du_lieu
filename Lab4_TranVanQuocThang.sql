--Họ và tên: Trần Văn Quốc Thắng
--MSSV: DH52007101

--Bài 1
--1/
SELECT HONV + TENLOT + TENNV HoTen, TENPHG
FROM NHANVIEN, PHONGBAN
WHERE NHANVIEN.PHONG = PHONGBAN.MAPHG

--2/
SELECT TENDA
FROM NHANVIEN N join PHANCONG P on N.MANV=P.MA_NVIEN
	join CONGVIEC C on P.MADA=C.SODA and P.STT= C.STT
	join DEAN D on C.SODA=D.MADA
WHERE HONV=N'Đinh' and TENLOT=N'Bá' and TENNV=N'Tiến'

--3/
SELECT HONV+TENLOT+TENNV [Họ Tên], NGSINH, TENTN, year(getdate())-year(THANNHAN.NGAYSINH) [Tuổi]
FROM NHANVIEN join THANNHAN on NHANVIEN.MANV=THANNHAN.MA_NVIEN
WHERE year(getdate())-year(THANNHAN.NGAYSINH) <= 15
ORDER BY year(getdate())-year(THANNHAN.NGAYSINH)  desc

--4/
SELECT distinct HONV, TENLOT, TENNV
FROM THANNHAN right join NHANVIEN on NHANVIEN.MANV=THANNHAN.MA_NVIEN
WHERE MA_NVIEN is null

--5/
SELECT TENDA, MADA, DDIEM_DA
FROM DDIEMPHG D join PHONGBAN P on D.MAPHG=P.MAPHG
	join DEAN DE on P.MAPHG=DE.PHONG
WHERE DDIEM_DA=DDIEM

--Bài 2
--1/
SELECT s.masv, hosv+tensv hoten, tenmh, lanthi, diemlt, diemth
FROM sinhvien s join ketqua k on s.masv=k.masv
	join monhoc m on k.mamh = m.mamh
	join dangky d on d.masv = s.masv
--2/
SELECT tenmh, hoten
FROM giangvien gv join giangday gd on gv.magv=gd.magv
	join monhoc m on m.mamh=gd.mamh
WHERE phutrach='LT'
--3/
SELECT *
FROM giangvien gv left join  thannhan t on gv.magv=t.magv
WHERE t.magv is null
--4/
SELECT hosv + tensv hoten, tenmh
FROM sinhvien s join ketqua k on s.masv=k.masv
	join monhoc m on m.mamh=k.mamh
WHERE diemth = 0 or diemlt = 0
--5/