SELECT * FROM employees;

SELECT emp_no,last_name,first_name,sex
FROM employees;

SELECT* FROM salaries;

SELECT employees.emp_no, employees.first_name, employees.last_name,employees.sex
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;


SELECT e.emp_no, e.first_name, e.last_name, e.sex
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no;

SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date = '1986-01-01';

SELECT * FROM departments;

SELECT * FROM dept_manager;


SELECT e.emp_no,e.last_name,e.first_name
FROM employees e
INNER JOIN departments d ON e.emp_no = d.dept_name
INNER JOIN dept_manager m ON e.emp_no = m.emp_no;

SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        e.last_name,
        e.first_name
FROM dept_manager AS dm
INNER JOIN departments d  ON dm.dept_no = d.dept_no
INNER JOIN employees e ON e.emp_no = dm.emp_no;


SELECT e.emp_no,e.last_name,e.first_name,d.dept_no,d.dept_name
FROM employees e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments d ON d.dept_no = de.dept_no;

SELECT first_name,last_name,sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT e.emp_no,e.first_name,e.last_name
FROM employees e
INNER JOIN departments d ON 
WHERE departments = sales;

SELECT e.emp_no,e.last_name,e.first_name,d.dept_no,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON (e.emp_no = de.emp_no)
INNER JOIN departments AS d ON (d.dept_no = de.dept_no)
WHERE d.dept_name IN ('Sales');



SELECT e.emp_no,e.last_name,e.first_name,d.dept_no,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON (e.emp_no = de.emp_no)
INNER JOIN departments AS d ON (d.dept_no = de.dept_no)
WHERE d.dept_name IN ('Sales','Development');


SELECT last_name, COUNT(last_name) AS "employee count" 
FROM employees 
GROUP BY last_name
ORDER BY "employee count" DESC;




