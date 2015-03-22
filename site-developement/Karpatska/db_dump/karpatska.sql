-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Ne 22.Mar 2015, 13:10
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(45, 'textDisabled', 39, '');

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
(4, 12345678, 'adminovska 1', 'Kosicke', 'Kosicky', 'sro', 'Banka', 'Domaca 4', 'SK3302000000000000012351', 'Admin Adminovsky', 'frank238238@gmail.com', 1234567890, '846cc2fe8b93c6ac62f34aa3ad3c4eb7', '5ecf195bbd8c07f4c50f6e8ef6aae07c', '+421908483898');

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
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'question',
  `validator` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `question`
--

INSERT INTO `question` (`id`, `questionText`, `form_id`, `position`, `type`, `validator`) VALUES
(1, 'Organizácia (partner)', 1, 0, 'question', ''),
(2, 'Kontaktná osoba', 1, 0, 'question', ''),
(3, 'Pozícia v organizácii', 1, 0, 'question', ''),
(4, 'Úloha partnera v projekte\r\n', 1, 0, 'question', ''),
(5, 'Podpis štatutárneho zástupcu partnera', 1, 0, 'question', ''),
(6, 'Podpis štatutárneho zástupcu žiadateľa o grant\r\n', 1, 0, 'question', ''),
(7, 'Dátum a miesto', 1, 0, 'question', ''),
(8, 'Forma žiadateľa', 2, 2, 'question', 'Symfony\\Component\\Validator\\Constraints\\NotBlank'),
(9, 'Názov projektu', 2, 1, 'question', 'Symfony\\Component\\Validator\\Constraints\\NotBlank'),
(10, 'Názov žiadateľa', 2, 2, 'question', 'Symfony\\Component\\Validator\\Constraints\\NotBlank'),
(11, 'Ulica', 2, 4, 'question', 'Symfony\\Component\\Validator\\Constraints\\NotBlank'),
(12, 'Obec/mesto', 2, 5, 'question', 'Symfony\\Component\\Validator\\Constraints\\NotBlank'),
(13, 'Okres', 2, 6, 'question', 'Symfony\\Component\\Validator\\Constraints\\NotBlank'),
(14, 'Telefón', 2, 7, 'question', ''),
(15, 'IČO', 2, 8, 'question', ''),
(16, 'Meno a priezvisko', 2, 10, 'question', 'Symfony\\Component\\Validator\\Constraints\\NotBlank'),
(17, 'Trvalý pobyt', 2, 11, 'question', 'Symfony\\Component\\Validator\\Constraints\\NotBlank'),
(18, 'Telefón', 2, 12, 'question', ''),
(19, 'Email', 2, 13, 'question', 'Symfony\\Component\\Validator\\Constraints\\EmailValidator'),
(20, 'Osoba zodpovedná za projekt', 2, 14, 'heading', ''),
(21, 'Štatutár žiadateľa', 2, 9, 'heading', ''),
(23, 'Žiadateľ', 2, 0, 'heading', ''),
(25, 'Meno a priezvisko', 2, 15, 'question', 'Symfony\\Component\\Validator\\Constraints\\NotBlank'),
(26, 'Telefón', 2, 16, 'question', ''),
(27, 'Email', 2, 17, 'question', ''),
(28, 'Trvanie projektu', 2, 18, 'heading', ''),
(29, 'Začiatok realizácie', 2, 18, 'question', ''),
(30, 'Koniec realizácie', 2, 19, 'question', ''),
(31, 'Rozpočet grantu', 2, 20, 'heading', ''),
(32, 'Požadovaný grant', 2, 21, 'question', ''),
(33, 'Celkový rozpočet projektu', 2, 22, 'question', ''),
(34, 'Vklad žiadateľa ', 2, 23, 'question', ''),
(35, 'Bankové údaje', 2, 24, 'heading', ''),
(36, 'Názov účtu', 2, 25, 'question', ''),
(37, 'IBAN', 2, 26, 'question', ''),
(38, 'Názov banky', 2, 27, 'question', 'Symfony\\Component\\Validator\\Constraints\\NotBlank'),
(39, 'Adresa banky', 2, 28, 'question', 'Symfony\\Component\\Validator\\Constraints\\NotBlank');

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
) ENGINE=InnoDB AUTO_INCREMENT=1025 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `realanswer`
--

