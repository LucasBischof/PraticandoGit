select * from hr.employees;

select min (salary) from hr.employees ;

select max (salary) from hr.employees ;

select avg (salary) from hr.employees ;

select job_id, sum(salary) from hr.employees
group by job_id

select department_id, avg(salary) from hr.employees
group by department_id


select avg (salary) from hr.employees where department_id =80;

select manager_id, salary from hr.employees;
where employee_id not in('100')
and salary>6000

