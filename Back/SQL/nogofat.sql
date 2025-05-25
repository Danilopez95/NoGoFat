-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2025 a las 12:00:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nogofat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `ID_CLASE` int(11) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  `FECHA_INICIO` date DEFAULT NULL,
  `FECHA_FIN` date DEFAULT NULL,
  `SALA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`ID_CLASE`, `NOMBRE`, `DESCRIPCION`, `FECHA_INICIO`, `FECHA_FIN`, `SALA`) VALUES
(1, 'Entrenamiento Funcional', 'Entrenamiento para mejorar movilidad', '2025-04-15', '2025-07-15', 2),
(2, 'HIIT Intensivo', 'Intervalos de alta intensidad', '2025-04-01', '2025-06-01', 3),
(3, 'Pilates Básico', 'Clases introductorias de pilates', '2025-05-01', '2025-07-01', 4),
(4, 'Cardio Dance', 'Bailes para quemar calorías', '2025-04-05', '2025-06-20', 5),
(5, 'CrossFit Express', 'Entrenamiento exprés de CrossFit', '2025-05-10', '2025-08-10', 6),
(6, 'Zumba', 'Clase divertida de baile Zumba', '2025-04-08', '2025-06-08', 7),
(7, 'Boxeo Fitness', 'Clase de boxeo para fitness', '2025-04-20', '2025-07-20', 8),
(8, 'Step Cardio', 'Ejercicios con step para cardio', '2025-04-18', '2025-06-30', 9),
(9, 'Stretching', 'Clase de estiramientos', '2025-04-25', '2025-06-25', 10),
(10, 'CardioFrank', 'Clase de Cinta', '2025-03-12', '2025-06-29', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejercicio`
--

