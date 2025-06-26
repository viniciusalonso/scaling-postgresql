\set author_id random(1, 10000)

SELECT * FROM posts WHERE author_id = :author_id ORDER BY created_at DESC;

SELECT * FROM posts WHERE author_id = :author_id AND created_at > NOW() - INTERVAL '1 day' ORDER BY created_at DESC;
