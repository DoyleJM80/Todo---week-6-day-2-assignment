CREATE TABLE "todos" (
  "id" serial NOT NULL PRIMARY KEY,
  "title" varchar(255) NOT NULL,
  "details" text,
  "priority" int NOT NULL DEFAULT (1),
  "created_at" TIMESTAMP NOT NULL,
  "completed_at" TIMESTAMP
);

SELECT *
FROM todos;

INSERT INTO todos VALUES (1, 'wake', NULL , 5, now(), NULL);
INSERT INTO todos VALUES (2, 'eat', NULL , 4, now(), NULL);
INSERT INTO todos VALUES (3, 'work', NULL, 3, now(), NULL);
INSERT INTO todos VALUES (4, 'home', NULL, 2, now(), NULL);
INSERT INTO todos VALUES (5, 'sleep', NULL, 1, now(), '6-27-2017');

SELECT *
FROM todos
WHERE completed_at is NULL;

SELECT *
FROM todos
WHERE priority > 1;

UPDATE todos
SET completed_at = now()
where id = 1;


DELETE
FROM todos
WHERE completed_at is not NULL;
