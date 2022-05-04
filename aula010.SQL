create or replace procedure proc_ola(argumento1 in VARCHAR2)
is
begin
DBMS_OUTPUT.PUT_LINE('Ola'|| argumento1);
end proc_ola;

execute proc_ola(' LUIZ')

create table funcionario (
cd_func number(38),
nome varchar2(30),
sobrenome varchar2(30),
salario number(15),
status varchar2(30)

);
select * from funcionario
insert into funcionario values (1,'luiz','lozano',500,'empregado')
insert into funcionario values (2,'fabio','lozano',50000,'empregado');
insert into funcionario values (3,'joao','loot',50000,'empregado');

create or replace procedure mudar_status(pCod in number)
is
begin
update funcionario set status = 'desempregado' where cd_func = pCod;

end mudar_status;

execute mudar_status (1);

create table alunos(

nome varchar2(10),
sobrenome varchar2(10),
CD_aluno number (10) primary key,
status varchar2(10)
);

insert into alunos (nome,sobrenome,CD_aluno) values ('lucas','bischof',seq_cod_alunos.nextval);
insert into alunos (nome,sobrenome,CD_aluno) values ('luiz','pereira',seq_cod_alunos.nextval);
insert into alunos (nome,sobrenome,CD_aluno) values ('luIZA','jo',seq_cod_alunos.nextval);
insert into alunos (nome,sobrenome,CD_aluno) values ('larissa','elia',seq_cod_alunos.nextval);
insert into alunos (nome,sobrenome,CD_aluno) values ('laIS','SABIA',seq_cod_alunos.nextval);

drop table alunos


create sequence seq_cod_alunos
minvalue 1
maxvalue 100000
start with 1
increment by 10
cache 5;

create or replace procedure Aprova_aluno(pCod in number)
is
begin
update alunos set status = 'aprovado' where CD_aluno = pCod;
end Aprova_aluno;

execute mudar_status (2);

select * from alunos
create or replace procedure deleta_aluno(pNome varchar2)
is
begin
delete from alunos  
where nome = pNome;
end deleta_aluno;
drop procedure deleta_aluno;

execute Aprova_aluno (51);
