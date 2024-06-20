SELECT 
    A.idAeronave,
    A.nomeAeronave,
    A.ativo,
    MA.nomeModelo,
    MA.anoModelo,
    MA.capacidadePoltronas,
    MA.capacidadeCombustivel,
    P.nomePiloto
FROM 
    Aeronave A
INNER JOIN 
    modeloAeronave MA ON A.modeloAeronave = MA.idModelo
INNER JOIN 
    Pilotos P ON A.piloto = P.idPiloto;

