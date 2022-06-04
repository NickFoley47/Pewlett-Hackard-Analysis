--Deliverable 1: The Number of Retiring Employees by Title

--Create a new table with employee table and titles
SELECT emp.emp_no,
	emp.first_name,
	emp.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as emp
LEFT JOIN titles as ti
ON emp.emp_no = ti.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles 
WHERE to_date = ('9999-01-01')
ORDER BY emp_no ASC, 
		to_date DESC;


-- Counting number of employees job title who are about to retire
SELECT COUNT(title),
title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;

--Deliverable 2: The Employees Eligible for the Mentorship Program 
SELECT DISTINCT ON (emp.emp_no) emp.emp_no,
	emp.first_name,
	emp.last_name,
	emp.birth_date,
	dept.from_date,
	dept.to_date,
	titl.title
INTO mentorship_eligibilty
FROM employees as emp
INNER JOIN dept_emp as dept ON emp.emp_no = dept.emp_no
INNER JOIN titles as titl ON emp.emp_no = titl.emp_no
WHERE emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31' 
AND dept.to_date = ('9999-01-01') 
ORDER BY emp.emp_no;


-- Sales employees retiring
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	d.dept_name
FROM retirement_info AS ri
INNER JOIN dept_emp AS de ON ri.emp_no= de.emp_no
INNER JOIN departments AS D ON d.dept_no = de.dept_no
WHERE d.dept_name IN ('Sales');


