-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 02. Nov, 2017 11:42 AM
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
  `clubID` varchar(250) COLLATE utf8_bin NOT NULL,
  `skierUserName` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dataark for tabell `affiliatedWith`
--

INSERT INTO `affiliatedWith` (`seasonYear`, `clubID`, `skierUserName`) VALUES
(2015, 'asker-ski', 'andr_stee'),
(2015, 'asker-ski', 'bent_håla'),
(2015, 'asker-ski', 'bent_svee'),
(2015, 'asker-ski', 'beri_hans'),
(2015, 'asker-ski', 'bjør_aase'),
(2015, 'asker-ski', 'bjør_ali'),
(2015, 'asker-ski', 'elis_ruud'),
(2015, 'asker-ski', 'fred_lien'),
(2015, 'asker-ski', 'geir_herm'),
(2015, 'asker-ski', 'hans_foss'),
(2015, 'asker-ski', 'heid_dani'),
(2015, 'asker-ski', 'henr_bern'),
(2015, 'asker-ski', 'inge_simo'),
(2015, 'asker-ski', 'kjel_fjel'),
(2015, 'asker-ski', 'liv_khan'),
(2015, 'asker-ski', 'magn_sand'),
(2015, 'asker-ski', 'olav_lien'),
(2015, 'asker-ski', 'rune_haga'),
(2015, 'asker-ski', 'silj_mykl'),
(2015, 'asker-ski', 'tom_jako'),
(2015, 'asker-ski', 'tove_moe'),
(2015, 'asker-ski', 'øyvi_hell'),
(2015, 'asker-ski', 'øyvi_kvam'),
(2015, 'asker-ski', 'øyvi_vike'),
(2015, 'lhmr-ski', 'ande_rønn'),
(2015, 'lhmr-ski', 'astr_amun'),
(2015, 'lhmr-ski', 'bjør_rønn'),
(2015, 'lhmr-ski', 'bjør_sand'),
(2015, 'lhmr-ski', 'dani_hamm'),
(2015, 'lhmr-ski', 'eina_nygå'),
(2015, 'lhmr-ski', 'elle_wiik'),
(2015, 'lhmr-ski', 'erik_haal'),
(2015, 'lhmr-ski', 'espe_haal'),
(2015, 'lhmr-ski', 'frod_rønn'),
(2015, 'lhmr-ski', 'gerd_svee'),
(2015, 'lhmr-ski', 'hara_bakk'),
(2015, 'lhmr-ski', 'hild_hass'),
(2015, 'lhmr-ski', 'håko_jens'),
(2015, 'lhmr-ski', 'knut_bye'),
(2015, 'lhmr-ski', 'lind_lore'),
(2015, 'lhmr-ski', 'mari_dahl'),
(2015, 'lhmr-ski', 'mari_eile'),
(2015, 'lhmr-ski', 'nils_bakk'),
(2015, 'lhmr-ski', 'olav_eike'),
(2015, 'lhmr-ski', 'ole_borg'),
(2015, 'lhmr-ski', 'tore_gulb'),
(2015, 'skiklubben', 'ande_andr'),
(2015, 'skiklubben', 'anna_næss'),
(2015, 'skiklubben', 'arne_anto'),
(2015, 'skiklubben', 'arne_inge'),
(2015, 'skiklubben', 'astr_sven'),
(2015, 'skiklubben', 'espe_egel'),
(2015, 'skiklubben', 'eva_kvam'),
(2015, 'skiklubben', 'frod_mads'),
(2015, 'skiklubben', 'geir_birk'),
(2015, 'skiklubben', 'hans_løke'),
(2015, 'skiklubben', 'helg_brei'),
(2015, 'skiklubben', 'helg_toll'),
(2015, 'skiklubben', 'ida_mykl'),
(2015, 'skiklubben', 'ingr_edva'),
(2015, 'skiklubben', 'juli_ande'),
(2015, 'skiklubben', 'kari_thor'),
(2015, 'skiklubben', 'kris_even'),
(2015, 'skiklubben', 'kris_hass'),
(2015, 'skiklubben', 'kris_hass1'),
(2015, 'skiklubben', 'mari_stra'),
(2015, 'skiklubben', 'mona_lie'),
(2015, 'skiklubben', 'mort_iver'),
(2015, 'skiklubben', 'nils_knud'),
(2015, 'skiklubben', 'odd_moha'),
(2015, 'skiklubben', 'olav_hell'),
(2015, 'skiklubben', 'reid_hamr'),
(2015, 'skiklubben', 'rolf_wiik'),
(2015, 'skiklubben', 'stia_haug'),
(2015, 'skiklubben', 'terj_mort'),
(2015, 'skiklubben', 'tor_dale'),
(2015, 'skiklubben', 'tore_svee'),
(2015, 'skiklubben', 'tron_kris'),
(2015, 'skiklubben', 'øyst_aase'),
(2015, 'skiklubben', 'øyst_lore'),
(2015, 'skiklubben', 'øyvi_jens'),
(2015, 'vindil', 'cami_erik'),
(2015, 'vindil', 'erik_lien'),
(2015, 'vindil', 'erik_pete'),
(2015, 'vindil', 'gunn_berg'),
(2015, 'vindil', 'henr_lore'),
(2015, 'vindil', 'mart_halv'),
(2015, 'vindil', 'stia_henr'),
(2015, 'vindil', 'thom_inge'),
(2015, 'vindil', 'tom_bråt'),
(2015, 'vindil', 'tom_bøe'),
(2015, 'vindil', 'tron_moen'),
(2015, 'vindil', 'øyst_sæth'),
(2016, 'asker-ski', 'andr_stee'),
(2016, 'asker-ski', 'beri_hans'),
(2016, 'asker-ski', 'bjør_aase'),
(2016, 'asker-ski', 'bjør_ali'),
(2016, 'asker-ski', 'fred_lien'),
(2016, 'asker-ski', 'heid_dani'),
(2016, 'asker-ski', 'inge_simo'),
(2016, 'asker-ski', 'liv_khan'),
(2016, 'asker-ski', 'magn_sand'),
(2016, 'asker-ski', 'olav_lien'),
(2016, 'asker-ski', 'rune_haga'),
(2016, 'asker-ski', 'sara_okst'),
(2016, 'asker-ski', 'silj_mykl'),
(2016, 'asker-ski', 'solv_solb'),
(2016, 'asker-ski', 'tove_moe'),
(2016, 'asker-ski', 'øyvi_hell'),
(2016, 'asker-ski', 'øyvi_vike'),
(2016, 'asker-ski', '﻿hal_﻿mos'),
(2016, 'lhmr-ski', 'astr_amun'),
(2016, 'lhmr-ski', 'bjør_rønn'),
(2016, 'lhmr-ski', 'bjør_sand'),
(2016, 'lhmr-ski', 'dani_hamm'),
(2016, 'lhmr-ski', 'elle_wiik'),
(2016, 'lhmr-ski', 'erik_haal'),
(2016, 'lhmr-ski', 'espe_haal'),
(2016, 'lhmr-ski', 'gerd_svee'),
(2016, 'lhmr-ski', 'hann_stei'),
(2016, 'lhmr-ski', 'hans_foss'),
(2016, 'lhmr-ski', 'hara_bakk'),
(2016, 'lhmr-ski', 'hild_hass'),
(2016, 'lhmr-ski', 'håko_jens'),
(2016, 'lhmr-ski', 'kris_hass1'),
(2016, 'lhmr-ski', 'lind_lore'),
(2016, 'lhmr-ski', 'mari_dahl'),
(2016, 'lhmr-ski', 'mari_eile'),
(2016, 'lhmr-ski', 'nils_bakk'),
(2016, 'lhmr-ski', 'olav_eike'),
(2016, 'lhmr-ski', 'ole_borg'),
(2016, 'lhmr-ski', 'tore_gulb'),
(2016, 'lhmr-ski', 'trin_kals'),
(2016, 'skiklubben', 'ande_andr'),
(2016, 'skiklubben', 'anna_næss'),
(2016, 'skiklubben', 'arne_anto'),
(2016, 'skiklubben', 'arne_inge'),
(2016, 'skiklubben', 'astr_sven'),
(2016, 'skiklubben', 'bent_håla'),
(2016, 'skiklubben', 'bror_﻿mos'),
(2016, 'skiklubben', 'eina_nygå'),
(2016, 'skiklubben', 'elis_ruud'),
(2016, 'skiklubben', 'espe_egel'),
(2016, 'skiklubben', 'eva_kvam'),
(2016, 'skiklubben', 'frod_mads'),
(2016, 'skiklubben', 'geir_birk'),
(2016, 'skiklubben', 'geir_herm'),
(2016, 'skiklubben', 'guri_nord'),
(2016, 'skiklubben', 'hans_løke'),
(2016, 'skiklubben', 'helg_brei'),
(2016, 'skiklubben', 'ida_mykl'),
(2016, 'skiklubben', 'idar_kals'),
(2016, 'skiklubben', 'ingr_edva'),
(2016, 'skiklubben', 'juli_ande'),
(2016, 'skiklubben', 'kari_thor'),
(2016, 'skiklubben', 'kjel_fjel'),
(2016, 'skiklubben', 'kris_hass'),
(2016, 'skiklubben', 'mari_stra'),
(2016, 'skiklubben', 'mona_lie'),
(2016, 'skiklubben', 'mort_iver'),
(2016, 'skiklubben', 'nils_knud'),
(2016, 'skiklubben', 'reid_hamr'),
(2016, 'skiklubben', 'rolf_wiik'),
(2016, 'skiklubben', 'sive_nord'),
(2016, 'skiklubben', 'stia_haug'),
(2016, 'skiklubben', 'terj_mort'),
(2016, 'skiklubben', 'tom_jako'),
(2016, 'skiklubben', 'tron_kris'),
(2016, 'skiklubben', 'øyst_aase'),
(2016, 'skiklubben', 'øyst_lore'),
(2016, 'skiklubben', 'øyvi_jens'),
(2016, 'skiklubben', '﻿rut_nord'),
(2016, 'vindil', 'cami_erik'),
(2016, 'vindil', 'gunn_berg'),
(2016, 'vindil', 'henr_lore'),
(2016, 'vindil', 'idar_kals1'),
(2016, 'vindil', 'mart_halv'),
(2016, 'vindil', 'stia_andr'),
(2016, 'vindil', 'stia_henr'),
(2016, 'vindil', 'thom_inge'),
(2016, 'vindil', 'tom_bråt'),
(2016, 'vindil', 'tom_bøe'),
(2016, 'vindil', 'tron_moen'),
(2016, 'vindil', 'øyst_sæth'),
(2016, 'vindil', '﻿rut_﻿mos');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `city`
--

