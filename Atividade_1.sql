Nome:Lucas Bischof Elias RGM:28092210

create table cadastro
(
nome varchar2(30),
sobrenome varchar2(30),
salario number(10,2),
endereco varchar2(30),
dt_cadastro date
);

insert into cadastro values ('Marcelo','Diniz',1000,'Piracema 100',sysdate);
insert into cadastro values ('Fernando','Romero',2000,'Correia 100',sysdate);
insert into cadastro values ('Carlos','Martins',2500,'Siria 100',sysdate);
insert into cadastro values ('Miguel','Carmin',4000,'Piaui 100',sysdate);
insert into cadastro values ('Camila','Pacheco',8000,'Sao Jorge 84',sysdate);
insert into cadastro values ('Marina','Augusto',1400,'Nova Tatuape 100',sysdate);
insert into cadastro values ('Roberto','Eduardo',800,'Jurubatuba 505',sysdate);
insert into cadastro values ('Eduardo','Gomes',1000,'Estrela 14',sysdate);
insert into cadastro values ('Mario','Temer',3500,'Moreira 10',sysdate);
insert into cadastro values ('Marcelo','Juracy',7350,'Santa Elvira',sysdate);

--Exerc 2
select * from cadastro
--Exerc 3
select nome,sobrenome from cadastro;
--Exerc 4
select * from cadastro where nome  in ('Marina','Eduardo') 
--Exerc 5
select 
s.salario *12 "ANUAL",
s.NOME,
s.SOBRENOME,
s.SALARIO,
s.ENDERECO,
s.DT_CADASTRO
from  cadastro s
--Exerc 6
select
a.NOME,
a.SOBRENOME,
a.SALARIO +(salario*0.10) "AUMENTO" 
from cadastro a ;
--Exerc 7
select * from cadastro where salario between 4000 and 5000
--Exerc 8
select * from cadastro where salario > 4000
--Exerc 9
select * from cadastro where salario in ('4000','8000')
--Exerc 10
select * from cadastro where  nome like '%a%'
--Exerc 11
select * from cadastro where  nome like 'M%'
--Exerc 12
select * from cadastro where nome like 'Marcelo%'
--Exerc 13
select * from cadastro where nome not in ('Carlos','Fernando') 
--Exerc 14
select * from cadastro where salario <> 1000

