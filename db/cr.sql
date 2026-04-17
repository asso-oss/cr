-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Märts 12, 2026 kell 10:54 EL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `cr`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `autod`
--

CREATE TABLE `autod` (
  `id` int(11) NOT NULL,
  `mark` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `fuel` enum('bensiin','diisel','elekter','gaas') NOT NULL,
  `price` int(4) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `autod`
--

INSERT INTO `autod` (`id`, `mark`, `model`, `engine`, `fuel`, `price`, `image`) VALUES
(1, 'Audi', 'Q8', 'V8', 'elekter', 1500, 'audiq8.jpg'),
(2, 'Buick', 'LaCrosse', 'v12', 'bensiin', 540, '/erat/tortor/sollicitudin.jsp'),
(3, 'Nissan', 'Xterra', 'v12', 'elekter', 530, '/eros/vestibulum/ac/est.html'),
(4, 'Nissan', '370Z', 'v12', 'gaas', 912, '/lectus/in.jsp'),
(5, 'Lexus', 'IS F', 'v8', 'elekter', 312, '/blandit/lacinia/erat/vestibulum/sed/magna.html'),
(6, 'Mercedes-Benz', 'E-Class', 'v6', 'diisel', 950, '/tincidunt/ante/vel/ipsum.png'),
(7, 'Ford', 'Escape', 'v8', 'gaas', 923, '/augue.jsp'),
(8, 'Lincoln', 'Continental', 'v12', 'diisel', 293, '/metus/sapien/ut.jpg'),
(9, 'Hummer', 'H2', 'v12', 'elekter', 340, '/sit/amet.xml'),
(10, 'Hyundai', 'Azera', 'v12', 'elekter', 392, '/sagittis.jsp'),
(11, 'Chevrolet', 'Express', 'v12', 'diisel', 165, '/cubilia/curae/mauris/viverra.jpg'),
(12, 'Volkswagen', 'riolet', 'v6', 'bensiin', 796, '/nulla/justo.xml'),
(13, 'Volkswagen', 'Eurovan', 'v8', 'gaas', 892, '/blandit.js'),
(14, 'Chrysler', 'LeBaron', 'v8', 'gaas', 815, '/congue/vivamus/metus/arcu/adipiscing/molestie/hendrerit.jpg'),
(15, 'Mitsubishi', 'Endeavor', 'v12', 'bensiin', 837, '/nulla/pede/ullamcorper/augue/a/suscipit.js'),
(16, 'Hyundai', 'Scoupe', 'v8', 'bensiin', 304, '/pretium.jsp'),
(17, 'Pontiac', 'Trans Sport', 'v12', 'bensiin', 100, '/lobortis.xml'),
(18, 'Mitsubishi', 'Truck', 'v6', 'diisel', 677, '/turpis/donec/posuere/metus/vitae.xml'),
(19, 'Dodge', 'Dakota', 'v8', 'elekter', 163, '/at/nunc/commodo/placerat.aspx'),
(20, 'Acura', 'TL', 'v12', 'diisel', 652, '/platea/dictumst/etiam/faucibus/cursus/urna/ut.aspx'),
(21, 'Mitsubishi', 'GTO', 'v8', 'bensiin', 636, '/placerat/ante.jsp'),
(22, 'Honda', 'Accord', 'v8', 'elekter', 319, '/suspendisse/accumsan/tortor.jpg'),
(23, 'Mitsubishi', 'Montero Sport', 'v8', 'gaas', 587, '/proin/at.aspx'),
(24, 'Ford', 'Freestyle', 'v6', 'diisel', 115, '/cubilia/curae/donec/pharetra/magna/vestibulum.js'),
(25, 'Nissan', 'Titan', 'v6', 'bensiin', 730, '/tempor/turpis/nec/euismod/scelerisque/quam.js'),
(26, 'Pontiac', 'G3', 'v6', 'diisel', 774, '/in/lectus/pellentesque/at.js'),
(27, 'Mercedes-Benz', 'SL-Class', 'v6', 'bensiin', 104, '/primis/in/faucibus/orci.json'),
(28, 'Isuzu', 'i-370', 'v12', 'elekter', 722, '/lacinia/sapien/quis/libero/nullam/sit/amet.json'),
(29, 'Ford', 'Expedition', 'v12', 'diisel', 707, '/ornare/imperdiet/sapien/urna/pretium/nisl.xml'),
(30, 'Suzuki', 'Aerio', 'v12', 'gaas', 715, '/quisque.xml'),
(31, 'Volkswagen', 'Type 2', 'v6', 'elekter', 455, '/at/diam/nam/tristique/tortor/eu/pede.json'),
(32, 'GMC', 'Sierra 3500', 'v12', 'gaas', 655, '/sagittis/nam/congue/risus.html'),
(33, 'Dodge', 'D150 Club', 'v8', 'bensiin', 755, '/purus.xml'),
(34, 'Infiniti', 'Q', 'v6', 'gaas', 401, '/justo/sit/amet/sapien.js'),
(35, 'Dodge', 'Viper', 'v8', 'diisel', 738, '/bibendum/imperdiet/nullam/orci.js'),
(36, 'Lincoln', 'Blackwood', 'v8', 'bensiin', 325, '/ut.json'),
(37, 'Infiniti', 'FX', 'v6', 'bensiin', 437, '/luctus/et/ultrices/posuere/cubilia/curae/nulla.json'),
(38, 'Panoz', 'Esperante', 'v12', 'diisel', 362, '/venenatis/lacinia/aenean/sit/amet/justo.json'),
(39, 'Honda', 'Accord', 'v8', 'gaas', 224, '/mattis/pulvinar/nulla/pede.png'),
(40, 'Ford', 'Mustang', 'v12', 'elekter', 655, '/lacinia.jsp'),
(41, 'Ford', 'F350', 'v12', 'diisel', 929, '/molestie/lorem.aspx');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `autod`
--
ALTER TABLE `autod`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `autod`
--
ALTER TABLE `autod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
