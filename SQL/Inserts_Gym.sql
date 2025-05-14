-- Inserts en la tabla PERSONA
INSERT INTO PERSONA (DNI, NOMBRE, APELLIDO1, APELLIDO2, DIRECCION, EMAIL, CUENTA_BANCARIA, FECHA_NAC) 
VALUES 
('12345678A', 'Manuel', 'Santos', 'Navarro', 'Puertollano, Calle Luna', 'manuel.santos@example.com', 'ES1234567890123456789012', '1985-05-23'),
('87654321B', 'Jose Enrique', 'Aguila', 'Blanco', 'Ciudad Real, Avenida Sol', 'jose.aguila@example.com', 'ES2345678901234567890123', '1990-08-12'),
('98765432C', 'Alvaro', 'Martin', 'Vazquez', 'Almagro, Calle Real', 'alvaro.martin@example.com', 'ES3456789012345678901234', '1992-03-15'),
('12398745D', 'Dani', 'Lopez', 'Lopez', 'Ciudad Real, Plaza Mayor', 'dani.lopez@example.com', 'ES4567890123456789012345', '1995-07-28'),
('56473829E', 'Adrian', 'Santos', 'Tendero', 'Puertollano, Camino Verde', 'adrian.santos@example.com', 'ES5678901234567890123456', '1993-11-05'),
('74859632F', 'Fran', 'Alía', 'TheBoss', 'Puertollano, Calle Diamante', 'fran.alia@example.com', 'ES6789012345678901234567', '1988-09-21'),
('14725836G', 'Laura', 'Gomez', 'Ruiz', 'Tomelloso, Calle Olivo', 'laura.gomez@example.com', 'ES7890123456789012345678', '1990-01-15'),
('85296374H', 'Mario', 'Lopez', 'Garcia', 'Valdepeñas, Avenida del Vino', 'mario.lopez@example.com', 'ES8901234567890123456789', '1987-06-07'),
('96385274I', 'Ana', 'Martinez', 'Hernandez', 'Daimiel, Calle Larga', 'ana.martinez@example.com', 'ES9012345678901234567890', '1992-12-12'),
('75395146J', 'Lucia', 'Rodriguez', 'Perez', 'Ciudad Real, Calle Oro', 'lucia.rodriguez@example.com', 'ES0123456789012345678901', '1989-04-18');

-- Inserts en la tabla TELEFONO
INSERT INTO TELEFONO (DNI, NUMERO, TIPO) VALUES
('12345678A', '123456789', 'MOVIL'),
('87654321B', '987654321', 'CASA'),
('98765432C', '456123789', 'MOVIL'),
('12398745D', '789456123', 'TRABAJO'),
('56473829E', '321654987', 'CASA'),
('74859632F', '654987321', 'MOVIL'),
('14725836G', '741852963', 'TRABAJO'),
('85296374H', '963852741', 'MOVIL'),
('96385274I', '852741963', 'CASA'),
('75395146J', '147258369', 'MOVIL');

-- Inserts en la tabla EMPLEADO
INSERT INTO EMPLEADO (DNI, SALARIO, FECHA_CONTRATACION) VALUES
('12345678A', 2000.00, '2020-01-01'),
('87654321B', 1800.00, '2021-02-15'),
('98765432C', 2100.00, '2019-05-10'),
('12398745D', 1900.00, '2022-07-20'),
('56473829E', 2200.00, '2018-11-25'),
('74859632F', 2500.00, '2017-03-13'),
('14725836G', 1700.00, '2021-08-01'),
('85296374H', 2300.00, '2020-05-15'),
('96385274I', 1800.00, '2022-02-28'),
('75395146J', 2400.00, '2019-12-01');

-- Inserts en la tabla MONITOR
INSERT INTO MONITOR (ID_EMPLEADO) VALUES 
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

-- Inserts en la tabla HORARIO
INSERT INTO HORARIO (ID_EMPLEADO, TIPO) VALUES
(1, 'M'), (2, 'T'), (3, 'M'), (4, 'T'), (5, 'M'), (6, 'T'), (7, 'M'), (8, 'T'), (9, 'M'), (10, 'T');

-- Inserts en la tabla RUTINA
INSERT INTO RUTINA (NOMBRE, DESCRIPCION) VALUES
('Rutina Cardio', 'Entrenamiento cardiovascular intenso'),
('Rutina Fuerza', 'Entrenamiento de fuerza con pesas'),
('Rutina Yoga', 'Clases de yoga relajantes'),
('Rutina HIIT', 'Entrenamiento en intervalos de alta intensidad'),
('Rutina Estiramientos', 'Estiramientos para flexibilidad'),
('Rutina Core', 'Ejercicios para el fortalecimiento del core'),
('Rutina Funcional', 'Entrenamiento funcional para movilidad'),
('Rutina CrossFit', 'Entrenamiento de CrossFit avanzado'),
('Rutina Running', 'Plan de carrera en cinta'),
('Rutina FrancisAlia', 'Crossfit');

