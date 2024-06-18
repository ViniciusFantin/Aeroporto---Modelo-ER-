INSERT INTO AERONAVE (TIPO_AERONAVE, NRO_POLTRONAS) VALUES
('Boeing 737', 150),
('Airbus A320', 180),
('Embraer E195', 120),
('Boeing 787', 250),
('Airbus A350', 300),
('Boeing 777', 200),
('Embraer E190', 100),
('Airbus A330', 220),
('Boeing 747', 400),
('Airbus A380', 500);

-- Populando a tabela VOO
INSERT INTO VOO (ID_AERONAVE, AEROPORTO_ORIGEM, AEROPORTO_DESTINO, HORARIO_SAIDA, HORARIO_CHEGADA) VALUES
(1, 'GIG', 'GRU', '2024-06-12 08:00:00', '2024-06-12 10:00:00'),
(2, 'GRU', 'JFK', '2024-06-13 10:30:00', '2024-06-13 18:00:00'),
(3, 'CDG', 'LHR', '2024-06-14 12:00:00', '2024-06-14 14:30:00'),
(4, 'LAX', 'SYD', '2024-06-15 15:00:00', '2024-06-16 06:30:00'),
(5, 'HND', 'PEK', '2024-06-16 09:30:00', '2024-06-16 12:00:00'),
(6, 'SIN', 'DXB', '2024-06-17 18:00:00', '2024-06-18 02:30:00'),
(7, 'JFK', 'LAX', '2024-06-18 10:00:00', '2024-06-18 14:30:00'),
(8, 'PEK', 'SIN', '2024-06-19 08:30:00', '2024-06-19 14:00:00'),
(9, 'LHR', 'CDG', '2024-06-20 11:00:00', '2024-06-20 13:30:00'),
(10, 'SYD', 'HND', '2024-06-21 16:00:00', '2024-06-21 19:30:00');

-- Populando a tabela ESCALA
INSERT INTO ESCALA (ID_VOO, AEROPORTO_ESCALA, HORARIO_SAIDA_ESCALA) VALUES
(2, 'ATL', '2024-06-13 12:00:00'),
(4, 'HKG', '2024-06-15 22:00:00'),
(6, 'BKK', '2024-06-17 20:00:00'),
(8, 'KUL', '2024-06-19 16:30:00'),
(10, 'ICN', '2024-06-21 17:30:00'),
(1, 'CGH', '2024-06-12 09:30:00'),
(3, 'MAD', '2024-06-14 13:30:00'),
(5, 'SHA', '2024-06-16 10:30:00'),
(7, 'SFO', '2024-06-18 11:30:00'),
(9, 'AMS', '2024-06-20 12:30:00');

-- Populando a tabela POLTRONA
INSERT INTO POLTRONA (ID_VOO, DISPONIVEL, LOCALIZACAO) VALUES
(1, 1, 'A1'),
(1, 1, 'A2'),
(1, 0, 'B1'),
(1, 1, 'B2'),
(2, 1, 'C1'),
(2, 1, 'C2'),
(2, 0, 'D1'),
(2, 1, 'D2'),
(3, 1, 'E1'),
(3, 1, 'E2'),
(3, 0, 'F1'),
(3, 1, 'F2'),
(4, 1, 'G1'),
(4, 1, 'G2'),
(4, 0, 'H1'),
(4, 1, 'H2'),
(5, 1, 'I1'),
(5, 1, 'I2'),
(5, 0, 'J1'),
(5, 1, 'J2');

-- Populando a tabela CLIENTE_PREFENCIAL
INSERT INTO CLIENTE_PREFENCIAL (NOME, EMAIL) VALUES
('João Silva', 'joao.silva@example.com'),
('Maria Santos', 'maria.santos@example.com'),
('Carlos Oliveira', 'carlos.oliveira@example.com'),
('Ana Rodrigues', 'ana.rodrigues@example.com'),
('Pedro Sousa', 'pedro.sousa@example.com'),
('Mariana Costa', 'mariana.costa@example.com'),
('Luís Pereira', 'luis.pereira@example.com'),
('Sofia Fernandes', 'sofia.fernandes@example.com'),
('Rui Martins', 'rui.martins@example.com'),
('Inês Almeida', 'ines.almeida@example.com');