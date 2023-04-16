-- Outer Join
-- Hiển thị danh sách các kiến trúc sư cùng với tong thù lao của các kiến trúc sư đó
-- Case 1: không vẫn lấy ra được nhưng không xuất hiện được các kiến trúc sư không có thiết kế (tức là kiến trúc sư đó vẫn có thông tin bên bảng architect nhưng không có thông tin trong bảng design)
SELECT a.name, SUM(benefit) AS tong
FROM architect AS a, design AS d
WHERE a.id = d.architect_id
GROUP BY d.architect_id;

-- Case 2: không vẫn lấy ra được nhưng không xuất hiện được các kiến trúc sư không có thiết kế (tức là kiến trúc sư đó vẫn có thông tin bên bảng architect nhưng không có thông tin trong bảng design)
SELECT a.name, SUM(benefit) AS tong
FROM architect AS a JOIN design AS d ON a.id = d.architect_id
GROUP BY d.architect_id;

-- Case 3: lấy được của bảng architect và bảng design, kể cả bên bảng design không chứ thông tin của kiến trúc sư trong bảng architect.
SELECT a.name, SUM(benefit) AS tong
FROM architect AS a LEFT JOIN design AS d ON a.id = d.architect_id
GROUP BY d.architect_id;

-- Case 4
-- Lấy bảng bên phải nhiều hơn đó là bảng design kết quả sẽ là các kiến trúc sư có thiết kế 
SELECT a.name, SUM(benefit) AS tong
FROM architect AS a RIGHT JOIN design AS d ON a.id = d.architect_id
GROUP BY d.architect_id;

-- Đảo ngược lại thì sẽ lấy được bảng bên phải là bảng architect nhiều hơn thì sẽ lấy được kể các kiến trúc sư không có thiết kế
SELECT a.name, SUM(benefit) AS tong
FROM design AS d RIGHT JOIN architect AS a ON a.id = d.architect_id
GROUP BY d.architect_id;