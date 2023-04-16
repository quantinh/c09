-- 07. Hiển thị tất cả thông tin của kiến trúc sư "Le Thanh Tung" (where là ở đâu)
SELECT *
FROM architect
WHERE name = "le thanh tung";

-- 08. Hiển thị tên, năm sinh của các công nhân có chuyên môn là hàn hoặc điện
SELECT name, birthday, skill
FROM worker
WHERE skill = "han" OR skill = "dien";

-- 09. Hiển thị tên các công nhân có chuyên môn hàn hoặc điện và năm sinh lớn hơn 1948
SELECT name, birthday, skill
FROM worker
WHERE (skill = "han" OR skill = "dien") AND (birthday > 1948);

-- 10. Hiển thị những công nhân bắt đầu vào nghề khi tuổi dưới 20 (birthday + 20 > year)
SELECT *
FROM worker
WHERE birthday + 20 > year;

-- 11. Hiển thị những công nhân có năm sinh 1940, 1945, 1948
-- NOT IN nghĩa là không thuộc tập hợp trong in
-- C1
SELECT *
FROM worker
WHERE birthday = 1940 OR birthday = 1945 OR birthday = 1948;

-- C2
SELECT *
FROM worker
WHERE birthday IN (1940, 1945, 1948);

-- 12. Hiển thị những công nhân không sinh năm sinh 1940, 1945, 1948
SELECT *
FROM worker
WHERE birthday NOT IN (1940, 1945, 1948);

-- 13. Tìm những công trình có chi phí đầu tư từ 200 đến 500 triệu đồng
-- C1
SELECT *
FROM building
WHERE cost >= 200 AND cost <= 500;

-- c2
SELECT *
FROM building
WHERE cost BETWEEN 200 AND 500;

-- 14. Tìm kiếm những kiến trúc sư có họ là nguyen: % chuỗi
SELECT * 
FROM architect
WHERE name LIKE "nguyen%";

-- 15. Tìm kiếm những kiến trúc sư có họ lót là anh bắt đầu bằng chuỗi bất kì và sau đó bắt đầu bằng kí tự anh
SELECT * 
FROM architect
WHERE name LIKE "%anh%";

-- 16. Tìm kiếm những kiến trúc sư có tên bắt đầu th và có 3 kí tự
-- % là chuỗi bắt kì 
-- _ là đại diện cho kí tự bất kì
-- name bắt đầu bằng chuỗi bất kì (...%) và sau đó tiếp tục bắt đầu bằng kí tự th (_th) 

SELECT *
FROM architect
WHERE name LIKE "%th_";


-- 16. Tìm chủ thầu không có phone
SELECT * FROM contractor
WHERE phone IS NOT NULL;






