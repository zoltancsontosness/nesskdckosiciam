-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Po 23.Feb 2015, 15:50
-- Verzia serveru: 5.6.21
-- Verzia PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáza: `deti_afriky`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `api_key`
--

CREATE TABLE IF NOT EXISTS `api_key` (
`id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `api_log`
--

CREATE TABLE IF NOT EXISTS `api_log` (
`id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `date_log` datetime DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `authorized` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article`
--

CREATE TABLE IF NOT EXISTS `article` (
`id_article` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `author` varchar(55) DEFAULT NULL,
  `updater` varchar(55) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_off` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logical_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `indexed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id_category` int(11) unsigned DEFAULT NULL,
  `comment_allow` char(1) DEFAULT '0',
  `comment_autovalid` char(1) DEFAULT '0',
  `comment_expire` datetime DEFAULT NULL,
  `flag` smallint(1) DEFAULT '0',
  `has_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `priority` smallint(1) unsigned NOT NULL DEFAULT '5'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article`
--

INSERT INTO `article` (`id_article`, `name`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `indexed`, `id_category`, `comment_allow`, `comment_autovalid`, `comment_expire`, `flag`, `has_url`, `priority`) VALUES
(1, '404', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(2, '401', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(3, '403', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(4, 'stante-sa-dobrovolnikom', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-20 15:21:08', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(5, 'basirista-dahaye-duay', 'admin', 'admin', '2015-02-20 15:38:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-20 15:42:05', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(6, 'paschal-emmanuel-awe', 'admin', 'admin', '2015-02-20 15:43:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-20 15:44:30', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(7, 'emiliana-nicodemus-daffi', 'admin', 'admin', '2015-02-20 16:54:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-20 16:56:11', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(8, 'naomi-naftali-yona', 'admin', 'admin', '2015-02-20 16:55:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-20 16:55:54', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(9, 'ako-podporovat', 'admin', 'admin', '2015-02-20 17:02:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 10:38:33', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(10, '1.2.2014', 'admin', NULL, '2015-02-20 17:15:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-20 17:15:28', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(11, '3.1.2015', 'admin', NULL, '2015-02-20 17:15:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-20 17:15:53', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(12, '5.2.2015', 'admin', 'admin', '2015-02-20 17:16:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 09:48:47', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(13, 'skola-yedidiass', 'admin', NULL, '2015-02-21 11:05:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 11:05:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(14, 'podporte-nas-2-z-dane', 'admin', 'admin', '2015-02-21 20:44:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 20:47:31', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(15, 'dokoncenie-triedy-a-domu-uciteov', 'admin', 'admin', '2015-02-21 21:45:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 22:04:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(17, 'potravinova-pomoc', 'admin', 'admin', '2015-02-21 22:14:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 22:25:38', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(18, NULL, NULL, NULL, '2015-02-21 22:25:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 22:25:32', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(19, NULL, NULL, NULL, '2015-02-21 22:25:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 22:25:38', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(20, 'z-africkeho-dennika-25.6.-7.7.-2014', 'admin', 'admin', '2015-02-23 12:31:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-23 12:40:28', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(21, 'yedidiass', 'admin', 'admin', '2015-02-23 15:05:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-23 15:11:30', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(22, 'state-sa-dobrovonikom', 'admin', 'admin', '2015-02-23 15:22:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-23 15:24:33', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(23, 'onas', 'admin', 'admin', '2015-02-23 15:30:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-23 15:32:52', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_category`
--

CREATE TABLE IF NOT EXISTS `article_category` (
  `id_article` int(11) unsigned NOT NULL,
  `id_category` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_comment`
--

CREATE TABLE IF NOT EXISTS `article_comment` (
`id_article_comment` int(11) unsigned NOT NULL,
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `content` text,
  `ip` varchar(40) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'If comment comes from admin, set to 1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_lang`
--

CREATE TABLE IF NOT EXISTS `article_lang` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(8) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article_lang`
--

INSERT INTO `article_lang` (`id_article`, `lang`, `url`, `title`, `subtitle`, `meta_title`, `content`, `meta_keywords`, `meta_description`, `online`) VALUES
(1, 'sk', '404', '404', NULL, NULL, '<p>The content you asked for was not found !</p>', NULL, NULL, 1),
(2, 'sk', '401', '401', 'Please login', NULL, '<p>Please login to see this content.</p>', NULL, NULL, 1),
(3, 'sk', '403', '403', 'Forbidden', NULL, '<p>This content is forbidden.</p>', NULL, NULL, 1),
(4, 'sk', 'stante-sa-dobrovolnikom', 'Staňte sa dobrovoľníkom', '', 'Staňte sa dobrovoľníkom', '<p>Sme veľmi potešení, že pre náš projekt sa otvára ďalšia možnosť pomoci nami podporovaných škôl v Dongobesh a Maretadu.V spolupráci so Sliezskou diakoniou a CZ SECAV v Třinci je možnosť vyslania dobrovoľníka zo Slovenska do našich partnerských škôl v Tanzánií.</p>', '', '', 1),
(5, 'sk', 'basirista-dahaye-duay', 'Basirista Dahaye Duay', 'Dievča, 19 rokov', '', '<p>Jej rodina má veľké materiálne starosti, jej bratovi sa nepodarilo dostať sa do základnej školy.</p>\n<p><strong>variabilný symbol: 1001</strong></p>', '', '', 1),
(6, 'sk', 'paschal-emmanuel-awe', 'Paschal Emmanuel Awe', 'Chlapec, 16 rokov.', 'Paschal Emmanuel Awe', '<p>Pochádza z chudobnej rodiny.</p>\n<p><strong>variabilný symbol: 1003</strong></p>', '', '', 1),
(7, 'sk', 'emiliana-nicodemus-daffi', 'Emiliana Nicodemus Daffi', 'Dievča, 22 rokov', 'Emiliana Nicodemus Daffi', '<p>Chodí do 1. triedy. Jej záľubou je netball. Pochádza z veľmi chudobnej rodiny.</p>\n<p><strong>variabilný symbol: 1028</strong></p>', '', '', 1),
(8, 'sk', 'naomi-naftali-yona', 'Naomi Naftali Yona', 'Dievča, 16 rokov', 'Naomi Naftali Yona', '<p>Chodí do 1. triedy. Rada hrá netball. Otec je alkoholik. Chce sa stať sestričkou.</p>\n<p><strong>variabilný symbol: 1029</strong></p>', '', '', 1),
(9, 'sk', 'ako-podporovat', 'Ako podporovať', '', 'Ako podporovať', '<p>V prvom rade ide o pravidelnú mesačnú podporu konkrétneho študenta, ktorého rodina si nemôže dovoliť platiť školné, čiastkou 17 Eur mesačne.</p>\n<p>Na podporu študenta ide celá čiastka!</p>\n<p>V prípade, že chcete podporovať študenta, kontaktujte nás <strong>nadetiafriky@detiafriky.sk .</strong></p>\n<p>Ďalej ide o podporu dobudovania a zabezpečenie základného vybavenia školy. Momentálne je najdôležitejšie dokončenie budovy pre študentov a učiteľov.</p>\n<p><b>Číslo účtu: 2100346091/8330</b></p>\n<p>Podpora potrieb detí v.s. 1999 (všeobecná podpora, nie pravidelná podpora)<br />Podpora učiteľov v.s. 2100<br />Miestnosť pre učiteľov v.s. 2200<br />Dostavba budovy pre študentov a učiteľov v.s. 2300<br />Kúpa stola a stoličky do triedy  v.s. 2500<br />Všeobecná podpora projektu v.s. 3000</p>\n<p>Všeobecná podpora projektu bude použitá na správu a propagáciu projektu.</p>', '', '', 1),
(10, 'sk', '1.2.2014', '1.2.2014', '', '1.2.2014', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit lacinia risus non luctus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. </p>', NULL, NULL, 1),
(11, 'sk', '3.1.2015', '3.1.2015', '', '3.1.2015', '<p>Curabitur pharetra accumsan rutrum. In ut tempus tortor. Aenean faucibus pharetra tortor a suscipit. Vivamus fringilla quam odio, nec mollis lacus luctus nec. Aliquam erat volutpat.</p>', NULL, NULL, 1),
(12, 'sk', '5.2.2015', '5.2.2015', '', '5.2.2015', '<p>Duis finibus metus ut tristique malesuada. Vestibulum facilisis justo ligula, nec tempus neque auctor sed. Maecenas id semper mauris. Nunc dignissim consectetur orci in faucibus.</p>\n<p><a href="files/gis.pdf" target="_blank">Si môžte prečítať tu</a></p>', '', '', 1),
(13, 'sk', 'skola-yedidiass', 'Škola Yedidiass', '', 'Škola Yedidiass', '<p>Škola Yedidiass sa nachádza v Tanzánii, v dištrikte Mbulu, pri oblasti Maretadu. Táto oblasť nie je ohraničená mestami alebo dedinami. Najbližšie väčšie mestá sú Dongobesh a Haydom.</p>', NULL, NULL, 1),
(14, 'sk', 'podporte-nas-2-z-dane', 'Podporte nás 2% z dane', '', 'Podporte nás 2% z dane', '<p>Budeme Vám veľmi vďačný za Vašu podporu 2% z Vašej dane. Pre formulár <strong><a href="files/dve_percenta_z_dane_oz_kairos.doc" target="_blank">kliknite TU</a></strong>. Prosíme Vás tiež o zaslanie fotografie alebo oskenovaného vyplneného formulára na adresu <b style="font-size: 1em; line-height: 1.5em;"><a href="mailto:detiafriky@detiafriky.sk">detiafriky@detiafriky.sk</a></b> kvôli identifikácií podporovateľa a priradeniu Vašej podpory pre tento  projekt.</p>\n<p>Ďakujeme Vám</p>\n<p>Tím DetiAfriky</p>', '', '', 1),
(15, 'sk', 'dokoncenie-triedy-a-domu-uciteov', 'Dokončenie triedy a domu učiteľov', '', 'Dokončenie triedy a domu učiteľov', '<p><strong>4.11.2014</strong> Posledné mesiace sa Paulo a celá škola venovala príprave na záverečné skúšky a školské slávnosti. Práce na stavbe sú menej viditeľné, ale boli urobené vnútorné omietky a nakúpené a osadené dvere. Za posledné štyri mesiace sme na dokončenie budovy zaslali 1400 Eur.</p>\n<p><strong>8.7.2014</strong> Po dlhšej dobe máme od Paula ďalšie podklady a informácie o stavbe, za posledné 3 mesiace sme zaslali 1600 Eur a stavba skutočne veľmi pokročila o čom svedčia priložené fotografie. Blížime sa k finále:)</p>\n<p><strong>4.4.2014</strong> Na ďalšie vybavenie budovy a hlavne okná sme zaslali 500 Eur. Paulo je zanepraznený prácami na budove.</p>\n<p><strong>7.3.2014 </strong>Na strechu sme poslali 1000 Eur. Od Paula sme dostali následujúce fotky – stavba úspešne pokračuje:)</p>\n<p><strong>8.2.2014. </strong>Na hranoly na strechu sme zaslali prvých 500 Eur. Riaditeľ školy Paulo nám zaslal fotky a napísal : “<em style="font-size: 1em; line-height: 1.5em;">V minulosti sme tento spôsob prepravy používali aj na dovoz tehál, kameňov, piesku, a pod. Je to náročné. Drevo sme doviezli z obchodu, ktorý je od našej školy vzdialený 10 km. Na malé množstvo dreva by bolo použitie auta príliš drahé. “ </em> </p>\n<p><strong>14.1.2014.</strong> Súčasťou prevádzky školy je jej rozširovanie každý rok o ďalšie triedy  – to je základná legislatívna požiadavka pre školy v Tanzánií.</p>\n<p>Z tohto dôvodu škola svojpomocne pracuje na rozširovaní počtu tried. Budovu, ktorá je rozostavaná na fotografií je potrebné ukončiť. Boli sme požiadaní o finančnú pomoc, ktorá ma najvyššiu prioritu.</p>\n<p>Rozpočet na dokončenie triedy a domu učiteľov :</p>\n<table border="1" cellspacing="0" cellpadding="0" align="center">\n<tbody>\n<tr>\n<td style="width: 10%;"> </td>\n<td style="width: 60%;"><strong>Materiál</strong></td>\n<td><strong>Cena [€]</strong></td>\n</tr>\n<tr>\n<td>1.</td>\n<td>piesok</td>\n<td>164</td>\n</tr>\n<tr>\n<td>2.</td>\n<td>agregát</td>\n<td>328</td>\n</tr>\n<tr>\n<td>3.</td>\n<td>jadro budovy</td>\n<td>127</td>\n</tr>\n<tr>\n<td>4.</td>\n<td>voda</td>\n<td>545</td>\n</tr>\n<tr>\n<td>5.</td>\n<td>cement</td>\n<td> 1588</td>\n</tr>\n<tr>\n<td>6.</td>\n<td>vápno</td>\n<td> 73</td>\n</tr>\n<tr>\n<td>7.</td>\n<td>krytina G 28</td>\n<td> 1198</td>\n</tr>\n<tr>\n<td>8.</td>\n<td>hranoly 2x 4 x 15</td>\n<td> 590</td>\n</tr>\n<tr>\n<td>9.</td>\n<td>hranoly 2x 4 x 15</td>\n<td> 872</td>\n</tr>\n<tr>\n<td>10.</td>\n<td>dvere</td>\n<td> 1362</td>\n</tr>\n<tr>\n<td>11.</td>\n<td>okná</td>\n<td> 363</td>\n</tr>\n<tr>\n<td>12.</td>\n<td>malé okná</td>\n<td> 182</td>\n</tr>\n<tr>\n<td>13.</td>\n<td>strop</td>\n<td> 490</td>\n</tr>\n<tr>\n<td>14.</td>\n<td>maliarská emulzia</td>\n<td> 95</td>\n</tr>\n<tr>\n<td>15.</td>\n<td>olejová farba</td>\n<td> 142</td>\n</tr>\n<tr>\n<td>16.</td>\n<td>ancient type</td>\n<td> 41</td>\n</tr>\n<tr>\n<td>17.</td>\n<td>PVC trúbky</td>\n<td> 68</td>\n</tr>\n<tr>\n<td>18.</td>\n<td>kryt otvoru</td>\n<td> 64</td>\n</tr>\n<tr>\n<td>19.</td>\n<td>septic tash</td>\n<td> 681</td>\n</tr>\n<tr>\n<td>20.</td>\n<td>solvent</td>\n<td> 30</td>\n</tr>\n<tr>\n<td>21.</td>\n<td>amora</td>\n<td> 136</td>\n</tr>\n<tr>\n<td>22.</td>\n<td>tmel</td>\n<td> 91</td>\n</tr>\n<tr>\n<td>23.</td>\n<td>brúsny papier</td>\n<td> 14</td>\n</tr>\n<tr>\n<td>24.</td>\n<td>výplň</td>\n<td> 68</td>\n</tr>\n<tr>\n<td> </td>\n<td><strong>Spolu</strong></td>\n<td><strong> 9312</strong></td>\n</tr>\n</tbody>\n</table>', '', '', 1),
(17, 'sk', 'potravinova-pomoc', 'Potravinová pomoc', '', 'Potravinová pomoc', '<p>Základnou a každodennou potravinou pre ľudí v provincií Maretadu je kukurica a fazuľa. Výnimočne sa na ich stole objaví mäso zo sliepky. Preto sme podporili nákup osiva a to kukurice a fazule, ktoré si svojpomocne vysejú a dopestujú. Tento spôsob je oveľa úspornejší ako kupovať na trhu dopestované potraviny.</p>\n<p>Na priložených fotkách je fazuľa a kukurica, ktorú zakúpili na sejbu.</p>', NULL, NULL, 1),
(20, 'sk', 'z-africkeho-dennika-25.6.-7.7.-2014', 'Z afrického denníka (25.6. – 7.7. 2014)', '', '', '<p>V Budapešti som nastúpil do lietadla sám. V Istanbule sa ku mne pridali k traja bratia zo Sliezskej evanjelickej cirkvi: Michal Klus so synom Benom a Jirko Zietek. Na letisku pod bájnym Kilimandžarom sme pristáli v noci a hneď sme sa presunuli do neďalekej Arushe.<br /> Aká bude tá Afrika? Ako to tu zvládnem? Ako ma príjmú ľudia v Dongobeshi? Aké bude stretnutie s riaditeľom Paulom? V hlave mi vírilo množstvo otázok ale aj obáv. Po prvých stretnutiach s Martinom Tangom, riaditeľom školy v Dongobeshi a Zakom, pastorom v oblasti Manyara, kam máme namierené. som sa upokojil. Ľudia sú tu milí a pri každom stretnutí prejavujú radosť a nadšenie. Po krátkej adaptácií a príprave sa vydávame na cestu do Dongobesha.</p>\n<p>Cesty sú prašné, všade okolo množstvo ľudí, prepravujú sa hlavne peši a na bicykloch… Míňame územie Masajov a po únavnej ceste sme dorazili do Dongobesha. Dongobesh je 18 tisícové mestečko kde sme bývali a odtiaľ sme vyrážali na návštevy okolitých zborov v  osadách alebo mestách.<br /> Bývanie je tu veľmi skromné a všetko je zariadené veľmi jednoducho, ale funkčne. Domáci nám venujú veľa pozornosti a sú veľmi nápomocní. Hneď prvý deň sme boli na návšteve v Bindži a Endanachan, kde nás prijali domáci veľmi srdečne a strávili sme tam celý deň na spoločných službách Božích a seminároch. Nasledujúce dni sú rovnako hektické: cesty, návštevy nových miest Haydom, Mbulu, Dodoma, Haeraby… Stále noví ľudia, nové zážitky, svedectvá, silné príbehy. Veľmi silno je tu cítiť radosť ľudí, schopnosť tešiť sa a byť vďačný zato čo im život prináša. Sú veľmi radi ak sa môžu rozprávať s nami. Niektorí prosia o pomoc pre svoje detí, ale nikdy sa nesťažujú.<br /> Celá oblasť. kde sme boli, leží vo výške cca 2000 metrov nad morom, stále tam svieti slnko a fúka mierny vietor. Pôsobí to únavne a v kombinácií s naším nabitým programom a zážitkami v novom prostredí to spôsobuje, že večer sme už veľmi unavení.</p>\n<p>Návšteva u pastora Zaka, ktorý bol u nás minulý rok na návšteve, bola pre nás všetkých veľkým povzbudením a neobyčajne silným zážitkom. Zak sa spolu s manželkou stará o 19 adoptovaných detí. Býva v malom domčeku v ťažkých podmienkach. Strávili sme s nimi niekoľko hodín, niekoľko nezabudnuteľných hodín.<br /> Návšteva Paula Buru v Maretadu bola pre mňa dôležitým bodom pobytu. Bol som rád, že môžem osobne poznať Paula, vidieť školu, zoznámiť sa s učiteľmi, hovoriť so študentmi. Chcel som vidieť ako sú využívané prostriedky od podporovateľov, kde pestuje škola plodiny, v akých triedach sa učia študenti, aký je ich denný režim.<br /> Škola Yedidiass leží na okraji mestečka. Videl som aj okolie školy, výstavbu novej triedy, miesta odkiaľ dovážajú pomocou povozu s volmi vodu na pitie aj na stavbu. Je to veľmi náročné v týchto podmienkach zabezpečiť dostatok vody, jej filtráciu, prepravu. Sú to podmienky, ktoré sú pre našinca nepredstaviteľné. V Maretadu na rozdiel od Dongobesha nie je ani elektrina. Jedinou možnosťou na jej výrobu sú solárne nabíjačky alebo elektrocentrály. Učiteľ je tu vážené povolanie, ale jeho mesačný zárobok je len 160 eur.<br /> Škola má 137 študentov, 7 učiteľov, 3 zamestnancov, vlastní polia v okolí školy, kde sa pestuje kukurica, fazuľa a slnečnica pre vlastné potreby. Tiež má ihriská na futbal, volejbal a netball, čo je potrebné pre udelenie licencie škole zo strany štátu. Vyučovanie je cez pracovné dni od 8.00 do 17.00 hod. V piatok je výučba náboženstva. Vyučovacie predmety sú: matematika, svahilština, biológia, chémia, poľnohospodárstvo, angličtina, fyzika,  náuka o spoločnosti a literatúra. Všetky predmety, okrem svahilštiny, sa vyučujú v angličtine.</p>\n<p>Napriek týmto skutočnostiam som videl na učiteľoch a  študentoch nadšenie a vďačnosť, že môžu chodiť do školy, môžu sa učiť, získať vzdelanie, ktoré im veľmi pomôže pri uplatnení v spoločnosti. V Tanzánií sa za školu platí. A ak nemôžu za dieťa zaplatiť rodičia, je v podstate jedinou možnosťou podpora zo zahraničia.<br /> Som veľmi rád, že som dostal odpovede na všetky moje otázky a tiež s Paulom a predsedom rady školy Malkiadym prebral plány a potreby školy na ďalšie obdobie. Plánov je veľa a potreby sú značné.<br /> Činnosťou, ktorú robíme, umožňujeme spájať ochotných podporovateľov a podporované detí, ktoré to veľmi potrebujú. Paulo a učiteľský zbor si veľmi vážia túto podporu, lebo umožňuje aj rozširovanie školy na potrebný počet tried. Ostáva tu veľa práce, ale všetci veria, že spoločnými silami a hlavne s Božou pomocou sa podarí dobudovať školu a rozšíriť počet študentov.<br /> Z Maretadu a Dongobesha som priniesol veľa pozdravovm od pastora Zaka, Paula, Martina a iných pre nás všetkých a predovšetkým pre podporovateľov. Patrí vám veľká vďaka za to čo robíte.<br />Ak máte záujem o stretnutie s nami, radi k vám prídeme s osobnými svedectvami a ďalšími informáciami priamo z Afriky.</p>\n<p style="text-align: justify;"> </p>\n<p style="text-align: justify;">                                                                                  Laco Ivanecký a tím Deti Afriky</p>', '', '', 1),
(21, 'sk', 'yedidiass', 'Škola Yedidiass', '', 'Škola Yedidiass', '<p>Škola <strong>Yedidiass</strong> sa nachádza v Tanzánii, v dištrikte Mbulu, pri oblasti Maretadu. Táto oblasť nie je ohraničená mestami alebo dedinami. Najbližšie väčšie mestá sú Dongobesh a Haydom.</p>\n<h3><strong>História školy</strong></h3>\n<p>Škola bola založená v roku 2003 s 22 študentmi (9 dievčat a 13 chlapcov)</p>\n<p>Na začiatku používali triedu v základnej škole. Neskôr sa stretávali od 3.30 do 12.30 večer, po vyučovaní základnej školy.</p>\n<p>Zo študentov, s ktorými začali je 7, o ktorých sa vie, že sú zamestnaní. Traja sú učitelia na základnej škole, traja sú učitelia na strednej škole a jeden sa stal vojakom.</p>\n<p>V roku 2004 požiadali lídrov o pozemok na vybudovanie školy a dostali pozemok s rozlohou 3 akre. Postavili malý dom zo 16tich železných plechov s tehlami spájanými blatom. Potom ako dostali vlastný pozemok začali šetriť a zbierať tehly a kamene, aby si mohli dovoliť pristaviť ďalšiu časť. Stavebný materiál bol na stavbu prevážaný na vozíku ťahanom kravou.</p>\n<p>V roku 2007 bol založený prvý pevný základ a bola postavená stena až do strešnej úrovne.</p>\n<p>V roku 2009 bola budova zastrešená (2 triedy a 3 miestnosti pre učiteľov). Zastrešovanie sa realizovalo v dvoch fázach. V marci a v júni. V roku 2012 mala škola 100 študentov (45 chlapcov a 55 dievčat) a 7 učiteľov.</p>\n<p>Škola má v máji 2014 sedem učiteľov, troch zamestnancov a 125 študentov z toho 61 chlapcov a 64 dievčat.</p>\n<p></p>\n<p><iframe width="100%" height="350" src="https://maps.google.sk/maps?f=d&amp;source=s_d&amp;saddr=-4.193541,35.194251&amp;daddr=Dongobesh,+Tanz%C3%A1nia&amp;geocode=FfsCwP8diwUZAg%3BFVr7wf8d5ngbAimrOAm51IU1GDHi8HiWnVqPtA&amp;sll=-4.19361,35.19478&amp;sspn=0.002127,0.004106&amp;t=h&amp;hl=sk&amp;mra=dme&amp;ie=UTF8&amp;ll=-4.19361,35.19478&amp;spn=0.002127,0.004106&amp;output=embed"></iframe></p>', '', '', 1),
(22, 'sk', 'state-sa-dobrovonikom', 'Staňte sa dobrovoľníkom', '', 'Staňte sa dobrovoľníkom', '<p>Milí priatelia,</p>\n<p>Sme veľmi potešení, že pre náš projekt sa otvára ďalšia možnosť pomoci nami podporovaných škôl v Dongobesh a Maretadu.V spolupráci so Sliezskou diakoniou a CZ SECAV v Třinci je možnosť vyslania dobrovoľníka zo Slovenska do našich partnerských škôl v Tanzánií.</p>\n<p>Projekt pod názvom ROK MEDZINÁRODNÝM DOBROVOĽNÍKOM V TANZÁNIÍ zastrešuje Sliezska diakonia (<a title="Sliezska diakonia" href="http://www.sdfd.cz/" target="_blank">www.sdfd.cz</a>) za podpory Európskej únie.</p>\n<p>Prihlásiť sa môžu mladí ľudia vo veku od 17 do 30 rokov hovoriaci anglicky.<br />Viac informácií nájdete na tomto letáku :</p>', '', '', 1),
(23, 'sk', 'onas', 'O nás', '', 'O nás', '<p>Projekt Deti Afriky zastrešuje OZ Kairos s podporou oboch Evanjelických zborov v Košiciach.<br />Projekt vznikol na základe partnerstva s projektom <a title="www.detiafriky.cz" href="http://www.detiafriky.cz/">detiafriky.cz</a> a na základe osobnej návštevy Tanzánie, ktorá sa uskutočnila od 29.9 – 12.10.2012.</p>\n<p>Veľkým oživením a podporou pre nás a pre projekt Deti Afriky bola návšteva pastora Zaka Malekwu z Tanzánie, ktorá je pre nás a pre našu prácu novým impulzom.<br />Následne od 25.6. do 7.7. 2014 sa zúčastnil jeden člen nášho tímu návštevy v Tanzánií v provincií Manyara  – viac o tomto pobyte v Galérií položka <em>Boli sme v Maretadu</em><br />Tešíme sa, že počet podporovateľov, ktorí pravidelne mesačne podporujú študentov v Yedidiass stúpa a veríme, že sa nájde ešte viac ľudí, ktorí majú pochopenie a nadšenie pre túto formu pomoci.</p>\n<p><strong>Ako to vzniklo :</strong></p>\n<p>Jeden z nás niekedy v roku 2011 narazil na informácie o projekte Děti Afriky, ktorý už niekoľko rokov realizuje evanjelický cirkevný zbor v Třinci.<br />Keďže viacerí sme mali srdce pre podporu Afriky aj v minulosti, slovo dalo slovo a skontaktovali sme Michala Klusa, farára v Třinci<br />a hlavného nositeľa tohto projektu.<br />V júni 2011 sme sa vybrali priamo do Třinca, kedy sme hovorili o konkrétnych možnostiach ako sa do tohto projektu zapojiť podporou detí. V auguste sme začali podporovať prvé deti v škole v Dongobeshi.<br />Vo februári 2012 sa podarilo zrealizovať návštevu Michala v Košiciach spolu s širšou prezentáciou tohto projektu. V priebehu roka sa nám podarilo podporovať spolu už 7 detí.<br />Medzitým sme premýšľali ako tento projekt posunúť ďalej.<br />Príležitosť prišla začiatkom októbra 2012 cez účasť jedného z nás na ceste priamo na miesto projektu, ktorý realizuje v Tanzánii Třinec. Tam bol nadviazaný osobný kontakt so strednou školou Yedidiass v Maretadu v Tanzánii.<br />Okrem fotodokumentácie bol z tejto cesty natočený aj filmový dokument. Takto sme sa mohli na vlastné oči presvedčiť, v akých podmienkach tu žijú miestni ľudia a tiež ako sa snažia vo svojej biede dať deťom vzdelanie a tým šancu na lepší život.</p>\n<p>Po návrate sme viedli diskusie o tom, ako ďalej, či pokračovať tak ako doteraz, alebo skúsiť rozbehnúť ďalší projekt. Naši priatelia v Třinci nás povzbudzovali urobiť krok viery a tiež vedomie, že to málo, čo môžeme my dať vie urobiť veľkú zmenu v živote tamojších ľudí nás viedlo k tomu, že sme sa rozhodli začať vlastný projekt podpory tejto školy.<br />Po dohode s priateľmi v Třinci naďalej pokračuje naša podpora tých detí, ktoré už podporujeme a naviac rozbiehame vlastný projekt. Sme veľmi vďační podpore a know-how, ktoré máme z Třinca, po dohode používame ten istý názov a chceme a v budúcnosti spolupracovať na tejto podpore.<br />Viac informácii o projekte v Čechách získate na www.detiafriky.cz.<br />Pred nami sa otvorila nová etapa našej priamej podpory školy Yedidiass v Maretadu. Škola bola do súčasného stavu vybudovaná vďaka štedrosti a obetavosti miestnych ľudí. V ich snahách im chceme pomôcť a spolupracovať s nimi na budovaní tejto školy a podpore konkrétnych študentov.</p>\n<p>Budeme radi, ak sa k nám pridáte.</p>\n<p><strong>Napíšte nám na <a href="mailto:detiafriky@detiafriky.sk">detiafriky@detiafriky.sk</a></strong></p>', '', '', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_media`
--

CREATE TABLE IF NOT EXISTS `article_media` (
  `id_article` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) unsigned DEFAULT '9999',
  `url` varchar(255) DEFAULT NULL,
  `lang_display` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article_media`
--

INSERT INTO `article_media` (`id_article`, `id_media`, `online`, `ordering`, `url`, `lang_display`) VALUES
(5, 1, 1, 1, NULL, NULL),
(6, 2, 1, 1, NULL, NULL),
(7, 4, 1, 1, NULL, NULL),
(8, 3, 1, 1, NULL, NULL),
(14, 29, 1, 1, NULL, NULL),
(17, 5, 1, 1, NULL, NULL),
(17, 6, 1, 2, NULL, NULL),
(20, 7, 1, 1, NULL, NULL),
(20, 8, 1, 2, NULL, NULL),
(20, 9, 1, 20, NULL, NULL),
(20, 10, 1, 7, NULL, NULL),
(20, 11, 1, 8, NULL, NULL),
(20, 12, 1, 4, NULL, NULL),
(20, 13, 1, 5, NULL, NULL),
(20, 14, 1, 14, NULL, NULL),
(20, 15, 1, 6, NULL, NULL),
(20, 16, 1, 9, NULL, NULL),
(20, 17, 1, 13, NULL, NULL),
(20, 18, 1, 12, NULL, NULL),
(20, 19, 1, 11, NULL, NULL),
(20, 20, 1, 19, NULL, NULL),
(20, 21, 1, 3, NULL, NULL),
(20, 22, 1, 18, NULL, NULL),
(20, 23, 1, 17, NULL, NULL),
(20, 24, 1, 16, NULL, NULL),
(20, 25, 1, 15, NULL, NULL),
(20, 26, 1, 10, NULL, NULL),
(22, 30, 1, 1, NULL, NULL),
(23, 34, 1, 1, NULL, NULL),
(23, 35, 1, 2, NULL, NULL),
(23, 36, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_tag`
--

CREATE TABLE IF NOT EXISTS `article_tag` (
  `id_article` int(11) unsigned NOT NULL,
  `id_tag` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_type`
--

CREATE TABLE IF NOT EXISTS `article_type` (
`id_type` int(11) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `description` text,
  `type_flag` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article_type`
--

INSERT INTO `article_type` (`id_type`, `type`, `ordering`, `description`, `type_flag`) VALUES
(1, 'slider', 0, '', 10);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
`id_captcha` int(11) unsigned NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(8) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id_category` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `category_lang`
--

CREATE TABLE IF NOT EXISTS `category_lang` (
  `id_category` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(8) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `element`
--

CREATE TABLE IF NOT EXISTS `element` (
`id_element` int(11) unsigned NOT NULL,
  `id_element_definition` int(11) unsigned NOT NULL,
  `parent` varchar(50) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `element_definition`
--

CREATE TABLE IF NOT EXISTS `element_definition` (
`id_element_definition` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `element_definition_lang`
--

CREATE TABLE IF NOT EXISTS `element_definition_lang` (
  `id_element_definition` int(11) unsigned NOT NULL,
  `lang` varchar(8) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `event_log`
--

CREATE TABLE IF NOT EXISTS `event_log` (
`id` int(11) unsigned NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `message` text,
  `id_user` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `extend_field`
--

CREATE TABLE IF NOT EXISTS `extend_field` (
`id_extend_field` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(3) unsigned NOT NULL,
  `description` varchar(255) DEFAULT '',
  `parent` varchar(50) NOT NULL,
  `id_parent` int(11) unsigned DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `translated` char(1) DEFAULT '0',
  `value` text,
  `default_value` varchar(255) DEFAULT NULL,
  `global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `main` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `extend_fields`
--

CREATE TABLE IF NOT EXISTS `extend_fields` (
`id_extend_fields` int(11) unsigned NOT NULL,
  `id_extend_field` int(11) unsigned NOT NULL,
  `parent` varchar(50) NOT NULL DEFAULT '',
  `id_parent` int(11) unsigned NOT NULL,
  `lang` varchar(8) NOT NULL DEFAULT '',
  `content` text,
  `ordering` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `extend_field_lang`
--

CREATE TABLE IF NOT EXISTS `extend_field_lang` (
  `id_extend_field` int(11) unsigned NOT NULL,
  `lang` varchar(8) NOT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `extend_field_type`
--

CREATE TABLE IF NOT EXISTS `extend_field_type` (
`id_extend_field_type` int(11) unsigned NOT NULL,
  `type_name` varchar(50) NOT NULL DEFAULT '',
  `default_values` smallint(1) NOT NULL DEFAULT '0',
  `values` smallint(1) NOT NULL DEFAULT '0',
  `translated` smallint(1) NOT NULL DEFAULT '0',
  `active` smallint(6) NOT NULL DEFAULT '1',
  `display` smallint(6) NOT NULL DEFAULT '1',
  `validate` varchar(50) DEFAULT NULL,
  `html_element` varchar(20) NOT NULL DEFAULT 'input',
  `html_element_type` varchar(20) NOT NULL DEFAULT 'text',
  `html_element_class` varchar(100) DEFAULT NULL,
  `html_element_pattern` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `extend_field_type`
--

INSERT INTO `extend_field_type` (`id_extend_field_type`, `type_name`, `default_values`, `values`, `translated`, `active`, `display`, `validate`, `html_element`, `html_element_type`, `html_element_class`, `html_element_pattern`) VALUES
(1, 'Input', 1, 0, 1, 1, 1, NULL, 'input', 'text', 'w95p inputtext', NULL),
(2, 'Textarea', 1, 0, 1, 1, 1, NULL, 'textarea', 'textarea', 'w95p autogrow inputtext', NULL),
(3, 'Textarea + Editor', 1, 0, 1, 1, 1, NULL, 'textarea', 'editor', 'w95p smallTinyTextarea inputtext', NULL),
(4, 'Checkbox', 1, 1, 0, 1, 1, NULL, 'input', 'checkbox', 'checkbox', NULL),
(5, 'Radio', 1, 1, 0, 1, 1, NULL, 'input', 'radio', 'radio', NULL),
(6, 'Select', 1, 1, 0, 1, 1, NULL, 'input', 'select', 'select inputtext', NULL),
(7, 'Date Time', 0, 0, 0, 1, 1, NULL, 'input', 'date', 'date w120 inputtext', NULL),
(8, 'Medias', 0, 0, 1, 1, 1, NULL, 'div', 'media', NULL, NULL),
(100, 'Number', 1, 0, 0, 1, 1, 'numeric', 'input', 'number', 'w120 inputtext', NULL),
(110, 'Email', 0, 0, 0, 1, 1, 'email', 'input', 'email', 'w95p inputtext', NULL),
(120, 'Phone', 0, 0, 0, 1, 1, 'digits', 'input', 'tel', 'w140 inputtext', '^((\\+\\d{1,3}(-| )?\\(?\\d\\)?(-| )?\\d{1,5})|(\\(?\\d{2,6}\\)?))(-| )?(\\d{3,4})(-| )?(\\d{4})(( x| ext)\\d{1,5}){0,1}$'),
(130, 'Internal Link', 0, 0, 1, 1, 1, NULL, 'div', 'link', 'droppable', NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ion_sessions`
--

CREATE TABLE IF NOT EXISTS `ion_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) DEFAULT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `item`
--

CREATE TABLE IF NOT EXISTS `item` (
`id_item` int(11) unsigned NOT NULL,
  `id_item_definition` int(10) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `ordering` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item instances';

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id_item` int(11) unsigned NOT NULL,
  `parent` varchar(50) NOT NULL DEFAULT '',
  `id_parent` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `item_definition`
--

CREATE TABLE IF NOT EXISTS `item_definition` (
`id_item_definition` int(11) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Items definition table';

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `item_definition_lang`
--

CREATE TABLE IF NOT EXISTS `item_definition_lang` (
  `id_item_definition` int(11) unsigned NOT NULL,
  `lang` varchar(8) NOT NULL DEFAULT '',
  `title_definition` varchar(50) DEFAULT NULL,
  `title_item` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `item_lang`
--

CREATE TABLE IF NOT EXISTS `item_lang` (
  `id_item` int(11) unsigned NOT NULL,
  `lang` varchar(8) NOT NULL DEFAULT '',
  `title` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `lang`
--

CREATE TABLE IF NOT EXISTS `lang` (
  `lang` varchar(8) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `online` char(1) DEFAULT '0',
  `def` char(1) DEFAULT '0',
  `ordering` int(11) DEFAULT NULL,
  `direction` smallint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `lang`
--

INSERT INTO `lang` (`lang`, `name`, `online`, `def`, `ordering`, `direction`) VALUES
('sk', 'slovak', '1', '1', 1, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `login_tracker`
--

CREATE TABLE IF NOT EXISTS `login_tracker` (
  `ip_address` varchar(32) NOT NULL,
  `first_time` int(11) unsigned NOT NULL,
  `failures` tinyint(2) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `media`
--

CREATE TABLE IF NOT EXISTS `media` (
`id_media` int(11) unsigned NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'file_name',
  `path` varchar(500) NOT NULL COMMENT 'Complete path to the medium, including media file name, excluding host name',
  `base_path` varchar(500) NOT NULL COMMENT 'medium folder base path, excluding host name',
  `copyright` varchar(128) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Medium date',
  `link` varchar(255) DEFAULT NULL COMMENT 'Link to a resource, attached to this medium',
  `square_crop` enum('tl','m','br') NOT NULL DEFAULT 'm'
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `media`
--

INSERT INTO `media` (`id_media`, `type`, `file_name`, `path`, `base_path`, `copyright`, `provider`, `date`, `link`, `square_crop`) VALUES
(1, 'picture', '1.jpg', 'files/1.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(2, 'picture', '2.jpg', 'files/2.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(3, 'picture', '4.jpg', 'files/4.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(4, 'picture', '3.jpg', 'files/3.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(5, 'picture', 'semienka.jpg', 'files/semienka.jpg', 'files/', '', '', '0000-00-00 00:00:00', '', 'm'),
(6, 'picture', 'fazula.jpg', 'files/fazula.jpg', 'files/', '', '', '0000-00-00 00:00:00', '', 'm'),
(7, 'picture', 'img_1871_12805440216c99709_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1871_12805440216c99709_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(8, 'picture', 'img_1877_12805440216d45f30_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1877_12805440216d45f30_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(9, 'picture', 'img_1880_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1880_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(10, 'picture', 'img_1885_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1885_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(11, 'picture', 'img_1887_1280544023adbc924_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1887_1280544023adbc924_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(12, 'picture', 'img_1888_12805440226ceb189_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1888_12805440226ceb189_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(13, 'picture', 'img_1889_12805440226dc526e_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1889_12805440226dc526e_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(14, 'picture', 'img_1894_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1894_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(15, 'picture', 'img_1898_12805440226e8969f_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1898_12805440226e8969f_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(16, 'picture', 'img_1914_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1914_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(17, 'picture', 'img_1917_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1917_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(18, 'picture', 'img_1924_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1924_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(19, 'picture', 'img_1934_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1934_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(20, 'picture', 'img_1939_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1939_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(21, 'picture', 'img_1941_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1941_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(22, 'picture', 'img_1966_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1966_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(23, 'picture', 'img_1969_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1969_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(24, 'picture', 'img_1974_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1974_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(25, 'picture', 'img_1990_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_1990_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(26, 'picture', 'img_2000_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/img_2000_1280_1024x768.jpg', 'files/album_z_africkeho_dennika/', '', '', '0000-00-00 00:00:00', '', 'm'),
(27, 'picture', 'icon2.png', 'files/icon2.png', 'files/', '', '', '0000-00-00 00:00:00', NULL, 'm'),
(28, 'picture', 'icon3.png', 'files/icon3.png', 'files/', '', '', '0000-00-00 00:00:00', NULL, 'm'),
(29, 'picture', 'icon1.png', 'files/icon1.png', 'files/', '', '', '0000-00-00 00:00:00', NULL, 'm'),
(30, 'picture', 'invyt_2015_da.jpg', 'files/invyt_2015_da.jpg', 'files/', '', '', '0000-00-00 00:00:00', NULL, 'm'),
(34, 'picture', 'riaditel_1.jpg', 'files/riaditel_1.jpg', 'files/', '', '', '0000-00-00 00:00:00', '', 'm'),
(35, 'picture', 'okolie_1.jpg', 'files/okolie_1.jpg', 'files/', '', '', '0000-00-00 00:00:00', '', 'm'),
(36, 'picture', 'budovy_1.jpg', 'files/budovy_1.jpg', 'files/', '', '', '0000-00-00 00:00:00', '', 'm');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `media_lang`
--

CREATE TABLE IF NOT EXISTS `media_lang` (
  `lang` varchar(8) NOT NULL DEFAULT '',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `alt` varchar(500) DEFAULT NULL,
  `description` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `media_lang`
--

INSERT INTO `media_lang` (`lang`, `id_media`, `title`, `alt`, `description`) VALUES
('sk', 5, 'Semienka fazule', '', ''),
('sk', 6, 'Fazuľa obsahuje veľa bielkov&iacute;n', '', ''),
('sk', 7, 'Cesta z Maretadu do Yedidia ', '', ''),
('sk', 8, 'Ulica v centre Maretadu ', '', ''),
('sk', 9, 'Obydlie &scaron;tudentky Loemy ', '', ''),
('sk', 10, 'Hlavn&aacute; budova Yedidia ', '', ''),
('sk', 11, ' Nov&aacute; budov&aacute; pre &scaron;tudentov a učiteľov ', '', ''),
('sk', 12, 'Riaditeľ &scaron;koly Paulo Bura ', '', ''),
('sk', 13, 'Predseda rady &scaron;koly Malkiadi Mathayo ', '', ''),
('sk', 14, 'N&aacute;stup pred &scaron;kolou ', '', ''),
('sk', 15, 'Učiteľsk&yacute; zbor Yedidia ', '', ''),
('sk', 16, ' Pohľad na v&scaron;etky budovy &scaron;koly ', '', ''),
('sk', 17, 'Pozostatky pvej triedy ', '', ''),
('sk', 18, 'Začiatok športového dňa ', '', ''),
('sk', 19, 'Volejbalový zápas ', '', ''),
('sk', 20, 'školské pole kukurice pred žatvou ', '', ''),
('sk', 21, 'Suché koryto rieky pri škole ', '', ''),
('sk', 22, 'Školská kuchyňa Yedidia ', '', ''),
('sk', 23, 'Výuka v rozostavanej budove ', '', ''),
('sk', 24, 'Triedy je potrebné vybaviť nábytkom ', '', ''),
('sk', 25, 'Voda sa naberá v noci ', '', ''),
('sk', 26, 'Dom riatiteľa Paula Buru ', '', ''),
('sk', 27, '', '', ''),
('sk', 28, '', '', ''),
('sk', 29, '', '', ''),
('sk', 30, '', '', ''),
('sk', 34, 'Riaditeľ Paulo Bura ', '', ''),
('sk', 35, 'Okolie Maretadu ', '', ''),
('sk', 36, 'Všetky tri budovy školy', '', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `ordering` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `menu`
--

INSERT INTO `menu` (`id_menu`, `name`, `title`, `ordering`) VALUES
(1, 'main', 'Main menu', NULL),
(2, 'system', 'System menu', NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `module`
--

CREATE TABLE IF NOT EXISTS `module` (
`id_module` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `with_admin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `module_setting`
--

CREATE TABLE IF NOT EXISTS `module_setting` (
`id_module_setting` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT 'Setting name',
  `content` varchar(255) NOT NULL COMMENT 'Setting content',
  `lang` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `note`
--

CREATE TABLE IF NOT EXISTS `note` (
`id_note` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(10) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
`id_notification` int(11) unsigned NOT NULL,
  `date_creation` date DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `category` varchar(25) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `read` smallint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `notification`
--

INSERT INTO `notification` (`id_notification`, `date_creation`, `code`, `category`, `title`, `content`, `read`) VALUES
(1, '2015-02-23', 'sitemap_refresh', 'System', 'Sitemap refresh', 'Sitemap needs to be refreshed.<br/> Go to <b>Tools > System Diagnosis > Tools</b> and click on <b>"Refresh Sitemap"</b>.', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `page`
--

CREATE TABLE IF NOT EXISTS `page` (
`id_page` int(11) unsigned NOT NULL,
  `id_parent` int(11) unsigned NOT NULL DEFAULT '0',
  `id_menu` int(11) unsigned NOT NULL DEFAULT '0',
  `id_type` smallint(2) NOT NULL DEFAULT '0',
  `id_subnav` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT '0',
  `level` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(55) DEFAULT NULL,
  `updater` varchar(55) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_off` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logical_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `appears` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `has_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `view` varchar(50) DEFAULT NULL COMMENT 'Page view',
  `view_single` varchar(50) DEFAULT NULL COMMENT 'Single Article Page view',
  `article_list_view` varchar(50) DEFAULT NULL COMMENT 'Article list view for each article linked to this page',
  `article_view` varchar(50) DEFAULT NULL COMMENT 'Article detail view for each article linked to this page',
  `article_order` varchar(50) NOT NULL DEFAULT 'ordering' COMMENT 'Article order in this page. Can be "ordering", "date"',
  `article_order_direction` varchar(50) NOT NULL DEFAULT 'ASC',
  `link` varchar(255) DEFAULT '' COMMENT 'Link to internal / external resource',
  `link_type` varchar(25) DEFAULT NULL COMMENT '''page'', ''article'' or NULL',
  `link_id` varchar(20) NOT NULL DEFAULT '',
  `pagination` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Pagination use ?',
  `priority` int(1) unsigned NOT NULL DEFAULT '5' COMMENT 'Page priority',
  `used_by_module` tinyint(1) unsigned DEFAULT NULL,
  `deny_code` varchar(3) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page`
--

INSERT INTO `page` (`id_page`, `id_parent`, `id_menu`, `id_type`, `id_subnav`, `name`, `ordering`, `level`, `online`, `home`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `appears`, `has_url`, `view`, `view_single`, `article_list_view`, `article_view`, `article_order`, `article_order_direction`, `link`, `link_type`, `link_id`, `pagination`, `priority`, `used_by_module`, `deny_code`) VALUES
(1, 0, 2, 0, 0, '404', 0, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(2, 0, 2, 0, 0, '401', 0, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(3, 0, 2, 0, 0, '403', 0, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(4, 0, 1, 0, 0, 'home', 1, 0, 1, 1, NULL, 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 11:05:09', '0000-00-00 00:00:00', 1, 1, 'home_page', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(5, 6, 1, 0, 0, 'podporovani-studenti', 1, 1, 1, 0, 'admin', 'admin', '2015-02-20 15:37:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-23 14:53:02', '0000-00-00 00:00:00', 1, 1, 'page_student_list', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(6, 0, 1, 0, 0, 'podporujeme', 2, 0, 1, 0, 'admin', 'admin', '2015-02-20 16:01:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 10:47:58', '0000-00-00 00:00:00', 1, 1, 'page', 'page_content', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(7, 6, 1, 0, 0, 'cakatelia-na-podporu', 2, 1, 1, 0, 'admin', 'admin', '2015-02-20 16:53:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-23 14:54:00', '0000-00-00 00:00:00', 1, 1, 'page_student_list', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(8, 0, 1, 0, 0, 'aktuality', 5, 0, 1, 0, 'admin', 'admin', '2015-02-20 17:14:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-20 17:16:58', '0000-00-00 00:00:00', 0, 0, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(9, 0, 1, 0, 0, 'projekty', 6, 0, 1, 0, 'admin', 'admin', '2015-02-21 21:42:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 21:48:25', '0000-00-00 00:00:00', 1, 1, 'page_projects', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(10, 9, 1, 0, 0, 'aktualne', 7, 1, 1, 0, 'admin', 'admin', '2015-02-21 21:44:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 22:06:52', '0000-00-00 00:00:00', 1, 1, 'page_content', 'page_content', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(11, 9, 1, 0, 0, 'realizovane', 8, 1, 1, 0, 'admin', 'admin', '2015-02-21 22:14:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-21 22:15:20', '0000-00-00 00:00:00', 1, 1, 'page_content', 'page_content', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(12, 0, 1, 0, 0, 'galeria', 9, 0, 1, 0, 'admin', 'admin', '2015-02-23 12:23:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-23 14:27:35', '0000-00-00 00:00:00', 1, 1, 'page_projects', 'page_content', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(13, 0, 1, 0, 0, 'skola-yedidiass', 10, 0, 1, 0, 'admin', 'admin', '2015-02-23 15:03:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-23 15:06:20', '0000-00-00 00:00:00', 1, 1, '', 'page_content', NULL, NULL, 'ordering', 'ASC', 'Škola Yedidiass', 'article', '13.21', 0, 5, 0, '404'),
(14, 0, 1, 0, 0, 'ostatne-clanky', 11, 0, 1, 0, 'admin', 'admin', '2015-02-23 15:20:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-23 15:24:55', '0000-00-00 00:00:00', 0, 1, '', 'page_content', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(15, 0, 1, 0, 0, 'o-nas', 12, 0, 1, 0, 'admin', 'admin', '2015-02-23 15:28:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-23 15:30:58', '0000-00-00 00:00:00', 1, 1, '', 'page_content', NULL, NULL, 'ordering', 'ASC', 'O nás', 'article', '15.23', 0, 5, 0, '404');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `page_article`
--

CREATE TABLE IF NOT EXISTS `page_article` (
  `id_page` int(11) unsigned NOT NULL,
  `id_article` int(11) unsigned NOT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `view` varchar(50) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `id_type` int(11) unsigned DEFAULT NULL,
  `link_type` varchar(25) NOT NULL DEFAULT '',
  `link_id` varchar(20) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `main_parent` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page_article`
--

INSERT INTO `page_article` (`id_page`, `id_article`, `online`, `view`, `ordering`, `id_type`, `link_type`, `link_id`, `link`, `main_parent`) VALUES
(1, 1, 1, NULL, 0, NULL, '', '', '', 0),
(2, 2, 1, NULL, 0, NULL, '', '', '', 0),
(3, 3, 1, NULL, 0, NULL, '', '', '', 0),
(4, 4, 1, NULL, 1, 1, 'article', '14.22', 'Staňte sa dobrovoľníkom', 0),
(4, 13, 1, NULL, 1, 1, 'article', '13.21', 'Škola Yedidiass', 1),
(5, 5, 1, NULL, 2, NULL, '', '', '', 1),
(5, 6, 1, NULL, 1, NULL, '', '', '', 1),
(6, 9, 1, NULL, 1, NULL, '', '', '', 1),
(6, 14, 1, NULL, 2, NULL, '', '', '', 1),
(7, 7, 1, NULL, 2, NULL, '', '', '', 1),
(7, 8, 1, NULL, 1, NULL, '', '', '', 1),
(8, 10, 1, NULL, 3, NULL, '', '', '', 1),
(8, 11, 1, NULL, 2, NULL, '', '', '', 1),
(8, 12, 1, NULL, 1, NULL, '', '', '', 1),
(10, 15, 1, NULL, 2, NULL, '', '', '', 1),
(11, 17, 1, NULL, 1, NULL, '', '', '', 1),
(12, 20, 1, NULL, 1, NULL, '', '', '', 1),
(13, 21, 1, NULL, 1, NULL, '', '', '', 1),
(14, 22, 1, NULL, 1, NULL, '', '', '', 1),
(15, 23, 1, NULL, 1, NULL, '', '', '', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `page_lang`
--

CREATE TABLE IF NOT EXISTS `page_lang` (
  `lang` varchar(8) NOT NULL DEFAULT '',
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `subnav_title` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page_lang`
--

INSERT INTO `page_lang` (`lang`, `id_page`, `url`, `link`, `title`, `subtitle`, `nav_title`, `subnav_title`, `meta_title`, `meta_description`, `meta_keywords`, `online`) VALUES
('sk', 1, '404', '', '404', 'Can''t find requested page.', '', '', NULL, NULL, NULL, 1),
('sk', 2, '401', '', '401', 'Login needed', '', '', NULL, NULL, NULL, 1),
('sk', 3, '403', '', '403', 'Forbidden', '', '', NULL, NULL, NULL, 1),
('sk', 4, 'home', '', 'Domov', '', 'Domov', '', 'Domov', '', '', 1),
('sk', 5, 'podporovani-studenti', '', 'Podporovaní študenti', 'Momentálne podporujeme 26 študentov, ktorí sú z veľmi chudobných pomerov', 'Podporovaní študenti', '', 'Podporovaní študenti', '', '', 1),
('sk', 6, 'podporujeme', '', 'Podporujeme', '', 'Podporujeme', '', 'Podporujeme', '', '', 1),
('sk', 7, 'cakatelia-na-podporu', '', 'Čakatelia na podporu', 'Títo študenti čakajú na vašu podporu.\n\nAk chcete niektorého z nich podporovať pošlite nám prosím e-mail z jeho menom a my Vám pošleme informácie ako postupovať.', 'Čakatelia na podporu', '', 'Čakatelia na podporu', '', '', 1),
('sk', 8, 'aktuality', '', 'Aktuality', '', 'Aktuality', '', 'Aktuality', '', '', 1),
('sk', 9, 'projekty', '', 'Projekty', '', '', '', 'Projekty', '', '', 1),
('sk', 10, 'aktualne', '', 'Aktuálne', '', '', '', 'Aktuálne', '', '', 1),
('sk', 11, 'realizovane', '', 'Realizované', '', '', '', 'Realizované', '', '', 1),
('sk', 12, 'galeria', '', 'Galéria', '', '', '', '', '', '', 1),
('sk', 13, 'skola-yedidiass', '', 'Škola Yedidiass', '', 'Škola Yedidiass', '', 'Škola Yedidiass', '', '', 1),
('sk', 14, 'ostatne-clanky', '', 'Ostatné články', '', 'Ostatné články', '', 'Ostatné články', '', '', 1),
('sk', 15, 'o-nas', '', 'O nás', '', 'O nás', '', 'O nás', '', '', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `page_media`
--

CREATE TABLE IF NOT EXISTS `page_media` (
  `id_page` int(11) unsigned NOT NULL DEFAULT '0',
  `id_media` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) unsigned DEFAULT '9999',
  `lang_display` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page_media`
--

INSERT INTO `page_media` (`id_page`, `id_media`, `online`, `ordering`, `lang_display`) VALUES
(5, 27, 1, 1, NULL),
(7, 28, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `resource`
--

CREATE TABLE IF NOT EXISTS `resource` (
`id_resource` int(11) NOT NULL,
  `id_parent` int(11) unsigned DEFAULT NULL,
  `resource` varchar(255) NOT NULL DEFAULT '',
  `actions` varchar(500) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `description` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `resource`
--

INSERT INTO `resource` (`id_resource`, `id_parent`, `resource`, `actions`, `title`, `description`) VALUES
(1, NULL, 'admin', '', 'Backend login', 'Connect to ionize backend'),
(10, NULL, 'admin/menu', 'create,edit,delete', 'Menu', 'Menus'),
(11, 10, 'admin/menu/permissions/backend', '', 'Permissions', 'Menu > Backend Permissions'),
(20, NULL, 'admin/translations', '', 'Translations', 'Translations'),
(30, NULL, 'admin/filemanager', 'upload,rename,delete,move', 'Filemanager', 'FileManager'),
(35, NULL, 'admin/medialist', '', 'MediaList', 'MediaList'),
(40, NULL, 'admin/page', 'create,edit,delete', 'Page', 'Page'),
(41, 40, 'admin/page/article', 'add', 'Article', 'Page > Article'),
(42, 40, 'admin/page/element', 'add', 'Content Element', 'Page > Content Element'),
(50, 40, 'admin/page/media', 'link,unlink,edit', 'Media', 'Page > Media'),
(60, 40, 'admin/page/permissions', '', 'Permission', 'Page > Permission'),
(61, 60, 'admin/page/permissions/backend', '', 'Backend', 'Page > Permission > Backend'),
(62, 60, 'admin/page/permissions/frontend', '', 'Frontend', 'Page > Permission > Frontend'),
(70, NULL, 'admin/article', 'create,edit,delete,move,copy,duplicate', 'Article', 'Article'),
(80, 70, 'admin/article/media', 'link,unlink,edit', 'Media', 'Article > Media'),
(85, 70, 'admin/article/element', 'add', 'Content Element', 'Article > Content Element'),
(86, 70, 'admin/article/category', '', 'Manage categories', 'Article > Categories'),
(90, 70, 'admin/article/permissions', '', 'Permission', 'Article > Permission'),
(91, 90, 'admin/article/permissions/backend', '', 'Backend', 'Article > Permission > Backend'),
(92, 90, 'admin/article/permissions/frontend', '', 'Frontend', 'Article > Permission > Frontend'),
(93, 70, 'admin/article/tag', '', 'Manage tags', 'Article > Tags'),
(100, NULL, 'admin/tree', '', 'Tree', ''),
(101, 100, 'admin/tree/menu', 'add_page,edit', 'Menus', ''),
(102, 100, 'admin/tree/page', 'status,add_page,add_article,order', 'Pages', ''),
(103, 100, 'admin/tree/article', 'unlink,status,move,copy,order', 'Articles', ''),
(120, NULL, 'admin/article/type', 'create,edit,delete', 'Article Type', 'Article types'),
(150, NULL, 'admin/modules', 'install', 'Modules', 'Modules'),
(151, 150, 'admin/modules/permissions', '', 'Set Permissions', 'Modules > Permissions'),
(180, NULL, 'admin/element', 'create,edit,delete', 'Content Element', 'Content Elements'),
(181, 180, 'admin/element/media', 'link,unlink,edit', 'Media', 'Content Elements > Media'),
(210, NULL, 'admin/extend', 'create,edit,delete', 'Extend Fields', 'Extend Fields'),
(220, NULL, 'admin/item', 'create,edit,delete,add', 'Static Items', 'Static Items'),
(221, 220, 'admin/item/definition', 'edit', 'Definition', 'Static Items > Definition'),
(222, 220, 'admin/item/media', 'link,unlink,edit', 'Media', 'Static Items > Media'),
(240, NULL, 'admin/tools', '', 'Tools', 'Tools'),
(241, 240, 'admin/tools/google_analytics', '', 'Google Analytics', 'Tools > Google Analytics'),
(250, 240, 'admin/tools/system', '', 'System Diagnosis', 'Tools > System'),
(251, 250, 'admin/tools/system/information', '', 'Information', 'Tools > System > Information'),
(252, 250, 'admin/tools/system/repair', '', 'Repair tools', 'Tools > System > Repair'),
(253, 250, 'admin/tools/system/report', '', 'Reports', 'Tools > System > Reports'),
(270, NULL, 'admin/settings', '', 'Settings', 'Settings'),
(271, 270, 'admin/settings/ionize', '', 'Ionize UI', 'Settings > UI Settings'),
(272, 270, 'admin/settings/languages', '', 'Languages Management', 'Settings > Languages'),
(273, 270, 'admin/settings/themes', 'edit', 'Themes', 'Settings > Themes'),
(274, 270, 'admin/settings/website', '', 'Website settings', 'Settings > Website'),
(275, 270, 'admin/settings/technical', '', 'Technical settings', 'Settings > Technical'),
(300, NULL, 'admin/users_roles', '', 'Users / Roles', 'Users / Roles'),
(301, 300, 'admin/user', 'create,edit,delete', 'Users', 'Users'),
(302, 300, 'admin/role', 'create,edit,delete', 'Roles', 'Roles'),
(303, 302, 'admin/role/permissions', '', 'Set Permissions', 'See Role''s permissions');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `role`
--

CREATE TABLE IF NOT EXISTS `role` (
`id_role` smallint(4) unsigned NOT NULL,
  `role_level` int(11) DEFAULT NULL,
  `role_code` varchar(25) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `role_description` tinytext
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `role`
--

INSERT INTO `role` (`id_role`, `role_level`, `role_code`, `role_name`, `role_description`) VALUES
(1, 10000, 'super-admin', 'Super Admin', ''),
(2, 5000, 'admin', 'Admin', ''),
(3, 1000, 'editor', 'Editor', ''),
(4, 100, 'user', 'User', ''),
(5, 50, 'pending', 'Pending', ''),
(6, 10, 'guest', 'Guest', ''),
(7, -10, 'banned', 'Banned', ''),
(8, -100, 'deactivated', 'Deactivated', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
  `id_role` int(11) NOT NULL,
  `resource` varchar(100) NOT NULL DEFAULT '',
  `actions` varchar(100) NOT NULL DEFAULT '',
  `permission` smallint(1) DEFAULT NULL,
  `id_element` int(11) unsigned DEFAULT NULL,
  `id_user` int(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `rule`
--

INSERT INTO `rule` (`id_role`, `resource`, `actions`, `permission`, `id_element`, `id_user`) VALUES
(1, 'all', '', 1, NULL, 0),
(2, 'admin', '', 1, NULL, 0),
(2, 'admin/article', 'create,edit,delete,move,copy,duplicate', 1, NULL, 0),
(2, 'admin/article/category', '', 1, NULL, 0),
(2, 'admin/article/element', 'add', 1, NULL, 0),
(2, 'admin/article/media', 'link,unlink,edit', 1, NULL, 0),
(2, 'admin/article/permissions', '', 1, NULL, 0),
(2, 'admin/article/permissions/backend', '', 1, NULL, 0),
(2, 'admin/article/permissions/frontend', '', 1, NULL, 0),
(2, 'admin/article/tag', '', 1, NULL, 0),
(2, 'admin/article/type', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/element', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/element/media', 'link,unlink,edit', 1, NULL, 0),
(2, 'admin/extend', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/filemanager', 'upload,rename,delete,move', 1, NULL, 0),
(2, 'admin/item', 'create,edit,delete,add', 1, NULL, 0),
(2, 'admin/item/media', 'link,unlink,edit', 1, NULL, 0),
(2, 'admin/medialist', '', 1, NULL, 0),
(2, 'admin/menu', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/modules', 'install', 1, NULL, 0),
(2, 'admin/modules/permissions', '', 1, NULL, 0),
(2, 'admin/page', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/page/article', 'add', 1, NULL, 0),
(2, 'admin/page/element', 'add', 1, NULL, 0),
(2, 'admin/page/media', 'link,unlink,edit', 1, NULL, 0),
(2, 'admin/page/permissions', '', 1, NULL, 0),
(2, 'admin/page/permissions/backend', '', 1, NULL, 0),
(2, 'admin/page/permissions/frontend', '', 1, NULL, 0),
(2, 'admin/role', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/role/permissions', '', 1, NULL, 0),
(2, 'admin/settings', '', 1, NULL, 0),
(2, 'admin/settings/ionize', '', 1, NULL, 0),
(2, 'admin/settings/languages', '', 1, NULL, 0),
(2, 'admin/settings/website', '', 1, NULL, 0),
(2, 'admin/tools', '', 1, NULL, 0),
(2, 'admin/tools/google_analytics', '', 1, NULL, 0),
(2, 'admin/tools/system', '', 1, NULL, 0),
(2, 'admin/tools/system/information', '', 1, NULL, 0),
(2, 'admin/tools/system/repair', '', 1, NULL, 0),
(2, 'admin/tools/system/report', '', 1, NULL, 0),
(2, 'admin/translations', '', 1, NULL, 0),
(2, 'admin/tree', '', 1, NULL, 0),
(2, 'admin/tree/article', 'unlink,status,move,copy,order', 1, NULL, 0),
(2, 'admin/tree/menu', 'add_page,edit', 1, NULL, 0),
(2, 'admin/tree/page', 'status,add_page,add_article,order', 1, NULL, 0),
(2, 'admin/user', 'create,edit,delete', 1, NULL, 0),
(2, 'admin/users_roles', '', 1, NULL, 0),
(3, 'admin', '', 1, NULL, 0),
(3, 'admin/article', 'create,edit,delete,move,copy,duplicate', 1, NULL, 0),
(3, 'admin/article/category', '', 1, NULL, 0),
(3, 'admin/article/element', 'add', 1, NULL, 0),
(3, 'admin/article/media', 'link,unlink,edit', 1, NULL, 0),
(3, 'admin/article/permissions', '', 1, NULL, 0),
(3, 'admin/article/permissions/backend', '', 1, NULL, 0),
(3, 'admin/article/permissions/frontend', '', 1, NULL, 0),
(3, 'admin/article/tag', '', 1, NULL, 0),
(3, 'admin/element/media', 'link,unlink,edit', 1, NULL, 0),
(3, 'admin/filemanager', 'upload,rename,delete,move', 1, NULL, 0),
(3, 'admin/item', 'create,edit,delete,add', 1, NULL, 0),
(3, 'admin/item/media', 'link,unlink,edit', 1, NULL, 0),
(3, 'admin/medialist', '', 1, NULL, 0),
(3, 'admin/menu', 'create,edit,delete', 1, NULL, 0),
(3, 'admin/modules', '', 1, NULL, 0),
(3, 'admin/page', 'create,edit,delete', 1, NULL, 0),
(3, 'admin/page/article', 'add', 1, NULL, 0),
(3, 'admin/page/element', 'add', 1, NULL, 0),
(3, 'admin/page/media', 'link,unlink,edit', 1, NULL, 0),
(3, 'admin/page/permissions', '', 1, NULL, 0),
(3, 'admin/page/permissions/backend', '', 1, NULL, 0),
(3, 'admin/page/permissions/frontend', '', 1, NULL, 0),
(3, 'admin/settings', '', 1, NULL, 0),
(3, 'admin/settings/ionize', '', 1, NULL, 0),
(3, 'admin/settings/languages', '', 1, NULL, 0),
(3, 'admin/settings/website', '', 1, NULL, 0),
(3, 'admin/tools', '', 1, NULL, 0),
(3, 'admin/tools/google_analytics', '', 1, NULL, 0),
(3, 'admin/tools/system', '', 1, NULL, 0),
(3, 'admin/tools/system/information', '', 1, NULL, 0),
(3, 'admin/tools/system/report', '', 1, NULL, 0),
(3, 'admin/translations', '', 1, NULL, 0),
(3, 'admin/tree', '', 1, NULL, 0),
(3, 'admin/tree/article', 'unlink,status,move,copy,order', 1, NULL, 0),
(3, 'admin/tree/menu', 'add_page,edit', 1, NULL, 0),
(3, 'admin/tree/page', 'status,add_page,add_article,order', 1, NULL, 0),
(3, 'admin/user', 'create,edit,delete', 1, NULL, 0),
(3, 'admin/users_roles', '', 1, NULL, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
`id_setting` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `lang` varchar(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `setting`
--

INSERT INTO `setting` (`id_setting`, `name`, `content`, `lang`) VALUES
(1, 'ionize_version', '1.0.7', ''),
(2, 'site_email', '', ''),
(3, 'files_path', 'files', ''),
(4, 'theme', 'deti-afriky', ''),
(5, 'theme_admin', 'admin', ''),
(6, 'google_analytics', '', ''),
(7, 'filemanager', 'mootools-filemanager', ''),
(8, 'show_help_tips', '1', ''),
(9, 'display_connected_label', '1', ''),
(10, 'display_dashboard_shortcuts', '1', ''),
(11, 'display_dashboard_modules', '1', ''),
(12, 'display_dashboard_users', '1', ''),
(13, 'display_dashboard_content', '1', ''),
(14, 'display_front_offline_content', '1', ''),
(15, 'display_dashboard_quick_settings', '1', ''),
(16, 'texteditor', 'tinymce', ''),
(17, 'media_thumb_size', '120', ''),
(18, 'tinybuttons1', 'pdw_toggle,|,bold,italic,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,formatselect,|,bullist,numlist,|,link,unlink,image,|,spellchecker', ''),
(19, 'tinybuttons2', 'fullscreen, undo,redo,|,pastetext,selectall,removeformat,|,media,charmap,hr,blockquote,|,template,|,codemirror', ''),
(20, 'tinybuttons3', 'tablecontrols', ''),
(21, 'smalltinybuttons1', 'bold,italic,|,bullist,numlist,|,link,unlink,image,|,nonbreaking', ''),
(22, 'smalltinybuttons2', '', ''),
(23, 'smalltinybuttons3', '', ''),
(24, 'displayed_admin_languages', 'en', ''),
(25, 'date_format', '%Y.%m.%d', ''),
(26, 'force_lang_urls', '0', ''),
(27, 'tinyblockformats', 'p,h2,h3,h4,h5,pre,div', ''),
(28, 'article_allowed_tags', 'h2,h3,h4,h5,h6,em,img,iframe,table,object,thead,tbody,tfoot,tr,th,td,param,embed,map,p,a,ul,ol,li,br,b,strong', ''),
(29, 'filemanager_file_types', 'gif,jpe,jpeg,jpg,png,mpeg,mpg,mp3,doc,docx,pdf,rar,word,zip', ''),
(30, 'default_admin_lang', 'en', ''),
(31, 'upload_autostart', '1', ''),
(32, 'resize_on_upload', '1', ''),
(33, 'picture_max_width', '1200', ''),
(34, 'picture_max_height', '1200', ''),
(35, 'upload_mode', '', ''),
(36, 'no_source_picture', 'default.png', ''),
(37, 'enable_backend_tracker', '0', ''),
(38, 'backend_ui_style', 'original', ''),
(39, 'notification', '1', ''),
(40, 'notification_date', '', ''),
(41, 'site_title', 'My website', 'sk'),
(42, 'last_notification_refresh', '2015-02-23 11:57:10', ''),
(43, 'last_version', '1.0.7', ''),
(44, 'media_thumb_unsharp', '', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
`id_tag` int(11) unsigned NOT NULL,
  `tag_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `tracker`
--

CREATE TABLE IF NOT EXISTS `tracker` (
  `id_user` int(11) unsigned NOT NULL,
  `ip_address` varchar(32) DEFAULT NULL,
  `element` varchar(50) DEFAULT NULL,
  `id_element` int(11) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `elements` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `type`
--

CREATE TABLE IF NOT EXISTS `type` (
`id_type` int(11) unsigned NOT NULL,
  `code` varchar(50) NOT NULL,
  `parent` char(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `ordering` smallint(6) NOT NULL,
  `view` varchar(50) DEFAULT NULL COMMENT 'view',
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ui_element`
--

CREATE TABLE IF NOT EXISTS `ui_element` (
`id_ui_element` int(11) unsigned NOT NULL,
  `id_company` int(11) unsigned DEFAULT NULL,
  `type` enum('tab','table','list') DEFAULT NULL,
  `panel` varchar(25) DEFAULT NULL COMMENT 'UI context',
  `title` varchar(50) DEFAULT NULL,
  `ordering` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ui_element_lk_extend`
--

CREATE TABLE IF NOT EXISTS `ui_element_lk_extend` (
  `id_ui_element` int(11) unsigned NOT NULL,
  `id_extend` int(11) NOT NULL DEFAULT '0',
  `ordering` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `url`
--

CREATE TABLE IF NOT EXISTS `url` (
`id_url` int(11) unsigned NOT NULL,
  `id_entity` int(11) unsigned NOT NULL,
  `type` varchar(10) NOT NULL,
  `canonical` smallint(1) NOT NULL DEFAULT '0',
  `active` smallint(1) NOT NULL DEFAULT '0',
  `lang` varchar(8) NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `path_ids` varchar(50) DEFAULT NULL,
  `full_path_ids` varchar(50) DEFAULT NULL,
  `creation_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `url`
--

INSERT INTO `url` (`id_url`, `id_entity`, `type`, `canonical`, `active`, `lang`, `path`, `path_ids`, `full_path_ids`, `creation_date`) VALUES
(47, 6, 'page', 1, 1, 'sk', 'podporujeme', '6', '6', '2015-02-21 10:47:59'),
(48, 9, 'article', 1, 1, 'sk', 'podporujeme/ako-podporovat', '6/9', '6/9', '2015-02-21 10:47:59'),
(62, 4, 'page', 1, 1, 'sk', 'home', '4', '4', '2015-02-21 11:05:10'),
(63, 13, 'article', 1, 1, 'sk', 'home/skola-yedidiass', '4/13', '4/13', '2015-02-21 11:05:10'),
(64, 14, 'article', 1, 1, 'sk', 'podporujeme/podporte-nas-2-z-dane', '6/14', '6/14', '2015-02-21 20:44:37'),
(69, 9, 'page', 1, 1, 'sk', 'projekty', '9', '9', '2015-02-21 21:48:25'),
(81, 10, 'page', 1, 1, 'sk', 'projekty/aktualne', '9/10', '9/10', '2015-02-21 22:06:52'),
(82, 15, 'article', 1, 1, 'sk', 'projekty/aktualne/dokoncenie-triedy-a-domu-uciteov', '9/10/15', '9/10/15', '2015-02-21 22:06:52'),
(86, 11, 'page', 1, 1, 'sk', 'projekty/realizovane', '9/11', '9/11', '2015-02-21 22:15:20'),
(87, 17, 'article', 1, 1, 'sk', 'projekty/realizovane/potravinova-pomoc', '9/11/17', '9/11/17', '2015-02-21 22:15:20'),
(95, 12, 'page', 1, 1, 'sk', 'galeria', '12', '12', '2015-02-23 14:27:35'),
(96, 20, 'article', 1, 1, 'sk', 'galeria/z-africkeho-dennika-25.6.-7.7.-2014', '12/20', '12/20', '2015-02-23 14:27:35'),
(97, 5, 'page', 1, 1, 'sk', 'podporujeme/podporovani-studenti', '6/5', '6/5', '2015-02-23 14:53:02'),
(98, 5, 'article', 1, 1, 'sk', 'podporujeme/podporovani-studenti/basirista-dahaye-duay', '6/5/5', '6/5/5', '2015-02-23 14:53:02'),
(99, 6, 'article', 1, 1, 'sk', 'podporujeme/podporovani-studenti/paschal-emmanuel-awe', '6/5/6', '6/5/6', '2015-02-23 14:53:02'),
(100, 7, 'page', 1, 1, 'sk', 'podporujeme/cakatelia-na-podporu', '6/7', '6/7', '2015-02-23 14:54:00'),
(101, 7, 'article', 1, 1, 'sk', 'podporujeme/cakatelia-na-podporu/emiliana-nicodemus-daffi', '6/7/7', '6/7/7', '2015-02-23 14:54:00'),
(102, 8, 'article', 1, 1, 'sk', 'podporujeme/cakatelia-na-podporu/naomi-naftali-yona', '6/7/8', '6/7/8', '2015-02-23 14:54:00'),
(106, 13, 'page', 1, 1, 'sk', 'skola-yedidiass', '13', '13', '2015-02-23 15:06:20'),
(107, 21, 'article', 1, 1, 'sk', 'skola-yedidiass/yedidiass', '13/21', '13/21', '2015-02-23 15:06:20'),
(112, 14, 'page', 1, 1, 'sk', 'ostatne-clanky', '14', '14', '2015-02-23 15:24:55'),
(113, 22, 'article', 1, 1, 'sk', 'ostatne-clanky/state-sa-dobrovonikom', '14/22', '14/22', '2015-02-23 15:24:55'),
(116, 15, 'page', 1, 1, 'sk', 'o-nas', '15', '15', '2015-02-23 15:30:58'),
(117, 23, 'article', 1, 1, 'sk', 'o-nas/onas', '15/23', '15/23', '2015-02-23 15:30:58');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(11) unsigned NOT NULL,
  `id_role` smallint(4) unsigned NOT NULL,
  `join_date` timestamp NULL DEFAULT NULL,
  `last_visit` timestamp NULL DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `screen_name` varchar(50) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `gender` smallint(1) DEFAULT NULL COMMENT '1: Male, 2 : Female',
  `password` varchar(255) NOT NULL,
  `email` varchar(120) NOT NULL,
  `salt` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `user`
--

INSERT INTO `user` (`id_user`, `id_role`, `join_date`, `last_visit`, `username`, `screen_name`, `firstname`, `lastname`, `birthdate`, `gender`, `password`, `email`, `salt`) VALUES
(1, 1, '2015-02-20 14:11:15', '2015-02-23 10:57:05', 'admin', 'admin admin', 'admin', 'admin', NULL, NULL, 'wYxgOoOgMY43z+Cr', 'frank238238@gmail.com', 'c2f34b7371ee57ef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_key`
--
ALTER TABLE `api_key`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_log`
--
ALTER TABLE `api_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
 ADD PRIMARY KEY (`id_article`);

--
-- Indexes for table `article_comment`
--
ALTER TABLE `article_comment`
 ADD PRIMARY KEY (`id_article_comment`);

--
-- Indexes for table `article_lang`
--
ALTER TABLE `article_lang`
 ADD PRIMARY KEY (`id_article`,`lang`);

--
-- Indexes for table `article_media`
--
ALTER TABLE `article_media`
 ADD PRIMARY KEY (`id_article`,`id_media`);

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
 ADD PRIMARY KEY (`id_article`,`id_tag`);

--
-- Indexes for table `article_type`
--
ALTER TABLE `article_type`
 ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
 ADD PRIMARY KEY (`id_captcha`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `category_lang`
--
ALTER TABLE `category_lang`
 ADD PRIMARY KEY (`id_category`,`lang`);

--
-- Indexes for table `element`
--
ALTER TABLE `element`
 ADD PRIMARY KEY (`id_element`), ADD KEY `idx_element_id_element_definition` (`id_element_definition`), ADD KEY `idx_element_id_parent` (`id_parent`), ADD KEY `idx_element_parent` (`parent`);

--
-- Indexes for table `element_definition`
--
ALTER TABLE `element_definition`
 ADD PRIMARY KEY (`id_element_definition`);

--
-- Indexes for table `element_definition_lang`
--
ALTER TABLE `element_definition_lang`
 ADD PRIMARY KEY (`id_element_definition`,`lang`);

--
-- Indexes for table `event_log`
--
ALTER TABLE `event_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extend_field`
--
ALTER TABLE `extend_field`
 ADD PRIMARY KEY (`id_extend_field`), ADD KEY `idx_extend_field_parent` (`parent`), ADD KEY `idx_extend_field_id_parent` (`id_parent`);

--
-- Indexes for table `extend_fields`
--
ALTER TABLE `extend_fields`
 ADD PRIMARY KEY (`id_extend_fields`), ADD KEY `idx_extend_fields_id_parent` (`id_parent`), ADD KEY `idx_extend_fields_lang` (`lang`), ADD KEY `idx_extend_fields_id_extend_field` (`id_extend_field`);

--
-- Indexes for table `extend_field_lang`
--
ALTER TABLE `extend_field_lang`
 ADD PRIMARY KEY (`id_extend_field`,`lang`);

--
-- Indexes for table `extend_field_type`
--
ALTER TABLE `extend_field_type`
 ADD PRIMARY KEY (`id_extend_field_type`);

--
-- Indexes for table `ion_sessions`
--
ALTER TABLE `ion_sessions`
 ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
 ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`id_item`,`parent`,`id_parent`);

--
-- Indexes for table `item_definition`
--
ALTER TABLE `item_definition`
 ADD PRIMARY KEY (`id_item_definition`);

--
-- Indexes for table `item_definition_lang`
--
ALTER TABLE `item_definition_lang`
 ADD PRIMARY KEY (`id_item_definition`,`lang`);

--
-- Indexes for table `item_lang`
--
ALTER TABLE `item_lang`
 ADD PRIMARY KEY (`id_item`,`lang`);

--
-- Indexes for table `lang`
--
ALTER TABLE `lang`
 ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `login_tracker`
--
ALTER TABLE `login_tracker`
 ADD PRIMARY KEY (`ip_address`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
 ADD PRIMARY KEY (`id_media`);

--
-- Indexes for table `media_lang`
--
ALTER TABLE `media_lang`
 ADD PRIMARY KEY (`id_media`,`lang`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id_menu`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
 ADD PRIMARY KEY (`id_module`), ADD KEY `i_module_name` (`name`);

--
-- Indexes for table `module_setting`
--
ALTER TABLE `module_setting`
 ADD PRIMARY KEY (`id_module_setting`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
 ADD PRIMARY KEY (`id_note`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
 ADD PRIMARY KEY (`id_notification`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
 ADD PRIMARY KEY (`id_page`), ADD KEY `idx_page_id_parent` (`id_parent`), ADD KEY `idx_page_level` (`level`), ADD KEY `idx_page_menu` (`id_menu`);

--
-- Indexes for table `page_article`
--
ALTER TABLE `page_article`
 ADD PRIMARY KEY (`id_page`,`id_article`), ADD KEY `idx_page_article_id_type` (`id_type`);

--
-- Indexes for table `page_lang`
--
ALTER TABLE `page_lang`
 ADD PRIMARY KEY (`id_page`,`lang`);

--
-- Indexes for table `page_media`
--
ALTER TABLE `page_media`
 ADD PRIMARY KEY (`id_page`,`id_media`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
 ADD PRIMARY KEY (`id_resource`), ADD UNIQUE KEY `resource_key` (`resource`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`id_role`), ADD UNIQUE KEY `role_code` (`role_code`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
 ADD PRIMARY KEY (`id_role`,`resource`,`actions`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
 ADD PRIMARY KEY (`id_setting`), ADD UNIQUE KEY `idx_unq_setting` (`name`,`lang`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
 ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
 ADD PRIMARY KEY (`id_type`);

--
-- Indexes for table `ui_element`
--
ALTER TABLE `ui_element`
 ADD PRIMARY KEY (`id_ui_element`);

--
-- Indexes for table `ui_element_lk_extend`
--
ALTER TABLE `ui_element_lk_extend`
 ADD PRIMARY KEY (`id_ui_element`,`id_extend`);

--
-- Indexes for table `url`
--
ALTER TABLE `url`
 ADD PRIMARY KEY (`id_url`), ADD KEY `idx_url_type` (`type`), ADD KEY `idx_url_active` (`active`), ADD KEY `idx_url_lang` (`lang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`), ADD UNIQUE KEY `username` (`username`), ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_key`
--
ALTER TABLE `api_key`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `api_log`
--
ALTER TABLE `api_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
MODIFY `id_article` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `article_comment`
--
ALTER TABLE `article_comment`
MODIFY `id_article_comment` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `article_type`
--
ALTER TABLE `article_type`
MODIFY `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
MODIFY `id_captcha` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id_category` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `element`
--
ALTER TABLE `element`
MODIFY `id_element` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `element_definition`
--
ALTER TABLE `element_definition`
MODIFY `id_element_definition` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `event_log`
--
ALTER TABLE `event_log`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `extend_field`
--
ALTER TABLE `extend_field`
MODIFY `id_extend_field` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `extend_fields`
--
ALTER TABLE `extend_fields`
MODIFY `id_extend_fields` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `extend_field_type`
--
ALTER TABLE `extend_field_type`
MODIFY `id_extend_field_type` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
MODIFY `id_item` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_definition`
--
ALTER TABLE `item_definition`
MODIFY `id_item_definition` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
MODIFY `id_media` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
MODIFY `id_module` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `module_setting`
--
ALTER TABLE `module_setting`
MODIFY `id_module_setting` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
MODIFY `id_notification` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
MODIFY `id_page` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
MODIFY `id_resource` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
MODIFY `id_role` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
MODIFY `id_setting` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
MODIFY `id_tag` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
MODIFY `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ui_element`
--
ALTER TABLE `ui_element`
MODIFY `id_ui_element` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `url`
--
ALTER TABLE `url`
MODIFY `id_url` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
