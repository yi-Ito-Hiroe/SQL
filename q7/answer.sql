-- SQL課題⑦：最も書籍数の多い著者の書籍を取得（サブクエリ）
SELECT b.*, a.name
FROM books b
JOIN authors a ON b.author_id = a.id
WHERE author_id = (
    SELECT author_id FROM books
    GROUP BY author_id             -- 著者ごとにグループ化
    ORDER BY COUNT(*) DESC         -- 書籍の多い順に並び替え
    LIMIT 1                        -- 1番多い著者だけを取得
);
