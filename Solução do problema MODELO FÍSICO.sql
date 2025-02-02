create database db_facul_modelo;
use db_facul_modelo;

create table tbl_endereco (
id_endereco int auto_increment primary key, 
longradouro varchar(100),
bairro varchar(45),
numero varchar(100),
cep varchar(8),
cidade varchar (45),
estado varchar (45),
pais varchar (45),
unique index (id_endereco) 
);

create table tbl_aluno( 
id_aluno int auto_increment primary key, 
nome varchar (100), 
data_nascimento Date,
cpf VARCHAR(11),
id_endereco int,
foreign key (id_endereco) references tbl_endereco (id_endereco)
); 

/*ADIÇAO DE UM NOVO CAMPO*/
ALTER table tbl_aluno ADD telefone varchar (45);
ALTER table tbl_aluno ADD email varchar (150);
#seleciona todos os registro de uma tabela 
select * from tbl_aluno;
#mostra a estrutura da tabela
desc tbl_aluno; 

create table tbl_turma(
id_turma int auto_increment primary key, 
codigo varchar (5) not null,
id_aluno int,
foreign key (id_aluno) references tbl_aluno (id_aluno)
);

create table tbl_curso(
id_curso int auto_increment primary key, 
nome varchar (100) not null, 
sigla varchar (5) not null, 
duracao varchar (50) not null, 
data_inicio date
);

create table tbl_notas (
id_notas int auto_increment primary key, 
nota_prova decimal, 
nota_portifolio decimal, 
nota_estudo_de_caso decimal,  
data_entrega date
 );


create table tbl_disciplina ( 
id_tbl_disciplina int auto_increment primary key, 
nome varchar (100) not null, 
sigla varchar (5) not null, 
semestre varchar (45), 
id_notas int, 
foreign key (id_notas) references tbl_notas (id_notas)
);

create table  tbl_aluno_curso (
id_tbl_aluno_curso int auto_increment primary key, 
data_matricula date, 
situacao_atual varchar (45), 
id_aluno int, 
foreign key (id_aluno) references tbl_aluno (id_aluno), 
id_curso int, 
foreign key (id_curso) references tbl_curso (id_curso), 
id_notas int, 
foreign key (id_notas) references tbl_notas (id_notas)
);

create table  tbl_curso_disciplina (
id_curso_disciplina int auto_increment primary key,
Fk_nome_curso int,
fk_nome_disciplina int
);
alter table tbl_curso_disciplina  ADD constraint FOREIGN KEY (Fk_nome_curso) REFERENCES tbl_curso (id_curso);
ALTER TABLE tbl_curso_disciplina  ADD constraint FOREIGN KEY (fk_nome_disciplina) REFERENCES tbl_disciplina  (id_tbl_disciplina);

create table  tbl_aluno_disciplina (
id_aluno_disciplina int auto_increment primary key,
situacao_atual varchar (45),
FK_nome_aluno int, 
FK_nome_disciplina int, 
FK_notas_alunos int
);
alter table tbl_aluno_disciplina  ADD constraint FOREIGN KEY (FK_nome_aluno) REFERENCES tbl_aluno (id_aluno);
ALTER TABLE tbl_aluno_disciplina  ADD constraint FOREIGN KEY (fk_nome_disciplina) REFERENCES tbl_disciplina (id_disciplina);
ALTER TABLE tbl_aluno_disciplina  ADD constraint FOREIGN KEY (FK_notas_alunos) REFERENCES tbl_notas (id_notas);

create table tbl_professor( 
id_professor int auto_increment primary key, 
nome varchar (100) not null, 
data_nascimento Date not null,
cpf VARCHAR(11) not null,
id_endereco int,
foreign key (id_endereco) references tbl_endereco (id_endereco),
id_notas int, 
foreign key (id_notas) references tbl_notas (id_notas)
);

/*ADIÇAO DE UM NOVO CAMPO*/
ALTER table tbl_professor ADD telefone varchar (45);
ALTER table tbl_professor ADD email varchar (150);

