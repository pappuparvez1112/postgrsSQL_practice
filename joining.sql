CREATE TABLE Department(
    deptID int PRIMARY KEY,
    deptName VARCHAR(50)
);

TRUNCATE TABLE Department;
insert into Department(deptID,deptName) VALUES(1,'Executive');
insert into Department(deptID,deptName) VALUES(2,'HR');
insert into Department(deptID,deptName) VALUES(3,'Sales');
insert into Department(deptID,deptName) VALUES(4,'Development');
insert into Department(deptID,deptName) VALUES(5,'Support');
insert into Department(deptID,deptName) VALUES(6,'Research');




--emloye table 
--each employe belongs to a department

CREATE Table Employe(
    empID int PRIMARY KEY,
    full_Name VARCHAR(50),
    departmentID INT ,
    job_role VARCHAR(100),
    manager_id int,
    salary int,
 
  
    
    FOREIGN KEY (departmentID)
    REFERENCES Department(deptID)
);
TRUNCATE TABLE Employe;



insert into Employe (empID,full_name,departmentID,job_role,manager_id,salary)VALUES(1,'parvez1',1,'CEO',NULL,3000);
insert into Employe (empID,full_name,departmentID,job_role,manager_id,salary)VALUES(2,'parvez2',1,'CIO',1,4000);
insert into Employe (empID,full_name,departmentID,job_role,manager_id,salary)VALUES(3,'parvez3',2,'Manager',1,6000);
insert into Employe (empID,full_name,departmentID,job_role,manager_id,salary)VALUES(4,'parvez4',4,'support manager',2,7000);
insert into Employe (empID,full_name,departmentID,job_role,manager_id,salary)VALUES(5,'parvez5',3,'Hr recieptionist',4,8000);
insert into Employe (empID,full_name,departmentID,job_role,manager_id,salary)VALUES(6,'parvez6',5,'News presenter',5,9000);
insert into Employe (empID,full_name,departmentID,job_role,manager_id,salary)VALUES(7,'parvez7',3,'Journalist',7,11000);
insert into Employe (empID,full_name,departmentID,job_role,manager_id,salary)VALUES(8,'parvez8',4,'Cameraman',8,14000);
insert into Employe (empID,full_name,departmentID,job_role,manager_id,salary)VALUES(9,'parvez9',2,'Operator',6,9000);
insert into Employe (empID,full_name,departmentID,job_role,manager_id,salary)VALUES(10,'parvez10',1,'keyboard Typer',9,15000);
insert into Employe (empID,full_name,departmentID,job_role,manager_id,salary)VALUES(11,'parvez11',5,'Administrator',3,16000);
insert into Employe (empID,full_name,departmentID,job_role,manager_id,salary)VALUES(12,'parvez12',NULL,'Head od department',1,20000);




SELECT Employe.full_name,Employe.job_role,Department.deptname
from Employe
INNER JOIN Department ON Department.deptid=Employe.departmentid

SELECT *
from Employe
RIGHT JOIN Department ON Department.deptid=Employe.departmentid

SELECT *
from Employe
LEFT JOIN Department ON Department.deptid=Employe.departmentid

SELECT *
from Employe
FULL JOIN Department ON Department.deptid=Employe.departmentid

--aggregate FUNCTION

-- SELECT  AVG(salary) Averagesalary from Employe;
-- SELECT  sum(salary) Averagesalary from Employe;
-- SELECT  MAX(salary) Averagesalary from Employe;

 SELECT  full_name,max(salary)  from Employe GROUP BY full_name;

 SELECT d.deptname, avg(e.salary),max(e.salary) FROM Employe e
FULL JOIN Department d on e.departmentid=d.deptid
GROUP BY d.deptname 

 SELECT d.deptname, avg(e.salary),max(e.salary),count(*) FROM Department d
FULL JOIN Employe e on e.departmentid=d.deptid
GROUP BY d.deptname

--filtering with GROUP BY

 SELECT d.deptname, avg(e.salary),max(e.salary),count(*) FROM Department d
FULL JOIN Employe e on e.departmentid=d.deptid
GROUP BY d.deptname HAVING d.deptname='Executive';




SELECT* from Department;
TRUNCATE TABLE Department;
SELECT* from Employe;




