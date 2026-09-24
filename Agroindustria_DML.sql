USE agroindustria_db;



INSERT INTO setores (nome, descricao) VALUES
('Moagem', 'Responsável pela extração do caldo da cana-de-açúcar.'),
('Clarificação', 'Remove impurezas do caldo e ajusta o pH.'),
('Evaporação', 'Concentra o caldo por remoção de água.'),
('Fermentação', 'Converte açúcares em etanol através de leveduras.'),
('Destilação', 'Separa o etanol produzido na fermentação.'),
('Caldeira', 'Gera vapor para os processos industriais.');

select * from setores;

INSERT INTO sensores (id_setores, tipo, fabricante, data_instalacao, estado) VALUES
(1, 'VAZ', 'Endress + Hauser', '2024-01-10', 'Ativo'),
(1, 'TEMP', 'Wika', '2024-01-10', 'Ativo'),
(2, 'PH', 'Yokogawa', '2024-03-05', 'Ativo'),
(3, 'BRIX', 'Endress + Hauser', '2024-06-18', 'Ativo'),
(3, 'TEMP', 'Wika', '2024-06-18', 'Manutenção'),
(4, 'PH', 'Yokogawa', '2024-08-22', 'Ativo'),
(5, 'ETOH', 'Anton Paar', '2025-02-14', 'Ativo'),
(6, 'PRES', 'Wika', '2025-04-30', 'Ativo');

select * from sensores;

insert into leituras (id_sensores, data_hora, valor, turno) values
(1, '2026-09-21 08:00', 212.40, 'Manhã'),
(1, '2026-09-22 14:00', 2105.00, 'Tarde'),
(1, '2026-09-23 22:00', 208.90, 'Noite'),

(2, '2026-09-21 08:10', 33.10, 'Manhã'),
(2, '2026-09-22 14:10', 34.60, 'Tarde'),
(2, '2026-09-23 22:10', 32.70, 'Noite'),

(3, '2026-09-21 08:20', 6.45, 'Manhã'),
(3, '2026-09-22 14:20', 6.38, 'Tarde'),
(3, '2026-09-23 22:20', 6.52, 'Noite'),

(4, '2026-09-21 08:30', 58.20, 'Manhã'),
(4, '2026-09-22 14:30', 61.70, 'Tarde'),
(4, '2026-09-23 22:30', 64.30, 'Noite'),

(5, '2026-09-21 08:40', 112.50, 'Manhã'),
(5, '2026-09-22 14:40', 114.80, 'Tarde'),
(5, '2026-09-23 22:40', 111.90, 'Noite'),

(6, '2026-09-21 08:50', 4.52, 'Manhã'),
(6, '2026-09-22 14:50', 0.00, 'Tarde'),
(6, '2026-09-23 22:50', 4.61, 'Noite'),

(7, '2026-09-21 09:00', 92.40, 'Manhã'),
(7, '2026-09-22 15:00', 93.10, 'Tarde'),
(7, '2026-09-23 23:00', 92.80, 'Noite'),

(8, '2026-09-21 09:10', 21.30, 'Manhã'),
(8, '2026-09-22 15:10', 20.80, 'Tarde'),
(8, '2026-09-23 23:10', 999.99, 'Noite');

select * from leituras;

select * from sensores;

-- exercicio 4

update sensores
set estado = 'Ativo'
where id = 5;

update sensores
set fabricante = 'Mettler Toledo'
where id = 7;

update leituras
set valor = 210.50
where id = 2;

update leituras
set valor = valor -0.5
where id_sensores = 2;

delete from leituras
where id = 17;

delete from leituras
where id = 24;