-- Inserts en la tabla USUARIO
INSERT INTO USUARIO (DNI) VALUES
('12345678A'), ('87654321B'), ('98765432C'), ('12398745D'), ('56473829E'),
('74859632F'), ('14725836G'), ('85296374H'), ('96385274I'), ('75395146J');

-- Inserts en la tabla USUARIO_RUTINA
INSERT INTO USUARIO_RUTINA (ID_RUTINA, ID_USUARIO) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- Inserts en la tabla EJERCICIO
INSERT INTO EJERCICIO (NOMBRE, DESCRIPCION, GRUPO_MUSCULAR) VALUES
('Sentadilla', 'Sentadillas para piernas y glúteos', 'Piernas'),
('Flexión', 'Flexiones para el pecho y brazos', 'Pecho'),
('Dominadas', 'Dominadas para espalda y bíceps', 'Espalda'),
('Plancha', 'Ejercicio de plancha para el core', 'Core'),
('Zancadas', 'Zancadas para las piernas', 'Piernas'),
('Press Militar', 'Press militar para los hombros', 'Hombros'),
('Remo', 'Remo para la espalda', 'Espalda'),
('Curl Bíceps', 'Curl de bíceps para los brazos', 'Bíceps'),
('Abdominales', 'Abdominales para fortalecer el abdomen', 'Core');


-- Inserts en la tabla RUTINA_EJERCICIO
INSERT INTO RUTINA_EJERCICIO (ID_RUTINA, ID_EJERCICIO, SERIES, REPETICIONES, DIA_SEMANA) VALUES
(1, 1, 3, 12, 'LUNES'),
(2, 2, 3, 15, 'MIÉRCOLES'),
(3, 3, 4, 10, 'VIERNES'),
(4, 4, 5, 20, 'MARTES'),
(5, 5, 2, 8, 'JUEVES'),
(6, 6, 3, 12, 'SÁBADO'),
(7, 7, 4, 15, 'LUNES'),
(8, 8, 5, 10, 'MIÉRCOLES'),
(9, 9, 3, 20, 'VIERNES');

-- Inserts en la tabla SALA
INSERT INTO SALA (NOMBRE) VALUES 
('Sala de Yoga'), ('Sala de Cardio'), ('Sala de Fuerza'), ('Sala Funcional'), ('Sala de Pilates'),
('Sala HIIT'), ('Sala CrossFit'), ('Sala de Zumba'), ('Sala Boxeo Fitness'), ('Sala de Stretching');

-- Inserts en la tabla CLASE
INSERT INTO CLASE (NOMBRE, DESCRIPCION, FECHA_INICIO, FECHA_FIN, SALA) VALUES
('Entrenamiento Funcional', 'Entrenamiento para mejorar movilidad', '2025-04-15', '2025-07-15', 2),
('HIIT Intensivo', 'Intervalos de alta intensidad', '2025-04-01', '2025-06-01', 3),
('Pilates Básico', 'Clases introductorias de pilates', '2025-05-01', '2025-07-01', 4),
('Cardio Dance', 'Bailes para quemar calorías', '2025-04-05', '2025-06-20', 5),
('CrossFit Express', 'Entrenamiento exprés de CrossFit', '2025-05-10', '2025-08-10', 6),
('Zumba', 'Clase divertida de baile Zumba', '2025-04-08', '2025-06-08', 7),
('Boxeo Fitness', 'Clase de boxeo para fitness', '2025-04-20', '2025-07-20', 8),
('Step Cardio', 'Ejercicios con step para cardio', '2025-04-18', '2025-06-30', 9),
('Stretching', 'Clase de estiramientos', '2025-04-25', '2025-06-25', 10),
('CardioFrank', 'Clase de Cinta', '2025-03-12', '2025-06-29', 10);

-- Inserts en la tabla MONITOR_CLASE
INSERT INTO MONITOR_CLASE (ID_MONITOR, ID_CLASE) VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- Inserts en la tabla USUARIO_CLASE
INSERT INTO USUARIO_CLASE (ID_USUARIO, ID_CLASE, FECHA) VALUES
(1, 1, '2025-04-10'),
(2, 2, '2025-04-15'),
(3, 3, '2025-04-20'),
(4, 4, '2025-04-25'),
(5, 5, '2025-04-30'),
(6, 6, '2025-05-05'),
(7, 7, '2025-05-10'),
(8, 8, '2025-05-15'),
(9, 9, '2025-05-20'),
(10, 10, '2025-05-25');
