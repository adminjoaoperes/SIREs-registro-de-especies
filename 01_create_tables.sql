-- ddl/01_create_tables.sql
CREATE TABLE classificacao_taxonomica (
  id_taxonomia SERIAL PRIMARY KEY,
  reino VARCHAR(100),
  filo VARCHAR(100),
  classe VARCHAR(100),
  ordem_taxonomica VARCHAR(100),
  familia VARCHAR(100),
  genero VARCHAR(100)
);

CREATE TABLE status_conservacao (
  id_status SERIAL PRIMARY KEY,
  categoria VARCHAR(10) NOT NULL,
  descricao VARCHAR(250)
);

CREATE TABLE usuario (
  id_usuario SERIAL PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  email VARCHAR(200) NOT NULL UNIQUE,
  papel VARCHAR(50) NOT NULL
);

CREATE TABLE especie (
  id_especie SERIAL PRIMARY KEY,
  nome_cientifico VARCHAR(200) NOT NULL UNIQUE,
  nome_popular VARCHAR(150),
  descricao TEXT,
  id_status INTEGER NOT NULL,
  id_taxonomia INTEGER,
  CONSTRAINT fk_especie_status FOREIGN KEY (id_status)
    REFERENCES status_conservacao (id_status) ON DELETE RESTRICT,
  CONSTRAINT fk_especie_taxonomia FOREIGN KEY (id_taxonomia)
    REFERENCES classificacao_taxonomica (id_taxonomia) ON DELETE SET NULL
);

CREATE TABLE registro_ocorrencia (
  id_registro SERIAL PRIMARY KEY,
  id_especie INTEGER NOT NULL,
  id_usuario INTEGER NOT NULL,
  data_registro DATE NOT NULL,
  quantidade_individuos INTEGER,
  latitude NUMERIC(9,6),
  longitude NUMERIC(9,6),
  observacoes TEXT,
  CONSTRAINT fk_registro_especie FOREIGN KEY (id_especie)
    REFERENCES especie (id_especie) ON DELETE CASCADE,
  CONSTRAINT fk_registro_usuario FOREIGN KEY (id_usuario)
    REFERENCES usuario (id_usuario) ON DELETE RESTRICT
);

CREATE TABLE documento_imagem (
  id_documento SERIAL PRIMARY KEY,
  id_registro INTEGER NOT NULL,
  tipo_arquivo VARCHAR(50),
  caminho_arquivo VARCHAR(500) NOT NULL,
  data_upload TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_documento_registro FOREIGN KEY (id_registro)
    REFERENCES registro_ocorrencia (id_registro) ON DELETE CASCADE
);

CREATE INDEX idx_registro_lat_lon ON registro_ocorrencia (latitude, longitude);
