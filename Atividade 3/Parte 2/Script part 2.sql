USE hospital;

ALTER TABLE medicos
ADD  atividade varchar(255) NOT NULL;

INSERT INTO medicos (atividade)
VALUES
    ("ativo"),
    ("ativo"),
    ("ativo"),
    ("ativo"),
    ("inativo"),
    ("ativo"),
    ("ativo"),
    ("ativo"),
    ("ativo"),
    ("inativo");
    
UPDATE internacao
SET data_entrada = "2021-02-21"
WHERE Id = 1;

UPDATE internacao
SET data_entrada = "2016-08-02"
WHERE Id = 3;

UPDATE internacao
SET data_entrada = "2017-09-28"
WHERE Id = 4;

UPDATE internacao
SET data_entrada = "2015-01-19"
WHERE Id = 6;

DELETE FROM convenios WHERE nome = 'Sulamerica';
DELETE FROM consultas WHERE convenio_id = 5;



