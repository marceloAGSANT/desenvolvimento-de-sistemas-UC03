USE hospital;
INSERT INTO medicos (Nascimento, documento, crm, Nome, telefone , endereço, estado)
VALUES
  ("1973-05-27","21930572140",4565786,"Sueli Cristiane Teixeira","(71) 99742-0243","5ª Avenida Liberdade, numero 921, Liberdade","BA"),
  ("1990-08-25","86132473009",15891,"Anny Quintanilha","(69) 3752-5488","Avenida Japão 50","SP"),
  ("1981-09-22","62876978067",178105,"Suéli Simão Pegado","(97) 2810-2734","Rua Albieri 480","SP"),
  ("1980-12-02","80814279023",14777,"Alisson Sacramento ","(82) 2433-7762","Rua das Rosas, 80, apto 200","RJ"),
  ("1990-04-24","20924987030",34548,"Lívia Veloso","(63) 3230-5071","Rua Álamo, 180, ap 90","MG"),
  ("1980-09-02","38603737061",120935,"Gael Milheiro Lemes","(54) 3941-4795","Travessa A 89","MG"),
  ("1989-06-06","23529091049",344789,"Gisela Espinosa","(86) 3368-4812","Avenida Chateaubriand, 150","SP"),
  ("1986-12-05","03626639045",14777,"Gillian Moses","(61) 2615-4767","Avenida  das aves, 9912, apto 60","ES"),
  ("1974-07-04","32972518080",65765,"Ezequiel Pestana Henriques","(24) 2448-9465","Avenida das Águas 600","GO"),
  ("1980-12-11","70600178013",13548,"Cristovão Xavier","(61) 2615-4776","Rua Albieri 590","AM");

INSERT convenios (nome, CNPJ, tempo_de_carencia)
VALUES
	('Unimed','63097125000100','Seis meses'),
    ('Amil', '20292397000140','Oito meses'),
    ('Hapvida','87730007000147','Doze meses'),
    ('Bradesco','92084246000107', 'cinco meses'),
    ('Sulamerica','15599385000122','seis meses');
    
INSERT enfermeiros (nome, CPF, CRE)
VALUES
('Gabrielly Patrícia Cecília Drumond','766.508.133-97','52532'),
('Augusto Calebe Fogaça','325.734.884-38','2477'),
('Cristiane Catarina Aparecida da Rosa','584.639.272-54','76547'),
('Malu Sebastiana Lopes','760.103.195-01','946322'),
('Paulo Marcos Vinicius Barbosa','573.808.337-74','67562'),
('Carlos Miguel Antonio Almeida','475.661.765-44','45677'),
('Heitor Benedito Rodrigues','750.575.061-53','2638899'),
('Heloise Cecília Nascimento','809.766.308-26','466246'),
('Thomas Leandro Bernardo Silva','797.483.835-39','36366'),
('Silvana Beatriz Barros','348.922.334-98','36626');

INSERT especialidades (Especialidade)
VALUES
('Pediatria'),
('Cardiologia'),
('gastroenterologia'),
('Dermatologia'),
('Psiquiatria'),
('Neurologia'),
('Clinica Geral');

INSERT tipo_quarto (tipo_quarto)
VALUES
('apartamento'),
('enfermaria'),
(' quartos duplos');

INSERT quartos (tipo, Numero)
VALUES
(2, 201),
(3,202),
(1,203),
(1,204),
(2,205),
(3,206),
(1,207);


