-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Út 07.Apr 2015, 13:20
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

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
`id` int(11) NOT NULL,
  `answerType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answerText` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(47, 'textarea', 41, ''),
(48, 'checkbox', 48, 'z webovej stránky Karpatskej nadácia / Karpatskej vandrovky '),
(49, 'checkbox', 48, 'z facebookovej stránky Karpatskej nadácia / Karpatskej vandrovky'),
(50, 'checkbox', 48, 'z iného internetového zdroja (prosím špecifikujte)'),
(51, 'checkbox', 48, 'z rozhlasu (prosím špecifikujte)'),
(52, 'checkbox', 48, 'z televízie (prosím špecifikujte)'),
(53, 'checkbox', 48, 'z regionálnej tlače (prosím špecifikujte)'),
(54, 'checkbox', 48, 'iné (prosím špecifikujte)'),
(55, 'textarea', 47, ''),
(56, 'textarea', 46, ''),
(57, 'textarea', 45, ''),
(58, 'textarea', 44, ''),
(59, 'textarea', 43, ''),
(61, 'textarea', 42, ''),
(62, 'targets_and_activities', 49, '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `company`
--

DROP TABLE IF EXISTS `company`;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `company`
--

INSERT INTO `company` (`id`, `ico`, `address`, `county`, `region`, `type`, `bank_name`, `bank_address`, `account_num`, `repr_name`, `repr_email`, `dic`, `password`, `salt`, `repr_phone`) VALUES
(4, 12345678, 'Moldavská cesta 24', 'Košice', 'Košický', 'sro', 'Banka', 'Hlavná 1', 'SK3302000000000000012351', 'Admin Adminovsky', 'frank238238@gmail.com', 1234567890, '846cc2fe8b93c6ac62f34aa3ad3c4eb7', '5ecf195bbd8c07f4c50f6e8ef6aae07c', '+421908483898'),
(5, 87654321, 'Vyšný Čaj 15', 'Košice', 'Košický', 'nadácia', 'slsp', 'Domaca 4', 'SK3302000000000000012351', 'Frantisek Ferko', 'frantisek.ferko@ness.com', 0, '846cc2fe8b93c6ac62f34aa3ad3c4eb7', '7df04f76fdf606e37a591b5654461f57', '+421908483898'),
(6, 15975312, 'Vyšný Čaj 15', 'Košice', 'Košický', 'nadácia', 'slsp', 'Domaca 4', 'SK3112000000001987426375', 'Frantisek Ferko', 'frantisek.ferko@ness.com', 0, '846cc2fe8b93c6ac62f34aa3ad3c4eb7', 'b3592778dd8e623ac660ba707f490ad6', '+421908483898'),
(7, 12345679, 'Vysny caj 15', 'Kosice', 'Košický', 'nadácia', 'slsp', 'bratislavska 1, bratislava', 'SK3112000000001987426375', 'Fero Ferko', 'frantisek.ferko@ness.com', 0, '846cc2fe8b93c6ac62f34aa3ad3c4eb7', '5ff194f0c4f06904679924220266d298', '+421908483898'),
(9, 12345670, 'Vysny caj 15', 'Kosice', 'Košický', 'nadácia', 'slsp', 'bratislavska 1, bratislava', 'SK3112000000001987426375', 'Fero Ferko', 'frantisek.ferko@ness.com', 0, '846cc2fe8b93c6ac62f34aa3ad3c4eb7', '65a2dcf233a52b7f53425c319d366955', '+421908483898');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `file`
--

DROP TABLE IF EXISTS `file`;
CREATE TABLE IF NOT EXISTS `file` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` longtext COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `file`
--

INSERT INTO `file` (`id`, `name`, `path`, `company_id`, `form_id`) VALUES
(16, '3-formy-moje (1).docx', 'bc606f8de708adef000ad99e5bf4cb19.docx', 4, 2),
(17, '199-GAMMAINGL199GAMMAES003 (3).pdf', 'b9e4efe24d19f28b7586eceab2c832f7.pdf', 4, 2),
(18, '11088101_855541834508309_1353636527_n.jpg', '79f5e0fe4ab91cbe54f7c084ab235f03.jpg', 4, 2),
(19, '10984256_10203933966209004_5035558516040387620_n.jpg', '2f672437a934036f8348d7142665c16a.jpg', 4, 2),
(20, 'meranie001_Engler_2012.xls', 'd02be25aefe1e8060594b0a654a2e596.xls', 4, 2);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `form`
--

DROP TABLE IF EXISTS `form`;
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

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
`id` int(11) NOT NULL,
  `questionText` longtext COLLATE utf8_unicode_ci NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'question',
  `json` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `question`
--

INSERT INTO `question` (`id`, `questionText`, `form_id`, `position`, `type`, `json`, `description`) VALUES
(1, 'Organizácia (partner)', 1, 0, 'question', NULL, NULL),
(2, 'Kontaktná osoba', 1, 0, 'question', NULL, NULL),
(3, 'Pozícia v organizácii', 1, 0, 'question', NULL, NULL),
(4, 'Úloha partnera v projekte\r\n', 1, 0, 'question', NULL, NULL),
(5, 'Podpis štatutárneho zástupcu partnera', 1, 0, 'question', NULL, NULL),
(6, 'Podpis štatutárneho zástupcu žiadateľa o grant\r\n', 1, 0, 'question', NULL, NULL),
(7, 'Miesto', 1, 0, 'question', NULL, NULL),
(8, 'Forma žiadateľa', 2, 2, 'question', NULL, NULL),
(9, 'Názov projektu', 2, 1, 'question', NULL, 'Názov projektu by mal byť stručný, výstižný a ľahko zapamätateľný.'),
(10, 'Názov žiadateľa', 2, 2, 'question', NULL, NULL),
(11, 'Ulica', 2, 4, 'question', NULL, NULL),
(12, 'Obec/mesto', 2, 5, 'question', NULL, NULL),
(13, 'Okres', 2, 6, 'question', NULL, NULL),
(14, 'Telefón', 2, 7, 'question', NULL, NULL),
(15, 'IČO', 2, 8, 'question', NULL, NULL),
(16, 'Meno a priezvisko', 2, 10, 'question', NULL, NULL),
(17, 'Trvalý pobyt', 2, 11, 'question', NULL, NULL),
(18, 'Telefón', 2, 12, 'question', NULL, NULL),
(19, 'Email', 2, 13, 'question', NULL, NULL),
(20, 'Osoba zodpovedná za projekt', 2, 14, 'heading', NULL, NULL),
(21, 'Štatutár žiadateľa', 2, 9, 'heading', NULL, NULL),
(23, 'Žiadateľ', 2, 0, 'heading', NULL, NULL),
(25, 'Meno a priezvisko', 2, 15, 'question', NULL, NULL),
(26, 'Telefón', 2, 16, 'question', NULL, NULL),
(27, 'Email', 2, 17, 'question', NULL, NULL),
(28, 'Trvanie projektu', 2, 18, 'heading', NULL, NULL),
(29, 'Začiatok realizácie', 2, 18, 'question', NULL, NULL),
(30, 'Koniec realizácie', 2, 19, 'question', NULL, NULL),
(31, 'Rozpočet grantu', 2, 20, 'heading', NULL, NULL),
(32, 'Požadovaný grant', 2, 21, 'question', NULL, NULL),
(33, 'Celkový rozpočet projektu', 2, 22, 'question', NULL, NULL),
(34, 'Vklad žiadateľa ', 2, 23, 'question', NULL, NULL),
(35, 'Bankové údaje', 2, 24, 'heading', NULL, NULL),
(36, 'Názov účtu', 2, 25, 'question', NULL, NULL),
(37, 'IBAN', 2, 26, 'question', NULL, NULL),
(38, 'Názov banky', 2, 27, 'question', NULL, NULL),
(39, 'Adresa banky', 2, 28, 'question', NULL, NULL),
(40, 'Názov projektu', 2, 29, 'question', NULL, NULL),
(41, 'Zhrnutie projektu', 2, 30, 'question', NULL, 'Základná informácia o projekte, ktorá stručne, jednoducho  a zrozumiteľne odpovedá na tieto otázky:  -	Prečo a pre koho  ste sa rozhodli váš projekt realizovať? -	Čo chcete vašim projektom dosiahnuť? -	Ako to chcete dosiahnuť?'),
(42, 'Informácia o žiadateľovi', 2, 31, 'question', NULL, 'Stručná informácia o žiadateľovi, ktorá poskytne  aspoň tieto základné informácie:   - Zameranie organizácie a dátum jej vzniku. - Personálne obsadenie organizácie -  jej členská základňa, výkonná zložka. - Dokončené projekty a dosiahnuté výsledky.  - Zoznam projektov, na ktoré ste v minulosti získali podporu od Karpatskej nadácie aj s uvedením roku realizácie. '),
(43, 'Informácie o mieste, kde budete projekt realizovať', 2, 32, 'question', NULL, 'Opíšte miesto (priestor, obec/mesto alebo región), kde budete realizovať váš projekt. Kde sa nachádza? Aké je veľké? Prečo ste si vybrali právve toto miesto? Aké sú silné a slabé stránky tohto miesta? Aký úžitok váš projekt tomuto miestu prinesie?'),
(44, 'Informácie o ľuďoch, pre ktorých budete projekt realizovať', 2, 33, 'question', NULL, 'Opíšte cieľovú skupinu, na ktorú je projekt zameraný. Prečo ste sa zamerali na túto skupinu ľudí? Aké sú potreby týchto ľudí? Aký úžitok prinesie váš projekt týmto ľuďom? Koľkým ľuďom prinesie váš projekt úžitok? Kto bude využívať výsledky vášho projektu?'),
(45, 'Spôsoby informovania o projekte v tlači, televízii, na internete, atď.', 2, 34, 'question', NULL, 'Stručne a prehľadne opíšte  -	ako (článok,rozhovor, leták, plagát,video,  ...),  -	kde (tlač, televízia, rozhlas, internet, ...),  -	kedy (min. mesiac a rok)  -	a koho (stručné a výstižné označenie skupiny ľudí, pre ktorú je informácia určená)   budete o vašom projekte počas jeho realizácie informovať.'),
(46, 'Budúcnosť vášho projektu', 2, 35, 'question', NULL, 'Ak bude váš projekt pokračovat aj po skončení jeho realizácie, stručne opíšte vašu predstavu, váš plán na jeho ďalšie pokračovanie. Prípadne opíšte aj to, k akým vzdialenejším zámerom realizácia tohto projektu prispeje.'),
(47, 'Nejasnosti a riziká súvisiace s projektom ', 2, 36, 'question', NULL, 'Stručne opíšte nejasnosti a riziká, ktoré súvisia s projektom a  môžu viesť k nesplneniu vašich projektových cieľov. Napr. nejasnosti a riziká, ktoré  -	súvisia s nedostatkom financií na realizáciu projektu -	súvisia s nedodržaním termínov a rozpočtu -	súvisia s nedodržaním podmienok 5. Výzvy Fondu Karpatkej vandrovky MÁME RADI VÝCHOD -	súvisia s organizačným/personálnym zabezpečením realizácie projektu  -	súvisia s možnosťou negatívneho vplyvu projektu na životné prostredie'),
(48, 'Odkiaľ ste sa dozvedeli o 5. Výzve Fondu Karpatskej vandrovky MÁME RADI VÝCHOD?', 2, 37, 'question', NULL, NULL),
(49, 'Ciele a aktivity projektu ', 2, 38, 'question', 'true', 'Opíšte čo chcete dosiahnuť týmto projektom počas jeho trvania. Odporúčame, aby ste sa vyhli príliš veľkému počtu projektových cieľov (cca. 1-3 na projekt). Dbajte o to, aby vaše projektové ciele boli čo najkonkrétnejšie a reálne dosiahnuteľné. Opíšte ako chcete dosiahnuť cieľ (ciele) projektu – konkrétne, stručne a jasne opíšte hlavné aktivity, ktoré je potrebné zrealizovať na dosiahnutie cieľa (cieľov) projektu. Ku každej naplánovanej aktivite projektu určte čas jej realizácie (min. mesiac a rok) a priraďte k nej zodpovednú osobu.');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `realanswer`
--

DROP TABLE IF EXISTS `realanswer`;
CREATE TABLE IF NOT EXISTS `realanswer` (
`id` int(11) NOT NULL,
  `form_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `json` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=815 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `realanswer`
--

INSERT INTO `realanswer` (`id`, `form_id`, `company_id`, `question_id`, `answer_text`, `json`) VALUES
(747, 2, 5, 8, 'občianske združenie', NULL),
(748, 2, 5, 9, 'Moj vlastny projektasdsasdfsdsw', NULL),
(749, 2, 5, 10, 'Hesto firma', NULL),
(750, 2, 5, 11, 'Vyšný Čaj 15', NULL),
(751, 2, 5, 12, 'Košice', NULL),
(752, 2, 5, 13, 'Košický', NULL),
(753, 2, 5, 14, '+421908483898', NULL),
(754, 2, 5, 15, '87654321', NULL),
(755, 2, 5, 16, 'Franky Ferko', NULL),
(756, 2, 5, 17, 'Vyšný Čaj 15', NULL),
(757, 2, 5, 18, '+421908483898', NULL),
(758, 2, 5, 19, 'skola@gmail.com', NULL),
(759, 2, 5, 25, 'Johny Kovalčik', NULL),
(760, 2, 5, 26, '+421905358747', NULL),
(761, 2, 5, 27, 'johny.kovalcik@johny.com', NULL),
(762, 2, 5, 29, '2015-07-02', NULL),
(763, 2, 5, 30, '2015-07-30', NULL),
(764, 2, 5, 32, '3300', NULL),
(765, 2, 5, 33, '4000', NULL),
(766, 2, 5, 34, '700', NULL),
(767, 2, 5, 36, 'Kradnem', NULL),
(768, 2, 5, 37, 'SK3302000000000000012351', NULL),
(769, 2, 5, 38, 'slsp', NULL),
(770, 2, 5, 39, 'Domaca 4', NULL),
(771, 2, 5, 40, 'Moj vlastny projektasdsasdfsdsw', NULL),
(772, 2, 5, 41, 'dsfjksdb dhsa iusdvui sbdv uibsdiu bsiu bisudbgdisu bdsgiu ', NULL),
(773, 2, 5, 42, 'dsfjksdb dhsa iusdvui sbdv uibsdiu bsiu bisudbgdisu bdsgiu ', NULL),
(774, 2, 5, 43, 'dsfjksdb dhsa iusdvui sbdv uibsdiu bsiu bisudbgdisu bdsgiu ', NULL),
(775, 2, 5, 44, 'dsfjksdb dhsa iusdvui sbdv uibsdiu bsiu bisudbgdisu bdsgiu ', NULL),
(776, 2, 5, 45, 'vdsfjksdb dhsa iusdvui sbdv uibsdiu bsiu bisudbgdisu bdsgiu ', NULL),
(777, 2, 5, 46, 'dsfjksdb dhsa iusdvui sbdv uibsdiu bsiu bisudbgdisu bdsgiu ', NULL),
(778, 2, 5, 47, 'dsfjksdb dhsa iusdvui sbdv uibsdiu bsiu bisudbgdisu bdsgiu ', NULL),
(779, 2, 5, 48, 'z rozhlasu (prosím špecifikujte)', NULL),
(780, 2, 5, 49, '[{"activities":[{"fields":[{"value":""},{"value":""},{"value":""},{"value":""}]}],"inputField":{"value":""}}]', 'true'),
(781, 2, 4, 8, 'občianske združenie', NULL),
(782, 2, 4, 9, 'Moj vlastny projekt', NULL),
(783, 2, 4, 10, 'Hesto firma', NULL),
(784, 2, 4, 11, 'Moldavská cesta 24', NULL),
(785, 2, 4, 12, 'Košice', NULL),
(786, 2, 4, 13, 'Košický', NULL),
(787, 2, 4, 14, '+421908483898', NULL),
(788, 2, 4, 15, '12345678', NULL),
(789, 2, 4, 16, 'Franky Ferko', NULL),
(790, 2, 4, 17, 'Vyšný Čaj 15', NULL),
(791, 2, 4, 18, '+421908483898', NULL),
(792, 2, 4, 19, 'skola@gmail.com', NULL),
(793, 2, 4, 25, 'Johny Kovalčik', NULL),
(794, 2, 4, 26, '+421905358747', NULL),
(795, 2, 4, 27, 'johny.kovalcik@johny.com', NULL),
(796, 2, 4, 29, '2015-07-01', NULL),
(797, 2, 4, 30, '2015-07-31', NULL),
(798, 2, 4, 32, '3300', NULL),
(799, 2, 4, 33, '4000', NULL),
(800, 2, 4, 34, '700', NULL),
(801, 2, 4, 36, 'Ucet na grant', NULL),
(802, 2, 4, 37, 'SK3302000000000000012351', NULL),
(803, 2, 4, 38, 'Banka', NULL),
(804, 2, 4, 39, 'Hlavná 1', NULL),
(805, 2, 4, 40, 'Moj vlastny projekt', NULL),
(806, 2, 4, 41, 'fsadjibfiusdbf uisdbuif sdbib isdjf ', NULL),
(807, 2, 4, 42, 'df dsfj sdigf ishj', NULL),
(808, 2, 4, 43, 'dsf iudsab uidsfb duis ', NULL),
(809, 2, 4, 44, 'f sdf ndijf kd', NULL),
(810, 2, 4, 45, 'f sdf ndijf kd', NULL),
(811, 2, 4, 46, 'f sdf ndijf kd', NULL),
(812, 2, 4, 47, 'f sdf ndijf kd', NULL),
(813, 2, 4, 48, 'z webovej stránky Karpatskej nadácia / Karpatskej vandrovky ', NULL),
(814, 2, 4, 49, '[{"activities":[{"fields":[{"value":"sad"},{"value":"sadsad"},{"value":"sadsad"},{"value":"sadasd"}]}],"inputField":{"value":"adssad"}}]', 'true');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `validator`
--

DROP TABLE IF EXISTS `validator`;
CREATE TABLE IF NOT EXISTS `validator` (
`id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `min_length` int(11) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `regex` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Sťahujem dáta pre tabuľku `validator`
--

INSERT INTO `validator` (`id`, `question_id`, `name`, `min_length`, `max_length`, `regex`) VALUES
(1, 9, 'NotBlank', NULL, NULL, NULL),
(2, 10, 'NotBlank', NULL, NULL, NULL),
(3, 11, 'NotBlank', NULL, NULL, NULL),
(4, 12, 'NotBlank', NULL, NULL, NULL),
(5, 13, 'NotBlank', NULL, NULL, NULL),
(6, 16, 'NotBlank', NULL, NULL, NULL),
(7, 17, 'NotBlank', NULL, NULL, NULL),
(10, 14, 'NotBlank', NULL, NULL, NULL),
(11, 15, 'NotBlank', NULL, NULL, NULL),
(12, 16, 'NotBlank', NULL, NULL, NULL),
(13, 17, 'NotBlank', NULL, NULL, NULL),
(14, 18, 'NotBlank', NULL, NULL, NULL),
(15, 19, 'NotBlank', NULL, NULL, NULL),
(16, 19, 'Email', NULL, NULL, NULL),
(17, 25, 'NotBlank', NULL, NULL, NULL),
(18, 26, 'NotBlank', NULL, NULL, NULL),
(19, 27, 'NotBlank', NULL, NULL, NULL),
(20, 27, 'Email', NULL, NULL, NULL),
(21, 29, 'NotBlank', NULL, NULL, NULL),
(22, 29, 'Date', NULL, NULL, NULL),
(23, 30, 'NotBlank', NULL, NULL, NULL),
(24, 30, 'Date', NULL, NULL, NULL),
(25, 32, 'NotBlank', NULL, NULL, NULL),
(26, 33, 'NotBlank', NULL, NULL, NULL),
(27, 37, 'NotBlank', NULL, NULL, NULL),
(28, 37, 'Iban', NULL, NULL, NULL),
(29, 38, 'NotBlank', NULL, NULL, NULL),
(30, 39, 'NotBlank', NULL, NULL, NULL),
(31, 40, 'NotBlank', NULL, NULL, NULL),
(32, 41, 'Length', NULL, 800, NULL),
(33, 42, 'Length', NULL, 800, NULL),
(34, 43, 'Length', NULL, 800, NULL),
(35, 44, 'Length', NULL, 800, NULL),
(36, 45, 'Length', NULL, 800, NULL),
(37, 46, 'Length', NULL, 800, NULL),
(38, 47, 'Length', NULL, 800, NULL),
(39, 42, 'NotBlank', NULL, NULL, NULL),
(40, 43, 'NotBlank', NULL, NULL, NULL),
(41, 44, 'NotBlank', NULL, NULL, NULL),
(42, 45, 'NotBlank', NULL, NULL, NULL),
(43, 47, 'NotBlank', NULL, NULL, NULL),
(44, 46, 'NotBlank', NULL, NULL, NULL);

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
-- Indexes for table `file`
--
ALTER TABLE `file`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_2CAD992E979B1AD6` (`company_id`), ADD KEY `IDX_2CAD992E5FF69B7D` (`form_id`);

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
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_747B92EC1E27F6BF` (`question_id`), ADD KEY `IDX_747B92EC5FF69B7D` (`form_id`), ADD KEY `IDX_747B92EC979B1AD6` (`company_id`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `realanswer`
--
ALTER TABLE `realanswer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=815;
--
-- AUTO_INCREMENT for table `validator`
--
ALTER TABLE `validator`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- Obmedzenie pre exportované tabuľky
--

--
-- Obmedzenie pre tabuľku `answers`
--
ALTER TABLE `answers`
ADD CONSTRAINT `FK_9F6DFF9A1E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Obmedzenie pre tabuľku `file`
--
ALTER TABLE `file`
ADD CONSTRAINT `FK_2CAD992E5FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `form` (`id`),
ADD CONSTRAINT `FK_2CAD992E979B1AD6` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

--
-- Obmedzenie pre tabuľku `question`
--
ALTER TABLE `question`
ADD CONSTRAINT `FK_4F812B185FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `form` (`id`);

--
-- Obmedzenie pre tabuľku `realanswer`
--
ALTER TABLE `realanswer`
ADD CONSTRAINT `FK_747B92EC1E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
ADD CONSTRAINT `FK_747B92EC5FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `form` (`id`),
ADD CONSTRAINT `FK_747B92EC979B1AD6` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

--
-- Obmedzenie pre tabuľku `validator`
--
ALTER TABLE `validator`
ADD CONSTRAINT `FK_7853126B1E27F6BF` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
