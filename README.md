# Database Modeling & SQL
 PORTIFÓLIO 
 
 Criar um banco de dados que ofereça suporte para que um sistema possa armazenar informações que atendam a necessidade do cliente.

PROJETO: 
Os proprietários de uma faculdade precisam de um sistema que viabilize o armazenamento de informações sobre seus alunos, cursos, matérias e professores para que seja possível realizar controles básicos como montar turmas e realizar o armazenamento de notas dos alunos. Com base no que foi apresentado acima, o aluno deve criar um banco de dados que ofereça suporte para que um sistema possa armazenar informações que atendam a necessidade do cliente. Para facilitar o desenvolvimento do projeto, identifique respostas para as seguintes questões:

● Quais são as principais necessidades dos clientes? 
Conseguir compilar todas as informações dos cursos, matérias (disciplinas), alunos, professores e notas. 

a.	Quais informações precisam ser armazenadas? 
Nomes: alunos, professores, curso, disciplinas.
Dados pessoais: aluno e professor.
Dados dos cursos: nome, sigla, data de início, notas.

b.	Quais os dados precisam ser guardados? 
Inicialmente todos.

c.	O que será feito com os dados posteriormente? 
Ter controle total de alunos cursando e cursados, índice de desistências, saber o índice de aprovação de cada matéria. 

● Quais tabelas precisam ser criadas para que todas as informações sejam armazenadas? 

CADASTRAR ALUNOS – TABELA: ALUNO
CADASTRAR PROFESSORES – TABELA: PROFESSOR
CADASTRAR CURSO – TABELA: CURSO 
CADASTRAR DISCIPLINAS – TABELA: DISCIPLINAS
CADASTRAR NOTA – TABELA: NOTA
CADASTRAR TURMA – TABELA: TURMA

● Quais atributos cada tabela deve ter?

ALUNO: nome, telefone, e-mail, data de nascimento, CPF, logradouro, bairro, cep, número, estado, cidade, pais. 
PROFESSOR: nome, telefone, e-mail, data de nascimento, CPF, logradouro, bairro, cep, número, estado, cidade, pais. 
CURSO: nome, sigla, duração, data de início. 
DISCIPLINAS: nome, sigla, semestre.
NOTA: nota prova, nota portifólio, nota estudo de caso, data de entrega. 
TURMA:  código, exemplo: (TDI B). 

● Qual o tipo de dados de cada atributo definido? 

ALUNO: nome VARCHAR, telefone VARCHAR, e-mail VARCHAR, data de nascimento DATE, CPF VARCHAR.
PROFESSOR: nome VARCHAR, telefone VARCHAR, e-mail VARCHAR, data de nascimento DATE, CPF VARCHAR.
CURSO: nome VARCHAR, sigla VARCHAR, duração VARCHAR, tipo de duração ENUM, data de início DATE. 
DISCUPLINAS: nome VARCHAR, sigla VARCHAR, semestre VARCHAR.
NOTA: nota prova DECIMAL, nota portifólio DECIMAL, nota estudo de caso DECIMAL, data de entrega DATE. 
TURMA:  código VARCHAR, exemplo: (TDI B). 
ENDEREÇO:  logradouro VARCHAR, bairro VARCHAR, cep VARCHAR, número INT, estado VARCHAR, cidade, pais VARCHAR. 

● Quais são os relacionamentos a serem criados entre as tabelas?

RELACIONAMENTO ENTRE: Aluno e curso.
RELACIONAMENTO ENTRE: Aluno e turma.
RELACIONAMENTO ENTRE: Aluno e disciplinas.
RELACIONAMENTO ENTRE: Professor e Turma.
RELACIONAMENTO ENTRE: Endereço e Aluna.
RELACIONAMENTO ENTRE: Endereço e Professor. 
RELACIONAMENTO ENTRE: Notas/Alunos e Disciplinas/ Notas/Aluno e Curso 








 


