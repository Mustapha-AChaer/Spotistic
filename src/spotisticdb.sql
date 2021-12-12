-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 09:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotisticdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `albumID` int(11) NOT NULL,
  `albumName` varchar(250) NOT NULL,
  `numberOfSongs` int(11) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `singersID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`albumID`, `albumName`, `numberOfSongs`, `releaseDate`, `singersID`) VALUES
(1, 'Certified Lover Boy', 10, '2021-11-17', 1),
(3, 'Scorpion', 4, '2018-06-28', 1),
(4, 'Anti', 12, '2016-01-28', 3),
(5, 'Loud', 7, '2011-11-12', 3),
(6, 'Good Girl Gone Bad', 3, '2007-12-10', 3),
(7, 'My Turn', 4, '2020-02-28', 4),
(8, 'Harder Than Ever', 5, '2018-05-18', 4),
(9, 'She Wolf', 7, '2009-10-09', 5),
(10, 'Laundry Service', 4, '2001-11-13', 5),
(11, 'Live from paris', 7, '2001-11-13', 5);

-- --------------------------------------------------------

--
-- Table structure for table `singers`
--

CREATE TABLE `singers` (
  `singersID` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `monthOfBirth` varchar(250) NOT NULL,
  `monthlyListens` int(11) NOT NULL,
  `nationality` varchar(250) NOT NULL,
  `imgurl` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `singers`
--

INSERT INTO `singers` (`singersID`, `name`, `monthOfBirth`, `monthlyListens`, `nationality`, `imgurl`) VALUES
(1, 'Drake', 'January', 20005345, 'Canadian', 'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTQ3NTI2OTA4NzY5MjE2MTI4/drake_photo_by_prince_williams_wireimage_getty_479503454.jpg'),
(3, 'Rihanna', 'February', 2399922, 'American', 'https://upload.wikimedia.org/wikipedia/commons/c/c2/Rihanna_Fenty_2018.png'),
(4, 'Lil Baby ', 'December', 403242, 'American', 'https://i.scdn.co/image/ab6761610000e5eb2161ef3bab0e5e922a1c297d'),
(5, 'Shakira', 'February', 893200, 'Columbian', 'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTgwMTgyMTgzOTk3MDg4ODkw/gettyimages-483195065.jpg'),
(6, 'Maroon 5', '', 89243433, 'American', 'https://etbilarabi.com/sites/default/files/styles/trending_500/public/2019-11/maroon-5-2010-billboard-1548.jpg?h=53177107&itok=9GS9Es7S'),
(7, 'Linkin Park', '', 784788322, 'American', 'https://townsquare.media/site/366/files/2014/12/Linkin-Park.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `songID` int(11) NOT NULL,
  `songName` varchar(250) DEFAULT NULL,
  `albID` int(11) DEFAULT NULL,
  `artistID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`songID`, `songName`, `albID`, `artistID`) VALUES
(1, 'Champagne Poetry', 1, 1),
(2, 'Papi\'s Home', 1, 1),
(3, 'Girls want Girls', 1, 1),
(4, 'Survival', 3, 1),
(5, 'Nonstop', 3, 1),
(6, 'Consideration', 4, 3),
(7, 'James Joint', 4, 3),
(8, 'Kiss It Better', 4, 3),
(9, 'S&M', 5, 3),
(10, 'What\'s My Name', 5, 3),
(11, 'Umbrella', 6, 3),
(12, 'Push Up On Me', 6, 3),
(13, 'Intro', 8, 4),
(14, 'Spazz', 8, 4),
(15, 'Get Ugly', 7, 4),
(16, 'Heatiin Up', 7, 4),
(17, 'How', 7, 4),
(18, 'Woah', 7, 4),
(19, 'Live Off Ny Closet', 7, 4),
(20, 'She wolf', 9, 5),
(21, 'Did it again', 9, 5),
(22, 'Long Time', 9, 5),
(23, 'Why Wait', 9, 5),
(24, 'Good Stuff', 9, 5),
(25, 'Men in this town', 9, 5),
(26, 'Objection', 10, 5),
(27, 'Underneath Your Clothes', 10, 5),
(28, 'Whenever, Wherever', 10, 5),
(29, 'Rules', 10, 5),
(30, 'The One', 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`) VALUES
(1, 'Mustapha Mohammad Abou Chaer', 'mustapha.abouchaar@lau.edu', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'NORMAL'),
(2, 'Lebanese American University', 'mustapha.abouchaer@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'NORMAL'),
(10, 'Maher Dana', 'maher@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'NORMAL'),
(11, 'Maher Dana', 'mahekdakldr@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'NORMAL'),
(12, 'lm', 'lm@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'NORMAL'),
(14, 'Mustapha', 'm2@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'NORMAL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`albumID`),
  ADD KEY `singersID` (`singersID`);

--
-- Indexes for table `singers`
--
ALTER TABLE `singers`
  ADD PRIMARY KEY (`singersID`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`songID`),
  ADD KEY `albID` (`albID`),
  ADD KEY `artistID` (`artistID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `albumID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `singers`
--
ALTER TABLE `singers`
  MODIFY `singersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `songID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`singersID`) REFERENCES `singers` (`singersID`);

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`albID`) REFERENCES `albums` (`albumID`),
  ADD CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`artistID`) REFERENCES `singers` (`singersID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
