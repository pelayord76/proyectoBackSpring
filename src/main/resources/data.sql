INSERT INTO usuario (nombre, email, contrasenia) VALUES 
('admin', 'admin@email.com', '$2a$12$YORr2teNaSVSof5LPbkCIuk5y4549Wp4ZYdW.NYqrJNFk2FWW.e5K'),
('raso', 'raso@email.com', '$2a$12$k5Ia/9oKC.WPvzfF8b73meex/bF5C5sda0h4CSkXBrcGGSWI9jAW.');


INSERT INTO cliente (local, duenio, telefono, direccion, cif, fecha_vencimiento_contrato) VALUES 
('bar1', 'dueño1', 000000000, 'direccion1', 'cif1', '2024-12-31'),
('bar2', 'dueño2', 111111111, 'direccion2', 'cif2', '2025-12-31'),
('bar3', 'dueño3', 222222222, 'direccion3', 'cif3', '2023-12-31'),
('bar4', 'dueño4', 333333333, 'direccion4', 'cif4', '2025-12-31'),
('bar5', 'dueño5', 444444444, 'direccion5', 'cif5', '2027-12-31'),
('bar6', 'dueño6', 555555555, 'direccion6', 'cif6', '2026-12-31'),
('bar7', 'dueño7', 666666666, 'direccion7', 'cif7', '2025-12-31'),
('bar8', 'dueño8', 777777777, 'direccion8', 'cif8', '2026-12-31'),
('bar9', 'dueño9', 888888888, 'direccion9', 'cif9', '2024-12-31'),
('bar10', 'dueño10', 999999999, 'direccion10', 'cif10', '2027-12-31'),
('bar11', 'dueño11', 1010101010, 'direccion11', 'cif11', '2024-12-31'),
('bar12', 'dueño12', 1212121212, 'direccion12', 'cif12', '2025-12-31'),
('bar13', 'dueño13', 1313131313, 'direccion13', 'cif13', '2023-12-31'),
('bar14', 'dueño14', 1414141414, 'direccion14', 'cif14', '2025-12-31'),
('bar15', 'dueño15', 1515151515, 'direccion15', 'cif15', '2027-12-31'),
('bar16', 'dueño16', 1616161616, 'direccion16', 'cif16', '2026-12-31'),
('bar17', 'dueño17', 1717171717, 'direccion17', 'cif17', '2025-12-31'),
('bar18', 'dueño18', 1818181818, 'direccion18', 'cif18', '2026-12-31'),
('bar19', 'dueño19', 1919191919, 'direccion19', 'cif19', '2024-12-31'),
('bar20', 'dueño20', 2020202020, 'direccion20', 'cif20', '2027-12-31');


INSERT INTO maquina (nombre, fecha_vencimiento_licencia, almacenada, fecha_almacenamiento, tipo_maquina, FK_CLIENTE) VALUES 
('maquina1', '2024-12-31', 1, '2024-02-29', 'BILLETES', null),
('maquina2', '2024-11-15', 0, null, 'MONEDAS', 1),
('maquina3', '2024-12-31', 0, null, 'BILLETES', 1),
('maquina4', '2024-10-01', 0, null, 'MONEDAS', 2),
('maquina5', '2024-09-30', 0, null, 'BILLETES', 2),
('maquina6', '2025-12-31', 0, null, 'BILLETES', 3),
('maquina7', '2025-11-15', 0, null, 'MONEDAS', 4),
('maquina8', '2025-12-31', 0, null, 'BILLETES', 5),
('maquina9', '2025-10-01', 0, null, 'MONEDAS', 6),
('maquina2', '2025-09-30', 0, null, 'BILLETES', 7),
('maquina3', '2024-12-31', 0, null, 'BILLETES', 8),
('maquina6', '2024-11-15', 0, null, 'MONEDAS', 9),
('maquina8', '2024-12-31', 0, null, 'BILLETES', 10),
('maquina3', '2024-10-01', 0, null, 'MONEDAS', 11),
('maquina5', '2024-09-30', 0, null, 'BILLETES', 12),
('maquina2', '2025-12-31', 0, null, 'BILLETES', 13),
('maquina1', '2025-11-15', 0, null, 'MONEDAS', 14),
('maquina8', '2025-12-31', 0, null, 'BILLETES', 15),
('maquina4', '2025-10-01', 0, null, 'MONEDAS', 16),
('maquina3', '2025-09-30', 0, null, 'BILLETES', 17),
('maquina7', '2024-12-31', 0, null, 'BILLETES', 18),
('maquina3', '2024-11-15', 0, null, 'MONEDAS', 19),
('maquina2', '2024-12-31', 0, null, 'BILLETES', 20),
('maquina9', '2024-12-31', 1, '2024-02-29', 'MONEDAS', null),
('maquina2', '2024-12-31', 1, '2024-02-29', 'BILLETES', null);


