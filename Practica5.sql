INSERT INTO cliente
(nombre,razonSocial,rfc,direccion,telefono,movil,correo)
VALUES (
('LUIS JIMENEZ','LJ RENTS SOLUTIONS','DUTA-921223-MIA',1,'8114256404','8180299971','solutions.lj@gmail.com'),
('DANIEL','GOOGLE','XXX-XXX-010101',2,'1234567345','456523634','EMAIL@GMAIL.COM',),
('JORGE','MICROSOFT','XXX-XXX-010101',3,'6352461728','4563456354','EMAIL@GMAIL.COM'),
('PEDRO','LINUX','XXX-XXX-010101',4,'5657348763','4675645456','EMAIL@GMAIL.COM'),
('AIDE','NGK','XXX-XXX-010101',5,'4576435243','3124345657','EMAIL@GMAIL.COM')
)
GO

INSERT INTO desktop
(model,serie,es_cpu,es_ram,es_dd,es_tv,es_mb,es_gb)
VALUES(
('ACER','123456','i7','4G','500GB','NVIDIA','ECS','GB'),
('HP','65421','i7','4G','500GB','NVIDIA','ECS','GB'),
('DELL','7652345','i7','4G','500GB','NVIDIA','ECS','GB'),
('TOSHIBA','2435465','i7','4G','500GB','NVIDIA','ECS','GB'),
('HP','64576','i7','4G','500GB','NVIDIA','ECS','GB')
)


INSERT INTO laptop
(model,serie,es_cpu,es_ram,es_dd,es_tv)
VALUES(
('HP','443G4635G','i7','4G','500GB','RADEON'),
('HP','3564G','i7','4G','500GB','RADEON'),
('ACER','F23DF','i7','4G','500GB','RADEON'),
('ACER','76JH8','i7','4G','500GB','RADEON'),
('TOSHIBA','57J8H','i7','4G','500GB','RADEON')
)


INSERT INTO impresora
(model,serie)
VALUES(
('EPSON','F23B'),
('EPSON','75HU'),
('HP','H57UG'),
('HP','HGUGF'),
('CANON','35FT3T4G')
)


INSERT INTO monitor
(model,serie)
VALUES(
('ACER','M98X30'),
('ACER','8M7M87'),
('ASUS','V35B4G'),
('HP','34G6'),
('BENQ','54BGY534')
)


DELETE FROM cliente 
WHERE nombre = 'DANIEL'
DELETE FROM desktop 
WHERE cpu = 'i7'
DELETE FROM impresora
WHERE marca = 'EPSON'
DELETE FROM monitor
WHERE marca = 'ACER'
DELETE FROM laptop 
WHERE marca = 'HP'


UPDATE cliente SET rfc = 'xx-x1x1-010' WHERE nombre = 'LUIS'
UPDATE desktop SET ram = '8G' WHERE cpu ='i7'
UPDATE impresora SET model = 'HP' WHERE model = 'EPSON' 
UPDATE monitor SET model = 'DELL' WHERE model = 'ACER'
UPDATE laptop SET model = 'ASUS' WHERE model = 'TOSHIBA'
