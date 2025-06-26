\set word1 random(1, 100)
\set word2 random(1, 100)
\set word3 random(1, 100)
\set id random(1, 100000)
\set author_id random(1, 10)
\set age random(10, 90)

INSERT INTO posts (title, body, slug, created_at, updated_at, author_id)
VALUES (
  'Post ' || :word1 || ' sobre ' || :word2 || ' e ' || :word3,
  'Este é o corpo do post número ' || :id || '. Conteúdo gerado automaticamente.',
  lower(replace('Post ' || :word1 || ' sobre ' || :word2 || ' e ' || :word3, ' ', '-')),
  now(),
  now(),
  :author_id
);

INSERT INTO people (name, age, created_at, updated_at)
VALUES (
  'people name ' || :word2,
  :age,
  now(),
  now()
);

