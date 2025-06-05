Q1
CREATE TABLE departments(department_id INT unsigned NOT NULL auto_increment PRIMARY KEY,
name VARCHAR(20)NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);

Q2
ALTER TABLE people ADD (department_id INT unsigned NULL AFTER email);

Q3
INSERT INTO reports (person_id, content) VALUES (7,'激辛ラーメン'),(8,'お酒'),(9,'ストゼロ'),(10,'納豆巻き'),(11,'お寿司'),(12,'ペペロンチーノ'),(13,'から揚げ'),(14,'ビール'),(15,'梅水晶'),(16,'ペヤング');

Q4
UPDATE people SET email = 'suzuki@gizumo.jp' WHERE department_id = 1;
UPDATE people SET email = 'tanaka@gizumo.jp' WHERE department_id = 2;
UPDATE people SET email = 'fukuda@gizumo.jp' WHERE department_id = 3;
UPDATE people SET email = 'toyoshima@gizumo.jp' WHERE department_id = 4;
UPDATE people SET email = 'NULL' WHERE department_id = 5;

Q5
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

Q6
SELECT
  `name`, `email`, `age`
FROM
  `people`
WHERE
  `department_id` = 1
ORDER BY
  `created_at`;

peopleテーブルから、部署IDというカラム名が1の人の名前・メールアドレス・年齢のレコードを取得し、作成日順に並べてください。

Q7
SELECT name FROM people WHERE(gender = '女' AND age BETWEEN 20 AND 29)OR(gender = '男' AND age BETWEEN 40 AND 49);

Q8
SELECT name FROM people WHERE department_id = '1' ORDER BY age ASC;

Q9
SELECT AVG(age) AS average_age FROM people WHERE department_id = '2'AND gender = '女';

Q10
SELECT people.name,departments.name,reports.content 
FROM people
 INNER JOIN reports ON people.person_id = reports.person_id
 INNER JOIN departments ON people.department_id = departments.department_id;
SELECT name
 FROM people
 INNER JOIN reports ON people.person_id = reports.person_id 
 WHERE reports.content IS NULL;

Q11
SELECT name
FROM people
LEFT JOIN reports ON people.person_id = reports.person_id 
WHERE reports.person_id IS NULL;