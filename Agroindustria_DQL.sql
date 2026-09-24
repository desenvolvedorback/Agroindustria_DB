USE agroindustria_acucar_db;

-- Exibe todas as informações armazenadas em Setores.
SELECT * FROM setores;
-- Exibe todas as informações armazenadas em Setores.
SELECT * FROM sensores;
-- Exibe todas as informações armazenadas em Setores.
SELECT * FROM leituras;




select * from sensores
where fabricante = 'Yokogawa';

SELECT tipo, fabricante, estado FROM sensores
WHERE tipo = 'TEMP';

SELECT * FROM leituras
WHERE valor > 100;

SELECT id_sensores, data_hora, valor FROM leituras
WHERE valor < 5;

SELECT * FROM leituras
WHERE data_hora >= '2026-09-22 00:00:00';

SELECT * FROM sensores
WHERE tipo IN ('PH', 'BRIX');

SELECT * FROM sensores
WHERE id_setores != 6;

SELECT * FROM setores
ORDER BY nome ASC;

SELECT * FROM leituras
ORDER BY data_hora DESC;

SELECT * FROM leituras
WHERE turno = 'Manhã'
ORDER BY valor DESC;