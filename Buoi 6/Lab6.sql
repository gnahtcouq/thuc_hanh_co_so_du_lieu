--Họ tên: Trần Văn Quốc Thắng
--Lớp: D20_TH11
--MSSV: DH52007101

--1. Cho biết họ tên nhân viên (HONV, TENLOT, TENNV) có mức lương trên mức lương trung bình của phòng "Nghiên cứu"
SELECT HONV, TENLOT, TENNV
FROM NHANVIEN
WHERE LUONG > (SELECT avg(LUONG)
FROM NHANVIEN join PHONGBAN on NHANVIEN.PHONG=PHONGBAN.MAPHG
WHERE TENPHG=N'Nghiên Cứu')

--2. Danh sách những nhân viên (HONV, TENLOT, TENNV) mà không có danh sách thân nhân.
SELECT HONV, TENLOT, TENNV
FROM NHANVIEN
WHERE MANV not in(SELECT MA_NVIEN FROM THANNHAN)

--3. Danh sách những trưởng phòng (HONV, TENLOT, TENNV) có tối thiểu một thân nhân.
SELECT HONV, TENLOT, TENNV
FROM NHANVIEN join PHONGBAN on NHANVIEN.MANV=PHONGBAN.TRUONGPHG
WHERE MANV in(SELECT MA_NVIEN FROM THANNHAN)

SELECT HONV, TENLOT, TENNV
FROM NHANVIEN join PHONGBAN on NHANVIEN.PHONG=PHONGBAN.MAPHG
WHERE MANV=TRUONGPHG and MANV in(SELECT MA_NVIEN FROM THANNHAN)

--4. Cho biết danh sách các mã đề án mà nhân viên có mã là 009 chưa làm.
SELECT MADA
FROM DEAN
WHERE MADA not in (SELECT MADA FROM PHANCONG WHERE MA_NVIEN='009')

--5. Cho biết tên phòng ban của phòng ban có đông nhân viên nhất.
--C1: Không sử dụng truy vấn con
SELECT top 1 PHONG, TENPHG, count(*) as SL
FROM NHANVIEN join PHONGBAN on NHANVIEN.PHONG=PHONGBAN.MAPHG
GROUP BY PHONG, TENPHG
ORDER BY SL desc

--C2: Có sử dụng truy vấn con
SELECT PHONG, TENPHG, count(*) as SL
FROM NHANVIEN join PHONGBAN on NHANVIEN.PHONG=PHONGBAN.MAPHG
GROUP BY PHONG, TENPHG
HAVING count(*)>=all(SELECT count(*) as SL FROM NHANVIEN GROUP BY PHONG)

--5b. Cho biết tên phòng ban và họ tên trưởng phòng của phòng ban có đông nhân viên nhất
SELECT nv1.PHONG, TENPHG, nv2.TENNV, count(*) as SL
FROM NHANVIEN nv1 join PHONGBAN on nv1.PHONG=PHONGBAN.MAPHG join NHANVIEN nv2 on nv2.MANV = PHONGBAN.TRUONGPHG
GROUP BY nv1.PHONG, TENPHG, nv2.TENNV
HAVING count(*)>=all(SELECT count(*) as SL FROM NHANVIEN GROUP BY PHONG)

--6. Tìm họ tên (HONV, TENLOT, TENNV) và địa chỉ (DCHI) của những nhân viên làm việc cho một đề án ở 'TP HCM' nhưng phòng ban mà họ trực thuộc lại không tọa lạc ở thành phố 'TP HCM'.
SELECT distinct HONV, TENLOT, TENNV, DCHI
FROM NHANVIEN join PHANCONG on NHANVIEN.MANV=PHANCONG.MA_NVIEN join DEAN on PHANCONG.MADA=DEAN.MADA
WHERE DDIEM_DA='TP HCM' and NHANVIEN.PHONG not in (SELECT MAPHG from DDIEMPHG where DDIEM='TP HCM')

--7. Tìm họ tên và địa chỉ của các nhân viên làm việc cho một đề án ở một thành phố nhưng địa điểm phòng ban mà họ trực thuộc lại không toạ lạc ở thành phố đó.
--8. Cho biết danh sách các công việc (tên công việc) trong đề án 'Sản phẩm X' mà nhân viên có mã là 009 chưa làm.