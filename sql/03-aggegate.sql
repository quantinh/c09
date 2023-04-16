-- Aggregate Functions COUNT, MAX, MIN, SUM, AVG

-- 01. Thống kê tổng số kiến trúc sư 
SELECT COUNT(id) AS tong 
FROM architect;

SELECT name AS ho_ten 
FROM architect;

-- 02. Thống kê tổng số kiến trúc sư giới tính là nam(1)
SELECT COUNT(id) AS tong_nam 
FROM architect
WHERE sex = 1;

SELECT COUNT(id) as tong_nu
FROM architect
WHERE sex = 0;

-- 03. Tìm ngày tham gia công trình nhiều nhất của công nhân
SELECT MAX(total) AS max 
FROM work;

-- 04. Tìm ngày tham gia công trình ít nhất của công nhân
SELECT MIN(total) AS min 
FROM work;

-- 05. Tìm tổng số ngày tham gia công trình của tất cả công nhân
SELECT SUM(total) AS tong 
FROM work;

-- 06. Tìm tổng chi phí phải trả cho việc thiết kế công trình của kiến trúc sư có Mã số 1
SELECT SUM(benefit) AS tong_chi_phi 
FROM design
WHERE architect_id = 1;

-- 07. Tìm trung bình số ngày tham gia công trình của công nhân
SELECT AVG(total) AS trung_binh 
FROM work;

-- 08. Tìm số ngày tham gia công trình nhỏ nhất, lớn nhất, tổng số ngày tham gia công trình, trung bình số ngày tham gia công trình của công nhân
SELECT 
MIN(total) AS min, 
MAX(total) AS max, 
SUM(total) AS tong, 
AVG(total) AS avg 
FROM work;

-- Math: có thể sử dụng + - * / trong dấu ngoặc ()

-- 09. Hiển thị thông tin kiến trúc sư: họ tên, tuổi
SELECT name, (2013 - birthday) AS age
FROM architect;

-- 10. Tính thù lao của kiến trúc sư: Thù lao = benefit * 1000
SELECT architect_id, (benefit * 1000) AS cost FROM design;
