-- operador logico and
select employee_id, last_name, job_id, salary from hr.employees
where salary >=10000
and job_id like '%MAN';
--operador logico or
select employee_id, last_name, job_id, salary from hr.employees
where salary >=10000
or job_id like '%MAN';

--ordenação das linhas
select last_name, job_id, department_id, hire_date from hr.employees
order by last_name desc 
--
select last_name, job_id, department_id, hire_date from hr.employees
order by last_name asc

--Concatenação
select
' O funcionario de id: ' || employee_id ||
' e sobrenome: ' ||last_name ||
' recebe '|| salary || ' reais de salario' as "Funcionario e Salarios"
from hr.employees;
--FUNCÕES DE GRUPO
select sum (salary) from hr.employees ;
select sum (salary) from hr.employees where department_id =60;

select min (salary) from hr.employees ;

select max (salary) from hr.employees ;

select avg (salary) from hr.employees ;
-- contagem
select count (*) from hr.employees;
--CRIAR GRUPO DE DADOS
select department_id, avg(salary) from hr.employees
group by department_id;

select department_id, avg(salary) from hr.employees
where department_id in (10,20)
group by department_id;

select department_id, avg(salary) from hr.employees
where department_id in (10,20)
group by department_id desc;
--inserir na tabela 
 insert into hr.departments(department_id, department_name, manager_id, location_id)
values(280, 'Desocupados', 108, 1000);
-- modo explicito
insert into cadastro (nome, sobrenome, salario, endereco, dt_cadastro)
values('Severino', 'Quebragalho', 500, 'Rede Globo', sysdate )
insert into cadastro (nome, sobrenome, salario, endereco)
values('Joao', 'maloqueiro', 501, 'Rua do bras'  )
-- modo implicito
insert into 
values('Bruna ', 'Surfistinha', 5010, 'Rua do augusta',sysdate);

select *from cadastro