INSERT INTO `realanswer` (`id`, `form_id`, `company_id`, `question_id`, `answer_text`) VALUES
(473, 2, 4, 9, 'Moj vlastny projekt'),
(474, 2, 4, 8, 'občianske združenie'),
(475, 2, 4, 10, 'Hesto firma'),
(476, 2, 4, 11, 'adminovska 1'),
(477, 2, 4, 12, 'Kosicke'),
(478, 2, 4, 13, 'Kosicky'),
(479, 2, 4, 14, '+421908483898'),
(480, 2, 4, 15, '12345678'),
(481, 2, 4, 16, 'Franky Ferko'),
(482, 2, 4, 17, 'Vyšný Čaj 15'),
(483, 2, 4, 18, '+421908483898'),
(484, 2, 4, 19, 'frank238238@gmail.com'),
(485, 2, 4, 25, 'Johny Kovalčik'),
(486, 2, 4, 26, '+421905358747'),
(487, 2, 4, 27, 'johny.kovalcik@johny.com'),
(488, 2, 4, 29, '2015-03-20'),
(489, 2, 4, 30, '2015-03-31'),
(490, 2, 4, 32, '3300'),
(491, 2, 4, 33, '4000'),
(492, 2, 4, 34, '700'),
(493, 2, 4, 36, 'Kradnem'),
(494, 2, 4, 37, 'SK3302000000000000012351'),
(495, 2, 4, 38, 'Banka'),
(496, 2, 4, 39, 'Domaca 4'),
(497, 2, 4, 9, 'Moj vlastny projekt'),
(498, 2, 4, 8, 'občianske združenie'),
(499, 2, 4, 10, 'Hesto firma'),
(500, 2, 4, 11, 'adminovska 1'),
(501, 2, 4, 12, 'Kosicke'),
(502, 2, 4, 13, 'Kosicky'),
(503, 2, 4, 14, '+421908483898'),
(504, 2, 4, 15, '12345678'),
(505, 2, 4, 16, 'Franky Ferko'),
(506, 2, 4, 17, 'Vyšný Čaj 15'),
(507, 2, 4, 18, '+421908483898'),
(508, 2, 4, 19, 'frank238238@gmail.com'),
(509, 2, 4, 25, 'Johny Kovalčik'),
(510, 2, 4, 26, '+421905358747'),
(511, 2, 4, 27, 'johny.kovalcik@johny.com'),
(512, 2, 4, 29, '2015-03-20'),
(513, 2, 4, 30, '2015-03-31'),
(514, 2, 4, 32, '3300'),
(515, 2, 4, 33, '4000'),
(516, 2, 4, 34, '700'),
(517, 2, 4, 36, 'Kradnem'),
(518, 2, 4, 37, 'SK3302000000000000012351'),
(519, 2, 4, 38, 'Banka'),
(520, 2, 4, 39, 'Domaca 4'),
(521, 2, 4, 9, 'Moj vlastny projekt'),
(522, 2, 4, 8, 'občianske združenie'),
(523, 2, 4, 10, 'Hesto firma'),
(524, 2, 4, 11, 'adminovska 1'),
(525, 2, 4, 12, 'Kosicke'),
(526, 2, 4, 13, 'Kosicky'),
(527, 2, 4, 14, '+421908483898'),
(528, 2, 4, 15, '12345678'),
(529, 2, 4, 16, 'Franky Ferko'),
(530, 2, 4, 17, 'Vyšný Čaj 15'),
(531, 2, 4, 18, '+421908483898'),
(532, 2, 4, 19, 'frank238238@gmail.com'),
(533, 2, 4, 25, 'Johny Kovalčik'),
(534, 2, 4, 26, '+421905358747'),
(535, 2, 4, 27, 'johny.kovalcik@johny.com'),
(536, 2, 4, 29, '2015-03-20'),
(537, 2, 4, 30, '2015-03-31'),
(538, 2, 4, 32, '3300'),
(539, 2, 4, 33, '4000'),
(540, 2, 4, 34, '700'),
(541, 2, 4, 36, 'Kradnem'),
(542, 2, 4, 37, 'SK3302000000000000012351'),
(543, 2, 4, 38, 'Banka'),
(544, 2, 4, 39, 'Domaca 4'),
(545, 2, 4, 9, 'Moj vlastny projekt'),
(546, 2, 4, 8, 'občianske združenie'),
(547, 2, 4, 10, 'Hesto firma'),
(548, 2, 4, 11, 'adminovska 1'),
(549, 2, 4, 12, 'Kosicke'),
(550, 2, 4, 13, 'Kosicky'),
(551, 2, 4, 14, '+421908483898'),
(552, 2, 4, 15, '12345678'),
(553, 2, 4, 16, 'Franky Ferko'),
(554, 2, 4, 17, 'Vyšný Čaj 15'),
(555, 2, 4, 18, '+421908483898'),
(556, 2, 4, 19, 'frank238238@gmail.com'),
(557, 2, 4, 25, 'Johny Kovalčik'),
(558, 2, 4, 26, '+421905358747'),
(559, 2, 4, 27, 'johny.kovalcik@johny.com'),
(560, 2, 4, 29, '2015-03-20'),
(561, 2, 4, 30, '2015-03-31'),
(562, 2, 4, 32, '3300'),
(563, 2, 4, 33, '4000'),
(564, 2, 4, 34, '700'),
(565, 2, 4, 36, 'Kradnem'),
(566, 2, 4, 37, 'SK3302000000000000012351'),
(567, 2, 4, 38, 'Banka'),
(568, 2, 4, 39, 'Domaca 4'),
(569, 2, 4, 9, 'Moj vlastny projekt'),
(570, 2, 4, 8, 'občianske združenie'),
(571, 2, 4, 10, 'Hesto firma'),
(572, 2, 4, 11, 'adminovska 1'),
(573, 2, 4, 12, 'Kosicke'),
(574, 2, 4, 13, 'Kosicky'),
(575, 2, 4, 14, '+421908483898'),
(576, 2, 4, 15, '12345678'),
(577, 2, 4, 16, 'Franky Ferko'),
(578, 2, 4, 17, 'Vyšný Čaj 15'),
(579, 2, 4, 18, '+421908483898'),
(580, 2, 4, 19, 'frank238238@gmail.com'),
(581, 2, 4, 25, 'Johny Kovalčik'),
(582, 2, 4, 26, '+421905358747'),
(583, 2, 4, 27, 'johny.kovalcik@johny.com'),
(584, 2, 4, 29, '2015-03-20'),
(585, 2, 4, 30, '2015-03-31'),
(586, 2, 4, 32, '3300'),
(587, 2, 4, 33, '4000'),
(588, 2, 4, 34, '700'),
(589, 2, 4, 36, 'Kradnem'),
(590, 2, 4, 37, 'SK3302000000000000012351'),
(591, 2, 4, 38, 'Banka'),
(592, 2, 4, 39, 'Domaca 4'),
(593, 2, 4, 9, 'Moj vlastny projekt'),
(594, 2, 4, 8, 'občianske združenie'),
(595, 2, 4, 10, 'Hesto firma'),
(596, 2, 4, 11, 'adminovska 1'),
(597, 2, 4, 12, 'Kosicke'),
(598, 2, 4, 13, 'Kosicky'),
(599, 2, 4, 14, '+421908483898'),
(600, 2, 4, 15, '12345678'),
(601, 2, 4, 16, 'Franky Ferko'),
(602, 2, 4, 17, 'Vyšný Čaj 15'),
(603, 2, 4, 18, '+421908483898'),
(604, 2, 4, 19, 'frank238238@gmail.com'),
(605, 2, 4, 25, 'Johny Kovalčik'),
(606, 2, 4, 26, '+421905358747'),
(607, 2, 4, 27, 'johny.kovalcik@johny.com'),
(608, 2, 4, 29, '2015-03-20'),
(609, 2, 4, 30, '2015-03-31'),
(610, 2, 4, 32, '3300'),
(611, 2, 4, 33, '4000'),
(612, 2, 4, 34, '700'),
(613, 2, 4, 36, 'Kradnem'),
(614, 2, 4, 37, 'SK3302000000000000012351'),
(615, 2, 4, 38, 'Banka'),
(616, 2, 4, 39, 'Domaca 4'),
(617, 2, 4, 9, 'Moj vlastny projekt'),
(618, 2, 4, 8, 'občianske združenie'),
(619, 2, 4, 10, 'Hesto firma'),
(620, 2, 4, 11, 'adminovska 1'),
(621, 2, 4, 12, 'Kosicke'),
(622, 2, 4, 13, 'Kosicky'),
(623, 2, 4, 14, '+421908483898'),
(624, 2, 4, 15, '12345678'),
(625, 2, 4, 16, 'Franky Ferko'),
(626, 2, 4, 17, 'Vyšný Čaj 15'),
(627, 2, 4, 18, '+421908483898'),
(628, 2, 4, 19, 'frank238238@gmail.com'),
(629, 2, 4, 25, 'Johny Kovalčik'),
(630, 2, 4, 26, '+421905358747'),
(631, 2, 4, 27, 'johny.kovalcik@johny.com'),
(632, 2, 4, 29, '2015-03-20'),
(633, 2, 4, 30, '2015-03-31'),
(634, 2, 4, 32, '3300'),
(635, 2, 4, 33, '4000'),
(636, 2, 4, 34, '700'),
(637, 2, 4, 36, 'Kradnem'),
(638, 2, 4, 37, 'SK3302000000000000012351'),
(639, 2, 4, 38, 'Banka'),
(640, 2, 4, 39, 'Domaca 4'),
(641, 2, 4, 9, 'Moj vlastny projekt'),
(642, 2, 4, 8, 'občianske združenie'),
(643, 2, 4, 10, 'Hesto firma'),
(644, 2, 4, 11, 'adminovska 1'),
(645, 2, 4, 12, 'Kosicke'),
(646, 2, 4, 13, 'Kosicky'),
(647, 2, 4, 14, '+421908483898'),
(648, 2, 4, 15, '12345678'),
(649, 2, 4, 16, 'Franky Ferko'),
(650, 2, 4, 17, 'Vyšný Čaj 15'),
(651, 2, 4, 18, '+421908483898'),
(652, 2, 4, 19, 'frank238238@gmail.com'),
(653, 2, 4, 25, 'Johny Kovalčik'),
(654, 2, 4, 26, '+421905358747'),
(655, 2, 4, 27, 'johny.kovalcik@johny.com'),
(656, 2, 4, 29, '2015-03-20'),
(657, 2, 4, 30, '2015-03-31'),
(658, 2, 4, 32, '3300'),
(659, 2, 4, 33, '4000'),
(660, 2, 4, 34, '700'),
(661, 2, 4, 36, 'Kradnem'),
(662, 2, 4, 37, 'SK3302000000000000012351'),
(663, 2, 4, 38, 'Banka'),
(664, 2, 4, 39, 'Domaca 4'),
(665, 2, 4, 9, 'Moj vlastny projekt'),
(666, 2, 4, 8, 'občianske združenie'),
(667, 2, 4, 10, 'Hesto firma'),
(668, 2, 4, 11, 'adminovska 1'),
(669, 2, 4, 12, 'Kosicke'),
(670, 2, 4, 13, 'Kosicky'),
(671, 2, 4, 14, '+421908483898'),
(672, 2, 4, 15, '12345678'),
(673, 2, 4, 16, 'Franky Ferko'),
(674, 2, 4, 17, 'Vyšný Čaj 15'),
(675, 2, 4, 18, '+421908483898'),
(676, 2, 4, 19, 'frank238238@gmail.com'),
(677, 2, 4, 25, 'Johny Kovalčik'),
(678, 2, 4, 26, '+421905358747'),
(679, 2, 4, 27, 'johny.kovalcik@johny.com'),
(680, 2, 4, 29, '2015-03-20'),
(681, 2, 4, 30, '2015-03-31'),
(682, 2, 4, 32, '3300'),
(683, 2, 4, 33, '4000'),
(684, 2, 4, 34, '700'),
(685, 2, 4, 36, 'Kradnem'),
(686, 2, 4, 37, 'SK3302000000000000012351'),
(687, 2, 4, 38, 'Banka'),
(688, 2, 4, 39, 'Domaca 4'),
(689, 2, 4, 9, 'Moj vlastny projekt'),
(690, 2, 4, 8, 'občianske združenie'),
(691, 2, 4, 10, 'Hesto firma'),
(692, 2, 4, 11, 'adminovska 1'),
(693, 2, 4, 12, 'Kosicke'),
(694, 2, 4, 13, 'Kosicky'),
(695, 2, 4, 14, '+421908483898'),
(696, 2, 4, 15, '12345678'),
(697, 2, 4, 16, 'Franky Ferko'),
(698, 2, 4, 17, 'Vyšný Čaj 15'),
(699, 2, 4, 18, '+421908483898'),
(700, 2, 4, 19, 'frank238238@gmail.com'),
(701, 2, 4, 25, 'Johny Kovalčik'),
(702, 2, 4, 26, '+421905358747'),
(703, 2, 4, 27, 'johny.kovalcik@johny.com'),
(704, 2, 4, 29, '2015-03-20'),
(705, 2, 4, 30, '2015-03-31'),
(706, 2, 4, 32, '3300'),
(707, 2, 4, 33, '4000'),
(708, 2, 4, 34, '700'),
(709, 2, 4, 36, 'Kradnem'),
(710, 2, 4, 37, 'SK3302000000000000012351'),
(711, 2, 4, 38, 'Banka'),
(712, 2, 4, 39, 'Domaca 4'),
(713, 2, 4, 9, 'Moj vlastny projekt'),
(714, 2, 4, 8, 'občianske združenie'),
(715, 2, 4, 10, 'Hesto firma'),
(716, 2, 4, 11, 'adminovska 1'),
(717, 2, 4, 12, 'Kosicke'),
(718, 2, 4, 13, 'Kosicky'),
(719, 2, 4, 14, '+421908483898'),
(720, 2, 4, 15, '12345678'),
(721, 2, 4, 16, 'Franky Ferko'),
(722, 2, 4, 17, 'Vyšný Čaj 15'),
(723, 2, 4, 18, '+421908483898'),
(724, 2, 4, 19, 'frank238238@gmail.com'),
(725, 2, 4, 25, 'Johny Kovalčik'),
(726, 2, 4, 26, '+421905358747'),
(727, 2, 4, 27, 'johny.kovalcik@johny.com'),
(728, 2, 4, 29, '2015-03-20'),
(729, 2, 4, 30, '2015-03-31'),
(730, 2, 4, 32, '3300'),
(731, 2, 4, 33, '4000'),
(732, 2, 4, 34, '700'),
(733, 2, 4, 36, 'Kradnem'),
(734, 2, 4, 37, 'SK3302000000000000012351'),
(735, 2, 4, 38, 'Banka'),
(736, 2, 4, 39, 'Domaca 4'),
(737, 2, 4, 9, 'Moj vlastny projekt'),
(738, 2, 4, 8, 'občianske združenie'),
(739, 2, 4, 10, 'Hesto firma'),
(740, 2, 4, 11, 'adminovska 1'),
(741, 2, 4, 12, 'Kosicke'),
(742, 2, 4, 13, 'Kosicky'),
(743, 2, 4, 14, '+421908483898'),
(744, 2, 4, 15, '12345678'),
(745, 2, 4, 16, 'Franky Ferko'),
(746, 2, 4, 17, 'Vyšný Čaj 15'),
(747, 2, 4, 18, '+421908483898'),
(748, 2, 4, 19, 'frank238238@gmail.com'),
(749, 2, 4, 25, 'Johny Kovalčik'),
(750, 2, 4, 26, '+421905358747'),
(751, 2, 4, 27, 'johny.kovalcik@johny.com'),
(752, 2, 4, 29, '2015-03-20'),
(753, 2, 4, 30, '2015-03-31'),
(754, 2, 4, 32, '3300'),
(755, 2, 4, 33, '4000'),
(756, 2, 4, 34, '700'),
(757, 2, 4, 36, 'Kradnem'),
(758, 2, 4, 37, 'SK3302000000000000012351'),
(759, 2, 4, 38, 'Banka'),
(760, 2, 4, 39, 'Domaca 4'),
(761, 2, 4, 9, 'Moj vlastny projekt'),
(762, 2, 4, 8, 'občianske združenie'),
(763, 2, 4, 10, 'Hesto firma'),
(764, 2, 4, 11, 'adminovska 1'),
(765, 2, 4, 12, 'Kosicke'),
(766, 2, 4, 13, 'Kosicky'),
(767, 2, 4, 14, '+421908483898'),
(768, 2, 4, 15, '12345678'),
(769, 2, 4, 16, 'Franky Ferko'),
(770, 2, 4, 17, 'Vyšný Čaj 15'),
(771, 2, 4, 18, '+421908483898'),
(772, 2, 4, 19, 'frank238238@gmail.com'),
(773, 2, 4, 25, 'Johny Kovalčik'),
(774, 2, 4, 26, '+421905358747'),
(775, 2, 4, 27, 'johny.kovalcik@johny.com'),
(776, 2, 4, 29, '2015-03-20'),
(777, 2, 4, 30, '2015-03-31'),
(778, 2, 4, 32, '3300'),
(779, 2, 4, 33, '4000'),
(780, 2, 4, 34, '700'),
(781, 2, 4, 36, 'Kradnem'),
(782, 2, 4, 37, 'SK3302000000000000012351'),
(783, 2, 4, 38, 'Banka'),
(784, 2, 4, 39, 'Domaca 4'),
(785, 2, 4, 9, 'Moj vlastny projekt'),
(786, 2, 4, 8, 'občianske združenie'),
(787, 2, 4, 10, 'Hesto firma'),
(788, 2, 4, 11, 'adminovska 1'),
(789, 2, 4, 12, 'Kosicke'),
(790, 2, 4, 13, 'Kosicky'),
(791, 2, 4, 14, '+421908483898'),
(792, 2, 4, 15, '12345678'),
(793, 2, 4, 16, 'Franky Ferko'),
(794, 2, 4, 17, 'Vyšný Čaj 15'),
(795, 2, 4, 18, '+421908483898'),
(796, 2, 4, 19, 'frank238238@gmail.com'),
(797, 2, 4, 25, 'Johny Kovalčik'),
(798, 2, 4, 26, '+421905358747'),
(799, 2, 4, 27, 'johny.kovalcik@johny.com'),
(800, 2, 4, 29, '2015-03-20'),
(801, 2, 4, 30, '2015-03-31'),
(802, 2, 4, 32, '3300'),
(803, 2, 4, 33, '4000'),
(804, 2, 4, 34, '700'),
(805, 2, 4, 36, 'Kradnem'),
(806, 2, 4, 37, 'SK3302000000000000012351'),
(807, 2, 4, 38, 'Banka'),
(808, 2, 4, 39, 'Domaca 4'),
(809, 2, 4, 9, 'Moj vlastny projekt'),
(810, 2, 4, 8, 'občianske združenie'),
(811, 2, 4, 10, 'Hesto firma'),
(812, 2, 4, 11, 'adminovska 1'),
(813, 2, 4, 12, 'Kosicke'),
(814, 2, 4, 13, 'Kosicky'),
(815, 2, 4, 14, '+421908483898'),
(816, 2, 4, 15, '12345678'),
(817, 2, 4, 16, 'Franky Ferko'),
(818, 2, 4, 17, 'Vyšný Čaj 15'),
(819, 2, 4, 18, '+421908483898'),
(820, 2, 4, 19, 'frank238238@gmail.com'),
(821, 2, 4, 25, 'Johny Kovalčik'),
(822, 2, 4, 26, '+421905358747'),
(823, 2, 4, 27, 'johny.kovalcik@johny.com'),
(824, 2, 4, 29, '2015-03-20'),
(825, 2, 4, 30, '2015-03-31'),
(826, 2, 4, 32, '3300'),
(827, 2, 4, 33, '4000'),
(828, 2, 4, 34, '700'),
(829, 2, 4, 36, 'Kradnem'),
(830, 2, 4, 37, 'SK3302000000000000012351'),
(831, 2, 4, 38, 'Banka'),
(832, 2, 4, 39, 'Domaca 4'),
(833, 2, 4, 9, 'Moj vlastny projekt'),
(834, 2, 4, 8, 'občianske združenie'),
(835, 2, 4, 10, 'Hesto firma'),
(836, 2, 4, 11, 'adminovska 1'),
(837, 2, 4, 12, 'Kosicke'),
(838, 2, 4, 13, 'Kosicky'),
(839, 2, 4, 14, '+421908483898'),
(840, 2, 4, 15, '12345678'),
(841, 2, 4, 16, 'Franky Ferko'),
(842, 2, 4, 17, 'Vyšný Čaj 15'),
(843, 2, 4, 18, '+421908483898'),
(844, 2, 4, 19, 'frank238238@gmail.com'),
(845, 2, 4, 25, 'Johny Kovalčik'),
(846, 2, 4, 26, '+421905358747'),
(847, 2, 4, 27, 'johny.kovalcik@johny.com'),
(848, 2, 4, 29, '2015-03-20'),
(849, 2, 4, 30, '2015-03-31'),
(850, 2, 4, 32, '3300'),
(851, 2, 4, 33, '4000'),
(852, 2, 4, 34, '700'),
(853, 2, 4, 36, 'Kradnem'),
(854, 2, 4, 37, 'SK3302000000000000012351'),
(855, 2, 4, 38, 'Banka'),
(856, 2, 4, 39, 'Domaca 4'),
(857, 2, 4, 9, 'Moj vlastny projekt'),
(858, 2, 4, 8, 'občianske združenie'),
(859, 2, 4, 10, 'Hesto firma'),
(860, 2, 4, 11, 'adminovska 1'),
(861, 2, 4, 12, 'Kosicke'),
(862, 2, 4, 13, 'Kosicky'),
(863, 2, 4, 14, '+421908483898'),
(864, 2, 4, 15, '12345678'),
(865, 2, 4, 16, 'Franky Ferko'),
(866, 2, 4, 17, 'Vyšný Čaj 15'),
(867, 2, 4, 18, '+421908483898'),
(868, 2, 4, 19, 'frank238238@gmail.com'),
(869, 2, 4, 25, 'Johny Kovalčik'),
(870, 2, 4, 26, '+421905358747'),
(871, 2, 4, 27, 'johny.kovalcik@johny.com'),
(872, 2, 4, 29, '2015-03-20'),
(873, 2, 4, 30, '2015-03-31'),
(874, 2, 4, 32, '3300'),
(875, 2, 4, 33, '4000'),
(876, 2, 4, 34, '700'),
(877, 2, 4, 36, 'Kradnem'),
(878, 2, 4, 37, 'SK3302000000000000012351'),
(879, 2, 4, 38, 'Banka'),
(880, 2, 4, 39, 'Domaca 4'),
(881, 2, 4, 9, 'Moj vlastny projekt'),
(882, 2, 4, 8, 'občianske združenie'),
(883, 2, 4, 10, 'Hesto firma'),
(884, 2, 4, 11, 'adminovska 1'),
(885, 2, 4, 12, 'Kosicke'),
(886, 2, 4, 13, 'Kosicky'),
(887, 2, 4, 14, '+421908483898'),
(888, 2, 4, 15, '12345678'),
(889, 2, 4, 16, 'Franky Ferko'),
(890, 2, 4, 17, 'Vyšný Čaj 15'),
(891, 2, 4, 18, '+421908483898'),
(892, 2, 4, 19, 'frank238238@gmail.com'),
(893, 2, 4, 25, 'Johny Kovalčik'),
(894, 2, 4, 26, '+421905358747'),
(895, 2, 4, 27, 'johny.kovalcik@johny.com'),
(896, 2, 4, 29, '2015-03-20'),
(897, 2, 4, 30, '2015-03-31'),
(898, 2, 4, 32, '3300'),
(899, 2, 4, 33, '4000'),
(900, 2, 4, 34, '700'),
(901, 2, 4, 36, 'Kradnem'),
(902, 2, 4, 37, 'SK3302000000000000012351'),
(903, 2, 4, 38, 'Banka'),
(904, 2, 4, 39, 'Domaca 4'),
(905, 2, 4, 9, 'Moj vlastny projekt'),
(906, 2, 4, 8, 'občianske združenie'),
(907, 2, 4, 10, 'Hesto firma'),
(908, 2, 4, 11, 'adminovska 1'),
(909, 2, 4, 12, 'Kosicke'),
(910, 2, 4, 13, 'Kosicky'),
(911, 2, 4, 14, '+421908483898'),
(912, 2, 4, 15, '12345678'),
(913, 2, 4, 16, 'Franky Ferko'),
(914, 2, 4, 17, 'Vyšný Čaj 15'),
(915, 2, 4, 18, '+421908483898'),
(916, 2, 4, 19, 'frank238238@gmail.com'),
(917, 2, 4, 25, 'Johny Kovalčik'),
(918, 2, 4, 26, '+421905358747'),
(919, 2, 4, 27, 'johny.kovalcik@johny.com'),
(920, 2, 4, 29, '2015-03-20'),
(921, 2, 4, 30, '2015-03-31'),
(922, 2, 4, 32, '3300'),
(923, 2, 4, 33, '4000'),
(924, 2, 4, 34, '700'),
(925, 2, 4, 36, 'Kradnem'),
(926, 2, 4, 37, 'SK3302000000000000012351'),
(927, 2, 4, 38, 'Banka'),
(928, 2, 4, 39, 'Domaca 4'),
(929, 2, 4, 9, 'Moj vlastny projekt'),
(930, 2, 4, 8, 'občianske združenie'),
(931, 2, 4, 10, 'Hesto firma'),
(932, 2, 4, 11, 'adminovska 1'),
(933, 2, 4, 12, 'Kosicke'),
(934, 2, 4, 13, 'Kosicky'),
(935, 2, 4, 14, '+421908483898'),
(936, 2, 4, 15, '12345678'),
(937, 2, 4, 16, 'Franky Ferko'),
(938, 2, 4, 17, 'Vyšný Čaj 15'),
(939, 2, 4, 18, '+421908483898'),
(940, 2, 4, 19, 'frank238238@gmail.com'),
(941, 2, 4, 25, 'Johny Kovalčik'),
(942, 2, 4, 26, '+421905358747'),
(943, 2, 4, 27, 'johny.kovalcik@johny.com'),
(944, 2, 4, 29, '2015-03-20'),
(945, 2, 4, 30, '2015-03-31'),
(946, 2, 4, 32, '3300'),
(947, 2, 4, 33, '4000'),
(948, 2, 4, 34, '700'),
(949, 2, 4, 36, 'Kradnem'),
(950, 2, 4, 37, 'SK3302000000000000012351'),
(951, 2, 4, 38, 'Banka'),
(952, 2, 4, 39, 'Domaca 4'),
(953, 2, 4, 9, 'Moj vlastny projekt'),
(954, 2, 4, 8, 'občianske združenie'),
(955, 2, 4, 10, 'Hesto firma'),
(956, 2, 4, 11, 'adminovska 1'),
(957, 2, 4, 12, 'Kosicke'),
(958, 2, 4, 13, 'Kosicky'),
(959, 2, 4, 14, '+421908483898'),
(960, 2, 4, 15, '12345678'),
(961, 2, 4, 16, 'Franky Ferko'),
(962, 2, 4, 17, 'Vyšný Čaj 15'),
(963, 2, 4, 18, '+421908483898'),
(964, 2, 4, 19, 'frank238238@gmail.com'),
(965, 2, 4, 25, 'Johny Kovalčik'),
(966, 2, 4, 26, '+421905358747'),
(967, 2, 4, 27, 'johny.kovalcik@johny.com'),
(968, 2, 4, 29, '2015-03-20'),
(969, 2, 4, 30, '2015-03-31'),
(970, 2, 4, 32, '3300'),
(971, 2, 4, 33, '4000'),
(972, 2, 4, 34, '700'),
(973, 2, 4, 36, 'Kradnem'),
(974, 2, 4, 37, 'SK3302000000000000012351'),
(975, 2, 4, 38, 'Banka'),
(976, 2, 4, 39, 'Domaca 4'),
(977, 2, 4, 9, 'Moj vlastny projekt'),
(978, 2, 4, 8, 'občianske združenie'),
(979, 2, 4, 10, 'Hesto firma'),
(980, 2, 4, 11, 'adminovska 1'),
(981, 2, 4, 12, 'Kosicke'),
(982, 2, 4, 13, 'Kosicky'),
(983, 2, 4, 14, '+421908483898'),
(984, 2, 4, 15, '12345678'),
(985, 2, 4, 16, 'Franky Ferko'),
(986, 2, 4, 17, 'Vyšný Čaj 15'),
(987, 2, 4, 18, '+421908483898'),
(988, 2, 4, 19, 'frank238238@gmail.com'),
(989, 2, 4, 25, 'Johny Kovalčik'),
(990, 2, 4, 26, '+421905358747'),
(991, 2, 4, 27, 'johny.kovalcik@johny.com'),
(992, 2, 4, 29, '2015-03-20'),
(993, 2, 4, 30, '2015-03-31'),
(994, 2, 4, 32, '3300'),
(995, 2, 4, 33, '4000'),
(996, 2, 4, 34, '700'),
(997, 2, 4, 36, 'Kradnem'),
(998, 2, 4, 37, 'SK3302000000000000012351'),
(999, 2, 4, 38, 'Banka'),
(1000, 2, 4, 39, 'Domaca 4'),
(1001, 2, 4, 9, 'Moj vlastny projekt'),
(1002, 2, 4, 8, 'občianske združenie'),
(1003, 2, 4, 10, 'Hesto firma'),
(1004, 2, 4, 11, 'adminovska 1'),
(1005, 2, 4, 12, 'Kosicke'),
(1006, 2, 4, 13, 'Kosicky'),
(1007, 2, 4, 14, '+421908483898'),
(1008, 2, 4, 15, '12345678'),
(1009, 2, 4, 16, 'Franky Ferko'),
(1010, 2, 4, 17, 'Vyšný Čaj 15'),
(1011, 2, 4, 18, '+421908483898'),
(1012, 2, 4, 19, 'frank238238@gmail.com'),
(1013, 2, 4, 25, 'Johny Kovalčik'),
(1014, 2, 4, 26, '+421905358747'),
(1015, 2, 4, 27, 'johny.kovalcik@johny.com'),
(1016, 2, 4, 29, '2015-03-20'),
(1017, 2, 4, 30, '2015-03-31'),
(1018, 2, 4, 32, '3300'),
(1019, 2, 4, 33, '4000'),
(1020, 2, 4, 34, '700'),
(1021, 2, 4, 36, 'Kradnem'),
(1022, 2, 4, 37, 'SK3302000000000000012351'),
(1023, 2, 4, 38, 'Banka'),
(1024, 2, 4, 39, 'Domaca 4');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `realanswer`
--
ALTER TABLE `realanswer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1025;
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
