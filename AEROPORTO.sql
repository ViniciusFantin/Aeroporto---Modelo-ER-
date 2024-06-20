
CREATE SCHEMA AEROPORTO;
USE AEROPORTO;

CREATE TABLE cidade (
    idCidade INT AUTO_INCREMENT PRIMARY KEY,
    cidade VARCHAR(80),
    estado VARCHAR(80),
    pais VARCHAR(45),
    sigla VARCHAR(2)
);

CREATE TABLE Aeroporto (
    idAeroporto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80),
    cidade INT,
    CNPJ CHAR(14),
    sigla VARCHAR(3),
    FOREIGN KEY (cidade) REFERENCES cidade(idCidade)
);

CREATE TABLE modeloAeronave (
    idModelo INT AUTO_INCREMENT PRIMARY KEY,
    nomeModelo VARCHAR(80),
    anoModelo YEAR,
    capacidadePoltronas INT,
    capacidadeCombustivel INT
);

CREATE TABLE Pilotos (
    idPiloto INT AUTO_INCREMENT PRIMARY KEY,
    nomePiloto VARCHAR(80),
    CPF CHAR(50),
    nascimento DATE,
    numCertificacao INT
);

CREATE TABLE Aeronave (
    idAeronave INT AUTO_INCREMENT PRIMARY KEY,
    nomeAeronave VARCHAR(120),
    ativo TINYINT,
    modeloAeronave INT,
    piloto INT,
    FOREIGN KEY (modeloAeronave) REFERENCES modeloAeronave(idModelo),
    FOREIGN KEY (piloto) REFERENCES Pilotos(idPiloto)
);

CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nomeCliente VARCHAR(80),
    dataNascimento DATE,
    passagem VARCHAR(45),
    sexo ENUM('M', 'F', 'O'),
    CPF VARCHAR(45)
);

CREATE TABLE Poltrona (
    idPoltrona INT AUTO_INCREMENT PRIMARY KEY,
    numPoltrona VARCHAR(4),
    ocupado TINYINT
);

CREATE TABLE Voo (
    idVoo INT AUTO_INCREMENT PRIMARY KEY,
    partida INT,
    destino INT,
    previstoPartida DATETIME,
    previstoChegada DATETIME,
    tempoPartida DATETIME,
    tempoChegada DATETIME,
    aeronave INT,
    FOREIGN KEY (partida) REFERENCES Aeroporto(idAeroporto),
    FOREIGN KEY (destino) REFERENCES Aeroporto(idAeroporto),
    FOREIGN KEY (aeronave) REFERENCES Aeronave(idAeronave)
);

CREATE TABLE Passagem (
    idPassagem INT AUTO_INCREMENT PRIMARY KEY,
    numeroPassagem INT,
    clientePassagem INT,
    vooNum INT,
    poltrona INT,
    aeroportoPartida INT,
    aeroportoDestino INT,
    FOREIGN KEY (clientePassagem) REFERENCES Cliente(idCliente),
    FOREIGN KEY (vooNum) REFERENCES Voo(idVoo),
    FOREIGN KEY (poltrona) REFERENCES Poltrona(idPoltrona),
    FOREIGN KEY (aeroportoPartida) REFERENCES Aeroporto(idAeroporto),
    FOREIGN KEY (aeroportoDestino) REFERENCES Aeroporto(idAeroporto)
);