INSERT INTO tiene (usuario_id, maquina_id) VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10), (1, 11), (1, 12), (1, 13), (1, 14), (1, 15), (1, 16), (1, 17), (1, 18), (1, 19), (1, 20), (1, 21), (1, 22), (1, 23), (1, 24), (1, 25),
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8), (2, 9), (2, 10),(2, 11), (2, 12), (2, 13), (2, 14), (2, 15), (2, 16), (2, 17), (2, 18), (2, 19), (2, 20), (2, 21), (2, 22), (2, 23), (2, 24), (2, 25);


INSERT INTO recaudacion (cantidad_recaudada, pasos_entrada, pasos_salida, porcentaje_juego, tasa_recaudacion, fecha, FK_MAQUINA) VALUES
(1000.0, 4120, 3890, 60.0, 200, '2023-12-06', 1),
(1500.0, 2500, 2300, 60.0, 200, '2023-12-06', 1),
(400.0, 5130, 4900, 60.0, 200, '2023-12-06', 1),
(658.0, 800, 670, 60.0, 200, '2023-12-06', 1),

(300.0, 400, 250, 45.0, 50, '2023-12-14', 2),
(950.0, 1900, 1350, 60.0, 200, '2023-12-06', 2),
(1100.0, 4300, 4000, 60.0, 210, '2023-12-07', 2),
(1200.0, 2600, 2400, 60.0, 220, '2023-12-07', 2),
(500.0, 5200, 5000, 60.0, 230, '2023-12-07', 2),

(700.0, 900, 800, 60.0, 240, '2023-12-07', 3),
(400.0, 500, 300, 45.0, 100, '2023-12-15', 3),
(960.0, 2000, 1400, 60.0, 250, '2023-12-07', 3),
(1100.0, 4200, 3900, 60.0, 200, '2023-12-06', 3),

(1550.0, 2400, 2250, 60.0, 200, '2023-12-06', 4),
(380.0, 5100, 4850, 60.0, 200, '2023-12-06', 4),
(660.0, 850, 680, 60.0, 200, '2023-12-06', 4),
(320.0, 430, 280, 45.0, 50, '2023-12-14', 4),

(930.0, 1800, 1250, 60.0, 200, '2023-12-06', 5),
(1150.0, 4400, 4100, 60.0, 210, '2023-12-07', 5),
(1250.0, 2700, 2500, 60.0, 220, '2023-12-07', 5),
(520.0, 5300, 5050, 60.0, 230, '2023-12-07', 5),

(420.0, 550, 350, 45.0, 100, '2023-12-15', 6),
(970.0, 2100, 1450, 60.0, 250, '2023-12-07', 6),
(1200.0, 4100, 3800, 60.0, 200, '2023-12-06', 6),
(1600.0, 2300, 2200, 60.0, 200, '2023-12-06', 6),

(390.0, 5080, 4830, 60.0, 200, '2023-12-06', 7),
(670.0, 830, 660, 60.0, 200, '2023-12-06', 7),
(310.0, 420, 270, 45.0, 50, '2023-12-14', 7),
(940.0, 1700, 1200, 60.0, 200, '2023-12-06', 7),

(1120.0, 4500, 4200, 60.0, 210, '2023-12-07', 8),
(1220.0, 2800, 2600, 60.0, 220, '2023-12-07', 8),
(530.0, 5400, 5100, 60.0, 230, '2023-12-07', 8),
(730.0, 1000, 900, 60.0, 240, '2023-12-07', 8),

(430.0, 600, 400, 45.0, 100, '2023-12-15', 9),
(980.0, 2200, 1550, 60.0, 250, '2023-12-07', 9),
(1300.0, 4000, 3700, 60.0, 200, '2023-12-06', 9),
(1650.0, 2200, 2150, 60.0, 200, '2023-12-06', 9),

(680.0, 810, 640, 60.0, 200, '2023-12-06', 10),
(330.0, 410, 260, 45.0, 50, '2023-12-14', 10),
(950.0, 1600, 1150, 60.0, 200, '2023-12-06', 10),
(1130.0, 4600, 4300, 60.0, 210, '2023-12-07', 10),

(1230.0, 2900, 2700, 60.0, 220, '2023-12-07', 11),
(540.0, 5500, 5150, 60.0, 230, '2023-12-07', 11),
(740.0, 1050, 950, 60.0, 240, '2023-12-07', 11),
(310.0, 420, 270, 45.0, 50, '2023-12-14', 11),

(380.0, 5100, 4850, 60.0, 200, '2023-12-06', 12),
(660.0, 850, 680, 60.0, 200, '2023-12-06', 12),
(320.0, 430, 280, 45.0, 50, '2023-12-14', 12),
(930.0, 1800, 1250, 60.0, 200, '2023-12-06', 12),

(1150.0, 4400, 4100, 60.0, 210, '2023-12-07', 13),
(1250.0, 2700, 2500, 60.0, 220, '2023-12-07', 13),
(730.0, 1000, 900, 60.0, 240, '2023-12-07', 13),
(380.0, 5100, 4850, 60.0, 200, '2023-12-06', 13),

