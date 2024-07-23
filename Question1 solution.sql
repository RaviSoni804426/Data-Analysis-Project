create database pwioi;

use pwioi;
create table Employee(
 EmployeeID INT primary key,
 EmployeeName VARCHAR(45)
);
create table Department(
Department_ID int primary key,
Department_Name VARCHAR(225),
 EmployeeID INT,
 FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
create table Project(
ProjectId INT primary key,
ProjectName VARCHAR(255),
Department_ID INT,
status ENUM ('active', 'inactive'),
FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID)
);
create table Assignment(
Assignment_ID INT primary key,
assigning_date DATETIME,
Department_ID INT,
Project_Id INT,
FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID),
FOREIGN KEY (Project_Id) REFERENCES Project (ProjectId )
);
create table Employee_Assignment(
Employee_ID INT,
Assignment_ID INT,
FOREIGN KEY (Employee_ID) REFERENCES Employee(EmployeeID),
FOREIGN KEY (Assignment_ID) REFERENCES Assignment(Assignment_ID)
);
INSERT INTO Employee (EmployeeID, EmployeeName) 
VALUES (3, 'Alice Johnson');


INSERT INTO Assignment (Assignment_ID, assigning_date, Department_ID, Project_Id)
VALUES (3, '2024-07-23', (SELECT Department_ID FROM Department WHERE Department_Name = 'HR'), 
(SELECT ProjectId FROM Project WHERE ProjectName = 'Project Alpha'));

ALTER TABLE Employee 
ADD Email VARCHAR(100);

ALTER TABLE Department 
MODIFY COLUMN Department_Name VARCHAR(255);

ALTER TABLE Employee 
ADD Salary DECIMAL(10, 2);

SET SQL_SAFE_UPDATES = 0;

UPDATE Employee
SET Salary = Salary * 1.10
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM Department
    WHERE Department_Name = 'IT'
);











