select employee_id as "codigo",
first_name as "nome",
last_name as "sobrenome",
email as "email"
from hr.employees

create or replace view dados_funcionais
as
select
employee_id as "codigo",
first_name as "nome",
last_name as "sobrenome",
email as "email"
from hr.employees

select * from dados_funcionais

drop view dados_funcionais

create table alunos(
codigo number (10) primary key,
nome varchar2(10),
rgm varchar2(10)
);

insert into alunos(codigo, nome , rgm) values (1,'lucas','001');
insert into alunos(codigo, nome , rgm) values (2,'luis','002');


drop table alunos


create sequence seq_cod_alunos
minvalue 1
maxvalue 100000
start with 1
increment by 1
cache 5;




insert into alunos(codigo, nome , rgm) values (seq_cod_alunos.nextval,'lucas','001');
insert into alunos(codigo, nome , rgm) values (seq_cod_alunos.nextval,'luis','002');

create table funcionarios(
cd_funcionario number(20),
cpf number(11) primary key,
nome varchar2(30),
cargo varchar2(30),
id_depto number(11),
salario varchar(30)
);

create sequence sq_func
minvalue 1
maxvalue 100000000000000000000
start with 1
increment by 125
cache 5;

insert into funcionarios values (1,sq_func.nextval,'lucas','TI',12345678912,'500.00');
insert into funcionarios values (5,sq_func.nextval,'luiz','RH',78954654121,'1500.00');
insert into funcionarios values (3,sq_func.nextval,'carlos','ADM',123435432,'5100.00');
insert into funcionarios values (2,sq_func.nextval,'joao','BI',124845562,'5900.00');
insert into funcionarios values (4,sq_func.nextval,'larisa','LPM',778555612,'8500.00');

select* from funcionarios

select cd_funcionario,
nome,
cargo,
id_depto,
salario from funcionarios

create or replace view VW_FUNC
as
select cd_funcionario,
nome,
cargo,
id_depto,
salario from funcionarios

create or replace view VW_FUNC2
as
select cd_funcionario,
nome,
cargo,
id_depto,
salario from funcionarios
where salario>5000;

select *from VW_FUNC3

create or replace view VW_FUNC3
as
select cd_funcionario,
nome,
cargo,
id_depto,
salario from funcionarios
where salario>=1000.00 or nome like '%a%';

alter table funcionarios
 add observações varchar2(30);
 
 select * from funcionarios
 
 update
 funcionarios
 set
 salario=salario*1.1;

 