(520.0, 5300, 5050, 60.0, 230, '2023-12-07', 14),
(720.0, 950, 850, 60.0, 240, '2023-12-07', 14),
(1200.0, 4100, 3800, 60.0, 200, '2023-12-06', 14),
(1600.0, 2300, 2200, 60.0, 200, '2023-12-06', 14),

(390.0, 5080, 4830, 60.0, 200, '2023-12-06', 15),
(670.0, 830, 660, 60.0, 200, '2023-12-06', 15),
(310.0, 420, 270, 45.0, 50, '2023-12-14', 15),
(940.0, 1700, 1200, 60.0, 200, '2023-12-06', 15),

(1120.0, 4500, 4200, 60.0, 210, '2023-12-07', 16),
(1220.0, 2800, 2600, 60.0, 220, '2023-12-07', 16),
(530.0, 5400, 5100, 60.0, 230, '2023-12-07', 16),
(730.0, 1000, 900, 60.0, 240, '2023-12-07', 16),

(430.0, 600, 400, 45.0, 100, '2023-12-15', 17),
(980.0, 2200, 1550, 60.0, 250, '2023-12-07', 17),
(1300.0, 4000, 3700, 60.0, 200, '2023-12-06', 17),
(1550.0, 2400, 2250, 60.0, 200, '2023-12-06', 17),

(380.0, 5100, 4850, 60.0, 200, '2023-12-06', 18),
(660.0, 850, 680, 60.0, 200, '2023-12-06', 18),
(320.0, 430, 280, 45.0, 50, '2023-12-14', 18),
(930.0, 1800, 1250, 60.0, 200, '2023-12-06', 18),

(1150.0, 4400, 4100, 60.0, 210, '2023-12-07', 19),
(1250.0, 2700, 2500, 60.0, 220, '2023-12-07', 19),
(520.0, 5300, 5050, 60.0, 230, '2023-12-07', 19),
(740.0, 1050, 950, 60.0, 240, '2023-12-07', 19),

(310.0, 420, 270, 45.0, 50, '2023-12-14', 20),
(380.0, 5100, 4850, 60.0, 200, '2023-12-06', 20),
(660.0, 850, 680, 60.0, 200, '2023-12-06', 20),
(320.0, 430, 280, 45.0, 50, '2023-12-14', 20),

(930.0, 1800, 1250, 60.0, 200, '2023-12-06', 21),
(310.0, 420, 270, 45.0, 50, '2023-12-14', 21),
(940.0, 1700, 1200, 60.0, 200, '2023-12-06', 21),
(1120.0, 4500, 4200, 60.0, 210, '2023-12-07', 21),

(1220.0, 2800, 2600, 60.0, 220, '2023-12-07', 22),
(530.0, 5400, 5100, 60.0, 230, '2023-12-07', 22),
(730.0, 1000, 900, 60.0, 240, '2023-12-07', 22),
(430.0, 600, 400, 45.0, 100, '2023-12-15', 22),

(980.0, 2200, 1550, 60.0, 250, '2023-12-07', 23),
(1300.0, 4000, 3700, 60.0, 200, '2023-12-06', 23),
(1650.0, 2200, 2150, 60.0, 200, '2023-12-06', 23),
(410.0, 5050, 4800, 60.0, 200, '2023-12-06', 23),

(680.0, 810, 640, 60.0, 200, '2023-12-06', 24),
(330.0, 410, 260, 45.0, 50, '2023-12-14', 24),
(950.0, 1600, 1150, 60.0, 200, '2023-12-06', 24),
(1130.0, 4600, 4300, 60.0, 210, '2023-12-07', 24),

(1230.0, 2900, 2700, 60.0, 220, '2023-12-07', 25),
(540.0, 5500, 5150, 60.0, 230, '2023-12-07', 25),
(740.0, 1050, 950, 60.0, 240, '2023-12-07', 25),
(310.0, 420, 270, 45.0, 50, '2023-12-14', 25);


INSERT INTO factura (iva, fecha_emision, FK_CLIENTE) VALUES 
(21, '2024-05-01', 1), (21, '2024-06-01', 1), (21, '2024-07-01', 1),
(21, '2024-06-01', 2), (21, '2024-07-01', 2), (21, '2024-08-01', 2),
(21, '2024-05-01', 3), (21, '2024-06-01', 3),
(21, '2024-05-01', 4), (21, '2024-06-01', 4),
(21, '2024-09-01', 6), (21, '2024-10-01', 6), (21, '2024-11-01', 6),
(21, '2024-12-01', 7), (21, '2025-01-01', 7), (21, '2025-02-01', 7),
(21, '2024-09-01', 8), (21, '2024-10-01', 8),
(21, '2024-11-01', 9), (21, '2024-12-01', 9);
