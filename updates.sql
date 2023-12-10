/*updates */

USE carros;

UPDATE cliente SET modelo_id = 4 WHERE id_cliente = 10;
UPDATE cliente SET modelo_id = 1  WHERE id_cliente = 3;
UPDATE cliente SET modelo_id = 8 WHERE id_cliente =  5;
UPDATE cliente SET modelo_id = 6 WHERE id_cliente = 9;


UPDATE vaga_usada SET data_saida = '20220810' WHERE id_vaga_usada = 1;