-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 26. Okt, 2017 16:46 PM
-- Server-versjon: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignement_5`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `affiliatedWith`
--

CREATE TABLE `affiliatedWith` (
  `seasonYear` int(11) NOT NULL,
  `clubID` int(11) NOT NULL,
  `skierUserName` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `city`
--

CREATE TABLE `city` (
  `name` varchar(250) COLLATE utf8_bin NOT NULL,
  `countyName` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `club`
--

CREATE TABLE `club` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_bin NOT NULL,
  `cityName` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `county`
--

CREATE TABLE `county` (
  `name` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `season`
--

CREATE TABLE `season` (
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `skidInTotal`
--

CREATE TABLE `skidInTotal` (
  `skierUserName` varchar(250) COLLATE utf8_bin NOT NULL,
  `seasonYear` int(11) NOT NULL,
  `totalDistance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `skier`
--

CREATE TABLE `skier` (
  `userName` varchar(250) COLLATE utf8_bin NOT NULL,
  `firstName` varchar(250) COLLATE utf8_bin NOT NULL,
  `lastName` varchar(250) COLLATE utf8_bin NOT NULL,
  `yearOfBirth` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliatedWith`
--
ALTER TABLE `affiliatedWith`
  ADD PRIMARY KEY (`seasonYear`,`clubID`),
  ADD KEY `clubID` (`clubID`),
  ADD KEY `skierUserName` (`skierUserName`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`name`),
  ADD KEY `countyName` (`countyName`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cityName` (`cityName`);

--
-- Indexes for table `county`
--
ALTER TABLE `county`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`year`);

--
-- Indexes for table `skidInTotal`
--
ALTER TABLE `skidInTotal`
  ADD PRIMARY KEY (`skierUserName`,`seasonYear`);

--
-- Indexes for table `skier`
--
ALTER TABLE `skier`
  ADD PRIMARY KEY (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Begrensninger for dumpede tabeller
--

--
-- Begrensninger for tabell `affiliatedWith`
--
ALTER TABLE `affiliatedWith`
  ADD CONSTRAINT `affiliatedWith_ibfk_1` FOREIGN KEY (`seasonYear`) REFERENCES `season` (`year`) ON UPDATE CASCADE,
  ADD CONSTRAINT `affiliatedWith_ibfk_2` FOREIGN KEY (`clubID`) REFERENCES `club` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `affiliatedWith_ibfk_3` FOREIGN KEY (`skierUserName`) REFERENCES `skier` (`userName`);

--
-- Begrensninger for tabell `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`countyName`) REFERENCES `county` (`name`) ON UPDATE CASCADE;

--
-- Begrensninger for tabell `club`
--
ALTER TABLE `club`
  ADD CONSTRAINT `club_ibfk_1` FOREIGN KEY (`cityName`) REFERENCES `city` (`name`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
