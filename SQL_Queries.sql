SELECT * FROM Employees WHERE Department_id=2;

SELECT Name AS DepartmentName, AVG(Employees.Salary) as AvgSalary
       from Department
    LEFT JOIN Employees ON Department.idDepartment = Employees.Department_id
        GROUP BY Department.Name;

SELECT Name AS Project_Name, COUNT(Employees.idEmployee) as TotalEmployees
       from Projects
    LEFT JOIN Employees ON Projects.idProject = Employees.Project_id
        GROUP BY Projects.Name;

UPDATE Employees SET Salary=5000 WHERE idEmployee=123456;
SELECT * FROM  Employees WHERE idEmployee=123456;