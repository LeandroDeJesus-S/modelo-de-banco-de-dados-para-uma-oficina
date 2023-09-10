use workshop;

# recuperando clientes
SELECT * FROM client;

# recuperando todas as ordens de serviço de um cliente especifico
SELECT * FROM schedules WHERE client_id = 1;

# total de gastos por cada cliente em serviços
SELECT c.name AS Cliente, SUM(s.price) AS TotalGasto
FROM client c
JOIN schedules sc ON c.id = sc.client_id
JOIN service s ON sc.service_id = s.id
GROUP BY c.id;

# mecânicos ordenados por salario do maior ao menor
SELECT * FROM employee
ORDER BY salary desc;

# clientes que gastam mais de 500 em serviços
SELECT c.name AS Cliente, SUM(s.price) AS TotalGasto
FROM client c
JOIN schedules sc ON c.id = sc.client_id
JOIN service s ON sc.service_id = s.id
GROUP BY c.id
HAVING TotalGasto > 500;

# Listar todas as ordens de serviço com informações completas, incluindo cliente, veículo e serviço
SELECT sc.id AS ID_OrdemServico, c.name AS Cliente, v.brand AS MarcaVeiculo, v.model AS ModeloVeiculo, s.name AS Servico
FROM schedules sc
JOIN client c ON sc.client_id = c.id
JOIN vehicle v ON sc.vehicle_id = v.id
JOIN service s ON sc.service_id = s.id;

# Recuperar informações sobre pagamentos de ordens de serviço, incluindo o método de pagamento
SELECT p.payment_date AS DataPagamento, c.name AS Cliente, s.name AS Servico, s.price as ServicePrice, pm.method AS MetodoPagamento
FROM payments p
JOIN client c ON p.client_id = c.id
JOIN service s ON p.service_id = s.id
JOIN payment_method pm ON p.method_id = pm.id;
