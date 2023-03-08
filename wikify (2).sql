-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Feb 16. 10:56
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

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `almufajok`
--

CREATE TABLE `almufajok` (
  `id` int(11) NOT NULL,
  `mufaj_id` int(11) NOT NULL,
  `almufaj` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `almufajok`
--

INSERT INTO `almufajok` (`id`, `mufaj_id`, `almufaj`) VALUES
(1, 1, 'K-pop'),
(2, 1, 'J-pop'),
(3, 1, 'Pop rock'),
(4, 1, 'Pop rap'),
(5, 1, 'Pop punk'),
(6, 1, 'Emo pop'),
(7, 1, 'Latin pop'),
(8, 1, 'Hyperpop'),
(9, 1, 'Indie pop'),
(10, 3, 'Alternative hip hop'),
(11, 3, 'Lofi hip hop'),
(12, 3, 'Boom bap'),
(13, 13, 'Emo rap'),
(14, 3, 'G-funk'),
(15, 13, 'Freestyle rap'),
(16, 3, 'Hardcore hip hop'),
(17, 13, 'Cloud rap'),
(18, 13, 'Pop rap'),
(19, 13, 'Punk rap'),
(20, 13, 'Gangsta rap'),
(21, 13, 'Dirty rap'),
(22, 13, 'Mumble rap'),
(23, 13, 'Trap'),
(24, 13, 'Country rap'),
(25, 2, 'Rap rock'),
(26, 0, 'Disco'),
(27, 0, 'Chill-out'),
(28, 0, 'Hardcore'),
(29, 0, 'Hardstyle'),
(30, 0, 'Drum and bass'),
(31, 0, 'Bass music'),
(32, 0, 'Electronic rock'),
(33, 0, 'Techno'),
(34, 0, 'Noise music'),
(35, 0, 'Nightcore'),
(36, 0, 'House music'),
(37, 0, 'Breakbeat'),
(38, 0, 'Freestyle'),
(39, 0, 'Funk'),
(40, 0, 'Gospel music'),
(41, 0, 'Soul'),
(42, 0, 'Post-disco'),
(43, 0, 'Alternative R&B');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `mufaj_id` (`mufaj_id`);

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
