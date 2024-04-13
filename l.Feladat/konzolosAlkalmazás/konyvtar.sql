-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Ápr 12. 18:38
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `konyvtar`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kolcsonzesek`
--

CREATE TABLE `kolcsonzesek` (
  `id` int(11) NOT NULL,
  `kolcsonzokId` int(11) DEFAULT NULL,
  `iro` varchar(255) DEFAULT NULL,
  `mufaj` varchar(255) DEFAULT NULL,
  `cim` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kolcsonzesek_1`
--

CREATE TABLE `kolcsonzesek_1` (
  `COL 1` varchar(55) DEFAULT NULL,
  `COL 2` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `kolcsonzesek_1`
--

INSERT INTO `kolcsonzesek_1` (`COL 1`, `COL 2`) VALUES
('1;J.K. Rowling;Fantasy;Harry Potter és a Bölcsek Köve', NULL),
('2;Agatha Christie;Krimi;Hálószoba Kilencvenötben', NULL),
('3;George Orwell;Dystópia;1984', NULL),
('4;Harper Lee;Regény;Ne bántsátok a feketerigót!', NULL),
('5;Gabriel García Márquez;Realizmus;Száz év magány', NULL),
('6;J.R.R. Tolkien;Fantasy;A Gyűrűk Ura', NULL),
('7;Jane Austen;Romantikus;Büszkeség és balítélet', NULL),
('8;Fyodor Dostoyevsky;Dráma;Bűn és bűnhődés', NULL),
('9;Leo Tolstoy;Eposz;Háború és béke', NULL),
('10;Mark Twain;Kaland;Huckleberry Finn kalandjai', NULL),
('1;Stephen King;Horror;Az', NULL),
('2;Gillian Flynn;Thriller;Én', ' a lány'),
('3;Ernest Hemingway;Klasszikus;Az öreg és a tenger', NULL),
('4;Virginia Woolf;Modernizmus;Hullámok', NULL),
('5;Terry Pratchett;Fantasy;A Kolorádói óra', NULL),
('6;Emily Brontë;Romantikus;Üvöltő szelek', NULL),
('7;Ray Bradbury;Sci-fi;451 Fahrenheit', NULL),
('8;Philip K. Dick;Sci-fi;A Mátrix', NULL),
('9;Arthur Conan Doyle;Detektív;Sherlock Holmes kalandjai', NULL),
('10;Herman Melville;Klasszikus;Moby Dick', NULL),
('1;Suzanne Collins;Sci-fi;Az éhezők viadala', NULL),
('2;Margaret Atwood;Dystópia;A szolgálólány meséje', NULL),
('3;H.G. Wells;Sci-fi;A háború a világokban', NULL),
('4;Roald Dahl;Gyermek;Matilda', NULL),
('5;Douglas Adams;Sci-fi;Galaxis útikalauz stopposoknak', NULL),
('6;J.D. Salinger;Regény;Zabhegyező', NULL),
('7;Ken Kesey;Modernizmus;A sikoly', NULL),
('8;Kazuo Ishiguro;Fikció;Az eltemetett óriás', NULL),
('9;Aldous Huxley;Sci-fi;Szép új világ', NULL),
('10;Michael Crichton;Sci-fi;Jurassic Park', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kolcsonzok`
--

CREATE TABLE `kolcsonzok` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) DEFAULT NULL,
  `szulIdo` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kolcsonzok_1`
--

CREATE TABLE `kolcsonzok_1` (
  `COL 1` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `kolcsonzok_1`
--

INSERT INTO `kolcsonzok_1` (`COL 1`) VALUES
(''),
('Kovács Ádám;1990-05-15'),
('Tóth Bianka;1985-11-23'),
('Nagy Gergő;1978-09-02'),
('Szabó Anna;1993-03-10'),
('Horváth Péter;1980-07-18'),
('Kiss Katalin;1975-01-30'),
('Molnár Bence;1987-12-04'),
('Farkas Zsuzsa;1995-06-28'),
('Bálint Dávid;1972-10-07'),
('Szűcs Eszter;1983-04-16'),
('Takács Gábor;1991-08-22'),
('Simon Virág;1979-02-14'),
('Varga Tamás;1988-10-31'),
('Papp Nikolett;1996-09-09'),
('Kovács Márton;1981-12-19');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kolcsonzesek`
--
ALTER TABLE `kolcsonzesek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kolcsonzokId` (`kolcsonzokId`);

--
-- A tábla indexei `kolcsonzok`
--
ALTER TABLE `kolcsonzok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kolcsonzesek`
--
ALTER TABLE `kolcsonzesek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `kolcsonzok`
--
ALTER TABLE `kolcsonzok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kolcsonzesek`
--
ALTER TABLE `kolcsonzesek`
  ADD CONSTRAINT `kolcsonzesek_ibfk_1` FOREIGN KEY (`kolcsonzokId`) REFERENCES `kolcsonzok` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
