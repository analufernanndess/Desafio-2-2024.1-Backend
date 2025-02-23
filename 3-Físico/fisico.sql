CREATE DATABASE IF NOT EXISTS sistema_infracoes;
USE sistema_infracoes;

CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL
);

CREATE TABLE Modelo (
    id_modelo INT AUTO_INCREMENT PRIMARY KEY,
    nome_modelo VARCHAR(50) NOT NULL
);

CREATE TABLE Proprietario (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    telefone VARCHAR(20),
    estado VARCHAR(2),
    sexo CHAR(1),
    data_nascimento DATE
);

CREATE TABLE Veiculo (
    placa VARCHAR(10) PRIMARY KEY,
    chassi VARCHAR(17) NOT NULL,
    cor VARCHAR(50),
    ano INT,
    id_categoria INT NOT NULL,
    id_modelo INT NOT NULL,
    cpf_proprietario VARCHAR(11) NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_modelo) REFERENCES Modelo(id_modelo),
    FOREIGN KEY (cpf_proprietario) REFERENCES Proprietario(cpf)
);

CREATE TABLE Agente_de_Transito (
    matricula INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_contratacao DATE,
    tempo_de_servico TIME
);

CREATE TABLE Local (
    longitude DECIMAL(9,6) NOT NULL,
    latitude DECIMAL(9,6) NOT NULL,
    velocidade_permitida INT,
    PRIMARY KEY (longitude, latitude)
);

CREATE TABLE tipo_infracao (
    id_tipo_infracao INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10,2),
    velocidade INT
);

CREATE TABLE Infracao (
    id_infracao INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    placa_veiculo VARCHAR(10) NOT NULL,
    matricula_agente INT NOT NULL,
    id_tipo_infracao INT NOT NULL,
    longitude DECIMAL(9,6), -- Opcional se permitido pelo diagrama (0,n)
    latitude DECIMAL(9,6), -- Idem
    FOREIGN KEY (placa_veiculo) REFERENCES Veiculo(placa),
    FOREIGN KEY (matricula_agente) REFERENCES Agente_de_Transito(matricula),
    FOREIGN KEY (id_tipo_infracao) REFERENCES tipo_infracao(id_tipo_infracao),
    FOREIGN KEY (longitude, latitude) REFERENCES Local(longitude, latitude)
);

SHOW TABLES;
