-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: St 11.Mar 2015, 13:51
-- Verzia serveru: 5.6.21
-- Verzia PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáza: `karpatska`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
`id` int(11) NOT NULL,
  `answerType` longtext COLLATE utf8_unicode_ci NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answerText` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`id` int(11) NOT NULL,
  `ico` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `account_num` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `repr_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `repr_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dic` int(11) NOT NULL,
  `password` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `salt` longtext COLLATE utf8_unicode_ci NOT NULL,
  `repr_phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `company`
--

INSERT INTO `company` (`id`, `ico`, `address`, `county`, `region`, `type`, `bank_name`, `bank_address`, `account_num`, `repr_name`, `repr_email`, `dic`, `password`, `salt`, `repr_phone`) VALUES
(4, 12345678, 'adminovska 1', 'Kosicke', 'Kosicky', 'sro', 'Banka', 'Domaca 4', '1234567890/1234', 'Admin Adminovsky', 'frank238238@gmail.com', 1234567890, '846cc2fe8b93c6ac62f34aa3ad3c4eb7', '5ecf195bbd8c07f4c50f6e8ef6aae07c', '+421908483898');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `form`
--

CREATE TABLE IF NOT EXISTS `form` (
`id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `form`
--

INSERT INTO `form` (`id`, `name`) VALUES
(1, 'Prehlásenie o partnerstve');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `question`
--

CREATE TABLE IF NOT EXISTS `question` (
`id` int(11) NOT NULL,
  `questionText` longtext COLLATE utf8_unicode_ci NOT NULL,
  `form_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `question`
--

INSERT INTO `question` (`id`, `questionText`, `form_id`) VALUES
(1, 'Organizácia (partner)', 1),
(2, 'Kontaktná osoba', 1),
(3, 'Pozícia v organizácii', 1),
(4, 'Úloha partnera v projekte\r\n', 1),
(5, 'Podpis štatutárneho zástupcu partnera', 1),
(6, 'Podpis štatutárneho zástupcu žiadateľa o grant\r\n', 1),
(7, 'Dátum a miesto', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_9F6DFF9A1E27F6BF` (`question_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_800230D32B9A6D10` (`ico`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_4F812B185FF69B7D` (`form_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Obmedzenie pre exportované tabuľky
--

--
-- Obmedzenie pre tabuľku `answers`
--
ALTER TABLE `answers`
ADD CONSTRAINT `FK_9F6DFF9A1E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Obmedzenie pre tabuľku `question`
--
ALTER TABLE `question`
ADD CONSTRAINT `FK_4F812B185FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `form` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
