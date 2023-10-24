create database Registro;
use Registro;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ManagerID INT,
    DepartmentID INT,
    Salary DECIMAL(10, 2) 
);

INSERT INTO Employee (EmployeeID, FirstName, LastName, ManagerID, DepartmentID, Salary)
VALUES (1, 'John', 'Doe', 3, 101, 8000.00);

INSERT INTO Employee (EmployeeID, FirstName, LastName, ManagerID, DepartmentID, Salary)
VALUES (2, 'Jane', 'Smith', 3, 101, 7500.00);

INSERT INTO Employee (EmployeeID, FirstName, LastName, ManagerID, DepartmentID, Salary)
VALUES (3, 'Mike', 'Johnson', NULL, 102, 10000.00);

-- Exercício 1
SELECT E.FirstName AS EmployeeName, M.FirstName AS ManagerName
FROM Employee E
LEFT JOIN Employee M ON E.ManagerID = M.EmployeeID;

-- Exercício 2
SELECT E.FirstName AS EmployeeName, D.DepartmentName
FROM Employee E
INNER JOIN Department D ON E.DepartmentID = D.DepartmentID;

-- Exercício 3
SELECT E.FirstName AS EmployeeName
FROM Employee E
LEFT JOIN Employee M ON E.ManagerID = M.EmployeeID
WHERE M.EmployeeID IS NULL;

-- Exercício 4
SELECT E.FirstName AS EmployeeName, D.DepartmentName
FROM Employee E
LEFT JOIN Department D ON E.DepartmentID = D.DepartmentID
WHERE E.ManagerID IS NULL;

-- Exercício 5
SELECT E.FirstName AS EmployeeName
FROM Employee E
LEFT JOIN JobHistory JH ON E.EmployeeID = JH.EmployeeID
WHERE JH.EmployeeID IS NULL;

-- Exercício 6
SELECT D.DepartmentName, M.FirstName AS ManagerName
FROM Department D
LEFT JOIN Employee M ON D.DepartmentID = M.DepartmentID;

-- Exercício 7
SELECT D.DepartmentName
FROM Department D
LEFT JOIN Employee E ON D.DepartmentID = E.DepartmentID
WHERE E.EmployeeID IS NULL;

-- Exercício 8
SELECT E.FirstName AS EmployeeName
FROM Employee E
WHERE E.Salary BETWEEN 5000 AND 10000;

-- Exercício 9
SELECT D.DepartmentName, M.FirstName AS ManagerName, L.LocationName
FROM Department D
LEFT JOIN Employee M ON D.DepartmentID = M.DepartmentID
LEFT JOIN Locations L ON D.DepartmentID = L.DepartmentID;

-- Exercício 10
SELECT L.LocationName
FROM Locations L
LEFT JOIN Department D ON L.LocationID = D.LocationID
WHERE D.DepartmentID IS NULL;

-- Exercício 11
SELECT C.CountryName
FROM Countries C
LEFT JOIN Locations L ON C.CountryID = L.CountryID
WHERE L.LocationID IS NULL;

-- Exercício 12
SELECT D.DepartmentName
FROM Department D
LEFT JOIN Employee E ON D.DepartmentID = E.DepartmentID
WHERE E.EmployeeID IS NULL;

-- Exercício 13
SELECT D.DepartmentName, C.CountryName
FROM Department D
LEFT JOIN Locations L ON D.LocationID = L.LocationID
LEFT JOIN Countries C ON L.CountryID = C.CountryID;

-- Exercício 14
SELECT E.FirstName AS EmployeeName, R.RegionName
FROM Employee E
LEFT JOIN Locations L ON E.LocationID = L.LocationID
LEFT JOIN Countries C ON L.CountryID = C.CountryID
LEFT JOIN Regions R ON C.RegionID = R.RegionID;