-- dml/01_insert_data.sql
INSERT INTO status_conservacao (categoria, descricao) VALUES
('LC', 'Least Concern'),
('NT', 'Near Threatened'),
('VU', 'Vulnerable'),
('EN', 'Endangered'),
('CR', 'Critically Endangered');

INSERT INTO classificacao_taxonomica (reino, filo, classe, ordem_taxonomica, familia, genero) VALUES
('Animalia','Chordata','Mammalia','Carnivora','Felidae','Panthera'),
('Plantae','Tracheophyta','Magnoliopsida','Myrtales','Myrtaceae','Eugenia'),
('Animalia','Arthropoda','Insecta','Lepidoptera','Nymphalidae','Morpho');

INSERT INTO usuario (nome, email, papel) VALUES
('Dr. Ana Souza', 'ana.souza@uni.edu.br', 'Pesquisador'),
('Carlos Mendes', 'c.mendes@ong.org', 'Analista'),
('Mariana Lima', 'm.lima@instituto.gov.br', 'Gestor');

INSERT INTO especie (nome_cientifico, nome_popular, descricao, id_status, id_taxonomia) VALUES
('Panthera onca', 'Onça-pintada', 'Grande felino neotropical', 4, 1),
('Eugenia uniflora', 'Pitanga', 'Pequena árvore frutífera', 1, 2),
('Morpho menelaus', 'Morpho-azul', 'Borboleta de grande envergadura', 1, 3);

INSERT INTO registro_ocorrencia (id_especie, id_usuario, data_registro, quantidade_individuos, latitude, longitude, observacoes) VALUES
(1, 1, '2024-08-14', 2, -3.456789, -59.876543, 'Observada próxima a rio'),
(1, 2, '2024-08-20', 1, -3.460000, -59.870000, 'Avistamento solitário'),
(2, 3, '2024-09-01', 5, -23.550520, -46.633308, 'Registro urbano'),
(3, 1, '2024-10-05', 8, -1.455833, -48.504444, 'Registro durante expedição');

INSERT INTO documento_imagem (id_registro, tipo_arquivo, caminho_arquivo) VALUES
(1, 'image/jpeg', '/media/registro_1/img_0001.jpg'),
(2, 'image/jpeg', '/media/registro_2/img_0002.jpg'),
(4, 'image/png', '/media/registro_4/img_004.png');
