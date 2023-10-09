SELECT * FROM Employees WHERE DepartmentID = 3;

SELECT Projects.ProjectName AS Project_Name, COUNT(Employees.EmployeeID) AS Total_Employees
FROM Projects
LEFT JOIN Employees ON Projects.ProjectID = Employees.ProjectID
GROUP BY Projects.ProjectName;

SELECT Departments.DepartmentName AS DepartmentName, AVG(Employees.Salary) AS Average_Salary
FROM Departments
LEFT JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID
GROUP BY Departments.DepartmentName;

UPDATE Employees
SET Salary = 5000
WHERE EmployeeID = 20
