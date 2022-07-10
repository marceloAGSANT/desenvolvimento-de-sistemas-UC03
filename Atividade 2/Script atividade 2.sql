CREATE DATABASE hospital;
USE hospital;

CREATE TABLE medicos(
Id int NOT NULL AUTO_INCREMENT,
Nascimento date NOT NULL, 
documento varchar(255) NOT NULL,
crm int NOT NULL,
Nome varchar(255) NOT NULL,
estado varchar(255) NOT NULL,
telefone varchar(255) NOT NULL,
endereço varchar(255) NOT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE Especialidades (
Id int NOT NULL AUTO_INCREMENT,
Especialidade varchar(255) NOT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE  especialidades_medicos(
Id int NOT NULL AUTO_INCREMENT,
medicos_id int NOT NULL,
especialidades_id int NOT NULL,
PRIMARY KEY (Id),
CONSTRAINT FK_medicos FOREIGN KEY (medicos_id) REFERENCES Medicos (Id),
CONSTRAINT FK_especialidades FOREIGN KEY (especialidades_id) REFERENCES Especialidades (Id)
);

CREATE TABLE Convenios (
Id int NOT NULL AUTO_INCREMENT,
nome varchar(255) NOT NULL,
CNPJ varchar(255) NOT NULL,
tempo_de_carencia varchar(255) NOT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE Pacientes (
Id int NOT NULL AUTO_INCREMENT,
endereco varchar(255) NOT NULL,
telefone varchar(255) NOT NULL,
email varchar(255) NOT NULL,
documento varchar(255) NOT NULL,
convenio_id int NOT NULL,
PRIMARY KEY (Id),
CONSTRAINT FK_covenio FOREIGN KEY (convenio_id) REFERENCES Convenios (id)
);

CREATE TABLE Consultas(
Id int NOT NULL AUTO_INCREMENT,
data_consulta date NOT NULL,
valor varchar(255) NOT NULL,
medicos_id int NOT NULL,
pacientes_id int NOT NULL,
convenios_id int NOT NULL,
especialidades_id int NOT NULL,
PRIMARY KEY (Id),
CONSTRAINT FK_medicos_consultas FOREIGN KEY (medicos_id) REFERENCES Medicos (Id),
CONSTRAINT FK_especialidades_consultas FOREIGN KEY (especialidades_id) REFERENCES Especialidades (Id),
CONSTRAINT FK_covenio_consult FOREIGN KEY (convenios_id) REFERENCES Convenios (id),
CONSTRAINT FK_pacientes FOREIGN KEY (pacientes_id) REFERENCES Convenios (id)
);

CREATE TABLE Receita_consultas (
Id int NOT NULL AUTO_INCREMENT,
medicamentos varchar(255) NOT NULL,
instrucao varchar(255) NOT NULL,
consultas_id int NOT NULL,
PRIMARY KEY (Id),
CONSTRAINT FK_consultas FOREIGN KEY (consultas_id) REFERENCES Consultas(Id)
);

CREATE TABLE tipo_quarto(
Id int NOT NULL AUTO_INCREMENT,
tipo_quarto varchar(255) NOT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE Quartos (
Id int NOT NULL AUTO_INCREMENT,
tipo int NOT NULL,
Numero int NOT NULL,
PRIMARY KEY (Id),
CONSTRAINT FK_tipo FOREIGN KEY (tipo) REFERENCES tipo_quarto (Id)
);

CREATE TABLE Enfermeiros (
Id int NOT NULL AUTO_INCREMENT,
Nome varchar(255) NOT NULL,
CPF varchar(255) NOT NULL,
CRE varchar(255) NOT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE Internacao (
Id int NOT NULL AUTO_INCREMENT,
data_entrada datetime NOT NULL,
data_prev_alta date NOT NULL,
quartos_id int NOT NULL,
medicos_id int NOT NULL,
pacientes_id int NOT NULL,
PRIMARY KEY (Id),
CONSTRAINT FK_medicos_int FOREIGN KEY (medicos_id) REFERENCES Medicos (Id),
CONSTRAINT FK_quartos FOREIGN KEY (quartos_id) REFERENCES Quartos (Id),
CONSTRAINT FK_pacientes_int FOREIGN KEY (pacientes_id) REFERENCES Convenios (id)
);

CREATE TABLE  internacao_enfermeiros(
Id int NOT NULL AUTO_INCREMENT,
internacao_id int NOT NULL,
enfermeiros_id int NOT NULL,
PRIMARY KEY (Id),
CONSTRAINT FK_internacao FOREIGN KEY (internacao_id) REFERENCES Internacao (Id),
CONSTRAINT FK_enfermeiros FOREIGN KEY (enfermeiros_id) REFERENCES Enfermeiros (Id)
);


