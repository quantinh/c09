-- 01. Hiển thị toàn bộ nội dung của bảng Architect
use sql_qlct;
SELECT * 
FROM architect;

-- 02. Hiển thị danh sách gồm họ tên và giới tính của kiến trúc sư
SELECT name, sex 
FROM architect;

-- 03. Hiển thị năm sinh của các kiến trúc sư
SELECT ALL birthday
FROM architect;

-- 04. Hiển thị những năm sinh có thể (là những năm sinh không trùng nhau) có của các kiến trúc sư
SELECT DISTINCT birthday 
FROM architect;

-- 05. Hiển thị danh sách các kiến trúc sư (họ và tên và năm sinh tăng dần ASC mặc định nên có hay không vẫn được)
SELECT name, birthday
FROM architect
ORDER BY birthday DESC;

-- 06. Hiển thị danh sách các kiến trúc sư (họ tên và năm sinh) (giá trị năm sinh giảm dần)
SELECT name, birthday 
FROM architect
ORDER BY birthday DESC;

-- 07. Hiển thị danh sách các công trình có chi phí thấp đến cao. Nếu 2 công trình có chi phí bằng nhau sắp xếp tên thành phố theo bảng chữ cái abc ngược lại cba
SELECT name, cost, city
FROM building
ORDER BY cost ASC, city DESC;





