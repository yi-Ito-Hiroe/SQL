-- SQL課題③：ジャンルごとの冊数をカウント

-- selectでid取り出して、COUNTで件数数える、ASカラム名、booksテーブルから取得、idごとにグループ分けして集計
SELECT genre_id, COUNT(*) AS 件数 FROM books GROUP BY genre_id;
