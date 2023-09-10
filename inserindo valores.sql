use workshop;

-- Inserir 10 registros na tabela 'client'
INSERT INTO client (name, address, phone)
VALUES
    ('João Silva', 'Rua A, 123', '+55 11 1234-5678'),
    ('Maria Souza', 'Avenida B, 456', '+55 11 9876-5432'),
    ('Pedro Santos', 'Rua C, 789', '+55 11 1111-2222'),
    ('Ana Pereira', 'Avenida D, 321', '+55 11 3333-4444'),
    ('Carlos Oliveira', 'Rua E, 654', '+55 11 5555-6666'),
    ('Lúcia Rodrigues', 'Avenida F, 987', '+55 11 7777-8888'),
    ('Eduardo Ferreira', 'Rua G, 345', '+55 11 9999-0000'),
    ('Camila Lima', 'Avenida H, 876', '+55 11 1212-3434'),
    ('Ricardo Costa', 'Rua I, 234', '+55 11 4545-6767'),
    ('Fernanda Santos', 'Avenida J, 567', '+55 11 6767-8989');

-- Inserir 10 registros na tabela 'vehicle'
INSERT INTO vehicle (brand, model, year, license_plate)
VALUES
    ('Ford', 'Focus', 2020, 'ABC-1234'),
    ('Toyota', 'Corolla', 2019, 'XYZ-5678'),
    ('Honda', 'Civic', 2022, 'DEF-9012'),
    ('Volkswagen', 'Golf', 2021, 'GHI-3456'),
    ('Chevrolet', 'Cruze', 2020, 'JKL-7890'),
    ('Nissan', 'Sentra', 2022, 'MNO-123'),
    ('Hyundai', 'Elantra', 2021, 'PQR-456'),
    ('Kia', 'Optima', 2020, 'STU-789'),
    ('Mazda', 'Mazda3', 2019, 'VWX-123'),
    ('Subaru', 'Impreza', 2022, 'YZA-456');

-- Inserir 10 registros na tabela 'spare_part'
INSERT INTO spare_part (name, price, stock)
VALUES
    ('Óleo de Motor', 30.00, 100),
    ('Filtro de Ar', 10.00, 50),
    ('Pastilhas de Freio', 40.00, 30),
    ('Amortecedores', 80.00, 20),
    ('Bateria', 60.00, 25),
    ('Correia Dentada', 15.00, 40),
    ('Velas de Ignição', 5.00, 60),
    ('Pneus', 100.00, 15),
    ('Radiador', 70.00, 10),
    ('Lâmpadas', 2.00, 100);

-- Inserir 10 registros na tabela 'service'
INSERT INTO service (name, price, description)
VALUES
    ('Troca de Óleo', 50.00, 'Troca de óleo do motor e filtro de óleo'),
    ('Revisão Geral', 200.00, 'Revisão completa do veículo'),
    ('Troca de Pastilhas de Freio', 80.00, 'Troca das pastilhas de freio'),
    ('Troca de Amortecedores', 150.00, 'Troca dos amortecedores do veículo'),
    ('Substituição da Bateria', 70.00, 'Troca da bateria do veículo'),
    ('Troca de Correia Dentada', 40.00, 'Troca da correia dentada'),
    ('Troca de Velas de Ignição', 20.00, 'Troca das velas de ignição'),
    ('Alinhamento e Balanceamento', 40.00, 'Alinhamento e balanceamento das rodas'),
    ('Troca de Radiador', 90.00, 'Troca do radiador do veículo'),
    ('Troca de Lâmpadas', 5.00, 'Troca das lâmpadas do veículo');

