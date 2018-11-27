-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-11-2018 a las 16:07:08
-- Versión del servidor: 5.7.21-log
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `criticgames`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `idComentario` int(11) NOT NULL,
  `idUsuario` int(255) NOT NULL,
  `idVideojuego` int(255) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL,
  `nombreGenero` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`idGenero`, `nombreGenero`) VALUES
(1, 'Accion'),
(2, 'Lucha'),
(3, 'Beat \'em up'),
(4, 'Arcade'),
(5, 'Plataformas'),
(6, 'Firs Person Shooter'),
(7, 'ThirdPerson Shooter'),
(8, 'Shoot \'em up'),
(9, 'Shooter'),
(10, 'Estrategia'),
(11, 'Estrategia en tiempo real'),
(12, 'Estrategia por turnos'),
(13, 'Simulación'),
(14, 'Simulación de vehículos'),
(15, 'Simulación de construcción'),
(16, 'Simulación de vida'),
(17, 'Simulación de combate'),
(18, 'Deportes'),
(19, 'Carreras'),
(20, 'Aventura'),
(21, 'Aventura conversacional'),
(22, 'Aventura gráfica'),
(23, 'Acción-aventura'),
(24, 'Survival horror'),
(25, 'Sigilo'),
(26, 'Rol'),
(27, 'Sandbox'),
(28, 'Musical'),
(29, 'Puzzle'),
(30, 'Party-games'),
(31, 'Educación'),
(32, 'RPG'),
(33, 'JRPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista`
--

CREATE TABLE `lista` (
  `idLista` int(11) NOT NULL,
  `idUsuario` int(255) NOT NULL,
  `nombreLista` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descrLista` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma`
--

CREATE TABLE `plataforma` (
  `idPlataforma` int(11) NOT NULL,
  `nombrePlat` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plataforma`
--

INSERT INTO `plataforma` (`idPlataforma`, `nombrePlat`) VALUES
(1, 'Xbox One'),
(2, 'Play Station 4'),
(3, 'Nintendo Switch'),
(4, 'PC'),
(5, 'iOS'),
(6, 'MacOS'),
(7, 'Android'),
(8, 'Windows 10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nick` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `clave` int(20) NOT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nick`, `nombre`, `clave`, `email`) VALUES
(1, 'prueba', 'prueba', 123, 'eoijfv@ief.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `idJuego` int(255) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `desarrolladora` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `publisher` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `anno` int(255) DEFAULT NULL,
  `nota` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`idJuego`, `titulo`, `desarrolladora`, `publisher`, `anno`, `nota`) VALUES
(1, 'Red dead redemption 2', 'Rockstar Studios', 'Take-Two Interactive', 2018, NULL),
(2, 'Dragon Quest XI: Ecos de un pasado perdido', 'Square Enix', 'Square Enix', 2018, NULL),
(3, 'Return of the Obra Dinn', '3909 LLC', '3909 LLC', 2018, NULL),
(9, 'Fifa 19', 'EA Sports', 'EA', 2018, NULL),
(10, 'Super Smash Bros: Ultimate', 'Nintendo', 'Nintendo', 2018, NULL),
(11, 'OverWatch', 'Blizzard Entertainment', 'Blizzard Entertainment', 2016, NULL),
(12, 'Grand theft Auto V', 'Rockstar Studios', 'Take-Two Interactive', 2013, NULL),
(13, 'Super Mario Oddyssey', 'Nintendo', 'Nintendo', 2017, NULL),
(14, 'Fortnite', 'Epic Games', 'Epic Games', 2017, NULL),
(15, 'Marvel\'s Spiderman', 'Insomniac Games', 'Sony Interactive Entertainment', 2018, NULL),
(16, 'God of War', 'Santa Monica Studio', 'Sony Interactive Entertainment', 2018, NULL),
(17, 'Soul Calibur VI', 'Bandai Namco entertainment', 'Bandai Namco Entertainment', 2018, NULL),
(18, 'Super Mario Party', 'Nintendo', 'Nintendo', 2018, NULL),
(19, 'FrostPunk', '11 bit studios', '11 bit studios', 2018, NULL),
(20, 'Spyro Reignited Trilogy', 'Toys for Bob', 'Sony Interactive Entertainment', 2018, NULL),
(21, 'Forza Horizon 4', 'Playground Games', 'Microsoft Studios', 2018, NULL),
(22, 'Call of Duty Black Ops IIII', 'Treyarch', 'Activision', 2018, NULL),
(23, 'Warcraft III: Reforged', 'Blizzard', 'Blizzard', 2019, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vidgen`
--

CREATE TABLE `vidgen` (
  `idVidGen` int(11) NOT NULL,
  `idJuego` int(255) NOT NULL,
  `idGenero` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `vidgen`
--

INSERT INTO `vidgen` (`idVidGen`, `idJuego`, `idGenero`) VALUES
(1, 1, 23),
(2, 1, 6),
(3, 1, 7),
(4, 2, 33),
(5, 3, 20),
(6, 3, 29),
(7, 9, 18),
(8, 10, 2),
(9, 11, 6),
(10, 12, 23),
(11, 12, 27),
(12, 1, 27),
(13, 13, 4),
(14, 13, 5),
(15, 13, 27),
(16, 14, 7),
(17, 15, 27),
(18, 15, 23),
(19, 16, 23),
(20, 17, 2),
(21, 18, 30),
(22, 19, 11),
(23, 20, 5),
(24, 21, 19),
(25, 21, 27),
(26, 22, 6),
(27, 23, 11),
(28, 23, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vidlist`
--

CREATE TABLE `vidlist` (
  `idVidList` int(11) NOT NULL,
  `idJuego` int(255) NOT NULL,
  `idLista` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vidplat`
--

CREATE TABLE `vidplat` (
  `idVidPlat` int(11) NOT NULL,
  `idJuego` int(255) NOT NULL,
  `idPlataforma` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `vidplat`
--

INSERT INTO `vidplat` (`idVidPlat`, `idJuego`, `idPlataforma`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 2, 4),
(4, 2, 2),
(5, 2, 1),
(6, 3, 4),
(7, 9, 7),
(8, 9, 3),
(9, 9, 4),
(10, 9, 2),
(11, 9, 1),
(12, 10, 3),
(13, 11, 4),
(14, 11, 1),
(15, 11, 2),
(16, 12, 1),
(17, 12, 2),
(18, 12, 4),
(19, 13, 3),
(20, 14, 1),
(21, 14, 2),
(22, 14, 3),
(23, 14, 4),
(24, 14, 5),
(25, 14, 7),
(26, 15, 2),
(27, 16, 2),
(28, 17, 1),
(29, 17, 2),
(30, 17, 4),
(31, 18, 3),
(32, 19, 4),
(33, 20, 2),
(34, 21, 1),
(35, 21, 8),
(36, 22, 1),
(37, 22, 2),
(38, 22, 4),
(39, 23, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idComentario`),
  ADD KEY `comentarios_ibfk_1` (`idUsuario`),
  ADD KEY `comentarios_ibfk_2` (`idVideojuego`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indices de la tabla `lista`
--
ALTER TABLE `lista`
  ADD PRIMARY KEY (`idLista`),
  ADD KEY `lista_ibfk_1` (`idUsuario`);

--
-- Indices de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`idPlataforma`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`idJuego`);

--
-- Indices de la tabla `vidgen`
--
ALTER TABLE `vidgen`
  ADD PRIMARY KEY (`idVidGen`),
  ADD KEY `vidgen_ibfk_1` (`idJuego`),
  ADD KEY `vidgen_ibfk_2` (`idGenero`);

--
-- Indices de la tabla `vidlist`
--
ALTER TABLE `vidlist`
  ADD PRIMARY KEY (`idVidList`),
  ADD KEY `vidlist_ibfk_1` (`idJuego`),
  ADD KEY `vidlist_ibfk_2` (`idLista`);

--
-- Indices de la tabla `vidplat`
--
ALTER TABLE `vidplat`
  ADD PRIMARY KEY (`idVidPlat`),
  ADD KEY `vidplat_ibfk_1` (`idPlataforma`),
  ADD KEY `vidplat_ibfk_2` (`idJuego`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `idGenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `lista`
--
ALTER TABLE `lista`
  MODIFY `idLista` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `idPlataforma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  MODIFY `idJuego` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `vidgen`
--
ALTER TABLE `vidgen`
  MODIFY `idVidGen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `vidlist`
--
ALTER TABLE `vidlist`
  MODIFY `idVidList` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vidplat`
--
ALTER TABLE `vidplat`
  MODIFY `idVidPlat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`idVideojuego`) REFERENCES `videojuegos` (`idJuego`);

--
-- Filtros para la tabla `lista`
--
ALTER TABLE `lista`
  ADD CONSTRAINT `lista_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`);

--
-- Filtros para la tabla `vidgen`
--
ALTER TABLE `vidgen`
  ADD CONSTRAINT `vidgen_ibfk_1` FOREIGN KEY (`idJuego`) REFERENCES `videojuegos` (`idJuego`),
  ADD CONSTRAINT `vidgen_ibfk_2` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idGenero`);

--
-- Filtros para la tabla `vidlist`
--
ALTER TABLE `vidlist`
  ADD CONSTRAINT `vidlist_ibfk_1` FOREIGN KEY (`idJuego`) REFERENCES `videojuegos` (`idJuego`),
  ADD CONSTRAINT `vidlist_ibfk_2` FOREIGN KEY (`idLista`) REFERENCES `lista` (`idLista`);

--
-- Filtros para la tabla `vidplat`
--
ALTER TABLE `vidplat`
  ADD CONSTRAINT `vidplat_ibfk_1` FOREIGN KEY (`idPlataforma`) REFERENCES `plataforma` (`idPlataforma`),
  ADD CONSTRAINT `vidplat_ibfk_2` FOREIGN KEY (`idJuego`) REFERENCES `videojuegos` (`idJuego`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
