-----------------------------------------------------------------
-- Gerenciando imagens no SQL:
-----------------------------------------------------------------
-- Banco de testes
drop database mestrado
create database mestrado
go
use mestrado
drop table login
create table login(
	id int identity (1, 1) not null,
	usuario varchar(30) not null,
	cpf varchar (11) not null,
	senha varchar(30) not null,
	statusLog char (1) not null,
	imagem_bd varbinary(max)
)

-- Carregando uma imagem via t-sql (Transact-SQL)

update login set statusLog='a' where cpf= '05611269842'

delete from login
insert into login (usuario, cpf, senha,statusLog, imagem_bd) select 'anapaula','39969445006','a123','a', *  from openrowset (bulk 'C:\imagem\menina1.jpg', single_blob) alciImagem
insert into login (usuario, cpf, senha,statusLog, imagem_bd) select 'alci.reis','06476148800','a28', 'a',*  from openrowset (bulk 'C:\imagem\alci.jpg', single_blob) alciImagem
insert into login (usuario, cpf, senha,statusLog, imagem_bd) select 'fabio.zeniti','05611269842','f123','p', *  from openrowset (bulk 'C:\imagem\naruto.jpg', single_blob) alciImagem
insert into login (usuario, cpf, senha,statusLog, imagem_bd) select 'rita.cassia','27506485890','r123','p', *  from openrowset (bulk 'C:\imagem\rosto1.jpg', single_blob) alciImagem
insert into login (usuario, cpf, senha,statusLog, imagem_bd) select 'luci.reis','20534050824','l123','a', *  from openrowset (bulk 'C:\imagem\rosto1.jpg', single_blob) alciImagem

--alciImagem (nome de correlação para conjunto de inserção (linha em massa))
use mestrado


drop table professor
create table professor(
	id int identity (1, 1) not null,
	cpf varchar (11) not null,
	nome_prof varchar(30) not null,
	formacao_prof varchar(30) not null,
	sede_prof int not null,
	matricula_prof int not null,
	quant_aula_prof int not null,
	pontos_prof int not null,
	area_prof varchar(30) not null,
	telProf varchar(30),
	emailProf varchar(40),
	gestorUe int
)

insert into professor (cpf, nome_prof, formacao_prof, sede_prof, matricula_prof, quant_aula_prof, pontos_prof, area_prof,telProf,emailProf, gestorUe) values ('06476148800', 'Alcimar Barbosa dos Reis', 'Bacharel em Sistemas', 018, 23683, 25, 518,'Tecnologia', '(11)3326-0993', 'alci@alci.com.br',0)
insert into professor (cpf, nome_prof, formacao_prof, sede_prof, matricula_prof, quant_aula_prof, pontos_prof, area_prof,telProf,emailProf,gestorUe) values ('39969445006', 'Ana Paula Maria', 'Bacharel em Administração', 021, 28688, 38, 321,'Administração','(11)9696-6969', 'ana@ana.com.br', 0)
insert into professor (cpf, nome_prof, formacao_prof, sede_prof, matricula_prof, quant_aula_prof, pontos_prof, area_prof,telProf,emailProf,gestorUe) values ('05611269842', 'Fábio Marcondes Zenetti', 'Bacharel em Sistemas', 018, 37584, 20, 270,'Tecnologia','(11)1234-4321', 'fzenetti@etec.com.br',0)
insert into professor (cpf, nome_prof, formacao_prof, sede_prof, matricula_prof, quant_aula_prof, pontos_prof, area_prof,telProf,emailProf,gestorUe) values ('20534050824', 'Luciana Barbosa Reis', 'Licenciatura Pedagogia', 021, 28688, 38, 514,'Letras','(11)9696-6969', 'luci@luci.com.br', 0)
insert into professor (cpf, nome_prof, formacao_prof, sede_prof, matricula_prof, quant_aula_prof, pontos_prof, area_prof,telProf,emailProf,gestorUe) values ('27506485890', 'Rita de Cassia Isolta', 'Direito', 018, 37584, 25, 180,'Direito','(11)4321-1234', 'rita.cassia@etec.com.br',0)

