-- phpMyAdmin SQL Dump
-- version 4.6.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 10, 2017 at 06:41 PM
-- Server version: 10.0.28-MariaDB-0ubuntu0.16.10.1
-- PHP Version: 7.0.13-0ubuntu0.16.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Player`
--

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `playlist`
--

TRUNCATE TABLE `playlist`;
--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `title`) VALUES
(1, 'Musique');

-- --------------------------------------------------------

--
-- Table structure for table `playlist_song`
--

DROP TABLE IF EXISTS `playlist_song`;
CREATE TABLE `playlist_song` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `song_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `playlist_song`
--

TRUNCATE TABLE `playlist_song`;
--
-- Dumping data for table `playlist_song`
--

INSERT INTO `playlist_song` (`id`, `playlist_id`, `song_id`, `song_num`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `author` varchar(256) NOT NULL,
  `cover` varchar(256) NOT NULL,
  `filename` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `song`
--

TRUNCATE TABLE `song`;
--
-- Dumping data for table `song`
--

INSERT INTO `song` (`id`, `title`, `author`, `cover`, `filename`) VALUES
(1, 'Black', '', 'black/black.jpg', 'black/Black Soundtrack.mp3'),
(2, 'Fallout', '', 'fallout/fallout.jpg', 'fallout/Fallout New Vegas Main.mp3'),
(3, 'Final Fantasy', '', 'final-fantasy/final-fantasy-cover.jpg', 'final-fantasy/Final Fantasy VII - Aerith\'s Theme [HQ].mp3'),
(4, 'Halo - Never Forget', 'Martin ODonnell & Michael Salvatori', 'halo/Halo-Original-Soundtrack-Martin-ODonnell-Michael-Salvatori.jpg', 'halo/Never Forget - Halo.mp3'),
(5, 'Heroes V', '', 'heroesV/wall_1.jpg', 'heroesV/Heroes of Might and Magic.mp3'),
(6, 'Journey', 'Austin Wintory', 'journey/journey.jpg', 'journey/Journey Soundtrack (Austin Wintory) - 17. Apotheosis.mp3'),
(7, 'Mass Effect', 'Jack Wall & Sam Hulick', 'mass-effect/Mass_effect_soundtrack.jpg', 'mass-effect/Mass Effect- The Normandy Theme (Extra Long Extended Version).mp3'),
(8, 'Medal of Honor', 'Ramin Djawadi', 'medal-of-honor/Medal_of_Honor_(EA_Games_Soundtrack).jpg', 'medal-of-honor/Medal of Honor.mp3'),
(9, 'Okami', '', 'okami/okami.jpg', 'okami/Okami.mp3'),
(10, 'Shadow of the Colossus', '', 'shadow/cover-1-shadow.jpeg', 'shadow/Shadow of the Colossus OST 08 - The Opened Way.mp3'),
(11, 'Skyrim', '', 'skyrim/skyrim.jpg', 'skyrim/Skyrim-main-theme.mp3'),
(12, 'The Witcher 3', '', 'TW3/The_Witcher_3_Wild_Hunt-Soundtrack_cover.jpg', 'TW3/02 Geralt of Rivia.ogg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlist_song`
--
ALTER TABLE `playlist_song`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `playlist_song`
--
ALTER TABLE `playlist_song`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
