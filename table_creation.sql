CREATE DATABASE CompanyDB;

USE CompanyDB;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    StartDate DATE,
    EndDate DATE
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    ProjectID INT,
    Salary DECIMAL(10, 2),
    CONSTRAINT FK_Employee_Department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    CONSTRAINT FK_Employee_Project FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);