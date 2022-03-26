/*seleciona todos os campos da tabelas*/
select * from hr.employees
select * from hr.jobs
select * from hr.departments
select * from hr.countries
select * from hr.locations
select * from hr.regions
select * from hr.job_history
/*para puxar somente uma coluna*/
select job_title from hr.jobs
/*para puxar mais de uma coluna*/
select job_title,max_salary from hr.jobs
-- Exercicio 1
select location_id, city, state_province from hr.locations
-- Exercicio 2
select manager_id, department_name, department_id from hr.departments
-- Exercicio 3
select country_name, country_id from hr.countries
-- Exercicio 4
select max_salary, job_title from hr.jobs
-- Exercicio 5
select region_name from hr.regions
-- Exercicio 6
select employee_id,first_name, last_name, salary from hr.employees
-- Exercicio 7
select employee_id, start_date, end_date, job_id, department_id from hr.job_history
-- apelo para a tabela
select d.department_id "id do departamento", d.department_name "nomes do departamento" from hr.departments d

--Exercicio 8
select
l.location_id "codigo" ,
l.street_address "endereço ",
l.postal_code "cep" ,
l.city "Cidade",
l.state_province "estado" ,
l.country_id " codigo da cidade"
from hr.locations l ;

--Exercicio 9
select d.department_id "id do departamento",
d.department_name "nomes do departamento",
d.manager_id "id do gerente",
d.location_id "id do local"
from hr.departments d

