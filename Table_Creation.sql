CREATE TABLE Projects(
    idProject int primary key ,
    Name varchar(30),
    Description VARCHAR(100),
    Start_date DATE,
    End_date DATE,
);
CREATE TABLE Department(
  idDepartment int primary key ,
  Name varchar(20),
  Description VARCHAR(100),
);
CREATE TABLE Employees(
    idEmployee int primary key ,
    FirstName VARCHAR(30),
    SecondName VARCHAR(30),
    Email VARCHAR(40),
    PhoneNumber VARCHAR(12),
    Salary INT,
    Department_id INT,
    Project_id INT
    CONSTRAINT FK_Employee_Department FOREIGN KEY (Department_id) REFERENCES Department(idDepartment),
    CONSTRAINT FK_Employee_Project FOREIGN KEY (Project_id) REFERENCES Projects(idProject)
);

DROP TABLE Employees;
DROP TABLE Department;
DROP TABLE Projects;