create table professor_turma (
id_professor_turma int auto_increment primary key, 
id_professor int,
foreign key (id_professor) references tbl_professor (id_professor),
id_turma int, 
foreign key (id_turma) references tbl_turma (id_turma)
);

# preenchendo as tabelas
insert into tbl_endereco 
  (longradouro, bairro, numero, cep, cidade, estado, pais) 
  values
  ('av jose','jardim','123','09812345','sao paulo','sp','brasil'), 
  ('rua augusta', 'jardim europa','456','12345123','taboao da serra','sp','brasil'),
  ('rua jose', 'jardim céu','12','12457823','osasco', 'sp','brasil'),
  ('av brasil','jardim sul', '01', '34986098', 'rio de janeiro', 'rj', 'brasil'),
  ('av paulista','jardins','01','0987654','sao paulo','sp','brasil'), 
  ('rua liberdade', 'jardim japao','45','12345121','sao paulo','sp','brasil'),
  ('av morumbi', 'jardim portal','14','12498823','sao paulo', 'sp','brasil'),
  ('av hans jorge','jardim icarai', '04', '34980998', 'rio de janeiro', 'rj', 'brasil');
  

insert into tbl_aluno
(nome,data_nascimento, cpf, id_endereco)
values
('Bruna Silva','1992-01-19','12345678912','1'),
('Roberta Ferreira','1990-01-28','09845678912','2'),
('Luiz Monteiro','2000-03-15','56745678912','3'),
('Rosana Maria','1986-09-15','09845678912','4'),
('Charles Gomes','1984-09-09','09845678999','5'),
('Bernadardo','2005-09-24','56745678999','6');

#alterar dados nos dados da tabela, nunca esqueça de usar o where que indica qual linha vc quer alterar os dados!
update tbl_aluno set email = '11925234509' where id_aluno = 6;
update tbl_aluno set email = 'bernardo99@gmail.com,br' where id_aluno = 6;

insert into tbl_turma
(codigo,id_aluno)
values
('TDI01','1'),
('TDI02','2'), 
('TDI03','3'), 
('TDI04','4'), 
('TDI05','5'), 
('TDI05','6');

insert into tbl_curso
(nome, sigla, duracao, data_inicio)
values
('Gestão de Tecnologia da Informação', 'TDI', 'dois anos e meio','2025-02-03'),
('Gestão de Tecnologia da Informação', 'TDI', 'dois anos e meio','2024-02-03'),
('Gestão de Tecnologia da Informação', 'TDI', 'dois anos e meio','2025-08-03'),
('Gestão de Tecnologia da Informação', 'TDI', 'dois anos e meio','2024-08-03');

insert into tbl_notas
(nota_prova, nota_portifolio, nota_estudo_de_caso, data_entrega)
values
('1.0', '4.0', '4.0','2025-02-03');


insert into tbl_disciplina
(nome, sigla, semestre, id_notas)
values
('AGILE METHODOLOGY', 'AM','primeiro', '1');

insert into tbl_aluno_curso 
(data_matricula, situacao_atual, id_aluno, id_curso , id_notas)
values 
('2025-01-02','cursanso', '1', '1','1' );

insert into  tbl_curso_disciplina
 (Fk_nome_curso,fk_nome_disciplina)
values
('1', '1');

insert into tbl_aluno_disciplina
 (situacao_atual, FK_nome_aluno, fK_nome_disciplina, FK_notas_alunos) 
 values 
 ('cursando', '1', '1', '1');
 
insert into tbl_professor
(nome, data_nascimento, cpf, id_endereco, id_notas)
values 
('Charles Silvia','1980-09-09','10845678999','7','1');

#alterar dados nos dados da tabela, nunca esqueça de usar o where que indica qual linha vc quer alterar os dados!!!!! 
update tbl_professor set telefone = '11956872399' where id_professor = 1;
update tbl_professor set email = 'charles@facul@modelo' where id_professor = 1;

insert into professor_turma 
(id_professor, id_turma)
values
('1', '1');