select * from professor

create table ue(
	id int identity (1, 1) not null,
	nome_unidade varchar(30) not null,
	unidade int not null,
	endereco_unidade varchar(60) not null,
	telefone_unidade varchar(30) not null,
	imagem_unidade varbinary(max)
)

insert into ue(nome_unidade, unidade, endereco_unidade,telefone_unidade, imagem_unidade) select 'ETEC de São Paulo',18,'Av. Tiradentes, 615 - Luz','(11)3326-0993', *  from openrowset (bulk 'C:\imagem\etesp.jpg', single_blob) alciImagem

insert into ue(nome_unidade, unidade, endereco_unidade,telefone_unidade, imagem_unidade) select 'ETEC Sebrae',278,'Alameda Nothmann, 598 - SP','(11)3224-1260', *  from openrowset (bulk 'C:\imagem\sebrae.jpg', single_blob) alciImagem

insert into ue(nome_unidade, unidade, endereco_unidade,telefone_unidade, imagem_unidade) select 'ETEC Jorge Street',10,'R. Bel Aliance, 149 - São Caetano','(11)4238-7955', *  from openrowset (bulk 'C:\imagem\jorgeStreet.jpg', single_blob) alciImagem

insert into ue(nome_unidade, unidade, endereco_unidade,telefone_unidade, imagem_unidade) select 'ETEC Cravinhos',303,'R Maria Conceição Gouvêa Simões, 210 - Jardim Itamarati - Poá','(16)99723-8308', *  from openrowset (bulk 'C:\imagem\cravinhos.jpg', single_blob) alciImagem

insert into ue(nome_unidade, unidade, endereco_unidade,telefone_unidade, imagem_unidade) select 'Etec Dr. Luiz César Couto',80,'Rodovia Antonio Farinasso, km 3 - Aguinha - Quatá','(18)3366-1001', *  from openrowset (bulk 'C:\imagem\souto.jpg', single_blob) alciImagem

insert into ue(nome_unidade, unidade, endereco_unidade,telefone_unidade, imagem_unidade) select 'Etec de Caraguatatuba',213,'Av. Rio Grande do Norte, 480 - Indaiá, Caraguatatuba','(12)3888-1387', *  from openrowset (bulk 'C:\imagem\sapopemba.jpg', single_blob) alciImagem

insert into ue(nome_unidade, unidade, endereco_unidade,telefone_unidade, imagem_unidade) select 'Etec de Sapopemba',172,'Rua Benjamim de Tudela, 155 - Fazenda da Juta, SP','(11)2019-1519', *  from openrowset (bulk 'C:\imagem\caraguatatuba.jpg', single_blob) alciImagem

insert into ue(nome_unidade, unidade, endereco_unidade,telefone_unidade, imagem_unidade) select 'Etec de Cotia',222,'Rua Topázio, 555 – Jardim Nomura - Cotia','(11)4148-2099', *  from openrowset (bulk 'C:\imagem\cotia.jpg', single_blob) alciImagem

drop table aulas_disponiveis


create table aula_ampliacao(
	id int identity (1, 1) not null,
	id_disponiveis int not null,
	nome_disciplina varchar(30) not null,
	unidade int not null,
	nome_curso varchar(40) not null,
	CPF varchar(11) not null,
	num_aulas int not null,
	dia_semana varchar(20) not null,
	horario_aula varchar(20) not null,
	status_aula varchar(20) not null,
	formacao_prof varchar(40) not null
	
)

SELECT professor.nome_prof, aula_ampliacao.nome_disciplina, professor.pontos_prof FROM professor JOIN  aula_ampliacao ON  professor.CPF = aula_ampliacao.CPF
LEFT JOIN aulas_disponiveis ON aulas_disponiveis.id = 41
WHERE aula_ampliacao.unidade = 303 and aula_ampliacao.nome_disciplina='OSA' and aulas_disponiveis.nome_curso = 'Des de Sistemas'ORDER BY professor.pontos_prof DESC

