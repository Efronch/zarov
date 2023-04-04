-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 04. 09:50
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
(26, 8, 'Disco'),
(27, 8, 'Chill-out'),
(28, 11, 'Hardcore'),
(29, 11, 'Hardstyle'),
(30, 8, 'Drum and bass'),
(31, 7, 'Bass music'),
(32, 2, 'Electronic rock'),
(33, 11, 'Techno'),
(34, 12, 'Noise music'),
(35, 5, 'Nightcore'),
(36, 5, 'House music'),
(37, 8, 'Breakbeat'),
(38, 13, 'Freestyle'),
(39, 9, 'Funk'),
(40, 10, 'Gospel music'),
(41, 3, 'Soul'),
(42, 8, 'Post-disco'),
(43, 10, 'Alternative R&B'),
(44, 9, 'Jazz rap'),
(45, 9, 'Jazz rock'),
(46, 7, 'Jazz blues'),
(47, 7, 'Blues rock'),
(48, 7, 'Blues shouter'),
(49, 7, 'Jump blues'),
(50, 7, 'Gospel blues'),
(51, 6, 'Indian classical'),
(52, 6, 'Classical crossover'),
(53, 4, 'Country pop'),
(54, 4, 'Country rock'),
(55, 4, 'Country rap'),
(56, 4, 'Country blues'),
(57, 4, 'Texas country'),
(58, 5, 'Alternativ rock'),
(59, 5, 'Alternativ dance'),
(60, 5, 'Alternativ hip hop'),
(61, 5, 'Alternativ country'),
(62, 12, 'Cowpunk'),
(63, 12, 'Post-punk'),
(64, 12, 'Proto-punk'),
(65, 12, 'Punk rock'),
(66, 12, 'Deathpunk'),
(67, 12, 'Folk punk');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eloadok`
--

CREATE TABLE `eloadok` (
  `id` int(11) NOT NULL,
  `mufaj_id` int(11) NOT NULL,
  `nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `szulido` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `eloadok`
--

INSERT INTO `eloadok` (`id`, `mufaj_id`, `nev`, `szulido`) VALUES
(1, 1, 'Drake', '1986-10-24'),
(2, 13, 'XXXTentacion', '1998-01-23'),
(3, 13, 'Lil Peep', '1996-11-01'),
(4, 11, 'Hollywood Undead', '2005-01-01'),
(5, 2, 'Skillet', '1996-01-01'),
(6, 2, 'Linkin Park', '1996-01-01'),
(8, 4, 'Rednex', '1994-01-01'),
(9, 5, 'Nirvana', '1987-01-01'),
(10, 5, 'Radiohead', '1985-01-01'),
(11, 5, 'Foo Fighters', '1994-01-01'),
(12, 9, 'Art Ensemble of Chicago', '1965-01-01'),
(13, 9, 'Count Basie Orchestra', '1935-01-01'),
(14, 8, 'Daft Punk', '1993-01-01'),
(15, 8, 'New Order', '1980-01-01'),
(16, 3, '2Pac', '1971-06-16'),
(17, 3, 'The Notorious B.I.G.', '1972-05-21'),
(18, 3, 'Future', '1983-11-20'),
(19, 7, 'Muddy Waters', '1913-04-04'),
(20, 7, 'Robert Johnson', '1911-05-08'),
(21, 1, 'Katy Perry', '1984-10-25'),
(22, 1, 'Michael Jackson', '1958-08-29'),
(23, 6, 'Wolfgang Amadeus Mozart', '1756-01-27'),
(24, 6, 'Johann Sebastian Bach', '1685-03-31'),
(25, 6, 'Antonio Vivaldi', '1678-03-04'),
(26, 10, 'Beyoncé Knowles', '1981-09-04'),
(27, 10, 'Whitney Houston', '1963-08-09'),
(28, 10, 'Ray Charles', '1930-09-23'),
(29, 11, 'Metallica', '1981-01-01'),
(30, 11, 'Black Sabbath', '1968-01-01'),
(31, 12, 'Sex Pistols', '1975-01-01'),
(32, 12, 'Green Day', '1987-01-01'),
(33, 12, 'Blink-182', '1992-01-01'),
(34, 13, 'Juice WRLD', '1998-12-02'),
(35, 2, 'Paramore', '2004-01-01'),
(36, 4, 'Alabama', '1969-01-01'),
(37, 4, 'Zac Brown Band', '2000-01-01'),
(38, 2, 'The Rolling Stones', '1989-01-01'),
(39, 7, 'The Blues Band', '1979-01-01'),
(40, 8, 'Electric Callboy', '2010-01-01');

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
-- A tábla indexei `eloadok`
--
ALTER TABLE `eloadok`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT a táblához `eloadok`
--
ALTER TABLE `eloadok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT a táblához `mufajok`
--
ALTER TABLE `mufajok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `almufajok`
--
ALTER TABLE `almufajok`
  ADD CONSTRAINT `almufajok_ibfk_1` FOREIGN KEY (`mufaj_id`) REFERENCES `mufajok` (`id`);

--
-- Megkötések a táblához `eloadok`
--
ALTER TABLE `eloadok`
  ADD CONSTRAINT `eloadok_ibfk_1` FOREIGN KEY (`mufaj_id`) REFERENCES `mufajok` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
