-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 02. 07:39
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `wikify`
--
CREATE DATABASE IF NOT EXISTS `wikify` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `wikify`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `almufajok`
--

CREATE TABLE `almufajok` (
  `id` int(11) NOT NULL,
  `almufaj` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `almufajok`
--

INSERT INTO `almufajok` (`id`, `almufaj`) VALUES
(1, 'K-pop'),
(2, 'J-pop'),
(3, 'Pop rock'),
(4, 'Pop rap'),
(5, 'Pop punk'),
(6, 'Emo pop'),
(7, 'Latin pop'),
(8, 'Hyperpop'),
(9, 'Indie pop'),
(10, 'Alternative hip hop'),
(11, 'Lofi hip hop'),
(12, 'Boom bap'),
(13, 'Emo rap'),
(14, 'G-funk'),
(15, 'Freestyle rap'),
(16, 'Hardcore hip hop'),
(17, 'Cloud rap'),
(18, 'Pop rap'),
(19, 'Punk rap'),
(20, 'Gangsta rap'),
(21, 'Dirty rap'),
(22, 'Mumble rap'),
(23, 'Trap'),
(24, 'Country rap'),
(25, 'Rap rock'),
(26, 'Disco'),
(27, 'Chill-out'),
(28, 'Hardcore'),
(29, 'Hardstyle'),
(30, 'Drum and bass'),
(31, 'Bass music'),
(32, 'Electronic rock'),
(33, 'Techno'),
(34, 'Noise music'),
(35, 'Nightcore'),
(36, 'House music'),
(37, 'Breakbeat'),
(38, 'Freestyle'),
(39, 'Funk'),
(40, 'Gospel music'),
(41, 'Soul'),
(42, 'Post-disco'),
(43, 'Alternative R&B');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eloadok`
--

CREATE TABLE `eloadok` (
  `nev` int(11) NOT NULL,
  `szul.ido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mufajok`
--

CREATE TABLE `mufajok` (
  `id` int(11) NOT NULL,
  `mufaj` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `mufajok`
--

INSERT INTO `mufajok` (`id`, `mufaj`) VALUES
(1, 'Pop'),
(2, 'Rock'),
(3, 'Hip hop'),
(4, 'Country'),
(5, 'Alternativ'),
(6, 'Classical'),
(7, 'Blues'),
(8, 'Electronic'),
(9, 'Jazz'),
(10, 'R&B'),
(11, 'Metal'),
(12, 'Punk'),
(13, 'Rap');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `almufajok`
--
ALTER TABLE `almufajok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `mufajok`
--
ALTER TABLE `mufajok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `almufajok`
--
ALTER TABLE `almufajok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT a táblához `mufajok`
--
ALTER TABLE `mufajok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
