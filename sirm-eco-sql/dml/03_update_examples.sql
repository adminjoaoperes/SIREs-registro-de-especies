-- dml/03_update_examples.sql
UPDATE especie
SET id_status = (SELECT id_status FROM status_conservacao WHERE categoria = 'EN')
WHERE nome_cientifico = 'Panthera onca';

UPDATE registro_ocorrencia
SET latitude = -3.459999, longitude = -59.869999
WHERE id_registro = 2;

UPDATE usuario
SET email = 'ana.souza@universidade.edu.br'
WHERE id_usuario = 1;
