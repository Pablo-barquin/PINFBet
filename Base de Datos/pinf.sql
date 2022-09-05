-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2021 a las 17:36:53
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pinf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amistades`
--

CREATE TABLE `amistades` (
  `usuario1` int(11) NOT NULL,
  `usuario2` int(11) NOT NULL,
  `solicitud` tinyint(1) NOT NULL,
  `amigos` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `amistades`
--

INSERT INTO `amistades` (`usuario1`, `usuario2`, `solicitud`, `amigos`) VALUES
(138, 139, 1, 1),
(138, 140, 1, 0),
(138, 144, 1, 1),
(138, 146, 1, 0),
(139, 138, 1, 1),
(139, 140, 1, 0),
(139, 144, 1, 1),
(139, 145, 1, 1),
(139, 146, 1, 1),
(140, 144, 1, 1),
(141, 140, 1, 0),
(141, 144, 1, 0),
(142, 144, 1, 0),
(143, 145, 1, 1),
(144, 138, 1, 1),
(144, 139, 1, 1),
(144, 140, 1, 1),
(144, 146, 1, 1),
(145, 139, 1, 1),
(145, 143, 1, 1),
(146, 139, 1, 1),
(146, 144, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apuestas`
--

CREATE TABLE `apuestas` (
  `id_user` int(11) NOT NULL,
  `id_apuesta` int(11) NOT NULL,
  `id_apostado` int(11) NOT NULL,
  `cod_apuesta` int(11) NOT NULL,
  `cantidad_apostada` int(11) NOT NULL,
  `resultado_user` int(11) NOT NULL,
  `fecha_apuesta` date NOT NULL DEFAULT current_timestamp(),
  `resultado_final` int(11) NOT NULL,
  `cantidad_resultado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `apuestas`
--

INSERT INTO `apuestas` (`id_user`, `id_apuesta`, `id_apostado`, `cod_apuesta`, `cantidad_apostada`, `resultado_user`, `fecha_apuesta`, `resultado_final`, `cantidad_resultado`) VALUES
(138, 1, 138, 1381138, 10, 1, '2021-01-16', 1, 17),
(139, 9, 139, 1399139, 5, -1, '2021-01-16', 0, 0),
(141, 2, 141, 1412141, 50, 1, '2021-01-16', 0, 0),
(141, 5, 141, 1415141, 2, -1, '2021-01-16', 0, 0),
(140, 24, 140, 14024140, 40, 1, '2021-01-16', 0, 0),
(144, 24, 138, 14424138, 25, 1, '2021-01-16', 0, 0),
(144, 24, 139, 14424139, 25, 1, '2021-01-16', 0, 0),
(144, 24, 140, 14424140, 25, 1, '2021-01-16', 0, 0),
(144, 24, 146, 14424146, 25, 1, '2021-01-16', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apuestasdisponibles`
--

CREATE TABLE `apuestasdisponibles` (
  `nombre` varchar(100) NOT NULL,
  `nombre_resumido` varchar(100) NOT NULL,
  `id_apuesta` int(11) NOT NULL,
  `cuota_aprobado` float NOT NULL,
  `cuota_suspenso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `apuestasdisponibles`
--

INSERT INTO `apuestasdisponibles` (`nombre`, `nombre_resumido`, `id_apuesta`, `cuota_aprobado`, `cuota_suspenso`) VALUES
('Matemáticas discretas - Febrero - 1.75/1.05', 'MD', 1, 1.75, 1.05),
('Fundamento en Estructura de Computadores - Febrero - 1.7/1.08', 'FEC', 2, 1.7, 1.08),
('Sistemas Operativos - Febrero - 1.1/1.3', 'SO', 3, 1.1, 1.3),
('Sistemas Digitales - Febrero - 1.2/1.4', 'SDIG', 4, 1.2, 1.4),
('Introducción a la Programación  - Febrero - 1.4/1.2', 'IP', 5, 1.4, 1.2),
('Cálculo - Febrero - 1.5/1.1', 'CAL', 6, 1.5, 1.1),
('Informática General - Febrero - 1.1/1.4', 'IG', 7, 1.1, 1.4),
('Álgebra - Febrero - 1.4/1.3', 'ALG', 8, 1.4, 1.3),
('Fundamentos Físicos y Electrónicos de la Informática - Febrero - 1.6/1.2', 'FFE', 9, 1.6, 1.2),
('Metodología de la Programación - Febrero - 1.7/1.05', 'MP', 10, 1.7, 1.05),
('Estadística  - Febrero - 1.1/1.2', 'EST', 11, 1.1, 1.2),
('Arquitectura de Computadores - Febrero - 1.4/1.2', 'AC', 12, 1.4, 1.2),
('Organización y Gestión de Empresas - Febrero - 1.1/1.4', 'OGE', 13, 1.1, 1.4),
('Análisis de Algoritmos y Estructura de Datos - Febrero - 1.1/1.4', 'AAED', 14, 2, 1.01),
('Redes de Computadores - Febrero - 1.3/1.1', 'RC', 15, 1.3, 1.1),
('Programación Orientada a Objetos - Febrero - 2.1/1.01', 'POO', 16, 2.1, 1.01),
('Ingeniería del Software - Febrero - 1.2/1.5', 'IS', 17, 1.2, 1.5),
('Estructura de Datos no Lineales - Febrero - 2.5/1.01', 'EDNL', 18, 2.5, 1.01),
('Sistemas Distribuidos - Febrero - 1.3/1.5', 'SD', 19, 1.3, 1.5),
('Bases de Datos - Febrero - 1.3/1.2', 'BD', 20, 1.3, 1.2),
('Inteligencia Artificial - Febrero - 1.4/1.1', 'IA', 21, 1.4, 1.1),
('Seguridad en los Sistemas Informáticos  - Febrero - 1.2/2', 'SSI', 22, 1.2, 2),
('Proyectos Informáticos  - Febrero - 1.2/1.6', 'PINF', 24, 1.2, 1.6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chats`
--

CREATE TABLE `chats` (
  `id_chat` int(11) NOT NULL,
  `usuario1` int(11) NOT NULL,
  `usuario2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `muros`
--

CREATE TABLE `muros` (
  `id_mensaje` int(11) NOT NULL,
  `usuario_env` int(11) NOT NULL,
  `usuario_rec` int(11) NOT NULL,
  `mensaje` varchar(300) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `muros`
--

INSERT INTO `muros` (`id_mensaje`, `usuario_env`, `usuario_rec`, `mensaje`, `fecha`) VALUES
(33, 140, 140, 'Me encanta apostar!', '2021-01-16 16:24:10'),
(34, 141, 141, 'Me gustan los perros', '2021-01-16 16:27:10'),
(35, 144, 144, '¡Viva la UCA!', '2021-01-16 16:35:10'),
(36, 144, 144, 'Esto si que es un muro bien hecho!!! :D', '2021-01-16 16:38:52'),
(37, 139, 144, 'Di que sí profesor :D !! ', '2021-01-16 17:18:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `cod_resultado` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_apuesta` int(11) NOT NULL,
  `resultado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`cod_resultado`, `id_user`, `id_apuesta`, `resultado`) VALUES
(1381, 138, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '''Nombre no introducido''',
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nacimiento` date DEFAULT NULL,
  `sexo` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `pinfcoins` int(11) NOT NULL DEFAULT 0,
  `profile_image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `bio` text NOT NULL DEFAULT '\'Bio no añadida\'',
  `privacidad` tinyint(1) NOT NULL DEFAULT 0,
  `admin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `nacimiento`, `sexo`, `created_at`, `pinfcoins`, `profile_image`, `bio`, `privacidad`, `admin`) VALUES
(138, 'Raul Arcos Herrera', 'RaulArcos', '$2y$10$P9yCVyv1uTrFCt/NEYfsguZ4Y2BrSclCU7pIP9jJ/XeEiItOzrsVa', 'raul@gmail.com', NULL, '', '2021-01-16 03:04:54', 88, '1610762749-my little pony.png', 'Apostar me es un problema, ayuda.', 0, 1),
(139, 'Pablo', 'pablo-barquin', '$2y$10$22c7kh/7X9iv/Jx0qdeplebB/SyUVfjUq/W4QxLPtDmeJ09RG1Xsy', 'pablo.velibarquin@alum.uca.es', NULL, '', '2021-01-16 15:43:16', 94, '1610814790-WhatsApp Image 2019-07-06 at 16.00.03_03 (2).jpg', 'Creador Front-End del proyecto 5&Bet', 0, 1),
(140, 'Jesus Lagares', 'Lagares', '$2y$10$QmJQG0xQIvWWv8GWPZtjoedbfqVTJtzRqv7tPtzjg6qL7TBZZuPsS', 'zeragal@gmail.com', NULL, '', '2021-01-16 16:23:37', 60, '1610810672-WhatsApp Image 2021-01-12 at 17.49.25.jpeg', 'Yo juego para ganar, tu si quieres participa. ', 0, 1),
(141, 'Carmen Lagares', 'Carmen', '$2y$10$csY6srA3KE3I/srIXdtnkencvEFXK8S7ZRd.QSU/FV8e3gxsNy.KW', 'yayova5304@sofiarae.com', NULL, '', '2021-01-16 16:26:29', 48, '1610810877-1_FNghpM3llxbk9SFi9ymPug.jpeg', 'Blacky<3', 0, 0),
(142, 'Manuel Recio', 'Manuel', '$2y$10$4caYWsuRfgDVXwjbW5qcAumhJUnHa4pkThliIRqaqBUSFJfrQeNYu', 'nonira6997@majorsww.com', NULL, '', '2021-01-16 16:30:22', 0, '1610811079-manuel.png', 'Manordeitor17 - Plata IV (main supp)', 0, 0),
(143, 'Teresa', 'Tsupervielle', '$2y$10$6pmpsnBhGTZEOuMy6ElJv.vRDvpVIJoXwtEGZ5UC6o1dhFu1UMoES', 'teresa.superviellesanchez@gmail.com', NULL, '', '2021-01-16 16:30:51', 0, '1610811556-IMG-20180707-WA0030.jpg', 'Me gustan los gatitos :D', 1, 0),
(144, 'Proyectos Informaticos', 'Profesor', '$2y$10$JFW.xbl2ssKKssU/aecYW.cJcU/hjmC0hxxhnOS7zD8jR9O7fLzvK', 'lotoci1968@maksap.com', NULL, '', '2021-01-16 16:33:29', 75, '1610811286-uca-logo.png', 'Proyectos Informaticos (6 creditos)', 0, 0),
(145, 'Jose Manuel', 'Jmveba94', '$2y$10$uvGycVhx2s2GAmOj2hGl5Ohx2maAs1S6YdvOO7q3Iouh3.ic2jt2O', 'jmveba94@gmail.com', NULL, '', '2021-01-16 16:33:58', 0, '1610811370-cWTtIRFy_400x400.jpg', 'Soy Guardia Civil', 1, 0),
(146, 'Juan de la Cruz', 'juan_cruz', '$2y$10$sa7m7JaXdp//3.ROXAPom.VZUxPfjd4CwZ9tpqwo549d2R9/33.L2', 'correitomio@correo.es', NULL, '', '2021-01-16 16:51:25', 0, '1610812490-IkELyYnI_400x400.jpg', 'Holita a todos', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amistades`
--
ALTER TABLE `amistades`
  ADD PRIMARY KEY (`usuario1`,`usuario2`);

--
-- Indices de la tabla `apuestas`
--
ALTER TABLE `apuestas`
  ADD PRIMARY KEY (`cod_apuesta`);

--
-- Indices de la tabla `apuestasdisponibles`
--
ALTER TABLE `apuestasdisponibles`
  ADD PRIMARY KEY (`id_apuesta`);

--
-- Indices de la tabla `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id_chat`);

--
-- Indices de la tabla `muros`
--
ALTER TABLE `muros`
  ADD PRIMARY KEY (`id_mensaje`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
  ADD PRIMARY KEY (`cod_resultado`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apuestasdisponibles`
--
ALTER TABLE `apuestasdisponibles`
  MODIFY `id_apuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `chats`
--
ALTER TABLE `chats`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `muros`
--
ALTER TABLE `muros`
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
