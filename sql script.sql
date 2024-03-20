USE amazon_hr;

-- AND Operator
select *
from employees
where first_name='Ivy' and salary >= 100000;

-- OR Operator
select *
from employees
where first_name='Ivy' OR salary >= 100000;

-- BETWEEN Operator
SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 70000;

SELECT *
FROM employees
WHERE salary Not BETWEEN 30000 AND 70000;

-- IS NULL Operator
SELECT *
FROM employees
WHERE reports_to IS NULL;

-- IS NOT NULL Operator
SELECT *
FROM employees 
WHERE reports_to IS NOT NULL;

-- LIKE Operator
SELECT *
FROM employees
WHERE first_name LIKE 'M%';

SELECT *
FROM employees
WHERE last_name LIKE '%t_n';



-- IN Operator
SELECT *
FROM offices
WHERE city IN ('New York City', 'Cincinnati', 'Savannah');

select *
from offices
where city='New York City' or city='Cincinnati' or city='Savannah'




-- EXISTS Operator
SELECT *
FROM offices
WHERE EXISTS
(SELECT * FROM employees WHERE offices.office_id = employees.office_id);

-- ALL Operator
SELECT *
FROM employees
WHERE salary > ALL
(SELECT salary FROM employees WHERE salary IS NULL);

-- ANY Operator
SELECT *
FROM employees
WHERE employee_id = ANY
(SELECT employee_id FROM employees WHERE salary > 100000);

