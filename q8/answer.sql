-- SQL課題⑧：価格帯で書籍を分類（CASE文）
SELECT title, price,
 CASE 
    WHEN price <= 1500 THEN '安い'
    WHEN price >= 1501 AND price <= 2500 THEN '普通'
    ELSE '高い'
 END AS category
FROM books;

