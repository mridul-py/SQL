CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(20),
    HireDate DATE
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(50),
    Location NVARCHAR(100)
);

CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName NVARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    Budget DECIMAL(18, 2)
);

CREATE TABLE EmployeeProjects (
    EmployeeID INT,
    ProjectID INT,
    Role NVARCHAR(50),
    PRIMARY KEY (EmployeeID, ProjectID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '2020-01-01'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '123-456-7891', '2020-02-01'),
(3, 'Bob', 'Johnson', 'bob.johnson@example.com', '123-456-7892', '2020-03-01'),
(4, 'Alice', 'Williams', 'alice.williams@example.com', '123-456-7893', '2020-04-01'),
(5, 'Chris', 'Brown', 'chris.brown@example.com', '123-456-7894', '2020-05-01'),
(6, 'David', 'Jones', 'david.jones@example.com', '123-456-7895', '2020-06-01'),
(7, 'Eve', 'Garcia', 'eve.garcia@example.com', '123-456-7896', '2020-07-01'),
(8, 'Frank', 'Miller', 'frank.miller@example.com', '123-456-7897', '2020-08-01'),
(9, 'Grace', 'Davis', 'grace.davis@example.com', '123-456-7898', '2020-09-01'),
(10, 'Hank', 'Martinez', 'hank.martinez@example.com', '123-456-7899', '2020-10-01'),
(11, 'Ivy', 'Hernandez', 'ivy.hernandez@example.com', '123-456-7900', '2020-11-01'),
(12, 'Jack', 'Lopez', 'jack.lopez@example.com', '123-456-7901', '2020-12-01'),
(13, 'Kathy', 'Gonzalez', 'kathy.gonzalez@example.com', '123-456-7902', '2021-01-01'),
(14, 'Leo', 'Wilson', 'leo.wilson@example.com', '123-456-7903', '2021-02-01'),
(15, 'Mona', 'Anderson', 'mona.anderson@example.com', '123-456-7904', '2021-03-01'),
(16, 'Nick', 'Thomas', 'nick.thomas@example.com', '123-456-7905', '2021-04-01'),
(17, 'Olivia', 'Taylor', 'olivia.taylor@example.com', '123-456-7906', '2021-05-01'),
(18, 'Paul', 'Moore', 'paul.moore@example.com', '123-456-7907', '2021-06-01'),
(19, 'Quinn', 'Jackson', 'quinn.jackson@example.com', '123-456-7908', '2021-07-01'),
(20, 'Rose', 'Martin', 'rose.martin@example.com', '123-456-7909', '2021-08-01');
INSERT INTO Departments (DepartmentID, DepartmentName, Location)
VALUES
(1, 'HR', 'New York'),
(2, 'Finance', 'Chicago'),
(3, 'IT', 'San Francisco'),
(4, 'Marketing', 'Los Angeles'),
(5, 'Sales', 'Boston'),
(6, 'Operations', 'Houston'),
(7, 'Legal', 'Philadelphia'),
(8, 'Customer Service', 'Phoenix'),
(9, 'R&D', 'Seattle'),
(10, 'Engineering', 'Denver'),
(11, 'Product', 'San Diego'),
(12, 'Admin', 'Dallas'),
(13, 'Procurement', 'Austin'),
(14, 'Quality', 'San Jose'),
(15, 'Logistics', 'Miami'),
(16, 'Maintenance', 'Atlanta'),
(17, 'Training', 'Charlotte'),
(18, 'Support', 'Detroit'),
(19, 'Development', 'San Antonio'),
(20, 'Innovation', 'Orlando');
INSERT INTO Projects (ProjectID, ProjectName, StartDate, EndDate, Budget)
VALUES
(1, 'Project Alpha', '2022-01-01', '2022-06-30', 100000.00),
(2, 'Project Beta', '2022-02-01', '2022-07-31', 150000.00),
(3, 'Project Gamma', '2022-03-01', '2022-08-31', 200000.00),
(4, 'Project Delta', '2022-04-01', '2022-09-30', 250000.00),
(5, 'Project Epsilon', '2022-05-01', '2022-10-31', 300000.00),
(6, 'Project Zeta', '2022-06-01', '2022-11-30', 350000.00),
(7, 'Project Eta', '2022-07-01', '2022-12-31', 400000.00),
(8, 'Project Theta', '2022-08-01', '2023-01-31', 450000.00),
(9, 'Project Iota', '2022-09-01', '2023-02-28', 500000.00),
(10, 'Project Kappa', '2022-10-01', '2023-03-31', 550000.00),
(11, 'Project Lambda', '2022-11-01', '2023-04-30', 600000.00),
(12, 'Project Mu', '2022-12-01', '2023-05-31', 650000.00),
(13, 'Project Nu', '2023-01-01', '2023-06-30', 700000.00),
(14, 'Project Xi', '2023-02-01', '2023-07-31', 750000.00),
(15, 'Project Omicron', '2023-03-01', '2023-08-31', 800000.00),
(16, 'Project Pi', '2023-04-01', '2023-09-30', 850000.00),
(17, 'Project Rho', '2023-05-01', '2023-10-31', 900000.00),
(18, 'Project Sigma', '2023-06-01', '2023-11-30', 950000.00),
(19, 'Project Tau', '2023-07-01', '2023-12-31', 1000000.00),
(20, 'Project Upsilon', '2023-08-01', '2024-01-31', 1050000.00);
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, Role)
VALUES
(1, 1, 'Manager'),
(2, 1, 'Developer'),
(3, 2, 'Analyst'),
(4, 2, 'Developer'),
(5, 3, 'Manager'),
(6, 3, 'Tester'),
(7, 4, 'Developer'),
(8, 4, 'Analyst'),
(9, 5, 'Manager'),
(10, 5, 'Developer'),
(11, 6, 'Tester'),
(12, 6, 'Analyst'),
(13, 7, 'Developer'),
(14, 7, 'Manager'),
(15, 8, 'Tester'),
(16, 8, 'Analyst'),
(17, 9, 'Developer'),
(18, 9, 'Manager'),
(19, 10, 'Tester'),
(20, 10, 'Analyst');
SELECT * FROM Employees;
SELECT * FROM EmployeeProjects;
SELECT * FROM Projects;
SELECT * FROM Departments;
--Fetch employee name and department name they belong.
--INNER JOIN/JOIN

