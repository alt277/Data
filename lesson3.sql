// №1.1
SELECT * FROM _cities
join _countries  on
 _cities.country_id =_countries.id
 join _regions on
   _cities.region_id =_regions.id;
   
//№1.2
 SELECT * FROM _cities
join _countries  on
 _cities.country_id =_countries.id
 join _regions on
   _cities.region_id=_regions.id
where _regions.id = 1053480;  


//№2.2
SELECT * FROM employees
  join salaries  on
   employees.emp_no = salaries.emp_no
  where
  salary = (select max(salary) from salaries);
  
//№2.3
delete e  from employees as e, salaries as s
where s.emp_no = e.emp_no 
 and
s.salary = (select max(salary) from salaries); 
  
//№2.4
select dept_no, count(emp_no) 
from dept_emp
group by(dept_no);






  