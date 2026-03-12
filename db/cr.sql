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
  `fuel` enum('Bensiin','Diisel','Elekter','Gaas') NOT NULL,
  `price` int(4) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `autod`
--

INSERT INTO `autod` (`id`, `mark`, `model`, `engine`, `fuel`, `price`, `image`) VALUES
(1, 'Audi', 'Q8', 'V8', 'Bensiin', 150, 'Audiq8.jpg'),
(2, 'Mitsubishi', 'Pajero', 'V12', 'Diisel', 344, '/ultrices/posuere/cubilia.xml'),
(3, 'Pontiac', '1000', 'V8', 'Diisel', 229, '/pede/posuere/nonummy.jpg'),
(4, 'Aston Martin', 'DBS', 'V6', 'Elekter', 509, '/a/odio/in/hac/habitasse/platea.xml'),
(5, 'Mercedes-Benz', 'S-Class', 'V8', 'Elekter', 277, '/at/ipsum/ac/tellus.aspx'),
(6, 'Audi', 'A5', 'V8', 'Diisel', 692, '/nec/nisi/vulputate/nonummy/maecenas/tincidunt.js'),
(7, 'Ford', 'F-Series', 'V8', 'Bensiin', 852, '/vel/nisl/duis.xml'),
(8, 'Lincoln', 'Town Car', 'V6', 'Elekter', 360, '/tempus/vel/pede/morbi/porttitor/lorem.aspx'),
(9, 'Ford', 'Explorer', 'V12', 'Gaas', 444, '/purus.json'),
(10, 'Ford', 'Explorer Sport Trac', 'V8', 'Elekter', 427, '/nascetur/ridiculus/mus/etiam.json'),
(11, 'Toyota', 'Corolla', 'V12', 'Gaas', 248, '/vitae/quam/suspendisse/potenti/nullam/porttitor.xml'),
(12, 'Cadillac', 'DTS', 'V12', 'Diisel', 553, '/eu/felis/fusce/posuere/felis/sed/lacus.png'),
(13, 'Ford', 'Mustang', 'V12', 'Bensiin', 502, '/morbi/non.jsp'),
(14, 'Nissan', 'Altima', 'V12', 'Diisel', 979, '/habitasse/platea/dictumst/etiam/faucibus.json'),
(15, 'Mitsubishi', 'Lancer Evolution', 'V12', 'Diisel', 565, '/sapien/ut/nunc/vestibulum/ante/ipsum.json'),
(16, 'Volvo', 'S60', 'V12', 'Bensiin', 156, '/quam/sapien/varius/ut/blandit/non/interdum.html'),
(17, 'Ford', 'Crown Victoria', 'V8', 'Bensiin', 297, '/nec.xml'),
(18, 'GMC', 'Envoy', 'V12', 'Bensiin', 684, '/ac/nibh/fusce/lacus/purus/aliquet/at.png'),
(19, 'MINI', 'Cooper Clubman', 'V6', 'Diisel', 633, '/sit/amet.xml'),
(20, 'Acura', 'NSX', 'V8', 'Elekter', 102, '/maecenas/leo/odio/condimentum/id/luctus.aspx'),
(21, 'Chrysler', 'Imperial', 'V12', 'Elekter', 822, '/proin/at/turpis/a/pede/posuere/nonummy.jsp'),
(22, 'Lexus', 'LX', 'V12', 'Elekter', 308, '/potenti/in.xml'),
(23, 'Lexus', 'RX Hybrid', 'V12', 'Diisel', 307, '/convallis.png'),
(24, 'Ford', 'Explorer', 'V8', 'Gaas', 396, '/non/velit.png'),
(25, 'Kia', 'Sorento', 'V8', 'Bensiin', 336, '/in/ante/vestibulum/ante/ipsum/primis.jpg'),
(26, 'Cadillac', 'Seville', 'V6', 'Diisel', 671, '/magna.jsp'),
(27, 'Hyundai', 'Tiburon', 'V8', 'Diisel', 247, '/magnis/dis/parturient/montes/nascetur/ridiculus.js'),
(28, 'Chevrolet', 'Lumina', 'V12', 'Bensiin', 957, '/vestibulum/eget/vulputate.png'),
(29, 'Mazda', 'Mazda5', 'V6', 'Elekter', 765, '/molestie/hendrerit/at.png'),
(30, 'Buick', 'Rainier', 'V8', 'Diisel', 715, '/bibendum/felis/sed.png'),
(31, 'Acura', 'RL', 'V6', 'Gaas', 438, '/id/consequat/in/consequat/ut/nulla.json'),
(32, 'Land Rover', 'Range Rover', 'V12', 'Gaas', 216, '/a/feugiat/et/eros/vestibulum/ac/est.jpg'),
(33, 'Ford', 'Ranger', 'V6', 'Elekter', 811, '/vitae/consectetuer/eget/rutrum.jsp'),
(34, 'Pontiac', 'Trans Sport', 'V6', 'Gaas', 551, '/amet.png'),
(35, 'Chevrolet', 'G-Series 3500', 'V12', 'Bensiin', 348, '/non/sodales/sed/tincidunt/eu/felis/fusce.jsp'),
(36, 'Toyota', '4Runner', 'V8', 'Elekter', 871, '/est/donec/odio/justo/sollicitudin/ut.js'),
(37, 'Ford', 'E350', 'V8', 'Gaas', 733, '/ligula/nec/sem/duis/aliquam/convallis/nunc.png'),
(38, 'Chevrolet', 'Express 2500', 'V12', 'Gaas', 467, '/lacus.js'),
(39, 'Mitsubishi', 'Challenger', 'V12', 'Diisel', 474, '/donec/odio/justo/sollicitudin/ut/suscipit.jsp'),
(40, 'Bentley', 'Continental Super', 'V12', 'Elekter', 737, '/ante/vestibulum/ante/ipsum/primis.aspx'),
(41, 'Ferrari', '430 Scuderia', 'V12', 'Diisel', 846, '/volutpat/in/congue.json');

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
