-- a) Listagem de Aeronaves ordenadas por tipo
SELECT 
    a.idAeronave, 
    a.nomeAeronave, 
    m.nomeModelo 
FROM 
    Aeronave a
JOIN 
    modeloAeronave m ON a.modeloAeronave = m.idModelo
ORDER BY 
    m.nomeModelo;
    
-- b) Relatório de Vôos das Aeronaves por período (dia/semana/mês)
-- Relatório de Voos do Dia Atual
SELECT
    DATE(tempoPartida) AS Dia,
    aeronave,
    COUNT(*) AS NumeroDeVoos
FROM Voo
GROUP BY DATE(tempoPartida), aeronave
ORDER BY Dia, aeronave;

-- Relatório de Vôos das Aeronaves por semana
SELECT
    YEAR(tempoPartida) AS Ano,
    WEEK(tempoPartida) AS Semana,
    aeronave,
    COUNT(*) AS NumeroDeVoos
FROM Voo
GROUP BY YEAR(tempoPartida), WEEK(tempoPartida), aeronave
ORDER BY Ano, Semana, aeronave;

-- Relatório de Vôos das Aeronaves por mês
SELECT
    YEAR(tempoPartida) AS Ano,
    MONTH(tempoPartida) AS Mes,
    aeronave,
    COUNT(*) AS NumeroDeVoos
FROM Voo
GROUP BY YEAR(tempoPartida), MONTH(tempoPartida), aeronave
ORDER BY Ano, Mes, aeronave;

-- c) Listagem de vôos que fazem escala em um determinado local
SELECT DISTINCT
    v.idVoo,
    v.partida,
    v.destino,
    v.previstoPartida,
    v.previstoChegada,
    v.aeronave
FROM Voo v
JOIN Aeroporto a ON v.partida = a.idAeroporto OR v.destino = a.idAeroporto
WHERE a.sigla = 'GRU'; -- Troque a sigla para saber de outros
    
-- d) Exibição de poltronas disponíveis em um determinado vôo/avião
-- Substitua 'ID_DO_VOO' pelo identificador do voo desejado
SELECT
    p.idPoltrona,
    p.numPoltrona
FROM Poltrona p
LEFT JOIN Passagem pa ON p.idPoltrona = pa.poltrona AND pa.vooNum = 1 -- Troque o id do voo para saber de outros
WHERE pa.poltrona IS NULL;

