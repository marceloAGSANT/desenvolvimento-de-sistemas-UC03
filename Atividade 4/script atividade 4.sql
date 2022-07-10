/*Consultas de dados hospital*/
/*item 1*/
/*Consultas em 2020*/
SELECT * FROM consultas WHERE data_consulta LIKE "2020%";
/*Valor médio*/
SELECT AVG(valor) FROM consultas WHERE data_consulta LIKE "2020%";

/*item 2*/
SELECT * FROM internacao WHERE data_prev_alta > data_alta;

/*item 3*/
SELECT * FROM receita_consultas WHERE consultas_id = (SELECT MIN(consultas_id) FROM receita_consultas);

/*item 4*/
SELECT * FROM consultas WHERE valor = (SELECT MAX(valor) 
FROM consultas WHERE convenios_id IS NULL) AND convenios_id IS NULL
UNION ALL
SELECT * FROM consultas WHERE valor = (SELECT MIN(valor) 
FROM consultas WHERE convenios_id IS NULL) AND convenios_id IS NULL;

/*item 5*/
SELECT I.id, I.data_entrada AS entrada, I.data_prev_alta AS prev_alta, I.data_alta AS alta, I.procedimento,
I.quartos_id, tipo,
(SELECT(DATEDIFF(alta,entrada))) AS dias,
(SELECT(SELECT(valor*(DATEDIFF(alta,entrada))))) as total_diaria
FROM internacao AS I JOIN quartos AS Q JOIN tipo_quarto as T
ON quartos_id = Q.Id AND tipo = T.id ORDER BY numero_quarto ASC;

/*item 6*/
SELECT I.data_entrada AS entrada, I.procedimento AS procedimento, Q.Numero AS numero_quarto
FROM internacao AS I, quartos AS Q WHERE I.quartos_id = Q.Id AND  Q.tipo = 1;

/*item 7*/
SELECT P.nomes, C.data_consulta, E.Especialidade
FROM pacientes AS P INNER JOIN consultas AS C INNER JOIN especialidades AS E
ON C.pacientes_id  = P.Id AND C.especialidades_id = E.Id 
WHERE (TIMESTAMPDIFF(YEAR, C.data_consulta, P.nascimento)> 18) 
ORDER BY C.data_consulta;

/*item 8*/

SELECT P.nomes AS pacientes, M.Nome AS medicos, I.data_entrada, I.procedimento
FROM internacao AS I JOIN medicos AS M JOIN pacientes AS P ON I.pacientes_id = P.Id AND I.medicos_id = M.Id
WHERE I.quartos_id IN (SELECT tipo FROM quartos WHERE tipo = 2) AND I.especialidade_id  = 3;

/*item 9*/

SELECT medicos, CRM, COUNT(*) AS Contagem_consultas 
FROM consultas
ORDER BY medicos;

/*item 10*/

SELECT enfermeiros, cre, COUNT(*) AS Contagem_internacao 
FROM internacao 
HAVING COUNT(*) >= 2
ORDER BY cre;