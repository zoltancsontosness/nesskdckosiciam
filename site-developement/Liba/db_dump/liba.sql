-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Po 27.Apr 2015, 19:01
-- Verzia serveru: 5.6.21
-- Verzia PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáza: `liba`
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article`
--

INSERT INTO `article` (`id_article`, `name`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `indexed`, `id_category`, `comment_allow`, `comment_autovalid`, `comment_expire`, `flag`, `has_url`, `priority`) VALUES
(1, '404', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(2, '401', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(3, '403', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(5, 'zapasy', 'admin', 'admin', '2015-04-17 10:51:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-17 10:57:36', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(6, 'turnaje', 'admin', 'admin', '2015-04-17 10:57:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-17 10:58:07', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(7, 'toto-je-nas-tim', 'admin', 'admin', '2015-04-17 10:58:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-17 10:59:04', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(8, 'filozofia-skoly-1', 'admin', 'admin', '2015-04-20 13:49:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 17:07:49', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(11, 'zoznam-hracov', 'admin', 'admin', '2015-04-21 15:02:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 16:03:51', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(12, 'igor-liba', 'admin', 'admin', '2015-04-21 17:02:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-21 17:03:22', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(13, 'pavel-valko-st.', 'admin', 'admin', '2015-04-21 17:10:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 15:59:05', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(14, 'jaromir-dragan', 'admin', 'admin', '2015-04-21 17:12:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 13:42:28', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(15, 'uvod', 'admin', NULL, '2015-04-22 10:03:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-22 10:03:20', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(16, 'oznam-1', 'admin', NULL, '2015-04-22 13:03:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-22 13:03:48', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(17, 'oznam', 'admin', NULL, '2015-04-22 13:04:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-22 13:04:06', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(18, NULL, NULL, NULL, '2015-04-24 17:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 17:07:53', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(19, 'pavel-valko-st.-1', 'admin', 'admin', '2015-04-27 13:44:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 13:45:39', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(20, 'pavel-valko-st.-2', 'admin', NULL, '2015-04-27 13:46:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 13:46:19', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(21, 'pavel-valko-st.-3', 'admin', NULL, '2015-04-27 14:11:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 14:11:09', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(22, 'jaromir-dragan-1', 'admin', 'admin', '2015-04-27 14:13:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 14:15:22', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(23, 'slavomir-ilavsk', 'admin', NULL, '2015-04-27 14:19:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 14:19:04', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(24, 'reklamne-predmety', 'admin', 'admin', '2015-04-27 14:45:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 16:52:38', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(25, 'rozpis-treningov', 'admin', 'admin', '2015-04-27 17:17:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:19:02', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(26, 'kodex-klubu', 'admin', 'admin', '2015-04-27 17:20:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:25:01', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(27, 'ulohy-trenerov', 'admin', 'admin', '2015-04-27 17:22:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:24:53', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(28, 'desatoro-pre-rodicov', 'admin', 'admin', '2015-04-27 17:23:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:24:45', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5);

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
(5, 'sk', 'zapasy', 'Zápasy', '', '', '', '', '', 1),
(6, 'sk', 'turnaje', 'Turnaje', '', '', '', '', '', 1),
(7, 'sk', 'toto-je-nas-tim', 'Toto je náš tím', '', '', '', '', '', 1),
(8, 'sk', 'filozofia-skoly-1', 'Filozofia školy', '', '', '<p>Tak ako v zahraničí existuje veľa mimoklubových výberov, aj na Slovensku začína fungovať mnoho výberov hráčov rôznych ročníkov, niektoré fungujú skvele, iné horšie. Našou prioritou je podpora talentovaných jedincov zo širokej športovej oblasti od útleho veku, ktorí majú o svoj športový rast predovšetkým vlastný záujem, bez ohľadu na klubovú príslušnosť. Jedná sa o celoročnú spoluprácu vhodne doplňujúcu "klubové povinosti" bez konfliktu.</p>\n<p>Týmto športovcom sa Hockey Liba Academy bude snažiť vytvárať čo najoptimálnejšie podmienky na rozvíjanie ich talentu nasledujúcimi spôsobmi:</p>\n<ul class="liba">\n<li>rôznymi formami tréningov</li>\n<li>organizovaním campov</li>\n<li>sústredeniami</li>\n<li>individuálnou prípravou</li>\n<li>poradenskou činnosťou</li>\n<li>zdravotnými prehliadkami</li>\n</ul>\n<p>Budeme sa snažiť prezentovať ich talent na kvalitných slovenských i medzinárodných akciách.</p>\n<p></p>\n<p><strong>Hokejová akadémia Igora Libu</strong> je špeciálne zameraná na mladých hráčov hneď od začiatku ich hokejového vývoja, tak, aby získali čo najlepšie návyky pre svoj hokejový rast.</p>\n<ul class="liba">\n<li>Ponúkame komplexnú starostlivosť v najrýchlejšom tímovom športe na svete</li>\n<li>U nás môžete očakávať pozitívny prístup trénerov. Našou snahou je, aby sa každý hráč v našej akadémii cítil dobre, zbavil sa strachu z chýb, ktorých sa všetci zákonite v priebehu učenia nových zručností dopúšťame.</li>\n<li>Trpezlivá práca s každým. Našou snahou je vytvoriť v jej priebehu dostatok času a priestoru na učenie sa novým hokejovým schopnostiam, ich opakovanie a zdokonaľovanie. Iba tak môže každý získať a následne rozvíjať správne pohybové a herné návyky, ktoré mu neskôr umožní jeho ďalší hokejový rast</li>\n<li>Odovzdávanie najnovších poznatkov a použitie efektívnych metód tréningu z celého sveta</li>\n<li>Svojím individuálnym prístupom sa snažíme u chlapcov aj dievčat o čo najväčšie posilnenie sebadôvery. Tým, že každému pomôžeme uvedomiť si svoje prednosti a spoznať svoje nedostatky mu umožníme, aby mohol sám svoje prednosti ďalej rozvíjať a svoje nedostatky postupne odstraňovať. Samozrejmosťou je potom plné rešpektovanie vekovej a výkonnostnej úrovne každého hráča.</li>\n<li>Podrobne sa zoznámite s našim individuálnym tréningovým procesom a môžete tak niektoré veci rozvíjať aj Vy mimo tréningový proces v domácich podmienkach</li>\n</ul>', NULL, NULL, 1),
(11, 'sk', 'zoznam-hracov', 'Zoznam hráčov', '', '', '<h2>SKUPINA 1</h2>\n<ul>\n<li><strong>ročníky: 2007, 2006, 2005</strong></li>\n<li><strong>tréningy: pondelok – 16.30 hod., štvrtok– 15.15 hod. a sobota – 9.30 hod.</strong></li>\n</ul>\n<ol>\n<li> Baksay Marko</li>\n<li> Bálint Samuel</li>\n<li> Buchla Peter</li>\n<li> Barakat Andree</li>\n<li> Binda Mathias</li>\n<li> Eštok Martin - <strong>HC Michalovce</strong></li>\n<li> Haluška Matej</li>\n<li> Hudák Jakub</li>\n<li> Janke Šimon</li>\n<li> Komendát Richard</li>\n<li> Krajcár Matúš</li>\n<li> Levkanič Adam</li>\n<li> Oravec Marek</li>\n<li> Ruščák Richard</li>\n<li> Slivkár Šimon</li>\n<li> Ujjobbágy Pavol</li>\n<li> Vasilík Ľuboslav</li>\n<li> Vindiš Martin</li>\n<li> Vizner Lukáš - <strong>HC Košice </strong></li>\n</ol>\n<p><strong>Brankári:</strong></p>\n<ul>\n<li>Baltes Eduard</li>\n<li>Barakat Alex</li>\n<li>Buróci Šimon</li>\n</ul>\n<h2></h2>\n<h2>SKUPINA 2</h2>\n<ul>\n<li><strong>ročníky: 2004, 2003</strong></li>\n<li><strong>tréningy: streda – 16.30 hod., piatok – 15.15 hod. a sobota – 8.00 hod.</strong></li>\n</ul>\n<ol>\n<li> Čelko Ferencech Šimon</li>\n<li> Domby Matej</li>\n<li> Droppa Patrik</li>\n<li> Fedor Alex</li>\n<li> Haluška Branislav</li>\n<li> Hanušovský Kristián</li>\n<li> Hegyi Kristián</li>\n<li> Horváth Dušan</li>\n<li> Kissi Tomáš</li>\n<li> Kočiš Róbert</li>\n<li> Lauff Eduard</li>\n<li> Marušiak Peter</li>\n<li> Pillár Sebastián</li>\n<li> Pollák Maxim</li>\n<li> Rohun Oliver</li>\n<li> Spišák Róbert</li>\n<li> Szilasi Tomáš</li>\n<li> Šelepský Sebastián</li>\n<li> Timko Frederik</li>\n<li> Tomčo Jakub</li>\n<li> Ujjobbágy Samuel</li>\n<li> Valent Jakub</li>\n<li> Vizner Jakub</li>\n<li> Zajac Štefan</li>\n</ol>\n<p><strong> Brankári: </strong></p>\n<ul>\n<li>Pataki Samuel</li>\n<li>Trnka Matúš</li>\n<li>Youssef Štefan</li>\n</ul>', '', '', 1),
(12, 'sk', 'igor-liba', 'Igor LIBA', '', '', '<p>Často považovaný za najvšestrannejšieho česko-slovenského hokejistu 80. rokov – výborný korčuliar, fyzicky i technicky dokonale vybavený s vyváženou útočnou a obrannou činnosťou.</p>\n<p>S hokejom začínal ako desaťročný, je odchovancom klubu ZPA Prešov. Hráč VSŽ Košice, Dukly Jihlava, Zelttwegu a HK Spišská Nová Ves. V NHL hráč Minnesota North Stars, Los Angeles Kings (kde jeho spoluhráčom v útoku bol fenomenálny Wayne Gretzky), New York Rangers. Bol draftovaný v roku 1983 tímom Calgary Flames v 5. kole z 91. miesta.</p>\n<p>Je držiteľom striebornej medaily zo ZOH 1984 a bronzovej zo ZOH 1992. Majster sveta 1985, strieborný z MS 1982 – 83. Reprezentačný dres ČSSR obliekol 211-krát, najviac spomedzi všetkých slovenských hráčov. Tromfol hokejistu storočia Dzurillu, legendárneho Golonku, Pašeka, Rusnáka i Lukáča. Raz (v roku 1993 proti Francúzom) nastúpil aj v reprezentačnom tíme Slovenska. Na Majstrovstvách sveta 1985 prispel významným spôsobom k zlatej medaile.</p>\n<p>V oranžovo - čiernom drese Košíc sa dvakrát radoval z československého titulu (1986 a 1988). V roku 1999 sa dočkal aj titulu majstra Slovenska, keď dokázal zomknúť partiu proti bratislavskému Slovanu. Vtedy si ako prvý mohol so slzami v očiach poťažkať nový pohár určený pre víťaza extraligy. Počas kariéry ho sprevádzalo číslo 11. Nosil ho nielen v reprezentácii, ale aj v spomínaných Košiciach a nevynechal ani zahraničie. Iba v zámorí mu prischli čísla 26 respektíve 23.</p>', '', '', 1),
(13, 'sk', 'pavel-valko-st.', 'Pavel VALKO st.', '', '', '<p>Hráčska kariéra:<br />1. Československá liga – Košice (1985 až 1987 a 1989 až 1993), Trenčín ( 1987 až 1989 )<br />2. Slovenská liga – Košice (1993 až 1997), Nitra, Skalica<br />3. Česká liga - Znojmo, Zlín ( 1999 až 2001 ) <br />4. Švédska liga - Karlskrona, Motal<br />5. Anglická liga – Romford<br />6. Maďarská liga – Szekesfehervar<br />7. Rumunská liga – Mercuria Ciuc<br /><br />Reprezentácia:<br />1. ME 18 ( za Československo ) – 3. miesto ( Duseldorf – Nemecko )<br />2. MS 20 ( za Československo ) – 4. miesto ( Moskva )<br />3. 3 štarty za Slovensko <br /><br />Úspechy:<br />1. Majster Československa – VSŽ Košice – 1986<br />2. 2. miesto ( Československá liga ) – Trenčín – 1989<br />3. Majster Slovenska – HC Košice – 1995 a 1996<br />4. 1. miesto ( Švédska liga ) – Karlskrona – 2006<br />5. 1. miesto ( Maďarská liga ) – Szekesfehervar <br />6. 1. miesto ( Rumunska liga ) – Mercuria Ciuc <br /><br />Trénerska kariéra:<br />- seniori Michalovce<br />- juniori Motala Švédsko<br />- dorast Trebišov<br />- dorast Romford Anglicko</p>', '', '', 1),
(14, 'sk', 'jaromir-dragan', 'Jaromír Dragan', '', '', '<p>- bývalý slovenský hokejový brankár <br /><br />Hráčska kariera: <br />Liptovský Mikuláš, Slovan Bratislava, Topoľčany, Košice, Zvolen, Zlin, Ferencvaros Budapešť <br />Reprezentácia: <br />1992 za Česko-Slovensko bronz na zimných olympijských hrách v Albertville. Za slovenskú reprezentáciu odohral celkom 56 zápasov. Na majstrovstvách sveta v roku 1995, kedy Slovensko hralo ešte v skupine B, dopomohol k postupu do najvyššej skupiny po výhre 4:3 nad Lotyšskom.<br /><br />MS: <br />1996 10. miesto<br />1997 9. miesto<br /><br />ZOH: <br />1992 3. miesto<br />1994 6. miesto<br /><br />OCENENIA: 1995/1996 najlepší hokejista Slovenska<br /><br />Prehľad medailí: <br />BRONZ ZOH 1992 ČSFR<br />ZLATO MS skupiny C 1994<br />MS skupiny B 1995<br />Československá liga 1987/1988<br />Slovenská liga 1994/1995, 1995/1996<br /><br />TRENERSKA KARIERA:<br />1999 – 2006 HC Košice tréner mládeže ,/ žiaci, juniori, brankári <br />2006 – 2007 MHC Martin tréner mládeže , / dorast, brankári /<br />2007 – 2008 HC Nitra tréner mládeže , / juniori, brankári /<br />2008 – 2011 PHK Prešov tréner mládeže, / žiaci, dorast, juniori <br />2003 – 2009 Reprezentácia SR / tréner brankárov SR 16,17, 18 </p>', '', '', 1),
(15, 'sk', 'uvod', 'Úvod', '', '', '<p>Stiahnite si: <strong>VYHLÁSENIE o poukázaní sumy do výšky 2% (3 %) zaplatenej dane</strong> <a href="http://www.igorliba.sk/documents/vyhlasenie_2perc_2014-editovatelne.rtf" target="_blank">word dokument</a>, <a href="http://www.igorliba.sk/documents/vyhlasenie_2perc_2014-editovatelne-2.pdf" target="_blank">pdf dokument</a><br /><br />Rozpis tréningov od 3. 11. 2014 </p>\n<table border="1" cellpadding="3" align="center" class="center" id="trainings">\n<thead>\n<tr align="center" valign="middle" class="center">\n<td align="center" valign="middle" class="center"></td>\n<th align="center" valign="middle">8:00-9:15</th><th align="center" valign="middle">9:30-10:30</th><th align="center" valign="middle">10:45-11:45</th><th align="center" valign="middle">12:00-13:00</th><th align="center" valign="middle">15:15-16:15</th><th align="center" valign="middle">16:30-17:30</th><th align="center" valign="middle">20:15-21:15</th></tr>\n</thead>\n<tbody>\n<tr>\n<td>Pondelok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Utorok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Streda</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Štvrtok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Piatok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Sobota</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n</tr>\n<tr>\n<td>Nedeľa</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n</tr>\n</tbody>\n</table>\n<p><br />POZOR, v nedeľu možné zmeny podľa zápasov hokejových prípraviek HP 5,<br />zmeny budú oznamované prostredníctvom web. stránky a facebooku.</p>\n<p></p>\n<p>Zmeny tréningov - apríl 2015 </p>', NULL, NULL, 1),
(16, 'sk', 'oznam-1', 'Oznam', '', '', '<p>Dňa 28.03.2015 sa uskutoční turnaj v Sabinove. Skupina 1. Zraz o 6:00 hod pred zimným štadiónom v Čani. </p>', NULL, NULL, 1),
(17, 'sk', 'oznam', 'Oznam', '', '', '<p>Dňa 7.4.2015 z dôvodu konania Veľkonočného turnaja skupina 3 (15:15 hod.) nebude mať tréning.</p>', NULL, NULL, 1),
(19, 'sk', 'pavel-valko-st.-1', 'Pavel VALKO st.', '', '', '<p>- bývalý slovenský hokejový brankár <br /><br />Hráčska kariera: <br />Liptovský Mikuláš, Slovan Bratislava, Topoľčany, Košice, Zvolen, Zlin, Ferencvaros Budapešť <br />Reprezentácia: <br />1992 za Česko-Slovensko bronz na zimných olympijských hrách v Albertville. Za slovenskú reprezentáciu odohral celkom 56 zápasov. Na majstrovstvách sveta v roku 1995, kedy Slovensko hralo ešte v skupine B, dopomohol k postupu do najvyššej skupiny po výhre 4:3 nad Lotyšskom.<br /><br />MS: <br />1996 10. miesto<br />1997 9. miesto<br /><br />ZOH: <br />1992 3. miesto<br />1994 6. miesto<br /><br />OCENENIA: 1995/1996 najlepší hokejista Slovenska<br /><br />Prehľad medailí: <br />BRONZ ZOH 1992 ČSFR<br />ZLATO MS skupiny C 1994<br />MS skupiny B 1995<br />Československá liga 1987/1988<br />Slovenská liga 1994/1995, 1995/1996<br /><br />TRENERSKA KARIERA:<br />1999 – 2006 HC Košice tréner mládeže ,/ žiaci, juniori, brankári <br />2006 – 2007 MHC Martin tréner mládeže , / dorast, brankári /<br />2007 – 2008 HC Nitra tréner mládeže , / juniori, brankári /<br />2008 – 2011 PHK Prešov tréner mládeže, / žiaci, dorast, juniori <br />2003 – 2009 Reprezentácia SR / tréner brankárov SR 16,17, 18 </p>', '', '', 1),
(20, 'sk', 'pavel-valko-st.', 'Pavel VALKO st.', '', '', '<p>- bývalý slovenský hokejový brankár <br /><br />Hráčska kariera: <br />Liptovský Mikuláš, Slovan Bratislava, Topoľčany, Košice, Zvolen, Zlin, Ferencvaros Budapešť <br />Reprezentácia: <br />1992 za Česko-Slovensko bronz na zimných olympijských hrách v Albertville. Za slovenskú reprezentáciu odohral celkom 56 zápasov. Na majstrovstvách sveta v roku 1995, kedy Slovensko hralo ešte v skupine B, dopomohol k postupu do najvyššej skupiny po výhre 4:3 nad Lotyšskom.<br /><br />MS: <br />1996 10. miesto<br />1997 9. miesto<br /><br />ZOH: <br />1992 3. miesto<br />1994 6. miesto<br /><br />OCENENIA: 1995/1996 najlepší hokejista Slovenska<br /><br />Prehľad medailí: <br />BRONZ ZOH 1992 ČSFR<br />ZLATO MS skupiny C 1994<br />MS skupiny B 1995<br />Československá liga 1987/1988<br />Slovenská liga 1994/1995, 1995/1996<br /><br />TRENERSKA KARIERA:<br />1999 – 2006 HC Košice tréner mládeže ,/ žiaci, juniori, brankári <br />2006 – 2007 MHC Martin tréner mládeže , / dorast, brankári /<br />2007 – 2008 HC Nitra tréner mládeže , / juniori, brankári /<br />2008 – 2011 PHK Prešov tréner mládeže, / žiaci, dorast, juniori <br />2003 – 2009 Reprezentácia SR / tréner brankárov SR 16,17, 18 </p>', NULL, NULL, 1),
(21, 'sk', 'pavel-valko-st.', 'Pavel VALKO st.', '', '', '<p>Hráčska kariéra:<br />1. Československá liga – Košice (1985 až 1987 a 1989 až 1993), Trenčín ( 1987 až 1989 )<br />2. Slovenská liga – Košice (1993 až 1997), Nitra, Skalica<br />3. Česká liga - Znojmo, Zlín ( 1999 až 2001 ) <br />4. Švédska liga - Karlskrona, Motal<br />5. Anglická liga – Romford<br />6. Maďarská liga – Szekesfehervar<br />7. Rumunská liga – Mercuria Ciuc<br /><br />Reprezentácia:<br />1. ME 18 ( za Československo ) – 3. miesto ( Duseldorf – Nemecko )<br />2. MS 20 ( za Československo ) – 4. miesto ( Moskva )<br />3. 3 štarty za Slovensko <br /><br />Úspechy:<br />1. Majster Československa – VSŽ Košice – 1986<br />2. 2. miesto ( Československá liga ) – Trenčín – 1989<br />3. Majster Slovenska – HC Košice – 1995 a 1996<br />4. 1. miesto ( Švédska liga ) – Karlskrona – 2006<br />5. 1. miesto ( Maďarská liga ) – Szekesfehervar <br />6. 1. miesto ( Rumunska liga ) – Mercuria Ciuc <br /><br />Trénerska kariéra:<br />- seniori Michalovce<br />- juniori Motala Švédsko<br />- dorast Trebišov<br />- dorast Romford Anglicko</p>', NULL, NULL, 1),
(22, 'sk', 'jaromir-dragan', 'Jaromír Dragan', '', '', '<p>- bývalý slovenský hokejový brankár <br /><br />Hráčska kariera: <br />Liptovský Mikuláš, Slovan Bratislava, Topoľčany, Košice, Zvolen, Zlin, Ferencvaros Budapešť <br />Reprezentácia: <br />1992 za Česko-Slovensko bronz na zimných olympijských hrách v Albertville. Za slovenskú reprezentáciu odohral celkom 56 zápasov. Na majstrovstvách sveta v roku 1995, kedy Slovensko hralo ešte v skupine B, dopomohol k postupu do najvyššej skupiny po výhre 4:3 nad Lotyšskom.<br /><br />MS: <br />1996 10. miesto<br />1997 9. miesto<br /><br />ZOH: <br />1992 3. miesto<br />1994 6. miesto<br /><br />OCENENIA: 1995/1996 najlepší hokejista Slovenska<br /><br />Prehľad medailí:</p>\n<p>BRONZ ZOH 1992 ČSFR<br />ZLATO MS skupiny C 1994<br />MS skupiny B 1995<br />Československá liga 1987/1988<br />Slovenská liga 1994/1995, 1995/1996<br /><br />TRENERSKA KARIERA:<br />1999 – 2006 HC Košice tréner mládeže ,/ žiaci, juniori, brankári <br />2006 – 2007 MHC Martin tréner mládeže , / dorast, brankári /<br />2007 – 2008 HC Nitra tréner mládeže , / juniori, brankári /<br />2008 – 2011 PHK Prešov tréner mládeže, / žiaci, dorast, juniori /<br />2003 – 2009 Reprezentácia SR / tréner brankárov SR 16,17, 18</p>', '', '', 1),
(23, 'sk', 'slavomir-ilavsk', 'Slavomír Ilavský', '', '', '<p>Hráčska kariéra:<br />- Československá liga - -3 sezóny VSŽ Košice<br />- Slovenska liga - -5 sezón HC Košice<br />- Švédsko<br />- Francúzsko<br />- Rumunsko<br />- Reprezentácia Slovenska - 24 zápasov<br />- Taliánsky pohár 1993<br />- Tele Cup Nórsko 1993<br />- Svetový pohár Canada-USA 1996<br />- Úspechy - majster Slovenska HC Košice 1995,1996,1999<br />- majster Rumunska 2007<br />- All Stars Slovenska - stredný útočník 1995-1996<br /><br />Trénerska kariéra:<br />- CS Megeve - mládež<br />- CO Courbevoie - seniori a mládež</p>', NULL, NULL, 1),
(24, 'sk', 'reklamne-predmety', 'Reklamné predmety', '', '', '', '', '', 1),
(25, 'sk', 'rozpis-treningov', 'Rozpis tréningov', '', '', '<p></p>\n<table border="1" cellpadding="3" align="center" class="center" id="trainings">\n<thead>\n<tr align="center" valign="middle" class="center">\n<td align="center" valign="middle" class="center"></td>\n<th align="center" valign="middle">8:00-9:15</th><th align="center" valign="middle">9:30-10:30</th><th align="center" valign="middle">10:45-11:45</th><th align="center" valign="middle">12:00-13:00</th><th align="center" valign="middle">15:15-16:15</th><th align="center" valign="middle">16:30-17:30</th><th align="center" valign="middle">20:15-21:15</th></tr>\n</thead>\n<tbody>\n<tr>\n<td>Pondelok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Utorok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Streda</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Štvrtok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Piatok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Sobota</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n</tr>\n<tr>\n<td>Nedeľa</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n</tr>\n</tbody>\n</table>', '', '', 1),
(26, 'sk', 'kodex-klubu', 'Kódex rodičov', '', '', '<ol>\n<li>Dávajú prednosť dlhodobému a zdravému športovému vývoju dieťaťa pred vlastnými ambíciami.</li>\n<li>Umožňujú svojim deťom vykonávať aj iné aktivity,veľmi dôležitá je regenerácia.</li>\n<li>Nenútia deti do športových výkonov proti ich vôli.Deti by mali športovať pre svoje vlastné potešenie,hra je určená pre deti ,nie pre rodičov.</li>\n<li>Kladú dôraz na správnu životosprávu detí,nechajú riadne doliečiť zranenia,choroby i drobné nachladenia.</li>\n<li>Pri zápasoch deťom fandia a aktívne ich povzbudzujú.Ak chcú ,aby deti hrali ako tím,musia rodičia vystupovať tiež ako tím.</li>\n<li>Zdôrazňujú vplyv poctivého tréningu na výkon dieťaťa v zápase.</li>\n<li>Trénerovi dôverujú ,deťom nedávajú pokyny v rozpore s pokynmi trénera a neznižujú jeho autoritu.</li>\n<li>Nikdy nezasahajú do kompetencií trénera pri tréningu a zápase.Nevstupujú do priestorov striedačiek a nevynucujú si zaradenie svojho dieťaťa do zostavy.</li>\n<li>Nepostávajú pri mantineli a nevolajú svoje dieťa po rady.Nepokrikujú po rozhodcoch.</li>\n<li>Pokiaľ majú výhrady,riešia ich najprv s hlavným trénerom a potom s vedením klubu.</li>\n<li>Slušne sa vyjadruje a nepoužíva vulgarizmy.</li>\n</ol>', '', '', 1),
(27, 'sk', 'ulohy-trenerov', 'Úlohy trénerov', '', '', '<ol>\n<li>Organizujú a vedú tréningový proces pridelených mužstiev v LIBA ACADEMY 11.</li>\n<li>Spolupracujú s ostatnými trénermi mládežnickych mužstiev,podľa možností ich prípravu a zápasy.</li>\n<li>Sledujú prospech v škole a udržujú kontakt s rodičmi.</li>\n<li>Vedú pridelené mužstvo v zápase,určujú zostavu a nasadzovanie hráčov.Iba tréner je oprávnený udeľovať zaväzné pokyny vedúcim mužstva a jeho hráčom.</li>\n<li>Dbajú o zdravie a fyzickú pripravenosť členov svojho mužstva,vedú ich k dodržiavaniu životosprávy,výživy,hygieny,regenerácie,rehabilitácie a športovej etiky.</li>\n<li>Pracujú na zdokonaľovaní tréningových metód a sú príkladom pre svojich hráčov.</li>\n<li>Uverňujú na internetových stránkach LIBA ACADEMY 11 týždenné plány mužstiev/prehľad zápasov,výsledkov,termínov zrazov,aktuálne informácie atď/</li>\n<li>Usilujú sa o spravodlivosť,čo sa týka sympatií a pozornosti.</li>\n<li>Budovať u hráčov sebadôveru ale aj sebakontrolu.</li>\n<li>Učiť umeniu koncentrácie a relaxácie.</li>\n<li>Slušne sa vyadruje a nepoužíva vulgarizmy</li>\n</ol>', '', '', 1),
(28, 'sk', 'desatoro-pre-rodicov', 'Desatoro pre rodičov', '', '', '<ol>\n<li>Pozitívne motivovať chlapcov pred tréningom a nezaťažovať ich radami, čo majú robiť.</li>\n<li>Po tréningu pochváliť a povzbudiť bez ohľadu na výkon chlapca.</li>\n<li>Nezasahovať do činnosti trénera pri tréningu a zápase.</li>\n<li>Nevynucovať si zaradenie svojho syna do zostavy.</li>\n<li>Nepostávať pri mantineloch, nevolať chlapcov a neradiť im.</li>\n<li>Nevstupovať do priestorov striedačky a do priestorov šatní.</li>\n<li>Nepokrikovať na rozhodcov.</li>\n<li>Nenosiť chlapcom výstroj.</li>\n<li>Nenarušovať dochádzku na tréningy a zápasy počas víkendov (odchod na chaty a výlety...)</li>\n<li>Nezabúdať na pravidelnú kontrolu výstroja a svojho syna (ribaná, dresy, korčule...)</li>\n</ol>\n<p><br />Čas strávený s Vašimi deťmi počas tréningov a zápasov bude pre všetkých príjemný. Majte na pamäti, že sú to len Vaše deti.</p>', '', '', 1);

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
(5, 2, 1, 1, NULL, NULL),
(6, 3, 1, 1, NULL, NULL),
(7, 4, 1, 1, NULL, NULL),
(12, 33, 1, 1, NULL, NULL),
(13, 34, 1, 1, NULL, NULL),
(14, 35, 1, 1, NULL, NULL),
(19, 34, 1, 1, NULL, NULL),
(20, 34, 1, 1, NULL, NULL),
(21, 34, 1, 1, NULL, NULL),
(22, 35, 1, 1, NULL, NULL),
(23, 36, 1, 1, NULL, NULL),
(24, 44, 1, 2, NULL, NULL),
(24, 45, 1, 3, NULL, NULL),
(24, 46, 1, 4, NULL, NULL),
(24, 47, 1, 5, NULL, NULL),
(24, 48, 1, 6, NULL, NULL),
(24, 49, 1, 7, NULL, NULL),
(24, 50, 1, 1, NULL, NULL);

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
(1, 'slideshow', 0, '', 17);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `media`
--

INSERT INTO `media` (`id_media`, `type`, `file_name`, `path`, `base_path`, `copyright`, `provider`, `date`, `link`, `square_crop`) VALUES
(1, 'picture', 'liba_uvod.jpg', 'files/liba_dokumenty/liba_uvod.jpg', 'files/liba_dokumenty/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(2, 'picture', 'slider_zapasy.jpg', 'files/liba_dokumenty/slider_zapasy.jpg', 'files/liba_dokumenty/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(3, 'picture', 'slider_turnaje.jpg', 'files/liba_dokumenty/slider_turnaje.jpg', 'files/liba_dokumenty/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(4, 'picture', 'slider_tim.jpg', 'files/liba_dokumenty/slider_tim.jpg', 'files/liba_dokumenty/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(5, 'picture', '3b.jpg', 'files/sponsors/3b.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(6, 'picture', 'bauer.jpg', 'files/sponsors/bauer.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(7, 'picture', 'ekolor.jpg', 'files/sponsors/ekolor.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(8, 'picture', 'empe_sport.jpg', 'files/sponsors/empe_sport.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(9, 'picture', 'kimex.gif', 'files/sponsors/kimex.gif', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(10, 'picture', 'intercars.jpg', 'files/sponsors/intercars.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(11, 'picture', 'hireklama.jpg', 'files/sponsors/hireklama.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(12, 'picture', 'fafrak.jpg', 'files/sponsors/fafrak.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(13, 'picture', 'ledo.jpg', 'files/sponsors/ledo.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(14, 'picture', 'll.jpg', 'files/sponsors/ll.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(15, 'picture', 'mitaka.jpg', 'files/sponsors/mitaka.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(16, 'picture', 'montrur.jpg', 'files/sponsors/montrur.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(17, 'picture', 'moris.png', 'files/sponsors/moris.png', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(18, 'picture', 'neonet.jpg', 'files/sponsors/neonet.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(19, 'picture', 'ness_kdc_kosiciam_h.jpg', 'files/sponsors/ness_kdc_kosiciam_h.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(20, 'picture', 'profa.gif', 'files/sponsors/profa.gif', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(21, 'picture', 'rabaka.jpg', 'files/sponsors/rabaka.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(22, 'picture', 'regnum_bavaria.jpg', 'files/sponsors/regnum_bavaria.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(23, 'picture', 'revco.jpg', 'files/sponsors/revco.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(24, 'picture', 'rwe.jpg', 'files/sponsors/rwe.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(25, 'picture', 'sonaplus.jpg', 'files/sponsors/sonaplus.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(26, 'picture', 'sport_do_ke.jpg', 'files/sponsors/sport_do_ke.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(27, 'picture', 'stav_ruskov.jpg', 'files/sponsors/stav_ruskov.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(28, 'picture', 'strabag.jpg', 'files/sponsors/strabag.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(29, 'picture', 'svet_sportu.jpg', 'files/sponsors/svet_sportu.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(30, 'picture', 'tp.jpg', 'files/sponsors/tp.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(31, 'picture', 'vehra.jpg', 'files/sponsors/vehra.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(32, 'picture', 'vsbm.jpg', 'files/sponsors/vsbm.jpg', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(33, 'picture', 'igor_liba.jpg', 'files/treneri/igor_liba.jpg', 'files/treneri/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(34, 'picture', 'pavel_valko.jpg', 'files/treneri/pavel_valko.jpg', 'files/treneri/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(35, 'picture', 'jaromir_dragan.jpg', 'files/treneri/jaromir_dragan.jpg', 'files/treneri/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(36, 'picture', 'slavomir_ilavsky.jpg', 'files/treneri/slavomir_ilavsky.jpg', 'files/treneri/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(37, 'picture', 'biely_odznak_small.jpg', 'files/reklamne_predmety/biely_odznak_small.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(38, 'picture', 'cierny_odznak_small.jpg', 'files/reklamne_predmety/cierny_odznak_small.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(39, 'picture', 'nase_dresy_small.jpg', 'files/reklamne_predmety/nase_dresy_small.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(40, 'picture', 'nase_vlajocky_small.jpg', 'files/reklamne_predmety/nase_vlajocky_small.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(41, 'picture', 'nas_banner_small.jpg', 'files/reklamne_predmety/nas_banner_small.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(42, 'picture', 'oranzove_tricko_small.jpg', 'files/reklamne_predmety/oranzove_tricko_small.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(43, 'picture', 'treningove_dresy_small.jpg', 'files/reklamne_predmety/treningove_dresy_small.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(44, 'picture', 'biely_odznak.jpg', 'files/reklamne_predmety/biely_odznak.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(45, 'picture', 'cierny_odznak.jpg', 'files/reklamne_predmety/cierny_odznak.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(46, 'picture', 'nase_dresy.jpg', 'files/reklamne_predmety/nase_dresy.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(47, 'picture', 'nase_vlajocky.jpg', 'files/reklamne_predmety/nase_vlajocky.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(48, 'picture', 'treningove_dresy.jpg', 'files/reklamne_predmety/treningove_dresy.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(49, 'picture', 'oranzove_tricko.jpg', 'files/reklamne_predmety/oranzove_tricko.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(50, 'picture', 'nas_banner.jpg', 'files/reklamne_predmety/nas_banner.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(51, 'picture', 'ness_logo.png', 'files/sponsors/ness_logo.png', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm');

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
('sk', 37, 'Biely odznak', '', ''),
('sk', 38, 'Čierny odznak', '', ''),
('sk', 39, 'Z&aacute;pasov&eacute; dresy', '', ''),
('sk', 40, 'Vlajočky', '', ''),
('sk', 41, 'N&aacute;&scaron; banner na &scaron;tadi&oacute;ne v Čani', '', ''),
('sk', 42, 'Oranžov&eacute; tričko', '', ''),
('sk', 43, 'Tr&eacute;ningov&eacute; dresy', '', ''),
('sk', 44, 'Biely odznak', '', ''),
('sk', 45, 'Čierny odznak', '', ''),
('sk', 46, 'Z&aacute;pasov&eacute; dresy', '', ''),
('sk', 47, 'Vlajočky', '', ''),
('sk', 48, 'Tr&eacute;ningov&eacute; dresy', '', ''),
('sk', 49, 'Oranžov&eacute; tričko', '', ''),
('sk', 50, 'N&aacute;&scaron; banner na &scaron;tadi&oacute;ne v Čani', '', '');

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
(1, '2015-04-27', 'sitemap_refresh', 'System', 'Sitemap refresh', 'Sitemap needs to be refreshed.<br/> Go to <b>Tools > System Diagnosis > Tools</b> and click on <b>"Refresh Sitemap"</b>.', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page`
--

