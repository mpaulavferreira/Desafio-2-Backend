CREATE DATABASE detran;
USE detran;

CREATE TABLE Proprietario (
    CPF VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(200),
    bairro VARCHAR(500),
    cidade VARCHAR(50),
    estado VARCHAR(2),
    telefone VARCHAR(15),
    sexo CHAR(1),
    data_nascimento DATE,
    idade INT
);

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY,
    nome_categoria VARCHAR(50)
);

CREATE TABLE Modelo (
    id_modelo INT PRIMARY KEY,
    nome_modelo VARCHAR(50),
);

CREATE TABLE Veiculo (
    placa VARCHAR(10) PRIMARY KEY,
    chassi VARCHAR(20),
    cor VARCHAR(20),
    ano_fabricacao INT,
    CPF_proprietario VARCHAR(11),
    id_modelo INT,
    id_categoria INT,
    FOREIGN KEY (CPF_proprietario) REFERENCES Proprietario(CPF),
    FOREIGN KEY (id_modelo) REFERENCES Modelo(id_modelo),
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

CREATE TABLE TipoInfracao(
    id_tipo_infracao INT PRIMARY KEY,
    descricao VARCHAR(100),
    valor DECIMAL(10,2)
);

CREATE TABLE Agente (
    matricula INT PRIMARY KEY,
    nome VARCHAR(100),
    data_contratacao DATE,
    tempo_servico INT
);

CREATE TABLE Infracao (
    id_infracao INT PRIMARY KEY AUTO_INCREMENT,
    placa_veiculo VARCHAR(10),
    data_hora DATETIME,
    id_tipo_infracao INT,
    latitude DECIMAL(10,6),
    longitude DECIMAL(10,6)
    velocidade_aferida INT,
    matricula_agente INT,
    FOREIGN KEY (placa_veiculo) REFERENCES Veiculo(placa),
    FOREIGN KEY (id_tipo_infracao) REFERENCES TipoInfracao(id_tipo_infracao)
    FOREIGN KEY (matricula_agente) REFERENCES Agente(matricula)
);