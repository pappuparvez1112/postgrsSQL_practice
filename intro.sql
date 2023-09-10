-- Active: 1693936014144@@127.0.0.1@5432@test1
DROP DATABASE university_management

CREATE DATABASE db1;
DROP DATABASE test;

CREATE TABLE student(
    student_id INT ,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    CGPA NUMERIC(1,2)
)

ALTER TABLE student RENAME TO learners;
DROP TABLE learners;

CREATE TABLE users(
    users_id SERIAL,
    users_name VARCHAR(200) UNIQUE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    PRIMARY KEY (users_id,users_name)
)

CREATE TABLE users1(
    users_id SERIAL PRIMARY KEY,
    users_name VARCHAR(200) UNIQUE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    age INT DEFAULT 18
   
)

INSERT INTO users1 VALUES (1,'abcdef','abc22fegmail.com');

INSERT INTO users1 VALUES (2,'abcdefg','abc22feggmail.com');

INSERT INTO users1 (demo)
VALUES
('check');
INSERT INTO users1 (demo)
VALUES
('check1');
INSERT INTO users1 (demo)
VALUES
('check2');
INSERT INTO users1 (demo)
VALUES
('check3')


TRUNCATE TABLE users1;
--## ALTER TABLE
--ADD a column,drop a column,change datatype of a COLUMN
--rename a column ,set DEFAULT value for a COLUMN
--add constraint to a column ,drop CONSTRAINT for a COLUMN
--table RENAME
--ALTER TABLE table_name ACTION


ALTER Table users1
ADD COLUMN password VARCHAR(200) DEFAULT 'admin123' not null

ALTER TABLE users1 add column demo int;
ALTER Table users1
Alter COLUMN demo type text;

ALTER Table users1
alter COLUMN demo set DEFAULT 'bangladesh'

ALTER Table users1
alter COLUMN demo DROP DEFAULT;

--rename column
ALTER Table users1
RENAME COLUMN demo to country;

--adding constraint 
ALTER Table users1
alter COLUMN  country set not null;



insert into users1 VALUES (5,'salman5','salman5@gmail.com')




ALTER TABLE users1
DROP COLUMN demo;

SELECT * FROM users1;



