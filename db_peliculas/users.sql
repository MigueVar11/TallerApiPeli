-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2024 a las 06:40:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peliculas-api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ms. Madonna Walsh', 'roob.armani@example.org', '2024-10-17 05:36:41', '$2y$12$XK5UpnKKyCqHz.CDYrTsxOuUdqN2rtFZY6Y38mXlRmwQ2WluoM93u', 'ObP2O5dENY', '2024-10-17 05:36:41', '2024-10-17 05:36:41'),
(2, 'Madge Krajcik DDS', 'pagac.talia@example.org', '2024-10-17 05:36:41', '$2y$12$XK5UpnKKyCqHz.CDYrTsxOuUdqN2rtFZY6Y38mXlRmwQ2WluoM93u', 'JkOr5CM4Fr', '2024-10-17 05:36:41', '2024-10-17 05:36:41'),
(3, 'Eli Schmeler', 'feeney.lindsay@example.org', '2024-10-17 05:36:41', '$2y$12$XK5UpnKKyCqHz.CDYrTsxOuUdqN2rtFZY6Y38mXlRmwQ2WluoM93u', 'iWDXd69lof', '2024-10-17 05:36:41', '2024-10-17 05:36:41'),
(4, 'Yadira Stehr', 'lilian.schiller@example.org', '2024-10-17 05:36:41', '$2y$12$XK5UpnKKyCqHz.CDYrTsxOuUdqN2rtFZY6Y38mXlRmwQ2WluoM93u', 'oirJum3bVj', '2024-10-17 05:36:41', '2024-10-17 05:36:41'),
(5, 'Mr. Lee Hauck MD', 'wconn@example.org', '2024-10-17 05:36:41', '$2y$12$XK5UpnKKyCqHz.CDYrTsxOuUdqN2rtFZY6Y38mXlRmwQ2WluoM93u', 'okFRr1bKTt', '2024-10-17 05:36:41', '2024-10-17 05:36:41'),
(6, 'Mrs. Elena Douglas', 'elvera.bogan@example.net', '2024-10-17 05:36:41', '$2y$12$XK5UpnKKyCqHz.CDYrTsxOuUdqN2rtFZY6Y38mXlRmwQ2WluoM93u', 'uWgdlGZhuI', '2024-10-17 05:36:41', '2024-10-17 05:36:41'),
(7, 'Mr. Jeffery Emard Jr.', 'anastasia02@example.org', '2024-10-17 05:36:41', '$2y$12$XK5UpnKKyCqHz.CDYrTsxOuUdqN2rtFZY6Y38mXlRmwQ2WluoM93u', 'otf3yNifUZ', '2024-10-17 05:36:41', '2024-10-17 05:36:41'),
(8, 'Blake Tromp', 'humberto65@example.org', '2024-10-17 05:36:41', '$2y$12$XK5UpnKKyCqHz.CDYrTsxOuUdqN2rtFZY6Y38mXlRmwQ2WluoM93u', '6q0aUC5e2I', '2024-10-17 05:36:41', '2024-10-17 05:36:41'),
(9, 'Dayna Flatley', 'pattie91@example.org', '2024-10-17 05:36:41', '$2y$12$XK5UpnKKyCqHz.CDYrTsxOuUdqN2rtFZY6Y38mXlRmwQ2WluoM93u', 'KVrna7sT9Z', '2024-10-17 05:36:41', '2024-10-17 05:36:41'),
(10, 'Rowan Nitzsche', 'janae.johnston@example.net', '2024-10-17 05:36:41', '$2y$12$XK5UpnKKyCqHz.CDYrTsxOuUdqN2rtFZY6Y38mXlRmwQ2WluoM93u', 'XLeNfuUdBp', '2024-10-17 05:36:41', '2024-10-17 05:36:41'),
(11, 'Miguel Vargas', 'miguelonvar11@hotmail.com', '2024-10-07 04:08:40', 'oncecaldas11', 'holamundo11', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
