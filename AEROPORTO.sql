CREATE TABLE AERONAVE 
(
	ID_AERONAVE INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    TIPO_AERONAVE VARCHAR(50),
    NRO_POLTRONAS INT
);
CREATE TABLE VOO 
(
	ID_VOO INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	ID_AERONAVE INT,
    AEROPORTO_ORIGEM VARCHAR(50),
    AEROPORTO_DESTINO VARCHAR(50),
    HORARIO_SAIDA DATETIME,
    HORARIO_CHEGADA DATETIME,
    FOREIGN KEY (ID_AERONAVE) REFERENCES AERONAVE(ID_AERONAVE)
);
CREATE TABLE ESCALA 
(
	ID_ESCALA INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ID_VOO INT,
    AEROPORTO_ESCALA VARCHAR(50),
    HORARIO_SAIDA_ESCALA DATETIME,
    FOREIGN KEY (ID_VOO) REFERENCES VOO(ID_VOO)
);
    
CREATE TABLE POLTRONA 
(
	ID_POLTRONA INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ID_VOO INT,
    DISPONIVEL BOOLEAN,
    LOCALIZACAO VARCHAR(30),
    FOREIGN KEY (ID_VOO) REFERENCES VOO(ID_VOO)
);

CREATE TABLE CLIENTE_PREFENCIAL
(
	ID_CLIENTE INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	NOME VARCHAR(150),
    EMAIL VARCHAR(150)
);