INSERT INTO Cliente
VALUES 
('1','1317057451', 'Alvarado', 'Lenny', 'Urb Metropoliss', '0983990319'),
('2','1317457451', 'Muentes', 'Nahomi', 'Barrio 4 de Noviembre', '0983347851'),
('3','1304557451', 'Franco', 'Paula', 'Cdla Villaventura', '0983684319'),
('4','1317056551', 'Cedeño', 'Nagely', 'Barrio Divino Niño', '0983658822'),
('5','1302057451', 'Mendez', 'Carlos', 'Barrio Jocay', '0983990057'),
('6','1307055811', 'Mantuano', 'Luis', 'Barrio La Pradera', '0987410319');

INSERT INTO Mascota
VALUES 
('1','Perro', '2'),
('2','Gato', '12'),
('3','Conejo', '10'),
('4','Loro', '2'),
('5','Hamster', '8'),
('6','Tortuga', '14');


INSERT INTO Vacunacion
VALUES 
('1','Parvovirus'), ('2','adenovirus'), ('3','hepatitis'), ('4','Leptospirosis'), ('5','Traqueítis infecciosa'), ('6','Leishmania'), 
('7','Rabia'), ('8','Leucemia felina'), ('9','Clamidófila'), ('10','Parvovirus felino');

INSERT INTO Enfermedad
VALUES 
('1','Hongos'), ('2','Virosis'), ('3','hepatitis'), ('4','Parvovirosis'), ('5','Moquillo'), ('6','Leishmania'), 
('7','Rabia'), ('8','Laringotraqueitis'), ('9','Leptospirosis'), ('10','Parásitos'), ('11','Tos de las perreras'), 
('12','Filarias');

INSERT INTO Veterinario
VALUES 
('1','Guillermo Alonso'), ('2','Carlos Mantuano'), ('3','Belén Vera');

INSERT INTO Historial_Clinico
VALUES 
(1, 1, 1, 'Bulldog', 'castaño', '24-05-2020'),
(2, 6, 1, 'Galgo', 'negro', '04-06-2020'),
(3, 3, 3, 'MiniLop', 'blanco', '08-09-2020'),
(4, 6, 2, 'Ragdoll', 'gris', '10-12-2020'),
(5, 2, 2, 'Persa', 'naranja', '05-01-2021'),
(6, 1, 5, 'Angora', 'blanco y naranja', '30-03-2021'),
(7, 3, 1, 'Poodle', 'café', '04-07-2021'),
(8, 5, 2, 'Munchkin', 'negro', '21-07-2021'),
(9, 3, 1, 'Samoyedo', 'blanco', '14-02-2022'),
(10, 4, 4, 'Psittacoidea', 'verde', '02-04-2022');

INSERT INTO Detalle_Vacunacion
VALUES 
(1, 2, 9, 1.0, '25-05-2020'),
(2, 1, 7, 0.5, '06-06-2020'),
(3, 9, 3, 0.7, '10-09-2020'),
(4, 10, 8, 0.3, '11-12-2020'),
(5, 3, 4, 0.7, '06-01-2021'),
(6, 7, 6, 1.0, '31-03-2021'),
(7, 5, 3, 1.0, '05-07-2021'),
(8, 8, 5, 0.2, '23-07-2021'),
(9, 4, 1, 0.9, '15-02-2022'),
(10, 6, 10, 0.3, '05-04-2022');

INSERT INTO Detalle_Historial_Clinico
VALUES 
(1, 1, 1, 2, 5.8, '25-05-2020'),
(2, 2, 2, 4, 4.7, '06-06-2020'),
(3, 3, 2, 12, 1.7, '10-09-2020'),
(4, 4, 1, 4, 3.5, '11-12-2020'),
(5, 5, 3, 3, 3.4, '06-01-2021'),
(6, 6, 1, 7, 0.8, '31-03-2021'),
(7, 9, 3, 8, 5.0, '05-07-2021'),
(8, 8, 2, 1, 3.2, '23-07-2021'),
(9, 7, 1, 9, 4.8, '15-02-2022'),
(10, 10, 3, 6, 1.1, '05-04-2022');