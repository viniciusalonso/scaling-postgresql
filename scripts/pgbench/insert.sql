\set word1 random(1, 100)
\set word2 random(1, 100)
\set word3 random(1, 100)
\set id random(1, 100000)

INSERT INTO posts (title, body, slug, created_at, updated_at)
VALUES (
  'Post ' || :word1 || ' sobre ' || :word2 || ' e ' || :word3,
  'Este é o corpo do post número ' || :id || '. Conteúdo gerado automaticamente.',
  lower(replace('Post ' || :word1 || ' sobre ' || :word2 || ' e ' || :word3, ' ', '-')),
  now(),
  now()
);
