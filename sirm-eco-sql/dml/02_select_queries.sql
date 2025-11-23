-- dml/02_select_queries.sql
SELECT e.id_especie, e.nome_cientifico, e.nome_popular, s.categoria AS status, c.familia
FROM especie e
JOIN status_conservacao s ON e.id_status = s.id_status
LEFT JOIN classificacao_taxonomica c ON e.id_taxonomia = c.id_taxonomia
ORDER BY e.nome_cientifico;

SELECT r.id_registro, e.nome_cientifico, u.nome AS registrador, r.data_registro, r.quantidade_individuos
FROM registro_ocorrencia r
JOIN especie e ON r.id_especie = e.id_especie
JOIN usuario u ON r.id_usuario = u.id_usuario
WHERE r.data_registro >= CURRENT_DATE - INTERVAL '30 days'
ORDER BY r.data_registro DESC
LIMIT 10;

SELECT r.*, e.nome_cientifico
FROM registro_ocorrencia r
JOIN especie e ON r.id_especie = e.id_especie
WHERE abs(r.latitude - (-3.456789)) < 0.01
  AND abs(r.longitude - (-59.876543)) < 0.01;

SELECT e.nome_cientifico, COUNT(r.id_registro) AS total_registros
FROM especie e
LEFT JOIN registro_ocorrencia r ON e.id_especie = r.id_especie
GROUP BY e.nome_cientifico
ORDER BY total_registros DESC;

SELECT d.id_documento, d.tipo_arquivo, d.caminho_arquivo, r.id_registro
FROM documento_imagem d
JOIN registro_ocorrencia r ON d.id_registro = r.id_registro
WHERE r.id_registro = 1;
