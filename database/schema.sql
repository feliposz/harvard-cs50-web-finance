SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `jharvard_pset7` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `jharvard_pset7`;

CREATE TABLE `history` (
  `symbol` varchar(10) NOT NULL,
  `shares` int(11) NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `operation` char(1) NOT NULL,
  `datetime` datetime NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `portfolio` (
  `uid` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `shares` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cash` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE `history`
  ADD KEY `uid` (`uid`);

ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`uid`,`symbol`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);


ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
  
COMMIT;
