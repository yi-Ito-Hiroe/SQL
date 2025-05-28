-- SQL課題④：書籍と著者の情報を結合して表示
SELECT 
books.id,
books.title,
books.price,
books.genre_id,
authors.name AS author_name 
FROM books 
INNER JOIN authors ON books.author_id = authors.id;
