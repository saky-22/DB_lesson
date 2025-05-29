INSERT INTO reports (person_id, content) VALUES (7,'激辛ラーメン');
INSERT INTO reports (person_id, content) VALUES (8,'焼き鳥');
INSERT INTO reports (person_id, content) VALUES (9,'ストゼロ');
INSERT INTO reports (person_id, content) VALUES (10,'納豆巻き');
INSERT INTO reports (person_id, content) VALUES (11,'お寿司');
INSERT INTO reports (person_id, content) VALUES (12,'ペペロンチーノ');
INSERT INTO reports (person_id, content) VALUES (13,'から揚げ');
INSERT INTO reports (person_id, content) VALUES (14,'ビール');
INSERT INTO reports (person_id, content) VALUES (15,'梅水晶');
INSERT INTO reports (person_id, content) VALUES (16,'ペヤング');

UPDATE people SET email = 'suzuki@gizumo.jp' WHERE department_id = 1;
UPDATE people SET email = 'tanaka@gizumo.jp' WHERE department_id = 2;
UPDATE people SET email = 'fukuda@gizumo.jp' WHERE department_id = 3;
UPDATE people SET email = 'toyoshima@gizumo.jp' WHERE department_id = 4;
UPDATE people SET email = 'NULL' WHERE department_id = 5;

UPDATE people SET name = '板垣李光人' WHERE person_id = 7;
UPDATE people SET name = '目黒蓮' WHERE person_id = 8;
UPDATE people SET name = 'ラウール' WHERE person_id = 9;
UPDATE people SET name = '木村拓哉' WHERE person_id = 10;
UPDATE people SET name = '今田美桜' WHERE person_id = 11;
UPDATE people SET name = '有村架純' WHERE person_id = 12;
UPDATE people SET name = '橋本環奈' WHERE person_id = 13;
UPDATE people SET name = '櫻井翔' WHERE person_id = 14;
UPDATE people SET name = '松本潤' WHERE person_id = 15;
UPDATE people SET name = '渡辺翔太' WHERE person_id = 16;
INSERT INTO people (name, department_id)
VALUES ('吉沢亮', 1);

SELECT name,gender FROM people;

SELECT
  `name`, `email`, `age`
FROM
  `people`
WHERE
  `department_id` = 1
ORDER BY
  `created_at`;

peopleテーブルから、部署IDが1の人の名前・メールアドレス・年齢を取得し、作成日順に並べてください。

SELECT name FROM people WHERE(gender = 'female' AND age BETWEEN 20 AND 29)OR(gender = 'male' AND age BETWEEN 40 AND 49);

SELECT name FROM people WHERE department_id = '1' ORDER BY age ASC;
SELECT AVG(age) AS average_age FROM people WHERE department_id = '2'AND gender = 'female';
SELECT people.name,departments.name,reports.content 
FROM people
 INNER JOIN reports ON people.person_id = reports.person_id
 INNER JOIN departments ON people.department_id = departments.department_id;
SELECT name
 FROM people
 INNER JOIN reports ON people.person_id = reports.person_id 
 WHERE reports.content IS NULL;
SELECT name
FROM people
LEFT JOIN reports ON people.person_id = reports.person_id 
WHERE reports.person_id IS NULL;