--Họ tên: Trần Văn Quốc Thắng
--Bài 1
--1/
SELECT *
FROM NHANVIEN

--2/
SELECT manv, honv+' '+tennv hoten, mucluong 
FROM NHANVIEN

--3/
SELECT distinct mucluong 
FROM NHANVIEN

--4/
SELECT honv+' '+tennv [Họ Tên], mucluong [Mức Lương]
FROM NHANVIEN
WHERE mucluong BETWEEN 5000000 AND 7000000

--5/
SELECT macn [Mã CN], tencn [Tên CN]
FROM CHINHANH
WHERE manvptr IS NULL

--6/
SELECT honv+' '+tennv [Họ Tên], ngaysinh [Ngày sinh]
FROM NHANVIEN
WHERE honv LIKE N'Lý%' AND year(ngaysinh)=1988

--7/
SELECT mact [Mã CT], tenct [Tên CT], ngaybd [Ngày bắt đầu], ngaykt [Ngày kết thúc], matp [Mã TP], macn [Mã CN]
FROM CONGTRINH
WHERE ngaykt = '2010-12-10' AND matp = '02'

--8/
SELECT manv [Mã NV], honv+' '+tennv [Họ Tên], phai [Phái], ngaysinh [Ngày sinh], mucluong [Mức lương], macn [Mã CN]
FROM NHANVIEN
WHERE phai = N'Nữ' AND macn = 'C01' OR macn = 'C03'

--9/
SELECT TOP 5 manv [Mã NV], honv+' '+tennv [Họ Tên], year(getdate())-year(ngaysinh) [Tuổi]
FROM NHANVIEN
WHERE macn = 'C03'
ORDER BY [Tuổi]

--10/
SELECT mact, ngaybd, ngaykt, datediff(month,ngaybd,ngaykt)
FROM CONGTRINH
WHERE datediff(month,ngaybd,ngaykt) > 12
ORDER BY datediff(month,ngaybd,ngaykt) desc


--Bài 2
--1/
SELECT macb, ngaydi, KHACHHANG.MAKH, ten, dchi, dthoai
FROM KHACHHANG JOIN DATCHO ON KHACHHANG.MAKH=DATCHO.MAKH
ORDER BY ngaydi desc, macb asc

--2/
SELECT macb, ngaydi, NHANVIEN.MANV, ten, dchi, dthoai
FROM NHANVIEN JOIN PHANCONG ON NHANVIEN.MANV=PHANCONG.MANV
ORDER BY ngaydi desc, macb asc

--4/
SELECT LICHBAY.MACB, sbdi, giodi, gioden, ngaydi
FROM LICHBAY JOIN CHUYENBAY ON LICHBAY.MACB=CHUYENBAY.MACB