CREATE TABLE `ejercicio` (
  `ID_EJERCICIO` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(200) DEFAULT NULL,
  `GRUPO_MUSCULAR` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ejercicio`
--

INSERT INTO `ejercicio` (`ID_EJERCICIO`, `NOMBRE`, `DESCRIPCION`, `GRUPO_MUSCULAR`) VALUES
(1, 'Sentadilla', 'Sentadillas para piernas y glúteos', 'Piernas'),
(2, 'Flexión', 'Flexiones para el pecho y brazos', 'Pecho'),
(3, 'Dominadas', 'Dominadas para espalda y bíceps', 'Espalda'),
(4, 'Plancha', 'Ejercicio de plancha para el core', 'Core'),
(5, 'Zancadas', 'Zancadas para las piernas', 'Piernas'),
(6, 'Press Militar', 'Press militar para los hombros', 'Hombros'),
(7, 'Remo', 'Remo para la espalda', 'Espalda'),
(8, 'Curl Bíceps', 'Curl de bíceps para los brazos', 'Bíceps'),
(9, 'Abdominales', 'Abdominales para fortalecer el abdomen', 'Core');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `ID_EMPLEADO` int(11) NOT NULL,
  `DNI` varchar(20) DEFAULT NULL,
  `SALARIO` decimal(10,2) DEFAULT NULL,
  `FECHA_CONTRATACION` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`ID_EMPLEADO`, `DNI`, `SALARIO`, `FECHA_CONTRATACION`) VALUES
(1, '12345678A', 2000.00, '2020-01-01'),
(2, '87654321B', 1800.00, '2021-02-15'),
(3, '98765432C', 2100.00, '2019-05-10'),
(4, '12398745D', 1900.00, '2022-07-20'),
(5, '56473829E', 2200.00, '2018-11-25'),
(6, '74859632F', 2500.00, '2017-03-13'),
(7, '14725836G', 1700.00, '2021-08-01'),
(8, '85296374H', 2300.00, '2020-05-15'),
(9, '96385274I', 1800.00, '2022-02-28'),
(10, '75395146J', 2400.00, '2019-12-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `ID_HORARIO` int(11) NOT NULL,
  `ID_EMPLEADO` int(11) DEFAULT NULL,
  `TIPO` varchar(1) DEFAULT NULL CHECK (`TIPO` in ('M','T'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`ID_HORARIO`, `ID_EMPLEADO`, `TIPO`) VALUES
(1, 1, 'M'),
(2, 2, 'T'),
(3, 3, 'M'),
(4, 4, 'T'),
(5, 5, 'M'),
(6, 6, 'T'),
(7, 7, 'M'),
(8, 8, 'T'),
(9, 9, 'M'),
(10, 10, 'T');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitor`
--

CREATE TABLE `monitor` (
  `ID_MONITOR` int(11) NOT NULL,
  `ID_EMPLEADO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `monitor`
--

INSERT INTO `monitor` (`ID_MONITOR`, `ID_EMPLEADO`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitor_clase`
--

CREATE TABLE `monitor_clase` (
  `ID_MONITOR` int(11) DEFAULT NULL,
  `ID_CLASE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `monitor_clase`
--

INSERT INTO `monitor_clase` (`ID_MONITOR`, `ID_CLASE`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `DNI` varchar(20) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `APELLIDO1` varchar(30) NOT NULL,
  `APELLIDO2` varchar(30) DEFAULT NULL,
  `DIRECCION` varchar(100) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `CUENTA_BANCARIA` varchar(100) DEFAULT NULL,
  `FECHA_NAC` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`DNI`, `NOMBRE`, `APELLIDO1`, `APELLIDO2`, `DIRECCION`, `EMAIL`, `CUENTA_BANCARIA`, `FECHA_NAC`) VALUES
('12345678A', 'Manuel', 'Santos', 'Navarro', 'Puertollano, Calle Luna', 'manuel.santos@example.com', 'ES1234567890123456789012', '1985-05-23'),
('12398745D', 'Dani', 'Lopez', 'Lopez', 'Ciudad Real, Plaza Mayor', 'dani.lopez@example.com', 'ES4567890123456789012345', '1995-07-28'),
('14725836G', 'Laura', 'Gomez', 'Ruiz', 'Tomelloso, Calle Olivo', 'laura.gomez@example.com', 'ES7890123456789012345678', '1990-01-15'),
('56473829E', 'Adrian', 'Santos', 'Tendero', 'Puertollano, Camino Verde', 'adrian.santos@example.com', 'ES5678901234567890123456', '1993-11-05'),
('74859632F', 'Fran', 'Alía', 'TheBoss', 'Puertollano, Calle Diamante', 'fran.alia@example.com', 'ES6789012345678901234567', '1988-09-21'),
('75395146J', 'Lucia', 'Rodriguez', 'Perez', 'Ciudad Real, Calle Oro', 'lucia.rodriguez@example.com', 'ES0123456789012345678901', '1989-04-18'),
('85296374H', 'Mario', 'Lopez', 'Garcia', 'Valdepeñas, Avenida del Vino', 'mario.lopez@example.com', 'ES8901234567890123456789', '1987-06-07'),
('87654321B', 'Jose Enrique', 'Aguila', 'Blanco', 'Ciudad Real, Avenida Sol', 'jose.aguila@example.com', 'ES2345678901234567890123', '1990-08-12'),
('96385274I', 'Ana', 'Martinez', 'Hernandez', 'Daimiel, Calle Larga', 'ana.martinez@example.com', 'ES9012345678901234567890', '1992-12-12'),
('98765432C', 'Alvaro', 'Martin', 'Vazquez', 'Almagro, Calle Real', 'alvaro.martin@example.com', 'ES3456789012345678901234', '1992-03-15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina`
--

CREATE TABLE `rutina` (
  `ID_RUTINA` int(11) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rutina`
--

INSERT INTO `rutina` (`ID_RUTINA`, `NOMBRE`, `DESCRIPCION`) VALUES
(1, 'Rutina Cardio', 'Entrenamiento cardiovascular intenso'),
(2, 'Rutina Fuerza', 'Entrenamiento de fuerza con pesas'),
(3, 'Rutina Yoga', 'Clases de yoga relajantes'),
(4, 'Rutina HIIT', 'Entrenamiento en intervalos de alta intensidad'),
(5, 'Rutina Estiramientos', 'Estiramientos para flexibilidad'),
(6, 'Rutina Core', 'Ejercicios para el fortalecimiento del core'),
(7, 'Rutina Funcional', 'Entrenamiento funcional para movilidad'),
(8, 'Rutina CrossFit', 'Entrenamiento de CrossFit avanzado'),
(9, 'Rutina Running', 'Plan de carrera en cinta'),
(10, 'Rutina FrancisAlia', 'Crossfit');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutina_ejercicio`
--

CREATE TABLE `rutina_ejercicio` (
  `ID_RUTINA_EJERCICIO` int(11) NOT NULL,
  `ID_RUTINA` int(11) DEFAULT NULL,
  `ID_EJERCICIO` int(11) DEFAULT NULL,
  `SERIES` tinyint(4) NOT NULL CHECK (`SERIES` between 1 and 9),
  `REPETICIONES` smallint(6) NOT NULL,
  `DIA_SEMANA` varchar(10) DEFAULT NULL CHECK (`DIA_SEMANA` in ('LUNES','MARTES','MIÉRCOLES','JUEVES','VIERNES','SÁBADO'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rutina_ejercicio`
--

INSERT INTO `rutina_ejercicio` (`ID_RUTINA_EJERCICIO`, `ID_RUTINA`, `ID_EJERCICIO`, `SERIES`, `REPETICIONES`, `DIA_SEMANA`) VALUES
(1, 1, 1, 3, 12, 'LUNES'),
(2, 2, 2, 3, 15, 'MIÉRCOLES'),
(3, 3, 3, 4, 10, 'VIERNES'),
(4, 4, 4, 5, 20, 'MARTES'),
(5, 5, 5, 2, 8, 'JUEVES'),
(6, 6, 6, 3, 12, 'SÁBADO'),
(7, 7, 7, 4, 15, 'LUNES'),
(8, 8, 8, 5, 10, 'MIÉRCOLES'),
(9, 9, 9, 3, 20, 'VIERNES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `ID_SALA` int(11) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`ID_SALA`, `NOMBRE`) VALUES
(1, 'Sala de Yoga'),
(2, 'Sala de Cardio'),
(3, 'Sala de Fuerza'),
(4, 'Sala Funcional'),
(5, 'Sala de Pilates'),
(6, 'Sala HIIT'),
(7, 'Sala CrossFit'),
(8, 'Sala de Zumba'),
(9, 'Sala Boxeo Fitness'),
(10, 'Sala de Stretching');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `ID_TELEFONO` int(11) NOT NULL,
  `DNI` varchar(20) DEFAULT NULL,
  `NUMERO` varchar(20) NOT NULL,
  `TIPO` varchar(20) DEFAULT NULL CHECK (`TIPO` in ('MOVIL','TRABAJO','CASA'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`ID_TELEFONO`, `DNI`, `NUMERO`, `TIPO`) VALUES
(1, '12345678A', '123456789', 'MOVIL'),
(2, '87654321B', '987654321', 'CASA'),
(3, '98765432C', '456123789', 'MOVIL'),
(4, '12398745D', '789456123', 'TRABAJO'),
(5, '56473829E', '321654987', 'CASA'),
(6, '74859632F', '654987321', 'MOVIL'),
(7, '14725836G', '741852963', 'TRABAJO'),
(8, '85296374H', '963852741', 'MOVIL'),
(9, '96385274I', '852741963', 'CASA'),
(10, '75395146J', '147258369', 'MOVIL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` int(11) NOT NULL,
  `DNI` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `DNI`) VALUES
(1, '12345678A'),
(4, '12398745D'),
(7, '14725836G'),
(5, '56473829E'),
(6, '74859632F'),
(10, '75395146J'),
(8, '85296374H'),
(2, '87654321B'),
(9, '96385274I'),
(3, '98765432C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_clase`
--

CREATE TABLE `usuario_clase` (
  `ID_USUARIO` int(11) NOT NULL,
  `ID_CLASE` int(11) NOT NULL,
  `FECHA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_clase`
--

INSERT INTO `usuario_clase` (`ID_USUARIO`, `ID_CLASE`, `FECHA`) VALUES
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rutina`
--

CREATE TABLE `usuario_rutina` (
  `ID_RUTINA` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_rutina`
--

INSERT INTO `usuario_rutina` (`ID_RUTINA`, `ID_USUARIO`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`ID_CLASE`),
  ADD KEY `SALA` (`SALA`);

--
-- Indices de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  ADD PRIMARY KEY (`ID_EJERCICIO`),
  ADD UNIQUE KEY `NOMBRE` (`NOMBRE`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`ID_EMPLEADO`),
  ADD KEY `DNI` (`DNI`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`ID_HORARIO`),
  ADD KEY `ID_EMPLEADO` (`ID_EMPLEADO`);

--
-- Indices de la tabla `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`ID_MONITOR`),
  ADD KEY `ID_EMPLEADO` (`ID_EMPLEADO`);

--
-- Indices de la tabla `monitor_clase`
--
ALTER TABLE `monitor_clase`
  ADD KEY `ID_MONITOR` (`ID_MONITOR`),
  ADD KEY `ID_CLASE` (`ID_CLASE`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`DNI`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indices de la tabla `rutina`
--
ALTER TABLE `rutina`
  ADD PRIMARY KEY (`ID_RUTINA`),
  ADD UNIQUE KEY `NOMBRE` (`NOMBRE`);

--
-- Indices de la tabla `rutina_ejercicio`
--
ALTER TABLE `rutina_ejercicio`
  ADD PRIMARY KEY (`ID_RUTINA_EJERCICIO`),
  ADD KEY `ID_RUTINA` (`ID_RUTINA`),
  ADD KEY `ID_EJERCICIO` (`ID_EJERCICIO`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`ID_SALA`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`ID_TELEFONO`),
  ADD KEY `DNI` (`DNI`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD KEY `DNI` (`DNI`);

--
-- Indices de la tabla `usuario_clase`
--
ALTER TABLE `usuario_clase`
  ADD PRIMARY KEY (`ID_USUARIO`,`ID_CLASE`,`FECHA`),
  ADD KEY `ID_CLASE` (`ID_CLASE`);

--
-- Indices de la tabla `usuario_rutina`
--
ALTER TABLE `usuario_rutina`
  ADD PRIMARY KEY (`ID_RUTINA`,`ID_USUARIO`),
  ADD KEY `ID_USUARIO` (`ID_USUARIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `ID_CLASE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `ejercicio`
--
ALTER TABLE `ejercicio`
  MODIFY `ID_EJERCICIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `ID_EMPLEADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `ID_HORARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `monitor`
--
ALTER TABLE `monitor`
  MODIFY `ID_MONITOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `rutina`
--
ALTER TABLE `rutina`
  MODIFY `ID_RUTINA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `rutina_ejercicio`
--
ALTER TABLE `rutina_ejercicio`
  MODIFY `ID_RUTINA_EJERCICIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `sala`
--
ALTER TABLE `sala`
  MODIFY `ID_SALA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `ID_TELEFONO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clase`
--
ALTER TABLE `clase`
  ADD CONSTRAINT `clase_ibfk_1` FOREIGN KEY (`SALA`) REFERENCES `sala` (`ID_SALA`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `persona` (`DNI`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`ID_EMPLEADO`) REFERENCES `empleado` (`ID_EMPLEADO`);

--
-- Filtros para la tabla `monitor`
--
ALTER TABLE `monitor`
  ADD CONSTRAINT `monitor_ibfk_1` FOREIGN KEY (`ID_EMPLEADO`) REFERENCES `empleado` (`ID_EMPLEADO`);

--
-- Filtros para la tabla `monitor_clase`
--
ALTER TABLE `monitor_clase`
  ADD CONSTRAINT `monitor_clase_ibfk_1` FOREIGN KEY (`ID_MONITOR`) REFERENCES `monitor` (`ID_MONITOR`),
  ADD CONSTRAINT `monitor_clase_ibfk_2` FOREIGN KEY (`ID_CLASE`) REFERENCES `clase` (`ID_CLASE`);

--
-- Filtros para la tabla `rutina_ejercicio`
--
ALTER TABLE `rutina_ejercicio`
  ADD CONSTRAINT `rutina_ejercicio_ibfk_1` FOREIGN KEY (`ID_RUTINA`) REFERENCES `rutina` (`ID_RUTINA`) ON DELETE CASCADE,
  ADD CONSTRAINT `rutina_ejercicio_ibfk_2` FOREIGN KEY (`ID_EJERCICIO`) REFERENCES `ejercicio` (`ID_EJERCICIO`);

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `telefono_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `persona` (`DNI`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `persona` (`DNI`);

--
-- Filtros para la tabla `usuario_clase`
--
ALTER TABLE `usuario_clase`
  ADD CONSTRAINT `usuario_clase_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `usuario_clase_ibfk_2` FOREIGN KEY (`ID_CLASE`) REFERENCES `clase` (`ID_CLASE`);

--
-- Filtros para la tabla `usuario_rutina`
--
ALTER TABLE `usuario_rutina`
  ADD CONSTRAINT `usuario_rutina_ibfk_1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `usuario` (`ID_USUARIO`),
  ADD CONSTRAINT `usuario_rutina_ibfk_2` FOREIGN KEY (`ID_RUTINA`) REFERENCES `rutina` (`ID_RUTINA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