use mestrado
select * from aula_ampliacao

drop table aula_ampliacao

INSERT INTO aula_ampliacao (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
(SELECT nome_disciplina, unidade, nome_curso, '06476148800', num_aulas, dia_semana, horario_aula, status_aula, formacao_prof FROM aulas_disponiveis WHERE id = 24)


SELECT ue.nome_unidade, ue.endereco_unidade, ue.telefone_unidade, aulas_disponiveis.id,aulas_disponiveis.nome_curso, aulas_disponiveis.nome_disciplina, aulas_disponiveis.num_aulas, aulas_disponiveis.status_aula, ue.imagem_unidade
FROM ue JOIN  aulas_disponiveis ON  ue.unidade = aulas_disponiveis.unidade 
LEFT JOIN 
    aula_ampliacao ON aulas_disponiveis.id = aula_ampliacao.id_disponiveis
WHERE aulas_disponiveis.formacao_prof = 'Tecnologia' and aulas_disponiveis.CPF='0'
AND (aula_ampliacao.id_disponiveis IS NULL OR aulas_disponiveis.id <> aula_ampliacao.id_disponiveis)



SELECT ue.nome_unidade, ue.endereco_unidade, ue.telefone_unidade, aulas_disponiveis.id,aulas_disponiveis.nome_curso, aulas_disponiveis.nome_disciplina, aulas_disponiveis.num_aulas, aulas_disponiveis.status_aula, ue.imagem_unidade FROM ue JOIN  aulas_disponiveis ON  ue.unidade = aulas_disponiveis.unidade LEFT JOIN  aula_ampliacao ON aulas_disponiveis.id = aula_ampliacao.id_disponiveis WHERE aulas_disponiveis.formacao_prof = 'Tecnologia' AND (aula_ampliacao.id_disponiveis IS NULL OR aulas_disponiveis.id <> aula_ampliacao.id_disponiveis)


select * from aula_ampliacao
select * from aulas_disponiveis

create table aulas_disponiveis(
	id int identity (1, 1) not null,
	nome_disciplina varchar(30) not null,
	unidade int not null,
	nome_curso varchar(40) not null,
	CPF varchar(11) not null,
	num_aulas int not null,
	dia_semana varchar(20) not null,
	horario_aula varchar(20) not null,
	status_aula varchar(20) not null,
	formacao_prof varchar(40) not null
	
)

DELETE FROM aula_ampliacao WHERE id_disponiveis = "+id+"

delete from aulas_disponiveis where id=21
select * from aulas_disponiveis

insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('PMI', 18, 'Des de Sistemas', 0, 5, '2ª', 'noite 1º', 'Livre', 'Tecnologia')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('BDII', 18, 'Des de Sistemas', 0, 2, '4ª', 'manhã 2º', 'Livre', 'Tecnologia')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('PMI', 18, 'Des de Sistemas', 0, 4, '4ª', 'manhã 4º', 'Livre', 'Tecnologia')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('Aplicativos', 18, 'Administração', 0, 2.5, '6ª', 'noite 2º', 'Substituição', 'Tecnologia')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('Contabilidade', 18, 'Administração', 0, 2.5, '4ª', 'noite 2º', 'Substituição', 'Administração')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('MF', 18, 'Administração', 0, 2, '4ª', 'tarde 2º', 'Livre', 'Administração')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('Aplicativos', 18, 'Administração', 0, 2.5, '6ª', 'noite 2º', 'Substituição', 'Administração')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('PTCC', 18, 'Administração', 0, 2.5, '2ª', 'noite 1º', 'Livre', 'Administração')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('TCC', 18, 'Administração', 0, 2.5, '5ª', 'noite 2º', 'Livre', 'Administração')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('TCC', 18, 'Administração', '39969445006', 2.5, '5ª', 'noite 2º', 'Livre', 'Administração')

insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('PTCC', 18, 'Des de Sistemas', 0, 2.5, '5ª', 'noite 1º', 'Substituição', 'Tecnologia')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('TCC', 18, 'Des de Sistemas', 0, 2.5, '5ª', 'noite 2º', 'Livre', 'Tecnologia')

insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('PTCC', 80, 'Administração', 0, 2.5, '5ª', 'noite 2º', 'Livre', 'Administração')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('Marketing', 303, 'Des de Sistemas', 0, 3, '2ª', 'tarde 3º', 'Livre', 'Administração')

insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('Aplicativos', 80, 'Alimentos', 0, 5, '5ª', 'noite 1º', 'Livre', 'Tecnologia')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('OSA', 303, 'Des de Sistemas', 0, 2.5, '2ª', 'noite 3º', 'Substituição', 'Tecnologia')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('TLBDI', 222, 'Des de Sistemas', 0, 4, '6ª', 'manhã 3º', 'Livre', 'Tecnologia')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('Aplicativos', 80, 'Agroindústria', 0, 2.5, '2ª', 'noite 3º', 'Livre', 'Tecnologia')

insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('Aplicativos', 80, 'Alimentos', '06476148800', 5, '5ª', 'noite 1º', 'Livre', 'Tecnologia')

insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('TCC', 18, 'Administração', '39969445006', 2.5, '5ª', 'noite 2º', 'Livre', 'Administração')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('TCC', 18, 'Administração', '05611269842', 2.5, '5ª', 'noite 2º', 'Livre', 'Administração')
insert into aulas_disponiveis (nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values ('TCC', 18, 'Administração', '27506485890', 2.5, '5ª', 'noite 2º', 'Livre', 'Administração')


create table curso(
	id_curso int identity (1, 1) not null,
	nome_curso varchar(40) not null,
	ue int not null
)

insert into curso (nome_curso, ue) values ('Administração', 18)
insert into curso (nome_curso, ue) values ('Administração', 80)
insert into curso (nome_curso, ue) values ('Administração', 303)
insert into curso (nome_curso, ue) values ('Administração', 213)
insert into curso (nome_curso, ue) values ('Administração', 222)
insert into curso (nome_curso, ue) values ('Administração', 278)
insert into curso (nome_curso, ue) values ('Administração', 10)
insert into curso (nome_curso, ue) values ('Agroindústria',80)
insert into curso (nome_curso, ue) values ('Alimentos', 80)
insert into curso (nome_curso, ue) values ('Alimentos', 172)
insert into curso (nome_curso, ue) values ('Logística', 80)
insert into curso (nome_curso, ue) values ('Logística', 303)
insert into curso (nome_curso, ue) values ('Logística', 213)
insert into curso (nome_curso, ue) values ('Meio Ambiente', 80)
insert into curso (nome_curso, ue) values ('Meio Ambiente', 213)
insert into curso (nome_curso, ue) values ('Meio Ambiente', 18)
insert into curso (nome_curso, ue) values ('Química', 80)
insert into curso (nome_curso, ue) values ('Des de Sistemas', 213)
insert into curso (nome_curso, ue) values ('Des de Sistemas', 172)
insert into curso (nome_curso, ue) values ('Des de Sistemas', 222)
insert into curso (nome_curso, ue) values ('Automação', 18)
insert into curso (nome_curso, ue) values ('Edificações', 18)
insert into curso (nome_curso, ue) values ('Guia de Turismo', 18)
insert into curso (nome_curso, ue) values ('Eletroeletrônica', 18)
insert into curso (nome_curso, ue) values ('Des de Sistemas', 18)
insert into curso (nome_curso, ue) values ('Meio Ambiente', 18)
insert into curso (nome_curso, ue) values ('Administração', 18)
insert into curso (nome_curso, ue) values ('Química', 21)



drop table disciplina

create table disciplina(
	id_disciplina int identity (1, 1) not null,
	nome_curso varchar(40) not null,
	ue int not null,
	nome_disciplina varchar(40) not null,
	area_disciplina varchar (30) not null
)
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Administração', 18,'PTCC', 'Administração')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Des de Sistemas', 18, 'OSA', 'Tecnologia')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Administração', 18, 'OSA', 'Administração')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Administração', 18, 'DTCC', 'Administração')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Des de Sistemas', 18, 'PA', 'Tecnologia')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Administração', 18, 'LTT', 'Administração')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Des de Sistemas', 18,'PMI', 'Tecnologia')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Des de Sistemas', 18, 'PTCC', 'Tecnologia')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Administração', 10,'Inglês', 'Administração')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Administração', 10,'MF', 'Administração')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Des de Sistemas', 213, 'Sistemas Embarcados', 'Tecnologia')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Eletroeletrônica', 18,'Sistemas Embarcados', 'Eletrônica')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Des de Sistemas', 172, 'PMI', 'Tecnologia')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Des de Sistemas', 213, 'PTCC', 'Tecnologia')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Administração', 18, 'Inglês', 'Administração')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Des de Sistemas', 213,'Ética', 'Meio Ambiente')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Química', 80, 'Química', 'Química')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Química', 80,'LTT', 'Química')
insert into disciplina (nome_curso, ue,nome_disciplina, area_disciplina) values ('Química', 21,'LTT', 'Química')
use mestrado
select * from  disciplina

