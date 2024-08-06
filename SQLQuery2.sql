create database new;

CREATE TABLE ADDRESS
(
    ADDRESS_ID       VARCHAR(20) PRIMARY KEY
  , STREET           VARCHAR(250)
  , CITY             VARCHAR(100)
  , STATE            VARCHAR(100)
  , COUNTRY          VARCHAR(100)
);
INSERT INTO ADDRESS VALUES
    ('ADR1001','44940 Bluestem Circle','Baton Rouge','Louisiana','United States'),
    ('ADR1002','029 Kropf Point','Richmond','Virginia','United States'),
    ('ADR1003','96 Jay Road','Dallas','Texas','United States'),
    ('ADR1004','15 Harbort Lane','Roanoke','Virginia','United States'),
    ('ADR1005','3 Vermont Plaza','Atlanta','Georgia','United States'),
    ('ADR1006','55 Sycamore Trail','Seattle','Washington','United States'),
    ('ADR1007','6 Pearson Way','San Diego','California','United States'),
    ('ADR1008','71 Union Park','Rochester','New York','United States'),
    ('ADR1009','8 Roth Trail','Naples','Florida','United States'),
    ('ADR1010','0004 Redwing Circle','Houston','Texas','United States'),
    ('ADR1011','7588 Dakota Hill','Flushing','New York','United States'),
    ('ADR1012','72100 Red Cloud Center','Miami','Florida','United States'),
    ('ADR1013','31485 Dakota Parkway','Denver','Colorado','United States'),
    ('ADR1014','36 Nancy Crossing','Des Moines','Iowa','United States'),
    ('ADR1015','8 Old Gate Pass','Port Washington','New York','United States'),
    ('ADR1016','466 Spohn Pass','Raleigh','North Carolina','United States'),
    ('ADR1017','87 Steensland Park','Zephyrhills','Florida','United States'),
    ('ADR1018','1504 Washington Junction','Morgantown','West Virginia','United States'),
    ('ADR1019','693 Laurel Place','Atlanta','Georgia','United States'),
    ('ADR1020','87 Eastlawn Street','Sparks','Nevada','United States');
	SELECT * FROM ADDRESS WHERE STATE<> 'New York';
	SELECT * FROM ADDRESS WHERE STATE= 'New York';
	SELECT * FROM ADDRESS order by STREET;
	SELECT * FROM ADDRESS WHERE STATE LIKE 'N%';
	SELECT * FROM ADDRESS WHERE STATE IN  ('New York', 'Georgia');
	SELECT * FROM ADDRESS WHERE STATE  NOT IN  ('New York', 'Georgia');
	SELECT * FROM ADDRESS WHERE STATE ='New York' AND CITY= 'Rochester';
	SELECT * FROM ADDRESS WHERE STATE ='New York' OR CITY= 'Rochester';
	SELECT(5+2) ;
	CREATE TABLE  STUDENTS

(

    ID                         VARCHAR(20) PRIMARY KEY

  , FIRST_NAME       VARCHAR(100) NOT NULL

  , LAST_NAME        VARCHAR(100) NOT NULL

  , GENDER               VARCHAR(10) CHECK (GENDER IN ('M', 'F', 'Male', 'Female'))

  , AGE                      INT

  , DOB                     DATE

  , GRADE                 FLOAT

  , CONSTRAINT CH_STUDENTS_AGE CHECK (AGE > 0)

);
ALTER TABLE STUDENTS DROP COLUMN DOB; 
INSERT INTO STUDENTS

VALUES ('STD10252','Effie','Emlyn','Female',8, 3); 

INSERT INTO STUDENTS VALUES

        ('STD10253','Kerry','Aysik','Female',8, 3),

        ('STD10254','Jo','Mansfield','Male',8, 3),

        ('STD10255','Elianore','Macon','Female',8, 3); 
		Select * from STUDENTS;
		UPDATE  STUDENTS

SET     FIRST_NAME = 'James'

WHERE   ID = 'STD10253'; 
DELETE FROM STUDENTS WHERE ID = 'STD10251';
SELECT * FROM STUDENTS; 
CREATE TABLE STAFF_SALARY
(
    STAFF_ID         VARCHAR(20) PRIMARY KEY
  , SALARY           FLOAT
  , CURRENCY         VARCHAR(5)
);

/* Different SQL Operators:::    = , <, >, >=, <=, <>, !=, BETWEEN, ORDER BY, IN, NOT IN, LIKE, ALIASE, DISTINCT, LIMIT, CASE:

Comparison Operators: =, <>, != , >, <, >=, <=

Arithmetic Operators: +, -, *, /, %

Logical Operators: AND, OR, NOT, IN, BETWEEN, LIKE etc.    */

-- Basic queries

SELECT * FROM STUDENTS;   -- Fetch all columns and all records (rows) from table.

SELECT ID, FIRST_NAME FROM STUDENTS; -- Fetch only ID and FIRST_NAME columns from students table.

-- Comparison Operators

/*SELECT * FROM SUBJECTS WHERE SUBJECT_NAME = 'Mathematics'; -- Fetch all records where subject name is Mathematics.

SELECT * FROM SUBJECTS WHERE SUBJECT_NAME <> 'Mathematics'; -- Fetch all records where subject name is not Mathematics.

SELECT * FROM SUBJECTS WHERE SUBJECT_NAME != 'Mathematics'; -- same as above. Both "<>" and "!=" are NOT EQUAL TO operator in SQL.*/

SELECT * FROM STAFF_SALARY WHERE SALARY > 10000; -- All records where salary is greater than 10000.

SELECT * FROM STAFF_SALARY WHERE SALARY < 10000; -- All records where salary is less than 10000.

SELECT * FROM STAFF_SALARY WHERE SALARY < 10000 ORDER BY SALARY; -- All records where salary is less than 10000 and the output is sorted in ascending order of salary.

SELECT * FROM STAFF_SALARY WHERE SALARY < 10000 ORDER BY SALARY DESC; -- All records where salary is less than 10000 and the output is sorted in descending order of salary.

SELECT * FROM STAFF_SALARY WHERE SALARY >= 10000; -- All records where salary is greater than or equal to 10000.

SELECT * FROM STAFF_SALARY WHERE SALARY <= 10000; -- All records where salary is less than or equal to 10000.

-- Logical Operators

SELECT * FROM STAFF_SALARY WHERE SALARY BETWEEN 5000 AND 10000; -- Fetch all records where salary is between 5000 and 10000.
SELECT (5-2) AS SUBTRACT;   -- Oracle & MySQL equivalent query would be -->  select (5+2) as Addition FROM DUAL; --> Where dual is a dummy table.

SELECT (5*2) AS MULTIPLY;

SELECT (5/2) AS DIVIDE;   -- Divides 2 numbers and returns whole number.

SELECT (5%2) AS MODULUS;  -- Divides 2 numbers and returns the remainder
SELECT STAFF_ID, SALARY

, CASE WHEN SALARY >= 10000 THEN 'High Salary'

       WHEN SALARY BETWEEN 5000 AND 10000 THEN 'Average Salary'

       WHEN SALARY < 5000 THEN 'Too Low'

  END AS RANGE

FROM STAFF_SALARY

ORDER BY 2 DESC;