CREATE TABLE `city` (
  `name` varchar(250) COLLATE utf8_bin NOT NULL,
  `countyName` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dataark for tabell `city`
--

INSERT INTO `city` (`name`, `countyName`) VALUES
('Asker', 'Akershus'),
('Gjøvik', 'Oppland'),
('Lillehammer', 'Oppland'),
('Trondheim', 'Sør-Trøndelag');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `club`
--

CREATE TABLE `club` (
  `id` varchar(250) COLLATE utf8_bin NOT NULL,
  `name` varchar(250) COLLATE utf8_bin NOT NULL,
  `cityName` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dataark for tabell `club`
--

INSERT INTO `club` (`id`, `name`, `cityName`) VALUES
('asker-ski', 'Asker skiklubb', 'Asker'),
('lhmr-ski', 'Lillehammer Skiklub', 'Lillehammer'),
('skiklubben', 'Trondhjems skiklub', 'Trondheim'),
('vindil', 'Vind Idrettslag', 'Gjøvik');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `county`
--

CREATE TABLE `county` (
  `name` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dataark for tabell `county`
--

INSERT INTO `county` (`name`) VALUES
('Akershus'),
('Oppland'),
('Sør-Trøndelag');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `season`
--

CREATE TABLE `season` (
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dataark for tabell `season`
--

INSERT INTO `season` (`year`) VALUES
(2015),
(2016);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `skiedInTotal`
--

CREATE TABLE `skiedInTotal` (
  `skierUserName` varchar(250) COLLATE utf8_bin NOT NULL,
  `seasonYear` int(11) NOT NULL,
  `totalDistance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dataark for tabell `skiedInTotal`
--

INSERT INTO `skiedInTotal` (`skierUserName`, `seasonYear`, `totalDistance`) VALUES
('ande_andr', 2015, 23),
('ande_andr', 2016, 55),
('ande_rønn', 2015, 942),
('andr_stee', 2015, 440),
('andr_stee', 2016, 379),
('anna_næss', 2015, 3),
('anna_næss', 2016, 3),
('arne_anto', 2015, 32),
('arne_anto', 2016, 99),
('arne_inge', 2015, 1),
('arne_inge', 2016, 2),
('astr_amun', 2015, 961),
('astr_amun', 2016, 761),
('astr_sven', 2015, 1),
('astr_sven', 2016, 3),
('bent_håla', 2015, 19),
('bent_håla', 2016, 62),
('bent_svee', 2015, 125),
('beri_hans', 2015, 448),
('beri_hans', 2016, 374),
('bjør_aase', 2015, 121),
('bjør_aase', 2016, 116),
('bjør_ali', 2015, 47),
('bjør_ali', 2016, 47),
('bjør_rønn', 2015, 33),
('bjør_rønn', 2016, 56),
('bjør_sand', 2015, 460),
('bjør_sand', 2016, 449),
('bror_kals', 2016, 202),
('bror_﻿mos', 2016, 243),
('cami_erik', 2015, 1),
('cami_erik', 2016, 1),
('dani_hamm', 2015, 33),
('dani_hamm', 2016, 61),
('eina_nygå', 2015, 31),
('eina_nygå', 2016, 68),
('elis_ruud', 2015, 341),
('elis_ruud', 2016, 368),
('elle_wiik', 2015, 12),
('elle_wiik', 2016, 35),
('erik_haal', 2015, 122),
('erik_haal', 2016, 143),
('erik_lien', 2015, 1),
('erik_pete', 2015, 581),
('espe_egel', 2015, 519),
('espe_egel', 2016, 556),
('espe_haal', 2015, 1),
('espe_haal', 2016, 2),
('eva_kvam', 2015, 28),
('eva_kvam', 2016, 89),
('fred_lien', 2015, 113),
('fred_lien', 2016, 122),
('frod_mads', 2015, 1),
('frod_mads', 2016, 2),
('frod_rønn', 2015, 237),
('geir_birk', 2015, 69),
('geir_birk', 2016, 71),
('geir_herm', 2015, 891),
('geir_herm', 2016, 789),
('gerd_svee', 2015, 173),
('gerd_svee', 2016, 196),
('gunn_berg', 2015, 2),
('gunn_berg', 2016, 2),
('guri_nord', 2016, 17),
('hann_stei', 2016, 14),
('hans_foss', 2015, 240),
('hans_foss', 2016, 276),
('hans_løke', 2015, 3),
('hans_løke', 2016, 1),
('hara_bakk', 2015, 7),
('hara_bakk', 2016, 16),
('heid_dani', 2015, 3),
('heid_dani', 2016, 3),
('helg_brei', 2015, 27),
('helg_brei', 2016, 74),
('helg_toll', 2015, 9),
('henr_bern', 2015, 799),
('henr_dale', 2015, 2),
('henr_dale', 2016, 2),
('henr_lore', 2015, 1),
('henr_lore', 2016, 1),
('hild_hass', 2015, 2),
('hild_hass', 2016, 1),
('håko_jens', 2015, 778),
('håko_jens', 2016, 804),
('ida_mykl', 2015, 666),
('ida_mykl', 2016, 614),
('idar_kals', 2016, 101),
('idar_kals1', 2016, 1308),
('inge_simo', 2015, 3),
('inge_simo', 2016, 2),
('inge_thor', 2015, 194),
('inge_thor', 2016, 220),
('ingr_edva', 2015, 294),
('ingr_edva', 2016, 309),
('juli_ande', 2015, 20),
('juli_ande', 2016, 34),
('kari_thor', 2015, 261),
('kari_thor', 2016, 233),
('kjel_fjel', 2015, 1),
('kjel_fjel', 2016, 2),
('knut_bye', 2015, 2),
('kris_even', 2015, 586),
('kris_hass', 2015, 4),
('kris_hass', 2016, 11),
('kris_hass1', 2015, 391),
('kris_hass1', 2016, 334),
('lind_lore', 2015, 578),
('lind_lore', 2016, 551),
('liv_khan', 2015, 178),
('liv_khan', 2016, 183),
('magn_sand', 2015, 200),
('magn_sand', 2016, 166),
('mari_bye', 2015, 362),
('mari_dahl', 2015, 576),
('mari_dahl', 2016, 492),
('mari_eile', 2015, 18),
('mari_eile', 2016, 18),
('mari_stra', 2015, 41),
('mari_stra', 2016, 35),
('mart_halv', 2015, 63),
('mart_halv', 2016, 50),
('mona_lie', 2015, 7),
('mona_lie', 2016, 12),
('mort_iver', 2015, 2),
('mort_iver', 2016, 4),
('nils_bakk', 2015, 36),
('nils_bakk', 2016, 93),
('nils_knud', 2015, 4),
('nils_knud', 2016, 2),
('odd_moha', 2015, 352),
('olav_bråt', 2015, 17),
('olav_bråt', 2016, 19),
('olav_eike', 2015, 2),
('olav_eike', 2016, 2),
('olav_hell', 2015, 1),
('olav_lien', 2015, 408),
('olav_lien', 2016, 423),
('ole_borg', 2015, 311),
('ole_borg', 2016, 314),
('reid_hamr', 2015, 2),
('reid_hamr', 2016, 3),
('rolf_wiik', 2015, 749),
('rolf_wiik', 2016, 632),
('rune_haga', 2015, 228),
('rune_haga', 2016, 248),
('sara_okst', 2016, 5),
('silj_mykl', 2015, 1),
('silj_mykl', 2016, 2),
('sive_nord', 2016, 1),
('solv_solb', 2015, 2),
('solv_solb', 2016, 1),
('stia_andr', 2015, 8),
('stia_andr', 2016, 9),
('stia_haug', 2015, 412),
('stia_haug', 2016, 443),
('stia_henr', 2015, 62),
('stia_henr', 2016, 49),
('terj_mort', 2015, 119),
('terj_mort', 2016, 95),
('thom_inge', 2015, 15),
('thom_inge', 2016, 26),
('tom_bråt', 2015, 1),
('tom_bråt', 2016, 1),
('tom_bøe', 2015, 176),
('tom_bøe', 2016, 194),
('tom_jako', 2015, 18),
('tom_jako', 2016, 33),
('tor_dale', 2015, 408),
('tore_gulb', 2015, 375),
('tore_gulb', 2016, 342),
('tore_svee', 2015, 1156),
('tove_moe', 2015, 321),
('tove_moe', 2016, 352),
('trin_kals', 2016, 22),
('tron_kris', 2015, 3),
('tron_kris', 2016, 5),
('tron_moen', 2015, 8),
('tron_moen', 2016, 17),
('øyst_aase', 2015, 2),
('øyst_aase', 2016, 1),
('øyst_lore', 2015, 13),
('øyst_lore', 2016, 47),
('øyst_sæth', 2015, 831),
('øyst_sæth', 2016, 631),
('øyvi_hell', 2015, 950),
('øyvi_hell', 2016, 869),
('øyvi_jens', 2015, 3),
('øyvi_jens', 2016, 2),
('øyvi_kvam', 2015, 18),
('øyvi_vike', 2015, 20),
('øyvi_vike', 2016, 52),
('﻿hal_﻿mos', 2016, 3),
('﻿jan_tang', 2015, 2),
('﻿jan_tang', 2016, 4),
('﻿rut_nord', 2016, 368),
('﻿rut_﻿mos', 2016, 1237);

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
-- Dataark for tabell `skier`
--

INSERT INTO `skier` (`userName`, `firstName`, `lastName`, `yearOfBirth`) VALUES
('ande_andr', 'Andresen', 'Andresen', 2004),
('ande_rønn', 'Rønning', 'Rønning', 2001),
('andr_stee', 'Steen', 'Steen', 2001),
('anna_næss', 'Næss', 'Næss', 2005),
('arne_anto', 'Antonsen', 'Antonsen', 2005),
('arne_inge', 'Ingebrigtsen', 'Ingebrigtsen', 2005),
('astr_amun', 'Amundsen', 'Amundsen', 2001),
('astr_sven', 'Svendsen', 'Svendsen', 2008),
('bent_håla', 'Håland', 'Håland', 2009),
('bent_svee', 'Sveen', 'Sveen', 2003),
('beri_hans', 'Hanssen', 'Hanssen', 2003),
('bjør_aase', 'Aasen', 'Aasen', 2006),
('bjør_ali', 'Ali', 'Ali', 2008),
('bjør_rønn', 'Rønningen', 'Rønningen', 2009),
('bjør_sand', 'Sandvik', 'Sandvik', 1997),
('bror_kals', 'Kalstad', 'Kalstad', 2006),
('bror_﻿mos', '﻿Mostuen', '﻿Mostuen', 2005),
('cami_erik', 'Eriksen', 'Eriksen', 2005),
('dani_hamm', 'Hammer', 'Hammer', 2000),
('eina_nygå', 'Nygård', 'Nygård', 2009),
('elis_ruud', 'Ruud', 'Ruud', 2003),
('elle_wiik', 'Wiik', 'Wiik', 2004),
('erik_haal', 'Haaland', 'Haaland', 2007),
('erik_lien', 'Lien', 'Lien', 2008),
('erik_pete', 'Petersen', 'Petersen', 2002),
('espe_egel', 'Egeland', 'Egeland', 2005),
('espe_haal', 'Haaland', 'Haaland', 2004),
('eva_kvam', 'Kvam', 'Kvam', 2000),
('fred_lien', 'Lien', 'Lien', 2000),
('frod_mads', 'Madsen', 'Madsen', 2008),
('frod_rønn', 'Rønningen', 'Rønningen', 2005),
('geir_birk', 'Birkeland', 'Birkeland', 2010),
('geir_herm', 'Hermansen', 'Hermansen', 2003),
('gerd_svee', 'Sveen', 'Sveen', 2001),
('gunn_berg', 'Berge', 'Berge', 2009),
('guri_nord', 'Nordli', 'Nordli', 2003),
('hann_stei', 'Steiro', 'Steiro', 2005),
('hans_foss', 'Foss', 'Foss', 1998),
('hans_løke', 'Løken', 'Løken', 2005),
('hara_bakk', 'Bakken', 'Bakken', 2002),
('heid_dani', 'Danielsen', 'Danielsen', 2005),
('helg_brei', 'Breivik', 'Breivik', 2006),
('helg_toll', 'Tollefsen', 'Tollefsen', 2003),
('henr_bern', 'Berntsen', 'Berntsen', 2003),
('henr_dale', 'Dalen', 'Dalen', 2005),
('henr_lore', 'Lorentzen', 'Lorentzen', 2006),
('hild_hass', 'Hassan', 'Hassan', 2007),
('håko_jens', 'Jensen', 'Jensen', 2005),
('ida_mykl', 'Myklebust', 'Myklebust', 2001),
('idar_kals', 'Kalstad', 'Kalstad', 2007),
('idar_kals1', 'Kalstad', 'Kalstad', 2002),
('inge_simo', 'Simonsen', 'Simonsen', 2004),
('inge_thor', 'Thorsen', 'Thorsen', 2006),
('ingr_edva', 'Edvardsen', 'Edvardsen', 2001),
('juli_ande', 'Andersson', 'Andersson', 2003),
('kari_thor', 'Thorsen', 'Thorsen', 2002),
('kjel_fjel', 'Fjeld', 'Fjeld', 2004),
('knut_bye', 'Bye', 'Bye', 2006),
('kris_even', 'Evensen', 'Evensen', 2004),
('kris_hass', 'Hassan', 'Hassan', 2003),
('kris_hass1', 'Hassan', 'Hassan', 2004),
('lind_lore', 'Lorentzen', 'Lorentzen', 2004),
('liv_khan', 'Khan', 'Khan', 2006),
('magn_sand', 'Sande', 'Sande', 2003),
('mari_bye', 'Bye', 'Bye', 2003),
('mari_dahl', 'Dahl', 'Dahl', 2004),
('mari_eile', 'Eilertsen', 'Eilertsen', 2000),
('mari_stra', 'Strand', 'Strand', 2005),
('mart_halv', 'Halvorsen', 'Halvorsen', 2002),
('mona_lie', 'Lie', 'Lie', 2004),
('mort_iver', 'Iversen', 'Iversen', 2003),
('nils_bakk', 'Bakke', 'Bakke', 2003),
('nils_knud', 'Knudsen', 'Knudsen', 2006),
('odd_moha', 'Mohamed', 'Mohamed', 2005),
('olav_bråt', 'Bråthen', 'Bråthen', 2000),
('olav_eike', 'Eikeland', 'Eikeland', 2008),
('olav_hell', 'Helle', 'Helle', 2007),
('olav_lien', 'Lien', 'Lien', 2002),
('ole_borg', 'Borge', 'Borge', 2002),
('reid_hamr', 'Hamre', 'Hamre', 2008),
('rolf_wiik', 'Wiik', 'Wiik', 2002),
('rune_haga', 'Haga', 'Haga', 2005),
('sara_okst', 'Okstad', 'Okstad', 2003),
('silj_mykl', 'Myklebust', 'Myklebust', 2007),
('sive_nord', 'Nordli', 'Nordli', 2009),
('solv_solb', 'Solbakken', 'Solbakken', 2004),
('stia_andr', 'Andreassen', 'Andreassen', 2004),
('stia_haug', 'Haugland', 'Haugland', 2002),
('stia_henr', 'Henriksen', 'Henriksen', 2001),
('terj_mort', 'Mortensen', 'Mortensen', 2003),
('thom_inge', 'Ingebrigtsen', 'Ingebrigtsen', 2006),
('tom_bråt', 'Bråthen', 'Bråthen', 2008),
('tom_bøe', 'Bøe', 'Bøe', 2008),
('tom_jako', 'Jakobsen', 'Jakobsen', 2002),
('tor_dale', 'Dalen', 'Dalen', 2005),
('tore_gulb', 'Gulbrandsen', 'Gulbrandsen', 2005),
('tore_svee', 'Sveen', 'Sveen', 2001),
('tove_moe', 'Moe', 'Moe', 2002),
('trin_kals', 'Kalstad', 'Kalstad', 2009),
('tron_kris', 'Kristensen', 'Kristensen', 2006),
('tron_moen', 'Moen', 'Moen', 2004),
('øyst_aase', 'Aasen', 'Aasen', 2007),
('øyst_lore', 'Lorentzen', 'Lorentzen', 2004),
('øyst_sæth', 'Sæther', 'Sæther', 2000),
('øyvi_hell', 'Helle', 'Helle', 2000),
('øyvi_jens', 'Jenssen', 'Jenssen', 1999),
('øyvi_kvam', 'Kvam', 'Kvam', 2000),
('øyvi_vike', 'Viken', 'Viken', 2004),
('﻿hal_﻿mos', '﻿Mostuen', '﻿Mostuen', 2009),
('﻿jan_tang', 'Tangen', 'Tangen', 2007),
('﻿rut_nord', 'Nordli', 'Nordli', 2006),
('﻿rut_﻿mos', '﻿Mostuen', '﻿Mostuen', 2002);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affiliatedWith`
--
ALTER TABLE `affiliatedWith`
  ADD PRIMARY KEY (`seasonYear`,`clubID`,`skierUserName`) USING BTREE,
  ADD KEY `affiliatedWith_ibfk_3` (`skierUserName`),
  ADD KEY `clubID` (`clubID`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`name`),
  ADD KEY `city_ibfk_1` (`countyName`);

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
-- Indexes for table `skiedInTotal`
--
ALTER TABLE `skiedInTotal`
  ADD PRIMARY KEY (`skierUserName`,`seasonYear`);

--
-- Indexes for table `skier`
--
ALTER TABLE `skier`
  ADD PRIMARY KEY (`userName`);

--
-- Begrensninger for dumpede tabeller
--

--
-- Begrensninger for tabell `affiliatedWith`
--
ALTER TABLE `affiliatedWith`
  ADD CONSTRAINT `affiliatedWith_ibfk_1` FOREIGN KEY (`seasonYear`) REFERENCES `season` (`year`) ON UPDATE CASCADE,
  ADD CONSTRAINT `affiliatedWith_ibfk_3` FOREIGN KEY (`skierUserName`) REFERENCES `skier` (`userName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `affiliatedWith_ibfk_4` FOREIGN KEY (`clubID`) REFERENCES `club` (`id`) ON UPDATE CASCADE;

--
-- Begrensninger for tabell `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`countyName`) REFERENCES `county` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Begrensninger for tabell `club`
--
ALTER TABLE `club`
  ADD CONSTRAINT `club_ibfk_1` FOREIGN KEY (`cityName`) REFERENCES `city` (`name`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