drop table disciplina


-- Consultar imagens no banco:
select * from login
select * from professor
select * from ue
select * from curso


select * from aulas_disponiveis

update professor set gestorUe=21 where id=3

Select * from ue, aulas_disponiveis where aulas_disponiveis.formacao_prof = 'administração' and ue.unidade = aulas_disponiveis.unidade

Select * from login


SELECT ue.nome_unidade, ue.endereco_unidade, ue.telefone_unidade, aulas_disponiveis.nome_curso, aulas_disponiveis.nome_disciplina, aulas_disponiveis.num_aulas, aulas_disponiveis.status_aula, ue.imagem_unidade
FROM ue JOIN  aulas_disponiveis ON  ue.unidade = aulas_disponiveis.unidade WHERE aulas_disponiveis.formacao_prof = 'administração'


SELECT telProf, emailProf FROM professor  where id = 1


SELECT * FROM curso  where ue=18  order by nome_curso


SELECT professor.id,professor.nome_prof, professor.formacao_prof, professor.pontos_prof, professor.telProf, professor.emailProf  
FROM professor JOIN  aulas_disponiveis 
ON  professor.area_prof = aulas_disponiveis.formacao_prof WHERE aulas_disponiveis.nome_disciplina='PMI' ORDER BY professor.nome_prof


SELECT DISTINCT nome_curso,ue FROM curso  where ue=18  order by nome_curso

SELECT * FROM curso  where ue=80  order by nome_curso

SELECT MIN(id_disciplina) AS id_curso, ue, nome_disciplina FROM disciplina WHERE ue = 18 and nome_curso = 'Des de Sistemas'  GROUP BY ue, nome_disciplina ORDER BY nome_disciplina



SELECT MIN(id_disciplina) AS id_DISCIPLINA, ue, nome_disciplina, area_disciplina 
FROM disciplina WHERE ue = 18 and nome_curso = 'Administração'  
GROUP BY ue, nome_disciplina, area_disciplina ORDER BY nome_disciplina


SELECT MIN(id_disciplina) AS id_curso, ue, nome_disciplina FROM disciplina WHERE  id_curso = 18 GROUP BY ue, nome_disciplina ORDER BY nome_disciplina;


insert into aulas_disponiveis 
(nome_disciplina, unidade, nome_curso, CPF, num_aulas, dia_semana, horario_aula, status_aula, formacao_prof)
values 
('lala', 18, 'ADm', '0', 2.5, '2ª', 'noite', 'livre', 'administra')
