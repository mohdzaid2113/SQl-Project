USE hr;

## 1. Retrieve all details of employees.
SELECT * FROM employees;

## 2. Display the first name, last name, and email of all employees.
SELECT first_name, last_name, email FROM employees;

## 3. Retrieve the distinct job titles from the jobs table.
SELECT DISTINCT job_title FROM jobs;

## 4. Find the total number of employees in the company.
SELECT COUNT(*) FROM employees;

## 5. Retrieve the employees who were hired after January 1, 2015.
SELECT * FROM employees WHERE hire_date > '2015-01-01';

## 6. List all employees who have a salary greater than 5000.
SELECT * FROM employees WHERE salary > 5000;

## 7. Retrieve employees with job titles containing the word ‘Manager.’
SELECT * FROM employees WHERE job_title LIKE '%Manager%';

## 8. Retrieve all employees whose first name starts with ‘A’ and ends with ‘n.’
SELECT * FROM employees WHERE first_name LIKE 'A%n';

## 9. Display the employees who do not have a commission.
SELECT * FROM employees WHERE commission_pct IS NULL;

## 10. Retrieve the top 5 highest-paid employees.
SELECT * FROM employees ORDER BY salary DESC LIMIT 5;

## 11. Find the average salary of all employees.
SELECT AVG(salary) FROM employees;

## 12. Retrieve the total number of employees working in each department.
SELECT department_id, COUNT(*) FROM employees GROUP BY department_id;

## 13. Display the employee's first name and the length of their first name.
SELECT first_name, LENGTH(first_name) FROM employees;

## 14. Convert the hire_date of employees to display only the year.
SELECT first_name, last_name, YEAR(hire_date) FROM employees;

## 15. Retrieve the minimum and maximum salary for each job title.
SELECT job_title, MIN(salary), MAX(salary) FROM employees GROUP BY job_title;

## 16. Retrieve the employee names along with their department names.
SELECT e.first_name, e.last_name, d.department_name

## 17. List the employees along with their job titles and the location of their department.
SELECT e.first_name, e.last_name, j.job_title, l.city

## 18. Retrieve the department names along with the count of employees in each department.
SELECT d.department_name, COUNT(*) FROM employees e

## 19. Find employees who have the same job as their manager.
SELECT e.first_name, e.last_name, e.job_title, m.first_name AS manager_first_name, m.last_name AS manager_last_name

## 20. Display the names of employees who worked in different jobs in the past (use job_history).
SELECT e.first_name, e.last_name, jh.job_id AS previous_job_id, j.job_title AS previous_job_title