-- Inserir 10 registros na tabela 'employee'
INSERT INTO employee (name, lastname, cpf, phone, specialization, salary)
VALUES
    ('Luiz', 'Santos', '12345678901', '+55 11 1111-2222', 'Mecânico', 2000.00),
    ('Fernanda', 'Silva', '23456789012', '+55 11 2222-3333', 'Mecânico', 2200.00),
    ('José', 'Oliveira', '34567890123', '+55 11 3333-4444', 'Mecânico', 2100.00),
    ('Mariana', 'Pereira', '45678901234', '+55 11 4444-5555', 'Eletricista', 2500.00),
    ('Paulo', 'Sousa', '56789012345', '+55 11 5555-6666', 'Funileiro', 2300.00),
    ('Larissa', 'Ferreira', '67890123456', '+55 11 6666-7777', 'Mecânico', 2200.00),
    ('Lucas', 'Martins', '78901234567', '+55 11 7777-8888', 'Eletricista', 2400.00),
    ('Amanda', 'Rodrigues', '89012345678', '+55 11 8888-9999', 'Funileiro', 2300.00),
    ('Rodrigo', 'Gomes', '90123456789', '+55 11 9999-0000', 'Mecânico', 2100.00),
    ('Carla', 'Lima', '01234567890', '+55 11 0000-1111', 'Mecânico', 2050.00);

-- Inserir 10 registros na tabela 'pyment_method'
INSERT INTO payment_method (method, status_method)
VALUES
    ('Boleto', 'Disponível'),
    ('Pix', 'Disponível'),
    ('Boleto', 'Indisponível'),
    ('Boleto', 'Disponível'),
    ('Pix', 'Disponível'),
    ('Boleto', 'Indisponível'),
    ('Pix', 'Disponível'),
    ('Boleto', 'Indisponível'),
    ('Pix', 'Disponível'),
    ('Boleto', 'Disponível');

-- Inserir 10 registros na tabela 'payments'
-- Certifique-se de que os IDs de cliente, serviço e método correspondam a registros existentes
INSERT INTO payments (payment_date, client_id, service_id, method_id)
VALUES
    ('2023-09-10', 1, 1, 1),
    ('2023-09-10', 2, 3, 2),
    ('2023-09-10', 3, 5, 3),
    ('2023-09-10', 4, 7, 1),
    ('2023-09-10', 5, 9, 2),
    ('2023-09-10', 6, 2, 3),
    ('2023-09-10', 7, 4, 1),
    ('2023-09-10', 8, 6, 2),
    ('2023-09-10', 9, 8, 3),
    ('2023-09-10', 10, 10, 1);

-- Inserir 10 registros na tabela 'schedules'
-- Certifique-se de que os IDs de cliente, funcionário, veículo e serviço correspondam a registros existentes
INSERT INTO schedules (data_time, service_description, client_id, employee_id, vehicle_id, service_id)
VALUES
    ('2023-09-11 08:00:00', 'Troca de Óleo', 1, 1, 1, 1),
    ('2023-09-11 09:30:00', 'Revisão Geral', 2, 2, 2, 2),
    ('2023-09-11 10:45:00', 'Troca de Pastilhas de Freio', 3, 3, 3, 3),
    ('2023-09-11 13:15:00', 'Troca de Amortecedores', 4, 4, 4, 4),
    ('2023-09-11 14:30:00', 'Substituição da Bateria', 5, 5, 5, 5),
    ('2023-09-11 15:45:00', 'Troca de Correia Dentada', 6, 6, 6, 6),
    ('2023-09-11 17:00:00', 'Troca de Velas de Ignição', 7, 7, 7, 7),
    ('2023-09-11 18:15:00', 'Alinhamento e Balanceamento', 8, 8, 8, 8),
    ('2023-09-12 10:00:00', 'Troca de Radiador', 9, 9, 9, 9),
    ('2023-09-12 11:30:00', 'Troca de Lâmpadas', 10, 10, 10, 10);

-- Inserir 10 registros na tabela 'part_vehicle'
-- Certifique-se de que os IDs de veículo e peça de reposição correspondam a registros existentes
INSERT INTO part_vehicle (vehicle_id, spare_part_id, quantity)
VALUES
    (1, 1, 2),
    (2, 2, 1),
    (3, 3, 4),
    (4, 4, 2),
    (5, 5, 3),
    (6, 6, 1),
    (7, 7, 2),
    (8, 8, 3),
    (9, 9, 1),
    (10, 10, 2);
