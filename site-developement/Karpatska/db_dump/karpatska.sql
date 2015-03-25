-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: St 25.Mar 2015, 16:08
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
  `answerType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answerText` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `answers`
--

INSERT INTO `answers` (`id`, `answerType`, `question_id`, `answerText`) VALUES
(1, 'radio', 8, 'občianske združenie'),
(2, 'radio', 8, 'nezisková organizácia'),
(3, 'radio', 8, 'neinvestičný fond'),
(4, 'radio', 8, 'nadácia'),
(5, 'text', 1, ''),
(6, 'text', 2, ''),
(7, 'text', 3, ''),
(9, 'text', 4, ''),
(10, 'text', 5, ''),
(11, 'text', 6, ''),
(12, 'text', 7, ''),
(13, 'text', 9, ''),
(14, 'text', 10, ''),
(15, 'textDisabled', 11, ''),
(16, 'textDisabled', 12, ''),
(17, 'textDisabled', 13, ''),
(18, 'text', 14, ''),
(19, 'textDisabled', 15, ''),
(20, 'text', 16, ''),
(21, 'text', 17, ''),
(22, 'text', 18, ''),
(23, 'text', 19, ''),
(24, 'text', 25, ''),
(25, 'text', 26, ''),
(26, 'text', 27, ''),
(27, 'date', 29, ''),
(28, 'date', 30, ''),
(39, 'text', 32, ''),
(40, 'text', 33, ''),
(41, 'text', 34, ''),
(42, 'text', 36, ''),
(43, 'textDisabled', 37, ''),
(44, 'textDisabled', 38, ''),
(45, 'textDisabled', 39, ''),
(46, 'textDisabled', 40, ''),
(47, 'textarea', 41, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `company`
--

INSERT INTO `company` (`id`, `ico`, `address`, `county`, `region`, `type`, `bank_name`, `bank_address`, `account_num`, `repr_name`, `repr_email`, `dic`, `password`, `salt`, `repr_phone`) VALUES
(4, 12345678, 'Moldavská cesta 24', 'Košice', 'Košický', 'sro', 'Banka', 'Hlavná 1', 'SK3302000000000000012351', 'Admin Adminovsky', 'frank238238@gmail.com', 1234567890, '846cc2fe8b93c6ac62f34aa3ad3c4eb7', '5ecf195bbd8c07f4c50f6e8ef6aae07c', '+421908483898');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `form`
--

CREATE TABLE IF NOT EXISTS `form` (
`id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `form`
--

INSERT INTO `form` (`id`, `name`) VALUES
(1, 'Prehlásenie o partnerstve'),
(2, 'Žiadosť o grant');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `question`
--

CREATE TABLE IF NOT EXISTS `question` (
`id` int(11) NOT NULL,
  `questionText` longtext COLLATE utf8_unicode_ci NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'question'
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `question`
--

INSERT INTO `question` (`id`, `questionText`, `form_id`, `position`, `type`) VALUES
(1, 'Organizácia (partner)', 1, 0, 'question'),
(2, 'Kontaktná osoba', 1, 0, 'question'),
(3, 'Pozícia v organizácii', 1, 0, 'question'),
(4, 'Úloha partnera v projekte\r\n', 1, 0, 'question'),
(5, 'Podpis štatutárneho zástupcu partnera', 1, 0, 'question'),
(6, 'Podpis štatutárneho zástupcu žiadateľa o grant\r\n', 1, 0, 'question'),
(7, 'Miesto', 1, 0, 'question'),
(8, 'Forma žiadateľa', 2, 2, 'question'),
(9, 'Názov projektu', 2, 1, 'question'),
(10, 'Názov žiadateľa', 2, 2, 'question'),
(11, 'Ulica', 2, 4, 'question'),
(12, 'Obec/mesto', 2, 5, 'question'),
(13, 'Okres', 2, 6, 'question'),
(14, 'Telefón', 2, 7, 'question'),
(15, 'IČO', 2, 8, 'question'),
(16, 'Meno a priezvisko', 2, 10, 'question'),
(17, 'Trvalý pobyt', 2, 11, 'question'),
(18, 'Telefón', 2, 12, 'question'),
(19, 'Email', 2, 13, 'question'),
(20, 'Osoba zodpovedná za projekt', 2, 14, 'heading'),
(21, 'Štatutár žiadateľa', 2, 9, 'heading'),
(23, 'Žiadateľ', 2, 0, 'heading'),
(25, 'Meno a priezvisko', 2, 15, 'question'),
(26, 'Telefón', 2, 16, 'question'),
(27, 'Email', 2, 17, 'question'),
(28, 'Trvanie projektu', 2, 18, 'heading'),
(29, 'Začiatok realizácie', 2, 18, 'question'),
(30, 'Koniec realizácie', 2, 19, 'question'),
(31, 'Rozpočet grantu', 2, 20, 'heading'),
(32, 'Požadovaný grant', 2, 21, 'question'),
(33, 'Celkový rozpočet projektu', 2, 22, 'question'),
(34, 'Vklad žiadateľa ', 2, 23, 'question'),
(35, 'Bankové údaje', 2, 24, 'heading'),
(36, 'Názov účtu', 2, 25, 'question'),
(37, 'IBAN', 2, 26, 'question'),
(38, 'Názov banky', 2, 27, 'question'),
(39, 'Adresa banky', 2, 28, 'question'),
(40, 'Názov projektu', 2, 29, 'question'),
(41, 'Zhrnutie projektu', 2, 30, 'question');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `realanswer`
--

CREATE TABLE IF NOT EXISTS `realanswer` (
`id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_text` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1890 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `validator`
--

CREATE TABLE IF NOT EXISTS `validator` (
`id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `min_length` int(11) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `regex` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `validator`
--

INSERT INTO `validator` (`id`, `question_id`, `name`, `min_length`, `max_length`, `regex`) VALUES
(1, 9, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(2, 10, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(3, 11, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(4, 12, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(5, 13, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(6, 16, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(7, 17, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(10, 14, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(11, 15, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(12, 16, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(13, 17, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(14, 18, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(15, 19, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(16, 19, '\\Symfony\\Component\\Validator\\Constraints\\Email', NULL, NULL, NULL),
(17, 25, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(18, 26, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(19, 27, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(20, 27, '\\Symfony\\Component\\Validator\\Constraints\\Email', NULL, NULL, NULL),
(21, 29, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(22, 29, '\\Symfony\\Component\\Validator\\Constraints\\Date', NULL, NULL, NULL),
(23, 30, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(24, 30, '\\Symfony\\Component\\Validator\\Constraints\\Date', NULL, NULL, NULL),
(25, 32, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(26, 33, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(27, 37, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(28, 37, '\\Symfony\\Component\\Validator\\Constraints\\Iban', NULL, NULL, NULL),
(29, 38, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(30, 39, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(31, 40, '\\Symfony\\Component\\Validator\\Constraints\\NotBlank', NULL, NULL, NULL),
(32, 41, '\\Symfony\\Component\\Validator\\Constraints\\Length', NULL, 800, NULL);

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
-- Indexes for table `realanswer`
--
ALTER TABLE `realanswer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `validator`
--
ALTER TABLE `validator`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_7853126B1E27F6BF` (`question_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `realanswer`
--
ALTER TABLE `realanswer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1890;
--
-- AUTO_INCREMENT for table `validator`
--
ALTER TABLE `validator`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
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

--
-- Obmedzenie pre tabuľku `validator`
--
ALTER TABLE `validator`
ADD CONSTRAINT `FK_7853126B1E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
