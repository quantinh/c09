-- 01. Ký hiệu ^ : tìm từ đầu chuỗi nguồn 
-- Tìm từ bắt đầu bằng Mya xem có trong mẫu chuỗi không nếu có trả về 1 nếu không trả về 0
SELECT 'MySQL is easy' REGEXP '^Mya';

-- 02. Ký hiệu $ : tìm từ cuối chuỗi nguồn
-- Tìm từ kết thúc bằng easy xem có trong mẫu chuỗi không nếu có trả về 1 nếu không trả về 0
SELECT 'MySQL is easy 1' REGEXP 'easy$';

-- 03. Ký hiệu . : đại diện một ký tự bất kỳ 
-- . Không quan trọng kí tự giữa là kí tự gì 
-- Tìm từ bắt đầu bằng Mya và kết thúc bằng kí tự SQL xem có trong mẫu chuỗi không nếu có trả về 1 nếu không trả về 0
SELECT 'MySQL' REGEXP '^M.SQL$';

-- 04. Ký hiệu * : ký tự xuất hiện 0 hoặc nhiều lần 
SELECT 'MyyyySQL' REGEXP '^M.*SQL$'; -- MSQL M....SQL
SELECT 'MyyyySQL' REGEXP '^M....SQL$';

-- 05. Ký hiệu + : ký tự xuất hiện 1 hoặc nhiều lần 
SELECT 'MyyyySQL' REGEXP '^M.+SQL$'; -- M.SQL M..SQL

-- 06. Ký hiệu ? : ký tự xuất hiện 0 hoặc 1 lần 
SELECT 'MyyyySQL' REGEXP '^M.?SQL$'; -- MSQL M.SQL không thoãi mãn

-- 07. Ký hiệu | : sự lựa chọn (hoặc)
SELECT 'My' REGEXP '^(My|Mi)$'; 
SELECT 'Mi' REGEXP '^(My|Mi)$';

-- 08. {n.m} Số lần xuất hiện của ký tự (a* tương đương a{0}; a+ tương đương a{1}; a? tương đương a{0,1})
SELECT 'abcdbcde' REGEXP 'a(bcd){1,5}e'; -- abcde abcdbcde