INSERT INTO `page` (`id_page`, `id_parent`, `id_menu`, `id_type`, `id_subnav`, `name`, `ordering`, `level`, `online`, `home`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `appears`, `has_url`, `view`, `view_single`, `article_list_view`, `article_view`, `article_order`, `article_order_direction`, `link`, `link_type`, `link_id`, `pagination`, `priority`, `used_by_module`, `deny_code`) VALUES
(1, 0, 2, 0, 0, '404', 2, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(2, 0, 2, 0, 0, '401', 3, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(3, 0, 2, 0, 0, '403', 4, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(4, 0, 1, 0, 0, 'home', 1, 0, 1, 1, NULL, 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-21 17:48:38', '0000-00-00 00:00:00', 1, 1, 'page_home', 'page_blog_post', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(5, 0, 1, 0, 0, 'o-nas', 2, 0, 1, 0, 'admin', 'admin', '2015-04-15 11:41:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-20 13:51:13', '0000-00-00 00:00:00', 1, 1, 'page_single_article', 'page_single_article', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(6, 0, 1, 0, 0, 'kodex-klubu', 3, 0, 1, 0, 'admin', NULL, '2015-04-15 11:41:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(7, 0, 1, 0, 0, 'zapasy', 4, 0, 1, 0, 'admin', NULL, '2015-04-15 11:41:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(8, 0, 1, 0, 0, 'sportoviska', 5, 0, 1, 0, 'admin', NULL, '2015-04-15 11:42:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(9, 0, 1, 0, 0, '2-z-dani', 6, 0, 1, 0, 'admin', NULL, '2015-04-15 11:42:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(10, 0, 1, 0, 0, 'fotogaleria', 7, 0, 1, 0, 'admin', NULL, '2015-04-15 11:42:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(11, 0, 1, 0, 0, 'kontakt', 9, 0, 1, 0, 'admin', 'admin', '2015-04-15 11:42:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-15 15:53:16', '0000-00-00 00:00:00', 1, 1, 'page_contact', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(13, 5, 1, 0, 0, 'filozofia-skoly', 8, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:25:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 17:09:19', '0000-00-00 00:00:00', 1, 1, 'page_blog_post', 'page_blog_post', '', '', 'ordering', 'ASC', 'Filozofia školy', 'article', '13.8', 0, 5, 0, '404'),
(14, 5, 1, 0, 0, 'zoznam-hracov', 9, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:26:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 17:06:35', '0000-00-00 00:00:00', 1, 1, 'page_blog_post', 'page_blog_post', '', '', 'ordering', 'ASC', 'Zoznam hráčov', 'article', '14.11', 0, 5, 0, '404'),
(15, 5, 1, 0, 0, 'treneri', 10, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:29:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 13:18:53', '0000-00-00 00:00:00', 1, 1, 'page_blog', 'page_blog_post', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(16, 5, 1, 0, 0, 'rozpis-treningov', 11, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:29:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:19:33', '0000-00-00 00:00:00', 1, 1, 'page_blog_post', '', '', '', 'ordering', 'ASC', 'Rozpis tréningov', 'article', '16.25', 0, 5, 0, '404'),
(17, 5, 1, 0, 0, 'specialne-brankarske-treningy', 12, 1, 1, 0, 'admin', NULL, '2015-04-15 13:31:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(18, 5, 1, 0, 0, 'prihlasky', 13, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:32:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-15 13:32:19', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(19, 5, 1, 0, 0, 'clanky', 14, 1, 1, 0, 'admin', NULL, '2015-04-15 13:32:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(20, 5, 1, 0, 0, 'reklamne-predmety', 15, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:32:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 14:43:33', '0000-00-00 00:00:00', 1, 1, 'page_gallery', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(21, 6, 1, 0, 0, 'kodex-klubu-1', 16, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:41:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:22:18', '0000-00-00 00:00:00', 1, 1, 'page_blog', 'page_blog_post', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(22, 6, 1, 0, 0, 'desatoro-pre-rodicov', 17, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:41:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:24:24', '0000-00-00 00:00:00', 1, 1, '', 'page_blog_post', '', '', 'ordering', 'ASC', 'Desatoro pre rodičov', 'article', '22.28', 0, 5, 0, '404'),
(23, 7, 1, 0, 0, 'zapasy-1', 18, 1, 1, 0, 'admin', NULL, '2015-04-15 13:42:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(24, 7, 1, 0, 0, 'turnaje', 19, 1, 1, 0, 'admin', NULL, '2015-04-15 13:42:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(25, 7, 1, 0, 0, 'kempy', 20, 1, 1, 0, 'admin', NULL, '2015-04-15 13:42:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(26, 8, 1, 0, 0, 'zimny-stadion-cana', 21, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:43:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-15 13:46:11', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', 'http://www.zimnystadioncana.sk/', 'external', '0', 0, 5, 0, '404'),
(27, 10, 1, 0, 0, 'turnaje-1', 22, 1, 1, 0, 'admin', NULL, '2015-04-15 13:46:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(28, 10, 1, 0, 0, 'cas-mimo-adu', 23, 1, 1, 0, 'admin', NULL, '2015-04-15 13:46:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(29, 10, 1, 0, 0, 'treningy', 24, 1, 1, 0, 'admin', NULL, '2015-04-15 13:47:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(30, 10, 1, 0, 0, 'kempy-1', 25, 1, 1, 0, 'admin', NULL, '2015-04-15 13:47:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(31, 10, 1, 0, 0, 'ostatne', 26, 1, 1, 0, 'admin', NULL, '2015-04-15 13:47:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(32, 0, 2, 0, 0, 'slideshow', 5, 0, 1, 0, 'admin', NULL, '2015-04-17 11:04:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(33, 0, 2, 0, 0, 'sponsors', 6, 0, 1, 0, 'admin', 'admin', '2015-04-17 13:43:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:11:48', '0000-00-00 00:00:00', 1, 1, '', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(34, 0, 1, 0, 0, 'news', 8, 0, 1, 0, 'admin', 'admin', '2015-04-20 13:59:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-20 14:28:28', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404');

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
(4, 15, 1, NULL, 1, NULL, '', '', '', 1),
(13, 8, 1, NULL, 1, NULL, '', '', '', 1),
(14, 11, 1, NULL, 1, NULL, '', '', '', 1),
(15, 12, 1, NULL, 1, NULL, '', '', '', 1),
(15, 21, 1, NULL, 2, NULL, '', '', '', 1),
(15, 22, 1, NULL, 3, NULL, '', '', '', 1),
(15, 23, 1, NULL, 4, NULL, '', '', '', 1),
(16, 25, 1, NULL, 1, NULL, '', '', '', 1),
(20, 24, 1, NULL, 1, NULL, '', '', '', 1),
(21, 26, 1, NULL, 1, NULL, '', '', '', 1),
(21, 27, 1, NULL, 2, NULL, '', '', '', 1),
(22, 28, 1, NULL, 1, NULL, '', '', '', 1),
(32, 5, 1, NULL, 3, 1, '', '', '', 1),
(32, 6, 1, NULL, 2, 1, '', '', '', 1),
(32, 7, 1, NULL, 1, 1, '', '', '', 1),
(34, 16, 1, NULL, 2, NULL, '', '', '', 1),
(34, 17, 1, NULL, 1, NULL, '', '', '', 1);

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
('sk', 4, 'home', '', 'Úvod', '', '', '', '', '', '', 1),
('sk', 5, 'o-nas', '', 'O Nás', '', '', '', '', '', '', 1),
('sk', 6, 'kodex-klubu', '', 'Kódex klubu', '', '', '', '', NULL, NULL, 1),
('sk', 7, 'zapasy', '', 'Zápasy', '', '', '', '', NULL, NULL, 1),
('sk', 8, 'sportoviska', '', 'Športoviská', '', '', '', '', NULL, NULL, 1),
('sk', 9, '2-z-dani', '', '2% z daní', '', '', '', '', NULL, NULL, 1),
('sk', 10, 'fotogaleria', '', 'Fotogaléria', '', '', '', '', NULL, NULL, 1),
('sk', 11, 'kontakt', '', 'Kontakt', '', '', '', '', '', '', 1),
('sk', 13, 'filozofia-skoly', '', 'Filozofia školy', '', '', '', '', '', '', 1),
('sk', 14, 'zoznam-hracov', '', 'Zoznam hráčov', '', '', '', '', '', '', 1),
('sk', 15, 'treneri', '', 'Tréneri', '', '', '', '', '', '', 1),
('sk', 16, 'rozpis-treningov', '', 'Rozpis tréningov', '', '', '', '', '', '', 1),
('sk', 17, 'specialne-brankarske-treningy', '', 'Špeciálne brankárske tréningy', '', '', '', '', NULL, NULL, 1),
('sk', 18, 'prihlaska', '', 'Prihláška', '', '', '', '', '', '', 1),
('sk', 19, 'clanky', '', 'Články', '', '', '', '', NULL, NULL, 1),
('sk', 20, 'reklamne-predmety', '', 'Reklamné predmety', '', '', '', '', '', '', 1),
('sk', 21, 'kodex-klubu', '', 'Kódex klubu', '', '', '', '', '', '', 1),
('sk', 22, 'desatoro-pre-rodicov', '', 'Desatoro pre rodičov', '', '', '', '', '', '', 1),
('sk', 23, 'zapasy', '', 'Zápasy', '', '', '', '', NULL, NULL, 1),
('sk', 24, 'turnaje', '', 'Turnaje', '', '', '', '', NULL, NULL, 1),
('sk', 25, 'kempy', '', 'Kempy', '', '', '', '', NULL, NULL, 1),
('sk', 26, 'zimny-stadion-cana', '', 'Zimný štadión Čaňa', '', '', '', '', '', '', 1),
('sk', 27, 'turnaje', '', 'Turnaje', '', '', '', '', NULL, NULL, 1),
('sk', 28, 'cas-mimo-adu', '', 'Čas mimo ľadu', '', '', '', '', NULL, NULL, 1),
('sk', 29, 'treningy', '', 'Tréningy', '', '', '', '', NULL, NULL, 1),
('sk', 30, 'kempy', '', 'Kempy', '', '', '', '', NULL, NULL, 1),
('sk', 31, 'ostatne', '', 'Ostatné', '', '', '', '', NULL, NULL, 1),
('sk', 32, 'slideshow', '', 'slideshow', '', '', '', '', NULL, NULL, 1),
('sk', 33, 'sponsors', '', 'sponsors', '', '', '', '', '', '', 1),
('sk', 34, 'news', '', 'Aktuality', '', '', '', '', '', '', 1);

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
(33, 5, 1, 2, NULL),
(33, 6, 1, 3, NULL),
(33, 7, 1, 4, NULL),
(33, 8, 1, 5, NULL),
(33, 9, 1, 6, NULL),
(33, 10, 1, 7, NULL),
(33, 11, 1, 8, NULL),
(33, 12, 1, 9, NULL),
(33, 13, 1, 10, NULL),
(33, 14, 1, 11, NULL),
(33, 15, 1, 12, NULL),
(33, 16, 1, 13, NULL),
(33, 17, 1, 14, NULL),
(33, 18, 1, 15, NULL),
(33, 20, 1, 16, NULL),
(33, 21, 1, 17, NULL),
(33, 22, 1, 18, NULL),
(33, 23, 1, 19, NULL),
(33, 24, 1, 20, NULL),
(33, 25, 1, 21, NULL),
(33, 26, 1, 22, NULL),
(33, 27, 1, 23, NULL),
(33, 28, 1, 24, NULL),
(33, 29, 1, 25, NULL),
(33, 30, 1, 26, NULL),
(33, 31, 1, 27, NULL),
(33, 32, 1, 28, NULL),
(33, 51, 1, 1, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `setting`
--

INSERT INTO `setting` (`id_setting`, `name`, `content`, `lang`) VALUES
(1, 'ionize_version', '1.0.7', ''),
(2, 'site_email', '', ''),
(3, 'files_path', 'files', ''),
(4, 'theme', 'cahl', ''),
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
(29, 'filemanager_file_types', 'gif,jpe,jpeg,jpg,png,flv,mpeg,mpg,mp3,pdf', ''),
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
(42, 'last_notification_refresh', '2015-04-27 13:15:33', ''),
(43, 'last_version', '1.0.7', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `url`
--

INSERT INTO `url` (`id_url`, `id_entity`, `type`, `canonical`, `active`, `lang`, `path`, `path_ids`, `full_path_ids`, `creation_date`) VALUES
(3, 6, 'page', 1, 1, 'sk', 'kodex-klubu', '6', '6', '2015-04-15 11:41:39'),
(4, 7, 'page', 1, 1, 'sk', 'zapasy', '7', '7', '2015-04-15 11:41:50'),
(5, 8, 'page', 1, 1, 'sk', 'sportoviska', '8', '8', '2015-04-15 11:42:09'),
(6, 9, 'page', 1, 1, 'sk', '2-z-dani', '9', '9', '2015-04-15 11:42:19'),
(7, 10, 'page', 1, 1, 'sk', 'fotogaleria', '10', '10', '2015-04-15 11:42:34'),
(21, 23, 'page', 1, 1, 'sk', 'zapasy/zapasy', '7/23', '7/23', '2015-04-15 13:42:07'),
(22, 24, 'page', 1, 1, 'sk', 'zapasy/turnaje', '7/24', '7/24', '2015-04-15 13:42:17'),
(23, 25, 'page', 1, 1, 'sk', 'zapasy/kempy', '7/25', '7/25', '2015-04-15 13:42:27'),
(29, 26, 'page', 1, 1, 'sk', 'sportoviska/zimny-stadion-cana', '8/26', '8/26', '2015-04-15 13:46:11'),
(30, 27, 'page', 1, 1, 'sk', 'fotogaleria/turnaje', '10/27', '10/27', '2015-04-15 13:46:45'),
(31, 28, 'page', 1, 1, 'sk', 'fotogaleria/cas-mimo-adu', '10/28', '10/28', '2015-04-15 13:46:57'),
(32, 29, 'page', 1, 1, 'sk', 'fotogaleria/treningy', '10/29', '10/29', '2015-04-15 13:47:11'),
(33, 30, 'page', 1, 1, 'sk', 'fotogaleria/kempy', '10/30', '10/30', '2015-04-15 13:47:22'),
(34, 31, 'page', 1, 1, 'sk', 'fotogaleria/ostatne', '10/31', '10/31', '2015-04-15 13:47:32'),
(35, 11, 'page', 1, 1, 'sk', 'kontakt', '11', '11', '2015-04-15 15:53:16'),
(41, 5, 'article', 1, 1, 'sk', 'slideshow/zapasy', '32/5', '32/5', '2015-04-17 10:59:47'),
(42, 6, 'article', 1, 1, 'sk', 'slideshow/turnaje', '32/6', '32/6', '2015-04-17 10:59:47'),
(43, 7, 'article', 1, 1, 'sk', 'slideshow/toto-je-nas-tim', '32/7', '32/7', '2015-04-17 10:59:47'),
(44, 32, 'page', 1, 1, 'sk', 'slideshow', '32', '32', '2015-04-17 11:04:07'),
(52, 5, 'page', 1, 1, 'sk', 'o-nas', '5', '5', '2015-04-20 13:51:13'),
(58, 17, 'page', 1, 1, 'sk', 'o-nas/specialne-brankarske-treningy', '5/17', '5/17', '2015-04-20 13:51:14'),
(59, 18, 'page', 1, 1, 'sk', 'o-nas/prihlaska', '5/18', '5/18', '2015-04-20 13:51:14'),
(60, 19, 'page', 1, 1, 'sk', 'o-nas/clanky', '5/19', '5/19', '2015-04-20 13:51:14'),
(76, 34, 'page', 1, 1, 'sk', 'news', '34', '34', '2015-04-20 14:28:28'),
(84, 4, 'page', 1, 1, 'sk', 'home', '4', '4', '2015-04-21 17:48:38'),
(85, 15, 'article', 1, 1, 'sk', 'home/uvod', '4/15', '4/15', '2015-04-22 10:03:20'),
(86, 16, 'article', 1, 1, 'sk', 'news/oznam-1', '34/16', '34/16', '2015-04-22 13:03:48'),
(87, 17, 'article', 1, 1, 'sk', 'news/oznam', '34/17', '34/17', '2015-04-22 13:04:07'),
(108, 15, 'page', 1, 1, 'sk', 'o-nas/treneri', '5/15', '5/15', '2015-04-24 13:18:54'),
(109, 12, 'article', 1, 1, 'sk', 'o-nas/treneri/igor-liba', '5/15/12', '5/15/12', '2015-04-24 13:18:54'),
(129, 14, 'page', 1, 1, 'sk', 'o-nas/zoznam-hracov', '5/14', '5/14', '2015-04-24 17:06:35'),
(130, 11, 'article', 1, 1, 'sk', 'o-nas/zoznam-hracov/zoznam-hracov', '5/14/11', '5/14/11', '2015-04-24 17:06:35'),
(132, 13, 'page', 1, 1, 'sk', 'o-nas/filozofia-skoly', '5/13', '5/13', '2015-04-24 17:09:19'),
(133, 8, 'article', 1, 1, 'sk', 'o-nas/filozofia-skoly/filozofia-skoly-1', '5/13/8', '5/13/8', '2015-04-24 17:09:19'),
(136, 21, 'article', 1, 1, 'sk', 'o-nas/treneri/pavel-valko-st.', '5/15/21', '5/15/21', '2015-04-27 14:11:10'),
(137, 22, 'article', 1, 1, 'sk', 'o-nas/treneri/jaromir-dragan', '5/15/22', '5/15/22', '2015-04-27 14:13:09'),
(138, 23, 'article', 1, 1, 'sk', 'o-nas/treneri/slavomir-ilavsk', '5/15/23', '5/15/23', '2015-04-27 14:19:04'),
(139, 20, 'page', 1, 1, 'sk', 'o-nas/reklamne-predmety', '5/20', '5/20', '2015-04-27 14:43:33'),
(140, 24, 'article', 1, 1, 'sk', 'o-nas/reklamne-predmety/reklamne-predmety', '5/20/24', '5/20/24', '2015-04-27 14:45:48'),
(141, 33, 'page', 1, 1, 'sk', 'sponsors', '33', '33', '2015-04-27 17:11:48'),
(147, 16, 'page', 1, 1, 'sk', 'o-nas/rozpis-treningov', '5/16', '5/16', '2015-04-27 17:19:33'),
(148, 25, 'article', 1, 1, 'sk', 'o-nas/rozpis-treningov/rozpis-treningov', '5/16/25', '5/16/25', '2015-04-27 17:19:34'),
(155, 21, 'page', 1, 1, 'sk', 'kodex-klubu/kodex-klubu', '6/21', '6/21', '2015-04-27 17:22:18'),
(156, 26, 'article', 1, 1, 'sk', 'kodex-klubu/kodex-klubu/kodex-klubu', '6/21/26', '6/21/26', '2015-04-27 17:22:18'),
(157, 27, 'article', 1, 1, 'sk', 'kodex-klubu/kodex-klubu/ulohy-trenerov', '6/21/27', '6/21/27', '2015-04-27 17:22:19'),
(165, 22, 'page', 1, 1, 'sk', 'kodex-klubu/desatoro-pre-rodicov', '6/22', '6/22', '2015-04-27 17:24:24'),
(166, 28, 'article', 1, 1, 'sk', 'kodex-klubu/desatoro-pre-rodicov/desatoro-pre-rodicov', '6/22/28', '6/22/28', '2015-04-27 17:24:24');

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
(1, 1, '2015-04-15 09:28:59', '2015-04-27 11:15:21', 'admin', 'admin admin', 'admin', 'admin', NULL, NULL, 'QYWmfVcmcZLZzhB1JcE=', 'frank238238@gmail.com', '0a72e12a518d9523');

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
MODIFY `id_article` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
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
MODIFY `id_element_definition` int(11) unsigned NOT NULL AUTO_INCREMENT;
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
MODIFY `id_media` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
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
MODIFY `id_page` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
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
MODIFY `id_setting` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
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
MODIFY `id_url` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
