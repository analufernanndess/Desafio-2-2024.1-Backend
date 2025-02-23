USE sistema_infracoes;

INSERT INTO Categoria (nome_categoria) VALUES
('Motocicleta'),
('Carro de Passeio'),
('Caminhão'),
('Ônibus'),
('Utilitário'),
('Esportivo'),
('Elétrico');

INSERT INTO Modelo (nome_modelo) VALUES
('Honda Civic'),
('Toyota Corolla'),
('Chevrolet Onix'),
('Ford Ranger'),
('Fiat Strada'),
('Volkswagen T-Cross'),
('Renault Kwid');

INSERT INTO Proprietario (cpf, nome, endereco, bairro, cidade, telefone, estado, sexo, data_nascimento) VALUES
('12345678901', 'Carlos Silva', 'Rua A, 123', 'Centro', 'São Paulo', '11987654321', 'SP', 'M', '1985-05-10'),
('23456789012', 'Mariana Souza', 'Av. Brasil, 456', 'Jardins', 'Rio de Janeiro', '21987654321', 'RJ', 'F', '1992-08-20'),
('34567890123', 'Roberto Lima', 'Rua das Flores, 789', 'Boa Vista', 'Belo Horizonte', '31987654321', 'MG', 'M', '1978-12-15'),
('45678901234', 'Ana Paula Oliveira', 'Av. Paulista, 321', 'Bela Vista', 'São Paulo', '11991234567', 'SP', 'F', '1990-07-05'),
('56789012345', 'Fernando Ribeiro', 'Rua do Comércio, 555', 'Centro', 'Curitiba', '41987654321', 'PR', 'M', '1983-03-25'),
('67890123456', 'Juliana Mendes', 'Rua 7 de Setembro, 777', 'Copacabana', 'Rio de Janeiro', '21991234567', 'RJ', 'F', '1995-11-30'),
('78901234567', 'Eduardo Costa', 'Alameda Santos, 999', 'Jardim América', 'São Paulo', '11987651234', 'SP', 'M', '1980-02-18');

INSERT INTO Veiculo (placa, chassi, cor, ano, id_categoria, id_modelo, cpf_proprietario) VALUES
('ABC1234', '1HGCM82633A123456', 'Preto', 2020, 2, 1, '12345678901'),
('DEF5678', '1HGCM82633A654321', 'Branco', 2019, 2, 2, '23456789012'),
('GHI9012', '1HGCM82633A987654', 'Prata', 2021, 3, 3, '34567890123'),
('JKL3456', '1HGCM82633A543210', 'Azul', 2018, 4, 4, '45678901234'),
('MNO7890', '1HGCM82633A111111', 'Vermelho', 2022, 5, 5, '56789012345'),
('PQR1234', '1HGCM82633A222222', 'Cinza', 2017, 6, 6, '67890123456'),
('STU5678', '1HGCM82633A333333', 'Verde', 2016, 7, 7, '78901234567');

INSERT INTO Agente_de_Transito (matricula, nome, data_contratacao, tempo_de_servico) VALUES
(101, 'João Pereira', '2015-06-15', '08:00:00'),
(102, 'Ricardo Almeida', '2017-09-10', '07:30:00'),
(103, 'Beatriz Fernandes', '2019-04-20', '06:45:00'),
(104, 'Lucas Andrade', '2018-02-11', '07:15:00'),
(105, 'Fernanda Lopes', '2020-11-05', '05:45:00'),
(106, 'Pedro Henrique', '2016-08-30', '08:30:00'),
(107, 'Carla Moura', '2014-12-25', '09:00:00');

INSERT INTO Local (longitude, latitude, velocidade_permitida) VALUES
(-46.635833, -23.550520, 60),
(-43.209587, -22.903539, 50),
(-51.217697, -30.034647, 40),
(-48.549550, -27.595377, 60),
(-38.521799, -3.731862, 50),
(-44.303091, -20.469710, 70),
(-42.799990, -5.792839, 80);

INSERT INTO tipo_infracao (valor, velocidade) VALUES
(150.00, 70),
(200.00, 80),
(300.00, 90),
(450.00, 100),
(600.00, 110),
(750.00, 120),
(1000.00, 130);

INSERT INTO Infracao (data, hora, placa_veiculo, matricula_agente, id_tipo_infracao, longitude, latitude) VALUES
('2024-02-15', '14:30:00', 'ABC1234', 101, 1, -46.635833, -23.550520),
('2024-02-16', '10:15:00', 'DEF5678', 102, 2, -43.209587, -22.903539),
('2024-02-17', '18:45:00', 'GHI9012', 103, 3, -51.217697, -30.034647),
('2024-02-18', '08:20:00', 'JKL3456', 104, 4, -48.549550, -27.595377),
('2024-02-19', '22:50:00', 'MNO7890', 105, 5, -38.521799, -3.731862),
('2024-02-20', '16:05:00', 'PQR1234', 106, 6, -44.303091, -20.469710),
('2024-02-21', '11:35:00', 'STU5678', 107, 7, -42.799990, -5.792839);