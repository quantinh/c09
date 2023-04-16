-- 01. Hiển thị thù lao trung bình của từng kiến trúc sư (architect_id group by) (là lấy ra từng kiến trúc sư và tính trung bình từng kiến trúc sư theo nhóm id)
SELECT architect_id, AVG(benefit) AS thu_lao_trung_binh
FROM design
GROUP BY architect_id;

-- 02. Hiển thị chi phí đầu tư cho các công trình ở mỗi thành phố
SELECT city, SUM(cost)
FROM building
GROUP BY city;

-- 03. Tìm các công trình có chi phí trả cho kiến trúc sư lớn hơn 50
SELECT building_id, SUM(benefit) AS total
FROM design
GROUP BY building_id
HAVING total > 50;

-- 04. Tìm các thành phố có ít nhất một kiến trúc sư tốt nghiệp
SELECT place, COUNT(id) AS total
FROM architect
GROUP BY place
HAVING total >= 2;

-- Thứ tự thực hiện các câu lệnh trong SQL
-- 01. FROM // Lấy các bảng cần thao tác
-- 02. WHERE // Chọn các dòng cần thao tác
-- 03. GROUP BY // Tạo thành các dòng với cùng giá trị cột
-- 04. HAVING // Chọn các nhóm thỏa điều kiện
-- 05. SELECT // Chọn các cột muốn hiển thị ra ngoài 
-- 06. ORDER BY // Sắp xếp thứ tự các dòng để hiển thị



