-- A) Apresentar todos os dados dos veículos de um determinado proprietário (informado pelo usuário através do CPF)
SELECT *
FROM Veiculo
WHERE cpf_proprietario = '12345678901';

-- B) Consultar proprietário(s) por qualquer parte do nome
SELECT *
FROM Proprietario
WHERE nome LIKE '%Silva%';

-- C) Mostrar os dados da infração e do veículo que tiveram infrações cadastradas no Detran em um período (ou data)
SELECT I.id_infracao, I.data, I.hora, I.matricula_agente, I.id_tipo_infracao,
       V.placa, V.chassi, V.cor, V.ano, V.id_categoria, V.id_modelo, V.cpf_proprietario
FROM Infracao I
JOIN Veiculo V ON I.placa_veiculo = V.placa
WHERE I.data BETWEEN '2024-02-15' AND '2024-02-20';

-- D) Pesquisar o número de veículos que foram cadastrados em cada modelo, ordenando pelo número de veículos em ordem decrescente
SELECT M.nome_modelo, COUNT(V.id_modelo) AS total_veiculos
FROM Veiculo V
JOIN Modelo M ON V.id_modelo = M.id_modelo
GROUP BY M.nome_modelo
ORDER BY total_veiculos DESC;
