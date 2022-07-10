USE hospital;

INSERT INTO pacientes (nomes, endereco, telefone, email, documento, convenio_id)
VALUES
    ('Maria Joana do Carmo Neves','Rua do Coqueiro','(68) 2553-5839','elaine-monteiro82@pisbrasil.com.br','87218856560',2),
    ('Nicole Allana Bárbara Lopes','Rua Principal, s/n','(84) 99529-5428','nicole_lopes@guiamaritimo.com.br','20435091603',3),
    ('Antonio Caio Guilherme da Silva','3ª Travessa Medellin','(84) 2989-8207','antonio_dasilva@peopleside.com.br','01675099421',4),
    ('Pietro Miguel Rodrigues','Rua Doutor Arquelau Siqueira Amorim','(86) 98502-1697','miguel_pietro@peopleside.com.br','41942927070',2),
    ('Alana Sandra Elaine Novaes','Rua Dom Wanillo Galvão Barros','(82) 98606-5012','alanasandranovaes@alway.com.br','38237366719',6),
    ('Enzo Julio Leandro Campos','Rua Santa Bárbara','(51) 2782-2225','enzo.julio.campos@wwlimpador.com.br','03009488327',2),
    ('Josefa Raimunda da Cunha','Alameda Quebec','(91) 3841-2569','josefa-dacunha76@racml.com.br','43856277110',6),
    ('Fábio Alexandre Rezende','Distrito Industrial','(66) 98275-5038','fabio_rezende@crsilvadesign.com','69945988379',5),
    ('Levi Cauã Corte Real','Rua Abaetetuba','(92) 99442-1624','levi_cortereal@br.inter.net', '63150393590',3),
    ('Pietro Felipe Samuel Oliveira','Rua Antônio Jorge','(84) 98874-0199','pietro_felipe_oliveira@brasildakar.com.br','80759953252',1),
    ('Débora Tânia Pires','Rua da Mata','(27) 98998-5062','debora-pires76@solucao.adm.br','73009275480',2),
    ('Marcos Vinicius Tomás Nogueira','Rodovia Santos Dumont','(21) 99802-5365','marcos-nogueira77@deze7.com.br','53497007153',4),
    ('Alessandra Sandra Silveira','Rua Gentil Batistti Archer','(47) 98415-2117','alessandra_sandra_silveira@aliancacadeiras.com.br','09745578460',6),
	('Rayssa Amanda Almada','Travessa União','(85) 99621-7114','rayssa.amanda.almada@netsite.com.br',"91588447758", 3);

INSERT INTO especialidades_medicos (medicos_id, especialidades_id)
VALUES
	(8, 2),
    (9, 1),
    (7, 6),
    (6, 7),
    (1, 2),
    (5, 3),
    (4, 4),
    (1, 1),
    (2, 1),
    (3, 1);
    
INSERT INTO consultas (data_consulta, valor, medicos_id, pacientes_id, convenios_id, especialidades_id)
VALUES
  ("2020-12-16","519",2,6,5,1),
  ("2019-04-12","614",6,8,1,5),
  ("2015-46-04","614",4,14,5,2),
  ("2019-09-23","690",1,6,0,2),
  ("2019-04-23","509",5,9,3,6),
  ("2016-07-30","453",3,9,3,2),
  ("2016-06-12","692",7,14,3,3),
  ("2015-04-24","495",5,12,3,7),
  ("2015-12-22","679",7,8,0,7),
  ("2016-08-10","429",5,13,1,1),
  ("2017-10-07","573",9,10,2,6),
  ("2016-06-24","648",9,2,2,4),
  ("2016-04-21","496",2,10,3,1),
  ("2017-02-08","498",4,13,0,6),
  ("2021-02-18","480",5,13,5,1),
  ("2016-12-23","466",3,8,5,1),
  ("2016-07-30","666",3,10,3,2),
  ("2017-09-25","620",6,2,1,6),
  ("2016-02-14","638",8,5,2,7),
  ("2015-01-16","487",4,10,4,4),
  ("2016-11-22","547",8,7,5,3),
  ("2020-02-12","425",2,3,0,5),
  ("2019-07-19","672",3,14,1,2),
  ("2017-06-03","429",3,9,3,3),
  ("2021-07-04","518",9,14,2,6);
  
  INSERT INTO receita_consultas (medicamentos, instrucao, consultas_id)
VALUES
  ("Dipirona 500 mg, Amoxilina 500 mg","Dipirona de 6 e 6 hotras antibiotico de 8 em 8 horas",8),
  ("Cetaconazol uso tópico, Betamentasona pomada", "aplicar na area afetada 1 vez ao dia",10),
  ("Captopril 25 mg, Aspirina 500 mg","Tomar uma vez ao dia",14),
  ("Clonazepam 25 mg, quetiapina 25 mg","3 gotas duas vezes ao dia, 1 vez ao dia",21),
  ("Cetaconazol uso tópico, pomada betamentasona pomada", "aplicar na area afetada 1 vez ao dia",5),
  ("Clonazepam 25 mg, quetiapina 25 mg","3 gotas duas vezes ao dia, 1 vez ao dia",21),
  ("Dipirona 500 mg, Amoxilina 500 mg","Dipirona de 6 e 6 hotras antibiotico de 8 em 8 horas",9),
  ("Captopril 25 mg, Aspirina 500 mg","Tomar uma vez ao dia",12),
  ("Cetaconazol uso tópico, Betamentasona pomada", "aplicar na area afetada 1 vez ao dia",19),
  ("Dipirona 500 mg, Amoxilina 500 mg","Dipirona de 6 e 6 hotras antibiotico de 8 em 8 horas",7);
  
  INSERT INTO internacao (data_entrada, data_prev_alta, quartos_id, medicos_id, pacientes_id)
VALUES
  ("2021-02-18","2021-02-21",2,4,3),
  ("2016-12-23","2016-12-26",1,2,4),
  ("2016-07-30","2016-08-02",1,3,5),
  ("2017-09-25","2017-09-28",2,6,6),
  ("2017-09-25","2017-09-28",3,5,7),
  ("2015-01-16","2015-01-19",1,7,8),
  ("2016-11-22","2016-11-25",3,9,8),
  ("2020-02-12","2020-02-15",1,7,10),
  ("2019-07-19","2019-07-22",1,4,10),
  ("2017-06-03","2017-06-06",2,7,12),
  ("2021-07-04","2021-07-07",7,4,3);
  
  INSERT INTO internacao_enfermeiros (internacao_id, enfermeiros_id)
VALUES
  (1,1),
  (1,2),
  (1,3),
  (2,4),
  (2,5),
  (3,3),
  (3,1),
  (3,4),
  (4,1),
  (4,6),
  (5,5),
  (5,7),
  (6,6),
  (6,8),
  (7,7);
  

