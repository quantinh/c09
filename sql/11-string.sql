-- 01. LENGTH (str): Xác định chiều dài chuỗi str
-- Độ dài của một chuỗi được tính bao gồm cả khoảng trắng và các ký tự đặc biệt. Độ dài của một chuỗi được tính bao gồm cả khoảng trắng và các ký tự đặc biệt.
SELECT LENGTH('MySQL');
SELECT LENGTH('MySQL is easy');

-- 02. CONCAT (str1, str2, …, strn) Nối các chuỗi str1, str2, …, strn thành một chuỗi duy nhất
SELECT CONCAT('MySQL', ' is', ' easy');
-- Trong khi sử dụng hàm CONCAT, nếu có một chuỗi NULL trong danh sách các chuỗi thì kết quả trả về sẽ là NULL.
SELECT CONCAT('MySQL', ' is', NULL, ' easy');

-- 03. FORMAT (str, n) Chuyển đổi định dạng chuỗi str theo dạng #,###,###.##, trong đó làm tròn đến n 
-- số thập phân.
SELECT FORMAT(12345.6789, 2);
-- Khi muốn làm tròn số thập phân có bao nhiêu số thập phân thì điền vào tham số thứ hai của hàm FORMAT., và tham số thứ hai = 0 là làm tròn số nguyên
SELECT FORMAT(12345.6789, 0);

-- 04. INSERT (str, pos, len, newstr) Thay thế các ký tự trong chuỗi str từ vị trí thứ pos đến vị trí 
-- thứ pos+len-1 bởi chuỗi ký tự newstr.
-- Khi muốn thay thế thì sử dụng hàm INSERT('chuỗi muốn thay thế', vị trí bắt đầu, vị trí kết thúc, 'chuỗi thay thế')
SELECT INSERT('MySQL is easy', 3, 3, 'Library'); -- SQL
SELECT INSERT('MySQL is easy', 3, 100, 'Library'); -- S

-- 05. INSTR (str, substr) Trả về vị trí xuất hiện đầu tiên của chuỗi substr trong chuỗi str
-- khi muốn kiểm tra 1 chuỗi xuất hiện ở vị trí nào trong chuỗi mẫu thì dùng hàm INSTR('chuỗi mẫu', 'chuỗi cần kiểm tra') => kết quả sẽ ra số thứ tự mà chuỗi đó xuất hiện 
SELECT INSTR('MySQL', 'SQL');
-- Nếu không tìm thấy nó trả về 0, và nó không phân biệt chữ hoa hay thường
SELECT INSTR('Mysql SQL', 'PHP');

-- 06. LEFT (str, len) Trả về chuỗi ký tự tính từ vị trí bên trái của chuỗi str từ vị trí thứ nhất đến 
-- vị trí thứ len.
-- Phương thức LEFT cho phép lấy các kí tự từ trái sang phải tham số thứ hai là độ dài muốn lấy bao nhiêu trong chuỗi mẫu
SELECT LEFT('MySQL is easy', 7);

-- 07. RIGHT (str, len) Trả về chuỗi ký tự tính từ vị trí bên phải của chuỗi str từ vị trí thứ nhất đến 
-- vị trí thứ len.
-- Ngược lại với LEFT thì RIGHT sẽ lấy các kí tự từ phải sang trái
SELECT RIGHT('MySQL is easy', 6);

-- 08. LOCATE (substr, str, pos) Trả về vị trí xuất hiện đầu tiên của chuỗi substr trong chuỗi str tính 
-- từ vị trí thứ pos
-- Hàm LOCATE cho phép chúng ta tìm kiếm chuỗi ở tham số 1 có ở chuỗi mẫu ở tham số 2 hay không và nó ở vị trí số ma
SELECT LOCATE('very', 'MySQL is very easy'); -- v: 10
-- Tham số thứ 3 giúp tìm kiếm chuỗi đó ở vị trí thứ 11 có chuỗi tham số 1 ở vị trí mấy 
SELECT LOCATE('very', 'MySQL is very very easy', 11); -- v: 15

-- 09. LOWER (str) Chuyển đổi chuỗi str thành chữ thường
SELECT LOWER('MySQL is very easy');

-- 10. UPPER (str) Chuyển đổi chuỗi str thành chữ hoa
SELECT UPPER('MySQL is very easy');

-- 11. LTRIM (str) Loại bỏ tất cả khoảng trắng bên trái chuỗi str
SELECT LTRIM('     MySQL is very easy');

-- 12. RTRIM (str) Loại bỏ tất cả khoảng trắng bên phải chuỗi str
SELECT RTRIM('     MySQL is very easy        ');

-- 13. REPLACE (str, from_str, to_str) Thay thế các ký tự from_str trong chuỗi str bởi các ký tự to_str
SELECT REPLACE('MySQL is very easy', 'MySQL', 'PHP');
-- Không thay thế được vì chuỗi truyền vào phải đúng như mẫu chuỗi ở tham số 1
SELECT REPLACE('MySQL is very easy', 'mysql', 'PHP');

-- 14. REVERSE (str) Đảo ngược chuỗi str 
-- Nhớ là đảo chuỗi các kí tự cũng bị đảo từ phải sang trái 
SELECT REVERSE('MySQL is very easy');

-- 15. SUBSTRING (string FROM position FOR length) Trích lọc  từ  chuỗi  str  một chuỗi mới, chuỗi mới này  có các 
-- ký tự  bắt đầu từ  vị  trí  pos  (tính từ  vị  trí biên trái) cho đến vị trí pos+len-1.
-- Hàm này cho phép trích 1 chuỗi con từ chuỗi mẫu từ vị trí thứ 2 đến vị trí thứ 5 lấy ra 
SELECT SUBSTRING('MySQL is easy' FROM 2 FOR 5); -- v: ySQL

-- 16. TRIM ([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr FROM] str
-- Trả  về  chuỗi  str  với các  ký tự  remstr  đã bị  loại bỏ, theo các tiêu chí  LEADING  (bên trái), 
-- TRAILING (bên phải) và BOTH (cả hai vị trí bên trái và bên phải).
SELECT TRIM('   MySQL is easy    ');
-- Loại bỏ những dấu gạch bên trái từ chuỗi đã cho 
SELECT TRIM(LEADING '-' FROM '-------MySQL is easy--------');
-- Loại bỏ những dấu gạch bên phải từ chuỗi đã cho 
SELECT TRIM(TRAILING '-' FROM '-------MySQL is easy--------');
-- Loại bỏ những dấu gạch bên trái và bên phải từ chuỗi đã cho
SELECT TRIM(BOTH '-' FROM '-------MySQL is easy--------');
