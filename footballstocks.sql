-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.2:3307
-- Generation Time: Apr 27, 2022 at 03:47 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `footballstocks`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`username`, `password`) VALUES
('katiehoult', 'football123'),
('peterawad', 'feetball123');

-- --------------------------------------------------------

--
-- Table structure for table `marketvaluedata`
--

CREATE TABLE `marketvaluedata` (
  `playerName` varchar(5) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` varchar(1) NOT NULL,
  `dateSignedUp` date NOT NULL,
  `currentTeam` varchar(45) NOT NULL,
  `teamLocation` varchar(45) NOT NULL,
  `teamManager` varchar(45) NOT NULL,
  `salary(£k/week)` int(11) NOT NULL,
  `startOfContract` date NOT NULL,
  `contractDuration` int(11) NOT NULL,
  `gamesPlayedThisYear` int(11) NOT NULL,
  `gamesWon` int(11) NOT NULL,
  `FG1` varchar(1) NOT NULL,
  `FG2` varchar(1) NOT NULL,
  `FG3` varchar(1) NOT NULL,
  `FG4` varchar(1) NOT NULL,
  `FG5` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketvaluedata`
--

INSERT INTO `marketvaluedata` (`playerName`, `dateOfBirth`, `gender`, `dateSignedUp`, `currentTeam`, `teamLocation`, `teamManager`, `salary(£k/week)`, `startOfContract`, `contractDuration`, `gamesPlayedThisYear`, `gamesWon`, `FG1`, `FG2`, `FG3`, `FG4`, `FG5`) VALUES
('NB004', '2001-01-01', 'M', '2018-11-15', 'NAVYBLUE', 'LONDON', 'POSHMAN', 28, '2019-01-01', 4, 16, 16, 'D', 'W', 'W', 'L', 'L'),
('NB007', '1998-09-12', 'M', '2018-12-15', 'LIGHTBLUE', 'PRESTON', 'GREY', 42, '2019-02-01', 4, 22, 17, 'L', 'W', 'W', 'W', 'D'),
('NB009', '2001-04-24', 'M', '2017-01-01', 'REDNORTH', 'LIVERPOOL', 'REDMAN', 50, '2019-01-01', 5, 22, 11, 'W', 'W', 'L', 'W', 'D'),
('NB212', '2000-01-01', 'M', '2020-11-11', 'DARKKNIGHTS', 'NEWTOWN', 'BLACK', 55, '2021-01-01', 3, 22, 12, 'W', 'W', 'W', 'W', 'W'),
('NB311', '1997-11-22', 'M', '2018-07-04', 'LIGHTBLUE', 'PRESTON', 'GREY', 59, '2019-12-01', 3, 22, 22, 'D', 'L', 'L', 'D', 'W'),
('NB320', '1999-10-27', 'M', '2016-06-01', 'LIGHTBLUE', 'PRESTON', 'GREY', 32, '2020-07-01', 3, 17, 16, 'W', 'L', 'W', 'L', 'W'),
('NB322', '2000-10-27', 'M', '2018-10-01', 'NAVYBLUE', 'LONDON', 'POSHMAN', 29, '2020-01-01', 3, 16, 11, 'W', 'L', 'L', 'W', 'W'),
('NB337', '1998-05-12', 'M', '2015-01-01', 'LIGHTGREEN', 'COVENTRY', 'BROWN', 27, '2020-12-01', 3, 18, 16, 'D', 'L', 'L', 'W', 'W'),
('NG001', '1997-04-17', 'F', '2015-04-17', 'DARKGREEN', 'LEEDS', 'GREENBOX', 14, '2020-01-01', 5, 14, 12, 'D', 'L', 'L', 'W', 'D'),
('NG004', '1999-08-05', 'F', '2018-10-01', 'LIGHTRED', 'OXFORD', 'PINKMAN', 15, '2018-12-01', 4, 17, 17, 'L', 'L', 'L', 'L', 'D'),
('NG032', '1992-11-13', 'F', '2014-01-11', 'PINKTEAM', 'BRISTOL', 'WESTMAN', 21, '2017-10-01', 5, 25, 12, 'L', 'L', 'L', 'D', 'D'),
('NG210', '1999-02-23', 'F', '2019-05-01', 'GOLDWINGS', 'LONDON', 'BRIGHTMAN', 21, '2019-06-01', 4, 20, 14, 'W', 'W', 'W', 'W', 'D'),
('NG222', '2002-01-01', 'F', '2019-12-12', 'DARKGREEN', 'LEEDS', 'GREENBOX', 14, '2020-01-01', 3, 21, 12, 'W', 'D', 'W', 'W', 'D'),
('OB001', '1997-07-31', 'M', '2017-01-01', 'REDNORTH', 'LIVERPOOL', 'REDMAN', 42, '2018-12-01', 5, 25, 17, 'W', 'D', 'D', 'W', 'W'),
('OB022', '1995-08-31', 'M', '2014-03-31', 'REDSOUTH', 'BRIGHTON', 'SOUTHMAN', 33, '2018-06-01', 4, 22, 18, 'W', 'W', 'W', 'W', 'W'),
('OB099', '1999-11-11', 'M', '2017-11-01', 'LIGHTBLUE', 'PRESTON', 'GREY', 38, '2017-12-01', 5, 21, 11, 'W', 'D', 'W', 'W', 'W'),
('OB124', '1995-09-17', 'M', '2017-06-15', 'DARKKNIGHTS', 'NEWTOWN', 'BLACK', 52, '2020-01-01', 4, 24, 13, 'D', 'D', 'D', 'L', 'W'),
('OB232', '1998-09-01', 'M', '2016-12-12', 'REDNORTH', 'LIVERPOOL', 'REDMAN', 44, '2019-12-01', 4, 19, 19, 'D', 'D', 'D', 'W', 'L'),
('OB333', '1999-01-04', 'M', '2020-06-01', 'REDSOUTH', 'BRIGHTON', 'SOUTHMAN', 38, '2020-12-01', 3, 18, 17, 'L', 'L', 'W', 'W', 'D'),
('OG005', '1991-07-22', 'F', '2011-01-01', 'LIGHTGREEN', 'COVENTRY', 'BROWN', 12, '2017-01-01', 6, 18, 15, 'D', 'D', 'W', 'W', 'L'),
('OG110', '1996-12-11', 'F', '2018-07-01', 'PINKTEAM', 'BRISTOL', 'WESTMAN', 17, '2020-09-01', 3, 24, 18, 'W', 'W', 'L', 'L', 'L');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`username`,`password`);

--
-- Indexes for table `marketvaluedata`
--
ALTER TABLE `marketvaluedata`
  ADD PRIMARY KEY (`playerName`,`dateOfBirth`,`gender`,`dateSignedUp`,`currentTeam`,`teamLocation`,`teamManager`,`salary(£k/week)`,`startOfContract`,`contractDuration`,`gamesPlayedThisYear`,`gamesWon`,`FG1`,`FG2`,`FG3`,`FG4`,`FG5`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