Delete from Departments where DepartmentID between 10 AND 13;
SELECT e.FirstName+' '+e.LastName AS Name ,d.DepartmentName
FROM Employees e
JOIN Departments d
on e.EmployeeID=d.DepartmentID;--FETCH RECORDS BASED ON JOIN CONDITION FETCHES ONLY THOSE PRESENT IN BOTH BASED ON CONDITION


--LEFT JOIN= INNER JOIN + ANY ADDITIONAL RECORDS IN THE LEFT TABLE
SELECT e.FirstName+' '+e.LastName AS Name ,d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
on e.EmployeeID=d.DepartmentID;

--RIGHT JOIN= INNER JOIN + ANY ADDITIONAL RECORDS IN THE RIGHT TABLE
SELECT e.FirstName+' '+e.LastName AS Name ,d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d
on e.EmployeeID=d.DepartmentID;
--Fetch details of all employee their manager their department and the projects they work on
--Note dont miss value from employees
SELECT e.FirstName,d.DepartmentName,p.ProjectName,ep.Role
FROM Employees e 
LEFT JOIN Departments d 
ON e.EmployeeID=d.DepartmentID
JOIN Projects p on p.ProjectID=e.EmployeeID
JOIN EmployeeProjects ep on ep.EmployeeID=e.EmployeeID;
-- To know when to use left or right join focus on what is your primary table what are the columns you need