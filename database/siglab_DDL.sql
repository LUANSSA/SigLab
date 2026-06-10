CREATE DATABASE IF NOT EXISTS siglab;
USE siglab;

# Tabela de empresa
CREATE TABLE IF NOT EXISTS empresa(
	id_empresa TINYINT AUTO_INCREMENT PRIMARY KEY COMMENT "ID da tabela",
    nome_fantasia VARCHAR(200) DEFAULT NULL COMMENT "Nome fantasia",
    razao_social VARCHAR(200) DEFAULT NULL COMMENT "Razão social",
    cnpj VARCHAR(20) NOT NULL COMMENT "CNPJ",
    resumo VARCHAR(300) DEFAULT NULL COMMENT "Resumo",
    descricao TEXT	DEFAULT NULL COMMENT "Descrição"
);

# Tabela de pessoa
CREATE TABLE IF NOT EXISTS pessoa(
  id_pessoa INT AUTO_INCREMENT PRIMARY KEY COMMENT "ID da tabela",
  nome VARCHAR(200) NOT NULL COMMENT "Nome",
  email VARCHAR(200) NOT NULL COMMENT "E-mail",
  cpf VARCHAR(20) NOT NULL COMMENT "CPF"
);
# Tabela de coordenador
CREATE TABLE IF NOT EXISTS coordenador(
  id_coordenador INT AUTO_INCREMENT PRIMARY KEY COMMENT "ID da tabela",
  id_pessoa INT NOT NULL COMMENT "Pessoa",
  CONSTRAINT fk_coordenador_pessoa
  FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa)
);

# Laboratório tipo
CREATE TABLE IF NOT EXISTS laboratorio_tipo(
	id_tipo TINYINT AUTO_INCREMENT PRIMARY KEY COMMENT "ID da tabela",
    nome VARCHAR(100) NOT NULL COMMENT "Nome"
);
# Laboratório area
CREATE TABLE IF NOT EXISTS laboratorio_area(
	id_area TINYINT AUTO_INCREMENT PRIMARY KEY COMMENT "ID da tabela",
    nome VARCHAR(100) NOT NULL COMMENT "Nome"
);
# Laboratório status
CREATE TABLE IF NOT EXISTS laboratorio_status(
	id_status TINYINT AUTO_INCREMENT PRIMARY KEY COMMENT "ID da tabela",
    nome VARCHAR(100) NOT NULL COMMENT "Nome"
);
# Laboratório bloco
CREATE TABLE IF NOT EXISTS laboratorio_bloco(
	id_bloco TINYINT AUTO_INCREMENT PRIMARY KEY COMMENT "ID da tabela",
    nome VARCHAR(100) NOT NULL COMMENT "Nome"
);

# Laboratório andar
CREATE TABLE IF NOT EXISTS laboratorio_andar(
	id_andar TINYINT AUTO_INCREMENT PRIMARY KEY COMMENT "ID da tabela",
    nome VARCHAR(50) NOT NULL COMMENT "Nome"
);

# Tabela de laboratório
CREATE TABLE IF NOT EXISTS laboratorio(
    id_laboratorio TINYINT AUTO_INCREMENT PRIMARY KEY COMMENT "ID da tabela",
    id_empresa TINYINT NOT NULL COMMENT "Empresa",
    id_coordenador INT NOT NULL COMMENT "Coordenador",
    id_tipo TINYINT DEFAULT NULL COMMENT "Tipo",
    id_status TINYINT DEFAULT NULL COMMENT "Status",
    id_area TINYINT DEFAULT NULL COMMENT "Área",
    id_bloco TINYINT DEFAULT NULL COMMENT "Bloco",
    id_andar TINYINT DEFAULT NULL COMMENT "Andar",

    codigo VARCHAR(20) NOT NULL COMMENT "Código",
    nome VARCHAR(200) NOT NULL COMMENT "Nome",

    sala VARCHAR(50) NOT NULL COMMENT "Sala",
    ramal VARCHAR(50) DEFAULT NULL COMMENT "Ramal",
    capacidade SMALLINT DEFAULT NULL COMMENT "Capacidade",

    resumo VARCHAR(300) DEFAULT NULL COMMENT "Resumo",
    descricao TEXT DEFAULT NULL COMMENT "Descrição",
    observacao TEXT DEFAULT NULL COMMENT "Observação",

    imagem_capa VARCHAR(200) DEFAULT NULL COMMENT "Imagem capa",
    imagem_interna VARCHAR(200) DEFAULT NULL COMMENT "Imagem interna",

    CONSTRAINT fk_laboratorio_empresa
    FOREIGN KEY (id_empresa) REFERENCES empresa(id_empresa),

    CONSTRAINT fk_laboratorio_coordenador
    FOREIGN KEY (id_coordenador) REFERENCES coordenador(id_coordenador),

    CONSTRAINT fk_laboratorio_tipo
    FOREIGN KEY (id_tipo) REFERENCES laboratorio_tipo(id_tipo),

    CONSTRAINT fk_laboratorio_status
    FOREIGN KEY (id_status) REFERENCES laboratorio_status(id_status),

    CONSTRAINT fk_laboratorio_area
    FOREIGN KEY (id_area) REFERENCES laboratorio_area(id_area),

    CONSTRAINT fk_laboratorio_bloco
    FOREIGN KEY (id_bloco) REFERENCES laboratorio_bloco(id_bloco),

    CONSTRAINT fk_laboratorio_andar
    FOREIGN KEY (id_andar) REFERENCES laboratorio_andar(id_andar)
);






