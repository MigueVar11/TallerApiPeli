-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2024 a las 06:39:36
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
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `año` int(11) NOT NULL,
  `director` varchar(255) NOT NULL,
  `calificacion` decimal(3,2) NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `fecha_estreno` date NOT NULL,
  `generos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generos`)),
  `url_poster` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `descripcion`, `año`, `director`, `calificacion`, `disponible`, `fecha_estreno`, `generos`, `url_poster`, `created_at`, `updated_at`) VALUES
(1, 'Ducimus voluptas beatae.', 'Maxime molestiae facere blanditiis temporibus. Et rem corporis eius optio sunt id.', 2009, 'Dr. Dudley Carter', 8.09, 1, '2019-02-27', '[\"aut\",\"et\",\"dolorum\"]', 'https://via.placeholder.com/640x480.png/003388?text=odio', '2024-10-16 08:37:52', '2024-10-16 08:37:52'),
(2, 'Consequatur soluta aut.', 'Error perferendis dolor natus et qui. Odit accusantium sint voluptatum cum quo perspiciatis impedit est. Eius omnis molestiae culpa.', 1983, 'Mr. D\'angelo Sporer MD', 0.81, 0, '2017-11-16', '[\"at\",\"tenetur\",\"occaecati\"]', 'https://via.placeholder.com/640x480.png/0033cc?text=quis', '2024-10-16 08:37:52', '2024-10-16 08:37:52'),
(3, 'Aut veniam aut eveniet.', 'Fugit totam neque quia ut ut. Vel voluptatem et deserunt id repellendus explicabo. Mollitia commodi perspiciatis laborum sapiente molestiae est perferendis id.', 2011, 'Prof. Carrie Spencer Jr.', 9.91, 0, '1990-11-20', '[\"occaecati\",\"ratione\",\"facilis\"]', 'https://via.placeholder.com/640x480.png/006622?text=numquam', '2024-10-16 08:37:52', '2024-10-16 08:37:52'),
(4, 'Odio eveniet et aut.', 'Dolorem ut aut natus repellat eligendi quia. Fugit animi sunt nihil excepturi vel. Eos ea impedit officiis in ipsa. Maiores et fuga quam omnis repellat non.', 1981, 'Dr. Waino Hackett I', 4.73, 0, '1974-04-09', '[\"neque\",\"perspiciatis\",\"et\"]', 'https://via.placeholder.com/640x480.png/003311?text=molestiae', '2024-10-16 08:37:52', '2024-10-16 08:37:52'),
(5, 'Asperiores laborum ut sunt.', 'Fuga velit itaque quia voluptatem non omnis amet. Adipisci aut et autem. Nulla voluptatem dolores ipsam. At corporis et aliquam culpa eaque nam.', 1989, 'Georgianna Huel', 1.73, 1, '2024-02-08', '[\"ab\",\"distinctio\",\"provident\"]', 'https://via.placeholder.com/640x480.png/0011ee?text=accusantium', '2024-10-16 08:37:52', '2024-10-16 08:37:52'),
(6, 'Aut velit consequatur sint.', 'Sint debitis deleniti reiciendis harum enim ut. Explicabo quis nisi voluptatem illum vel quis temporibus.', 1994, 'Gage Hahn', 3.96, 1, '2014-03-03', '[\"et\",\"quis\",\"reprehenderit\"]', 'https://via.placeholder.com/640x480.png/002233?text=optio', '2024-10-16 08:37:52', '2024-10-16 08:37:52'),
(7, 'Ipsam voluptatem dolorum.', 'Natus sunt sed odio in accusantium enim eligendi. Ipsa consequatur voluptatum incidunt dolorem qui velit magni. Placeat rerum voluptatem et ullam nesciunt porro. Esse aliquid autem cum suscipit earum atque sunt.', 2018, 'Brain Kutch I', 9.09, 1, '2001-03-22', '[\"placeat\",\"in\",\"deserunt\"]', 'https://via.placeholder.com/640x480.png/008833?text=non', '2024-10-16 08:37:52', '2024-10-16 08:37:52'),
(8, 'Fugit nemo impedit saepe.', 'Aperiam officia sed vel adipisci totam rerum. Nulla animi quia praesentium. Dolores ea sit sed dolores. Est velit vel officia unde labore.', 1980, 'Prof. Morris Waters', 9.21, 0, '2003-10-30', '[\"voluptas\",\"nisi\",\"reiciendis\"]', 'https://via.placeholder.com/640x480.png/00dd00?text=laudantium', '2024-10-16 08:37:52', '2024-10-16 08:37:52'),
(9, 'Ullam et excepturi.', 'Sint ut perferendis enim consequatur fugit fugiat impedit dolorem. Temporibus corporis aliquam quo aut distinctio maxime. Inventore ut quia dolorem ut dolorum non maiores blanditiis.', 2016, 'Ms. Halie Auer MD', 5.34, 1, '2002-07-10', '[\"est\",\"reiciendis\",\"qui\"]', 'https://via.placeholder.com/640x480.png/009911?text=et', '2024-10-16 08:37:52', '2024-10-16 08:37:52'),
(10, 'Vel voluptatem neque et.', 'Similique aut illum dolor non sunt facilis rerum. Omnis qui quia non quo omnis autem. Sed quam temporibus consequatur at at illum. Est debitis eveniet minus consectetur rerum.', 1983, 'Maxwell Gerlach', 6.20, 0, '2015-02-11', '[\"et\",\"nobis\",\"et\"]', 'https://via.placeholder.com/640x480.png/001133?text=soluta', '2024-10-16 08:37:52', '2024-10-16 08:37:52'),
(11, 'Cien años de soledad', 'Es demasiado buena', 2011, 'Maelo Ruiz', 4.10, 1, '2020-10-13', '[\"aut\",\"et\",\"dolorum\"]', 'https://www.sensacine.com/peliculas/', NULL, NULL),
(12, 'Commodi ipsum dolor.', 'Voluptate aut suscipit aperiam illum. In dolorem dolorem nobis voluptatibus ipsa reprehenderit corrupti libero. Maxime quod qui voluptatem iusto dolores voluptas. Voluptates porro vel suscipit nobis.', 2000, 'Miss Rachelle Ratke Jr.', 4.60, 0, '1975-08-09', '[\"consequatur\",\"saepe\",\"rerum\"]', 'https://via.placeholder.com/640x480.png/007755?text=fugit', '2024-10-17 05:20:14', '2024-10-17 05:20:14'),
(13, 'Quasi debitis nobis tempore.', 'Dolorum impedit nam nihil omnis. Optio praesentium tempora rerum asperiores corporis distinctio enim. Sit fugiat rerum placeat.', 2011, 'Izaiah Dietrich', 0.22, 0, '2022-11-30', '[\"excepturi\",\"aliquam\",\"repudiandae\"]', 'https://via.placeholder.com/640x480.png/00dd55?text=eum', '2024-10-17 05:20:14', '2024-10-17 05:20:14'),
(14, 'Ipsa nihil dolorem.', 'Atque assumenda sint dicta sit quibusdam quia. Earum nihil blanditiis accusamus ullam. Pariatur sit a consequuntur provident aut quaerat.', 1971, 'Prof. Britney Marvin', 3.14, 0, '1971-03-10', '[\"qui\",\"quidem\",\"quis\"]', 'https://via.placeholder.com/640x480.png/0033bb?text=perspiciatis', '2024-10-17 05:20:14', '2024-10-17 05:20:14'),
(15, 'Autem voluptatem.', 'Et nemo fugiat doloribus dolorem. Voluptates magnam similique praesentium et sed doloremque corrupti. Qui qui consequatur laboriosam iure.', 2006, 'Onie Kuvalis', 1.56, 1, '2019-11-08', '[\"labore\",\"labore\",\"eos\"]', 'https://via.placeholder.com/640x480.png/0055ff?text=natus', '2024-10-17 05:20:14', '2024-10-17 05:20:14'),
(16, 'Dolores ipsam sit hic.', 'Dolores quis eos laborum rerum maiores. Rerum veritatis saepe corrupti sed repellendus nihil maxime. Voluptatem voluptas harum odit aut eaque nemo. Non qui voluptas omnis aliquid consequatur optio ut.', 2001, 'Ms. Shany Gerhold', 5.44, 0, '2006-12-25', '[\"non\",\"voluptatem\",\"distinctio\"]', 'https://via.placeholder.com/640x480.png/000088?text=cumque', '2024-10-17 05:20:14', '2024-10-17 05:20:14'),
(17, 'Et sunt laboriosam blanditiis.', 'Et qui beatae voluptatem at sit. Nam inventore eligendi aut exercitationem hic dignissimos at. Sunt quia quia cum ipsa incidunt. Impedit voluptatem repudiandae ducimus laudantium quia maxime nulla.', 2017, 'Prof. Ardith Auer Jr.', 1.66, 1, '1974-07-06', '[\"et\",\"quo\",\"ab\"]', 'https://via.placeholder.com/640x480.png/0011dd?text=nisi', '2024-10-17 05:20:14', '2024-10-17 05:20:14'),
(18, 'Corporis dolor pariatur.', 'Voluptatem ex culpa tempora inventore qui porro. Quidem qui ut odio et ut natus culpa. Excepturi voluptatem eum nulla dolores.', 1971, 'Mr. Florencio Quitzon', 4.45, 0, '2022-04-25', '[\"aliquam\",\"illum\",\"et\"]', 'https://via.placeholder.com/640x480.png/001155?text=sit', '2024-10-17 05:20:14', '2024-10-17 05:20:14'),
(19, 'Mollitia dicta facilis consequuntur.', 'Rerum reprehenderit nobis sit. Consequatur doloremque nihil dicta ullam esse. Sit beatae ab tempora similique eveniet officiis.', 1977, 'Gussie Thompson DVM', 4.98, 0, '1991-12-15', '[\"dolorum\",\"et\",\"vel\"]', 'https://via.placeholder.com/640x480.png/002255?text=blanditiis', '2024-10-17 05:20:14', '2024-10-17 05:20:14'),
(20, 'Officia nulla et aliquam.', 'Nemo recusandae alias fugit eius. Ut quaerat assumenda vel ducimus nulla. Consequatur eius quia non sunt. Molestiae voluptatem est ut qui.', 2002, 'Prof. Oswald Volkman', 7.45, 1, '1998-06-02', '[\"quo\",\"illo\",\"quis\"]', 'https://via.placeholder.com/640x480.png/002211?text=modi', '2024-10-17 05:20:14', '2024-10-17 05:20:14'),
(21, 'Nihil nam modi.', 'Temporibus fugit iusto sunt quis. Deleniti deserunt cumque facilis quia. Et perferendis voluptatem modi quo quidem inventore.', 2015, 'Prof. Nicholaus Fay III', 4.75, 0, '1999-05-16', '[\"repudiandae\",\"non\",\"ratione\"]', 'https://via.placeholder.com/640x480.png/007711?text=impedit', '2024-10-17 05:20:14', '2024-10-17 05:20:14'),
(22, 'Hic hic non qui.', 'Autem doloribus sed ex aut ut. Quo dolorem modi reiciendis voluptas neque facilis ea labore. Saepe ea qui quo consequatur nihil expedita at.', 2020, 'Destin Schulist', 7.52, 0, '2022-02-02', '[\"modi\",\"est\",\"ipsum\"]', 'https://via.placeholder.com/640x480.png/0022ff?text=id', '2024-10-17 05:21:15', '2024-10-17 05:21:15'),
(23, 'Repellendus ipsa inventore.', 'Et ut dolorem quasi id maxime accusantium ipsum. Non inventore ea labore in rerum recusandae. Totam possimus est et quis blanditiis minus quo.', 2018, 'Carlos Shields', 2.39, 0, '1998-12-05', '[\"numquam\",\"eius\",\"qui\"]', 'https://via.placeholder.com/640x480.png/00ff44?text=sit', '2024-10-17 05:21:15', '2024-10-17 05:21:15'),
(24, 'Sit rerum vitae sit.', 'Modi alias dolorum culpa. Omnis qui ipsam perferendis minus similique distinctio magnam. Voluptatum velit ut qui exercitationem expedita. Ipsa voluptas molestiae omnis.', 2013, 'Joel Howell DVM', 4.24, 0, '2002-05-11', '[\"cupiditate\",\"qui\",\"iusto\"]', 'https://via.placeholder.com/640x480.png/00eeaa?text=mollitia', '2024-10-17 05:21:15', '2024-10-17 05:21:15'),
(25, 'Occaecati nostrum dolore.', 'Doloribus eveniet quasi ut est sunt id. Voluptas voluptas sapiente vel ratione molestiae quis qui. Aperiam molestiae omnis ut ut tenetur voluptas repellat. Harum reiciendis laudantium voluptatem laudantium.', 2003, 'Anne Runte', 4.78, 1, '2017-02-17', '[\"corrupti\",\"et\",\"labore\"]', 'https://via.placeholder.com/640x480.png/0011ee?text=possimus', '2024-10-17 05:21:15', '2024-10-17 05:21:15'),
(26, 'Molestias illum omnis ut.', 'Minus unde saepe quas quas beatae natus. Perferendis suscipit provident incidunt qui officia voluptate optio. Nulla et id veritatis. Labore et dolores est aliquam.', 1992, 'Mercedes Langworth', 0.61, 0, '1981-08-01', '[\"molestiae\",\"voluptas\",\"excepturi\"]', 'https://via.placeholder.com/640x480.png/000044?text=iste', '2024-10-17 05:21:15', '2024-10-17 05:21:15'),
(27, 'Quis dolorem sit qui.', 'Ea est reprehenderit nobis non at quae. Sit modi qui dolor omnis. Incidunt sit molestias ipsam doloremque rerum in.', 2011, 'Rose Gusikowski', 1.69, 1, '1996-07-25', '[\"architecto\",\"perspiciatis\",\"quam\"]', 'https://via.placeholder.com/640x480.png/0099ee?text=consectetur', '2024-10-17 05:21:15', '2024-10-17 05:21:15'),
(28, 'Ut animi quaerat.', 'Rem molestiae minima mollitia. Magnam ut blanditiis hic optio molestiae magnam consectetur pariatur.', 2003, 'Glen Pacocha', 2.53, 1, '1996-12-02', '[\"ex\",\"quos\",\"voluptatem\"]', 'https://via.placeholder.com/640x480.png/008888?text=corporis', '2024-10-17 05:21:15', '2024-10-17 05:21:15'),
(29, 'Voluptatibus quam aut esse.', 'Eaque quam nemo occaecati autem aut quia dignissimos. Voluptatem dolorem tempore minima iusto ut cumque commodi non. Consequatur ut quia et exercitationem. Aperiam aut quae ipsum dolore.', 1988, 'Dannie Thiel', 0.47, 1, '1990-12-15', '[\"necessitatibus\",\"commodi\",\"dignissimos\"]', 'https://via.placeholder.com/640x480.png/004422?text=amet', '2024-10-17 05:21:15', '2024-10-17 05:21:15'),
(30, 'Et et inventore quia.', 'Velit temporibus quis atque ipsa. Voluptatibus sint ratione voluptas est. Qui quibusdam vero excepturi recusandae voluptates tenetur dolorem.', 1991, 'Gerson Hintz', 8.14, 0, '2021-12-01', '[\"velit\",\"nesciunt\",\"ab\"]', 'https://via.placeholder.com/640x480.png/008877?text=in', '2024-10-17 05:21:15', '2024-10-17 05:21:15'),
(31, 'Sunt qui reprehenderit.', 'At velit fuga in. In sed cupiditate iusto unde est. Ut nesciunt ducimus ea optio quis eum.', 2020, 'Ms. Romaine Effertz V', 1.06, 1, '2019-07-25', '[\"laboriosam\",\"debitis\",\"fuga\"]', 'https://via.placeholder.com/640x480.png/0077ee?text=et', '2024-10-17 05:21:15', '2024-10-17 05:21:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
