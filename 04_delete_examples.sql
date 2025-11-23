-- dml/04_delete_examples.sql
DELETE FROM documento_imagem
WHERE id_documento = 3;

DELETE FROM registro_ocorrencia
WHERE data_registro < '2010-01-01';

DELETE FROM usuario
WHERE id_usuario = 2;
