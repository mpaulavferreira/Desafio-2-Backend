-- A)Buscar veículos de um proprietário pelo CPF
SELECT*FROM Veiculo WHERE CPF_proprietario = '12345678901';

-- B) Buscar proprietário por nome (parcial)
SELECT*FROM Proprietário WHERE nome LIKE '%MARIA%';

-- C) Infrações entre datas
SELECT*FROM Infracao WHERE data_hora BETWEEN '2024-02-01' AND '2024-02-28';

-- D) Contar veiculos por modelo
SELECT id_modelo, COUNT(*) AS total FROM Veiculo GROUP BY id_modelo ORDER BY total DESC;