-- Q1: List the employee number, last name, 
--first name, sex, and salary of each employee.

select s.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries as s
on s.emp_no = e.emp_no
order by s.emp_no;

-- Q2: List the first name, last name, 
--and hire date for the employees who were hired in 1986.
select emp_no, last_name, first_name, hire_date 
from employees 
where extract(year from hire_date) = 1986;

--Q3: List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.
Select d.dept_name, dm.dept_no, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
Inner Join departments as d ON
dm.dept_no = d.dept_no
Inner Join employees as e ON
dm.emp_no = e.emp_no


--Q4: List the department number for each employee along with that employee’s 
--employee number,last name, first name, and department name.
Select d.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
Inner Join departments as d ON 
de.dept_no = d.dept_no
Inner Join employees as e ON
de.emp_no = e.emp_no

--Q5: List first name, last name, and sex of each employee whose first name is 
--Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex
From employees as e 
where first_name = 'Hercules'
And last_name like 'B%'

--Q6: List each employee in the Sales department, 
--including their employee number, last name, and first name.
Select de.emp_no, e.last_name, e.first_name
from dept_emp as de
Inner Join departments as d ON 
de.dept_no = d.dept_no
Inner Join employees as e ON
de.emp_no = e.emp_no
where d.dept_name = 'Sales'

--Q7: List each employee in the Sales and Development departments, including their 
--employee number, last name, first name, and department name
Select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
Inner Join departments as d ON 
de.dept_no = d.dept_no
Inner Join employees as e ON
de.emp_no = e.emp_no
where d.dept_name in ('Sales', 'Development');
-- also can use where = or = 

--Q8: List the frequency counts, in descending order, 
--of all the employee last names (that is, how many employees share each last name).
Select count(last_name), last_name
from employees as e
group by last_name 
order by count(last_name) DESC


