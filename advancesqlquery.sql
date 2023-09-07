CREATE DATABASE advanceSQLQuiries;

--department TABLE
--each department has many employes

CREATE TABLE Department(
    deptID SERIAL PRIMARY KEY,
    deptName VARCHAR(50)
);
insert into Department VALUES(2,'CSE');
DELETE from Department WHERE deptID=2;
SELECT* from Department;


--emloye table 
--each employe belongs to a department

CREATE Table Employe(
    empID SERIAL PRIMARY KEY,
    empName VARCHAR(50) NOT NULL,
    departmentID INT ,
    CONSTRAINT fk_constraint_dept
    FOREIGN KEY (departmentID)
    REFERENCES Department(deptID)
);

insert into Employe VALUES(2,'parvez1',1);
DELETE from Employe WHERE empID=1;

SELECT* from Employe;


CREATE Table IF NOT EXISTS courses(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    description VARCHAR (255),
    published_date DATE,
    price INTEGER NOT NULL
)

INSERT INTO courses(course_name,description,published_date,price)VALUES(
    'Postgres sql5','a complete backend server5','2020-07-13',15000
)

SELECT * FROM courses;




INSERT into courses(course_name,description,published_date,price)
VALUES
('Postgres sql','a complete backend server','2020-07-13',15000),
('Postgres sql1','a complete backend server1','2020-07-14','10000'),
('Postgres sql2','a complete backend server2',NULL,'8000'),
('Postgres sql3',NULL,NULL,'3000'),
('Postgres sql4','a complete backend server4','2020-07-15','6000')


---update database table column

-- UPDATE table_name
-- set
--  COLUMN1=value1
-- COLUMN2=value2
-- where condition

UPDATE courses
set description='DESCRIPTION ADDED',
published_date='2023-08-20'
where course_id=5 ;

DELETE FROM courses
WHERE course_id>=1 AND course_id<6

SELECT*FROM courses;

SELECT course_id,description from courses;

SELECT* from courses
WHERE published_date>='2020-07-13'

SELECT* from courses
WHERE course_name <> 'Postgres sql' AND published_date>='2020-07-13' AND course_id>=7 AND course_id<=9;

SELECT* from courses
--this is not correct
WHERE published_date <> Null;
---this is correct
SELECT * FROM courses WHERE published_date IS NULL;


SELECT* from courses
WHERE course_name <> 'Postgres sql3' AND published_date>='2020-07-13' OR course_name='Postgres sql2';


-- sort filtering pg_collation_actual_version

SELECT *FROM courses ORDER BY price ASC
LIMIT 4;

SELECT *FROM courses ORDER BY price ASC
LIMIT 1 OFFSET 3;


--IN, NOT IN ,BETWEEN, LIKE

SELECT * FROM courses WHERE course_id IN(2,5);
SELECT * FROM courses WHERE course_id NOT IN(2,5);
SELECT * FROM courses WHERE course_id IN(2,5);
SELECT * FROM courses WHERE price BETWEEN 3000 AND 7000;


SELECT * FROM courses WHERE description LIKE '%D%';
SELECT * FROM courses WHERE description LIKE 'a%';
SELECT * FROM courses WHERE description LIKE '%r';
SELECT * FROM courses WHERE description LIKE '__c%';
SELECT * FROM courses WHERE description LIKE 'a%r';
SELECT * FROM courses WHERE published_date IS NULL;



