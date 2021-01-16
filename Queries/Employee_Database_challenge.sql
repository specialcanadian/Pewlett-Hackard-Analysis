SELECT emp_no, first_name, last_name
FROM employees

SELECT title, from_date, to_date
FROM titles

SELECT * FROM titles
SELECT * FROM employees

SELECT e.emp_no, e.first_name, e.last_name,
	   ti.title, ti.from_date, ti.to_date
INTO retire_titles
FROM employees as e
RIGHT JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retire_titles
DROP TABLE retire_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (re.emp_no) re.emp_no, re.first_name,
re.last_name,
re.title
INTO unique_titles
FROM retire_titles as re
ORDER BY re.emp_no, re.to_date DESC;

SELECT * FROM unique_titles
DROP TABLE unique_titles


-- Employee count by department number
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY ;

-- SPACING ROW ==============================================================

-- SPACING ROW ==============================================================
---

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
	   			    ti.title, 
	   				de.from_date, de.to_date
INTO mentors
FROM employees as e
RIGHT JOIN titles as ti
ON (e.emp_no = ti.emp_no)

INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')

ORDER BY e.emp_no;

---

SELECT * FROM mentors
DROP TABLE mentors












