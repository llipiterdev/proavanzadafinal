-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2017 a las 10:35:17
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proavanzada`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `documento` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `carrera` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `id_tipo_estudiante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `nombre`, `documento`, `carrera`, `id_tipo_estudiante`) VALUES
(1, 'Brayan Calderon', '1031159042', 'Ingeniería de Sistemas', 1),
(2, 'Pepito Perez', '45987854', 'Ingeniería Química', 1),
(3, 'Vanessa Gomez', '854561455', 'Maestría en Economía', 2),
(4, 'Laura Calderon', '1284526345', 'Doctorado en Ciencias del Mar', 2),
(5, 'Natalia Calderon', '96457452', 'Maestría en Diseño de Producto', 2),
(6, 'Miguel Maceta', '1023732923', 'Diseño Grafico', 1),
(7, 'lola velandia', '12345677753', 'Ingenieria Quimica', 1),
(8, 'Carlos Perez', '000996467', 'Ingeniería de sistemas', 1),
(9, 'saturnus xd', '6666', 'Doctorado en Ciencias del Mar', 2),
(11, 'hahahhah', '1212121212', 'Ingenieria de Sistemas', 1),
(12, 'no se', '666544', 'Doctorado en Ciencias del Mar', 2),
(13, 'nininini', '09090909', 'Doctorado en Ciencias del Mar', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_materia`
--

CREATE TABLE `estudiante_materia` (
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `estudiante_materia`
--

INSERT INTO `estudiante_materia` (`id_estudiante`, `id_materia`) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 2),
(2, 5),
(3, 4),
(3, 5),
(4, 2),
(4, 3),
(5, 5),
(8, 1),
(9, 5),
(11, 1),
(12, 5),
(13, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_horario` int(11) NOT NULL,
  `dia` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id_horario`, `dia`, `hora_inicio`, `hora_fin`) VALUES
(1, 'Lunes', '07:00:00', '09:00:00'),
(2, 'Lunes', '15:00:00', '17:00:00'),
(3, 'Martes', '11:00:00', '13:00:00'),
(4, 'Martes', '18:00:00', '20:00:00'),
(5, 'Miercoles', '15:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `salon` varchar(4) COLLATE utf8_spanish2_ci NOT NULL,
  `modulo` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `cupos` int(11) NOT NULL,
  `id_tipo_materia` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `nombre_materia`, `salon`, `modulo`, `cupos`, `id_tipo_materia`, `id_horario`) VALUES
(1, 'Programación avanzada', '505', '7A', 1, 1, 1),
(2, 'Calculo integral', '301', '7', 1, 1, 3),
(3, 'Administración de alta gerencia', '705', '21', 0, 2, 4),
(4, 'Lógica combinatoria', '301', '2', 3, 2, 2),
(5, 'Física cuántica ', '404', '2', 0, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id_profesor` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `documento` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `id_tipo_profesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `nombre`, `documento`, `id_tipo_profesor`) VALUES
(1, 'Carlos Torres', '7854561425', 1),
(2, 'Ximena Gonzales', '852014004', 2),
(3, 'Pablo Caicedo', '78952014', 1),
(4, 'Olga Bustamante', '1456361878', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_materia`
--

CREATE TABLE `profesor_materia` (
  `id_profesor` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `profesor_materia`
--

INSERT INTO `profesor_materia` (`id_profesor`, `id_materia`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(2, 5),
(3, 1),
(3, 4),
(4, 4),
(4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_estudiante`
--

CREATE TABLE `tipo_estudiante` (
  `id_tipo_estudiante` int(11) NOT NULL,
  `tipo_estudiante` varchar(45) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_estudiante`
--

INSERT INTO `tipo_estudiante` (`id_tipo_estudiante`, `tipo_estudiante`) VALUES
(1, 'Pregrado'),
(2, 'Posgrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_materia`
--

CREATE TABLE `tipo_materia` (
  `id_tipo_materia` int(11) NOT NULL,
  `tipo_materia` varchar(45) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_materia`
--

INSERT INTO `tipo_materia` (`id_tipo_materia`, `tipo_materia`) VALUES
(1, 'Pregrado'),
(2, 'Posgrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_profesor`
--

CREATE TABLE `tipo_profesor` (
  `id_tipo_profesor` int(11) NOT NULL,
  `tipo_profesor` varchar(45) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_profesor`
--

INSERT INTO `tipo_profesor` (`id_tipo_profesor`, `tipo_profesor`) VALUES
(1, 'Catedra'),
(2, 'Vinculación');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `fk_tipo_estudiante_idx` (`id_tipo_estudiante`);

--
-- Indices de la tabla `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
  ADD PRIMARY KEY (`id_estudiante`,`id_materia`),
  ADD KEY `fk_estudiante_has_materia_materia1_idx` (`id_materia`),
  ADD KEY `fk_estudiante_has_materia_estudiante1_idx` (`id_estudiante`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `fk_tipo_materia_idx` (`id_tipo_materia`),
  ADD KEY `fk_horario_idx` (`id_horario`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id_profesor`),
  ADD KEY `fk_tipo_profesor_idx` (`id_tipo_profesor`);

--
-- Indices de la tabla `profesor_materia`
--
ALTER TABLE `profesor_materia`
  ADD PRIMARY KEY (`id_profesor`,`id_materia`),
  ADD KEY `fk_profesor_has_materia_materia1_idx` (`id_materia`),
  ADD KEY `fk_profesor_has_materia_profesor1_idx` (`id_profesor`);

--
-- Indices de la tabla `tipo_estudiante`
--
ALTER TABLE `tipo_estudiante`
  ADD PRIMARY KEY (`id_tipo_estudiante`);

--
-- Indices de la tabla `tipo_materia`
--
ALTER TABLE `tipo_materia`
  ADD PRIMARY KEY (`id_tipo_materia`);

--
-- Indices de la tabla `tipo_profesor`
--
ALTER TABLE `tipo_profesor`
  ADD PRIMARY KEY (`id_tipo_profesor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tipo_estudiante`
--
ALTER TABLE `tipo_estudiante`
  MODIFY `id_tipo_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipo_profesor`
--
ALTER TABLE `tipo_profesor`
  MODIFY `id_tipo_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `fk_tipo_estudiante` FOREIGN KEY (`id_tipo_estudiante`) REFERENCES `tipo_estudiante` (`id_tipo_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
  ADD CONSTRAINT `fk_estudiante_has_materia_estudiante1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_estudiante_has_materia_materia1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `fk_horario` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id_horario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tipo_materia` FOREIGN KEY (`id_tipo_materia`) REFERENCES `tipo_materia` (`id_tipo_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `fk_tipo_profesor` FOREIGN KEY (`id_tipo_profesor`) REFERENCES `tipo_profesor` (`id_tipo_profesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `profesor_materia`
--
ALTER TABLE `profesor_materia`
  ADD CONSTRAINT `fk_profesor_has_materia_materia1` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_profesor_has_materia_profesor1` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_profesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
