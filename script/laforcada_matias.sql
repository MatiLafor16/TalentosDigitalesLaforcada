-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2023 a las 02:40:41
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laforcada_matias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfiles` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfiles`, `descripcion`) VALUES
(1, 'admin'),
(2, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `cod_producto` int(11) NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `cod_producto`, `nombre_producto`, `descripcion`, `precio`, `stock`, `categoria_id`, `imagen`) VALUES
(1, 12345678, 'Mom gris', 'Jean mom con rotura', 15000.00, 1, 2, 'jean1.webp'),
(2, 87654321, 'Cargo azul', 'Jean cargo jogger', 12600.00, 12, 2, 'jean2.webp'),
(4, 6666, 'Rotura celeste', 'Jean mom con rotura', 13000.00, 16, 2, 'jean3.webp'),
(7, 990099, 'Luna gris', 'Remera con estampa de lunas', 9000.00, 14, 1, 'remera1.jpg'),
(8, 45455, 'Esqueleto negra', 'Remera con estampa de esqueleto', 7000.00, 5, 1, 'remera2.jpg'),
(9, 47777, 'Car blanca', 'Remera con estampa de car', 8000.00, 7, 1, 'remera3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_categoria`
--

CREATE TABLE `producto_categoria` (
  `id_categoria` int(11) NOT NULL,
  `descripcion_categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto_categoria`
--

INSERT INTO `producto_categoria` (`id_categoria`, `descripcion_categoria`) VALUES
(1, 'Remeras'),
(2, 'Jeans');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT 2,
  `baja` varchar(2) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `email`, `pass`, `perfil_id`, `baja`) VALUES
(1, 'Matias', 'Laforcada', 'AdminM', 'AdminM@gmail.com', '$2y$10$e/U6zZl95zM4UszgIDVJE.o/PdnRlq8VbNmcQl5/pcwGghZshxtru', 1, 'NO'),
(14, 'Teresita', 'Farias', 'Teresita', 'terifarias@gmail.com', '$2y$10$/86hjM7Sz2q87cwWllsoXuEJ5tIJKstX3iEVHMN1eWcVi1PpHbdjG', 2, 'NO'),
(15, 'Cristina', 'Farias', 'Cristina', 'cristifarias@gmail.com', '$2y$10$YfNXQJ5uHuN5pOG3liqFVuFhVb8Ju1MR1rhVqf4UAD9tOVpoJLU6G', 2, 'NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfiles`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `producto_categoria`
--
ALTER TABLE `producto_categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfiles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
