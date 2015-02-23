-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Po 23.Feb 2015, 14:31
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article`
--

UPDATE `article` SET `id_article` = 1,`name` = '404',`author` = NULL,`updater` = NULL,`created` = '0000-00-00 00:00:00',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '0000-00-00 00:00:00',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = NULL,`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 1;
UPDATE `article` SET `id_article` = 2,`name` = '401',`author` = NULL,`updater` = NULL,`created` = '0000-00-00 00:00:00',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '0000-00-00 00:00:00',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = NULL,`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 2;
UPDATE `article` SET `id_article` = 3,`name` = '403',`author` = NULL,`updater` = NULL,`created` = '0000-00-00 00:00:00',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '0000-00-00 00:00:00',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = NULL,`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 3;
UPDATE `article` SET `id_article` = 4,`name` = 'stante-sa-dobrovolnikom',`author` = '',`updater` = 'admin',`created` = '0000-00-00 00:00:00',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-20 15:21:08',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 4;
UPDATE `article` SET `id_article` = 5,`name` = 'basirista-dahaye-duay',`author` = 'admin',`updater` = 'admin',`created` = '2015-02-20 15:38:38',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-20 15:42:05',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 5;
UPDATE `article` SET `id_article` = 6,`name` = 'paschal-emmanuel-awe',`author` = 'admin',`updater` = 'admin',`created` = '2015-02-20 15:43:39',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-20 15:44:30',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 6;
UPDATE `article` SET `id_article` = 7,`name` = 'emiliana-nicodemus-daffi',`author` = 'admin',`updater` = 'admin',`created` = '2015-02-20 16:54:38',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-20 16:56:11',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 7;
UPDATE `article` SET `id_article` = 8,`name` = 'naomi-naftali-yona',`author` = 'admin',`updater` = 'admin',`created` = '2015-02-20 16:55:13',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-20 16:55:54',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 8;
UPDATE `article` SET `id_article` = 9,`name` = 'ako-podporovat',`author` = 'admin',`updater` = 'admin',`created` = '2015-02-20 17:02:18',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 10:38:33',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 9;
UPDATE `article` SET `id_article` = 10,`name` = '1.2.2014',`author` = 'admin',`updater` = NULL,`created` = '2015-02-20 17:15:28',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-20 17:15:28',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 10;
UPDATE `article` SET `id_article` = 11,`name` = '3.1.2015',`author` = 'admin',`updater` = NULL,`created` = '2015-02-20 17:15:53',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-20 17:15:53',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 11;
UPDATE `article` SET `id_article` = 12,`name` = '5.2.2015',`author` = 'admin',`updater` = 'admin',`created` = '2015-02-20 17:16:35',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 09:48:47',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 12;
UPDATE `article` SET `id_article` = 13,`name` = 'skola-yedidiass',`author` = 'admin',`updater` = NULL,`created` = '2015-02-21 11:05:00',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 11:05:00',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 13;
UPDATE `article` SET `id_article` = 14,`name` = 'podporte-nas-2-z-dane',`author` = 'admin',`updater` = 'admin',`created` = '2015-02-21 20:44:36',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 20:47:31',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 14;
UPDATE `article` SET `id_article` = 15,`name` = 'dokoncenie-triedy-a-domu-uciteov',`author` = 'admin',`updater` = 'admin',`created` = '2015-02-21 21:45:44',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 22:04:00',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 15;
UPDATE `article` SET `id_article` = 17,`name` = 'potravinova-pomoc',`author` = 'admin',`updater` = 'admin',`created` = '2015-02-21 22:14:52',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 22:25:38',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 17;
UPDATE `article` SET `id_article` = 18,`name` = NULL,`author` = NULL,`updater` = NULL,`created` = '2015-02-21 22:25:32',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 22:25:32',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 18;
UPDATE `article` SET `id_article` = 19,`name` = NULL,`author` = NULL,`updater` = NULL,`created` = '2015-02-21 22:25:38',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 22:25:38',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 19;
UPDATE `article` SET `id_article` = 20,`name` = 'z-africkeho-dennika-25.6.-7.7.-2014',`author` = 'admin',`updater` = 'admin',`created` = '2015-02-23 12:31:51',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-23 12:40:28',`logical_date` = '0000-00-00 00:00:00',`indexed` = 0,`id_category` = NULL,`comment_allow` = '0',`comment_autovalid` = '0',`comment_expire` = '0000-00-00 00:00:00',`flag` = 0,`has_url` = 1,`priority` = 5 WHERE `article`.`id_article` = 20;

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

UPDATE `article_lang` SET `id_article` = 1,`lang` = 'sk',`url` = '404',`title` = '404',`subtitle` = NULL,`meta_title` = NULL,`content` = '<p>The content you asked for was not found !</p>',`meta_keywords` = NULL,`meta_description` = NULL,`online` = 1 WHERE `article_lang`.`id_article` = 1 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 2,`lang` = 'sk',`url` = '401',`title` = '401',`subtitle` = 'Please login',`meta_title` = NULL,`content` = '<p>Please login to see this content.</p>',`meta_keywords` = NULL,`meta_description` = NULL,`online` = 1 WHERE `article_lang`.`id_article` = 2 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 3,`lang` = 'sk',`url` = '403',`title` = '403',`subtitle` = 'Forbidden',`meta_title` = NULL,`content` = '<p>This content is forbidden.</p>',`meta_keywords` = NULL,`meta_description` = NULL,`online` = 1 WHERE `article_lang`.`id_article` = 3 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 4,`lang` = 'sk',`url` = 'stante-sa-dobrovolnikom',`title` = 'Staňte sa dobrovoľníkom',`subtitle` = '',`meta_title` = 'Staňte sa dobrovoľníkom',`content` = '<p>Sme veľmi potešení, že pre náš projekt sa otvára ďalšia možnosť pomoci nami podporovaných škôl v Dongobesh a Maretadu.V spolupráci so Sliezskou diakoniou a CZ SECAV v Třinci je možnosť vyslania dobrovoľníka zo Slovenska do našich partnerských škôl v Tanzánií.</p>',`meta_keywords` = '',`meta_description` = '',`online` = 1 WHERE `article_lang`.`id_article` = 4 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 5,`lang` = 'sk',`url` = 'basirista-dahaye-duay',`title` = 'Basirista Dahaye Duay',`subtitle` = 'Dievča, 19 rokov',`meta_title` = '',`content` = '<p>Jej rodina má veľké materiálne starosti, jej bratovi sa nepodarilo dostať sa do základnej školy.</p>\n<p><strong>variabilný symbol: 1001</strong></p>',`meta_keywords` = '',`meta_description` = '',`online` = 1 WHERE `article_lang`.`id_article` = 5 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 6,`lang` = 'sk',`url` = 'paschal-emmanuel-awe',`title` = 'Paschal Emmanuel Awe',`subtitle` = 'Chlapec, 16 rokov.',`meta_title` = 'Paschal Emmanuel Awe',`content` = '<p>Pochádza z chudobnej rodiny.</p>\n<p><strong>variabilný symbol: 1003</strong></p>',`meta_keywords` = '',`meta_description` = '',`online` = 1 WHERE `article_lang`.`id_article` = 6 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 7,`lang` = 'sk',`url` = 'emiliana-nicodemus-daffi',`title` = 'Emiliana Nicodemus Daffi',`subtitle` = 'Dievča, 22 rokov',`meta_title` = 'Emiliana Nicodemus Daffi',`content` = '<p>Chodí do 1. triedy. Jej záľubou je netball. Pochádza z veľmi chudobnej rodiny.</p>\n<p><strong>variabilný symbol: 1028</strong></p>',`meta_keywords` = '',`meta_description` = '',`online` = 1 WHERE `article_lang`.`id_article` = 7 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 8,`lang` = 'sk',`url` = 'naomi-naftali-yona',`title` = 'Naomi Naftali Yona',`subtitle` = 'Dievča, 16 rokov',`meta_title` = 'Naomi Naftali Yona',`content` = '<p>Chodí do 1. triedy. Rada hrá netball. Otec je alkoholik. Chce sa stať sestričkou.</p>\n<p><strong>variabilný symbol: 1029</strong></p>',`meta_keywords` = '',`meta_description` = '',`online` = 1 WHERE `article_lang`.`id_article` = 8 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 9,`lang` = 'sk',`url` = 'ako-podporovat',`title` = 'Ako podporovať',`subtitle` = '',`meta_title` = 'Ako podporovať',`content` = '<p>V prvom rade ide o pravidelnú mesačnú podporu konkrétneho študenta, ktorého rodina si nemôže dovoliť platiť školné, čiastkou 17 Eur mesačne.</p>\n<p>Na podporu študenta ide celá čiastka!</p>\n<p>V prípade, že chcete podporovať študenta, kontaktujte nás <strong>nadetiafriky@detiafriky.sk .</strong></p>\n<p>Ďalej ide o podporu dobudovania a zabezpečenie základného vybavenia školy. Momentálne je najdôležitejšie dokončenie budovy pre študentov a učiteľov.</p>\n<p><b>Číslo účtu: 2100346091/8330</b></p>\n<p>Podpora potrieb detí v.s. 1999 (všeobecná podpora, nie pravidelná podpora)<br />Podpora učiteľov v.s. 2100<br />Miestnosť pre učiteľov v.s. 2200<br />Dostavba budovy pre študentov a učiteľov v.s. 2300<br />Kúpa stola a stoličky do triedy  v.s. 2500<br />Všeobecná podpora projektu v.s. 3000</p>\n<p>Všeobecná podpora projektu bude použitá na správu a propagáciu projektu.</p>',`meta_keywords` = '',`meta_description` = '',`online` = 1 WHERE `article_lang`.`id_article` = 9 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 10,`lang` = 'sk',`url` = '1.2.2014',`title` = '1.2.2014',`subtitle` = '',`meta_title` = '1.2.2014',`content` = '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc suscipit lacinia risus non luctus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. </p>',`meta_keywords` = NULL,`meta_description` = NULL,`online` = 1 WHERE `article_lang`.`id_article` = 10 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 11,`lang` = 'sk',`url` = '3.1.2015',`title` = '3.1.2015',`subtitle` = '',`meta_title` = '3.1.2015',`content` = '<p>Curabitur pharetra accumsan rutrum. In ut tempus tortor. Aenean faucibus pharetra tortor a suscipit. Vivamus fringilla quam odio, nec mollis lacus luctus nec. Aliquam erat volutpat.</p>',`meta_keywords` = NULL,`meta_description` = NULL,`online` = 1 WHERE `article_lang`.`id_article` = 11 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 12,`lang` = 'sk',`url` = '5.2.2015',`title` = '5.2.2015',`subtitle` = '',`meta_title` = '5.2.2015',`content` = '<p>Duis finibus metus ut tristique malesuada. Vestibulum facilisis justo ligula, nec tempus neque auctor sed. Maecenas id semper mauris. Nunc dignissim consectetur orci in faucibus.</p>\n<p><a href="files/gis.pdf" target="_blank">Si môžte prečítať tu</a></p>',`meta_keywords` = '',`meta_description` = '',`online` = 1 WHERE `article_lang`.`id_article` = 12 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 13,`lang` = 'sk',`url` = 'skola-yedidiass',`title` = 'Škola Yedidiass',`subtitle` = '',`meta_title` = 'Škola Yedidiass',`content` = '<p>Škola Yedidiass sa nachádza v Tanzánii, v dištrikte Mbulu, pri oblasti Maretadu. Táto oblasť nie je ohraničená mestami alebo dedinami. Najbližšie väčšie mestá sú Dongobesh a Haydom.</p>',`meta_keywords` = NULL,`meta_description` = NULL,`online` = 1 WHERE `article_lang`.`id_article` = 13 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 14,`lang` = 'sk',`url` = 'podporte-nas-2-z-dane',`title` = 'Podporte nás 2% z dane',`subtitle` = '',`meta_title` = 'Podporte nás 2% z dane',`content` = '<p>Budeme Vám veľmi vďačný za Vašu podporu 2% z Vašej dane. Pre formulár <strong><a href="files/dve_percenta_z_dane_oz_kairos.doc" target="_blank">kliknite TU</a></strong>. Prosíme Vás tiež o zaslanie fotografie alebo oskenovaného vyplneného formulára na adresu <b style="font-size: 1em; line-height: 1.5em;"><a href="mailto:detiafriky@detiafriky.sk">detiafriky@detiafriky.sk</a></b> kvôli identifikácií podporovateľa a priradeniu Vašej podpory pre tento  projekt.</p>\n<p>Ďakujeme Vám</p>\n<p>Tím DetiAfriky</p>',`meta_keywords` = '',`meta_description` = '',`online` = 1 WHERE `article_lang`.`id_article` = 14 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 15,`lang` = 'sk',`url` = 'dokoncenie-triedy-a-domu-uciteov',`title` = 'Dokončenie triedy a domu učiteľov',`subtitle` = '',`meta_title` = 'Dokončenie triedy a domu učiteľov',`content` = '<p><strong>4.11.2014</strong> Posledné mesiace sa Paulo a celá škola venovala príprave na záverečné skúšky a školské slávnosti. Práce na stavbe sú menej viditeľné, ale boli urobené vnútorné omietky a nakúpené a osadené dvere. Za posledné štyri mesiace sme na dokončenie budovy zaslali 1400 Eur.</p>\n<p><strong>8.7.2014</strong> Po dlhšej dobe máme od Paula ďalšie podklady a informácie o stavbe, za posledné 3 mesiace sme zaslali 1600 Eur a stavba skutočne veľmi pokročila o čom svedčia priložené fotografie. Blížime sa k finále:)</p>\n<p><strong>4.4.2014</strong> Na ďalšie vybavenie budovy a hlavne okná sme zaslali 500 Eur. Paulo je zanepraznený prácami na budove.</p>\n<p><strong>7.3.2014 </strong>Na strechu sme poslali 1000 Eur. Od Paula sme dostali následujúce fotky – stavba úspešne pokračuje:)</p>\n<p><strong>8.2.2014. </strong>Na hranoly na strechu sme zaslali prvých 500 Eur. Riaditeľ školy Paulo nám zaslal fotky a napísal : “<em style="font-size: 1em; line-height: 1.5em;">V minulosti sme tento spôsob prepravy používali aj na dovoz tehál, kameňov, piesku, a pod. Je to náročné. Drevo sme doviezli z obchodu, ktorý je od našej školy vzdialený 10 km. Na malé množstvo dreva by bolo použitie auta príliš drahé. “ </em> </p>\n<p><strong>14.1.2014.</strong> Súčasťou prevádzky školy je jej rozširovanie každý rok o ďalšie triedy  – to je základná legislatívna požiadavka pre školy v Tanzánií.</p>\n<p>Z tohto dôvodu škola svojpomocne pracuje na rozširovaní počtu tried. Budovu, ktorá je rozostavaná na fotografií je potrebné ukončiť. Boli sme požiadaní o finančnú pomoc, ktorá ma najvyššiu prioritu.</p>\n<p>Rozpočet na dokončenie triedy a domu učiteľov :</p>\n<table border="1" cellspacing="0" cellpadding="0" align="center">\n<tbody>\n<tr>\n<td style="width: 10%;"> </td>\n<td style="width: 60%;"><strong>Materiál</strong></td>\n<td><strong>Cena [€]</strong></td>\n</tr>\n<tr>\n<td>1.</td>\n<td>piesok</td>\n<td>164</td>\n</tr>\n<tr>\n<td>2.</td>\n<td>agregát</td>\n<td>328</td>\n</tr>\n<tr>\n<td>3.</td>\n<td>jadro budovy</td>\n<td>127</td>\n</tr>\n<tr>\n<td>4.</td>\n<td>voda</td>\n<td>545</td>\n</tr>\n<tr>\n<td>5.</td>\n<td>cement</td>\n<td> 1588</td>\n</tr>\n<tr>\n<td>6.</td>\n<td>vápno</td>\n<td> 73</td>\n</tr>\n<tr>\n<td>7.</td>\n<td>krytina G 28</td>\n<td> 1198</td>\n</tr>\n<tr>\n<td>8.</td>\n<td>hranoly 2x 4 x 15</td>\n<td> 590</td>\n</tr>\n<tr>\n<td>9.</td>\n<td>hranoly 2x 4 x 15</td>\n<td> 872</td>\n</tr>\n<tr>\n<td>10.</td>\n<td>dvere</td>\n<td> 1362</td>\n</tr>\n<tr>\n<td>11.</td>\n<td>okná</td>\n<td> 363</td>\n</tr>\n<tr>\n<td>12.</td>\n<td>malé okná</td>\n<td> 182</td>\n</tr>\n<tr>\n<td>13.</td>\n<td>strop</td>\n<td> 490</td>\n</tr>\n<tr>\n<td>14.</td>\n<td>maliarská emulzia</td>\n<td> 95</td>\n</tr>\n<tr>\n<td>15.</td>\n<td>olejová farba</td>\n<td> 142</td>\n</tr>\n<tr>\n<td>16.</td>\n<td>ancient type</td>\n<td> 41</td>\n</tr>\n<tr>\n<td>17.</td>\n<td>PVC trúbky</td>\n<td> 68</td>\n</tr>\n<tr>\n<td>18.</td>\n<td>kryt otvoru</td>\n<td> 64</td>\n</tr>\n<tr>\n<td>19.</td>\n<td>septic tash</td>\n<td> 681</td>\n</tr>\n<tr>\n<td>20.</td>\n<td>solvent</td>\n<td> 30</td>\n</tr>\n<tr>\n<td>21.</td>\n<td>amora</td>\n<td> 136</td>\n</tr>\n<tr>\n<td>22.</td>\n<td>tmel</td>\n<td> 91</td>\n</tr>\n<tr>\n<td>23.</td>\n<td>brúsny papier</td>\n<td> 14</td>\n</tr>\n<tr>\n<td>24.</td>\n<td>výplň</td>\n<td> 68</td>\n</tr>\n<tr>\n<td> </td>\n<td><strong>Spolu</strong></td>\n<td><strong> 9312</strong></td>\n</tr>\n</tbody>\n</table>',`meta_keywords` = '',`meta_description` = '',`online` = 1 WHERE `article_lang`.`id_article` = 15 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 17,`lang` = 'sk',`url` = 'potravinova-pomoc',`title` = 'Potravinová pomoc',`subtitle` = '',`meta_title` = 'Potravinová pomoc',`content` = '<p>Základnou a každodennou potravinou pre ľudí v provincií Maretadu je kukurica a fazuľa. Výnimočne sa na ich stole objaví mäso zo sliepky. Preto sme podporili nákup osiva a to kukurice a fazule, ktoré si svojpomocne vysejú a dopestujú. Tento spôsob je oveľa úspornejší ako kupovať na trhu dopestované potraviny.</p>\n<p>Na priložených fotkách je fazuľa a kukurica, ktorú zakúpili na sejbu.</p>',`meta_keywords` = NULL,`meta_description` = NULL,`online` = 1 WHERE `article_lang`.`id_article` = 17 AND `article_lang`.`lang` = 'sk';
UPDATE `article_lang` SET `id_article` = 20,`lang` = 'sk',`url` = 'z-africkeho-dennika-25.6.-7.7.-2014',`title` = 'Z afrického denníka (25.6. – 7.7. 2014)',`subtitle` = '',`meta_title` = '',`content` = '<p>V Budapešti som nastúpil do lietadla sám. V Istanbule sa ku mne pridali k traja bratia zo Sliezskej evanjelickej cirkvi: Michal Klus so synom Benom a Jirko Zietek. Na letisku pod bájnym Kilimandžarom sme pristáli v noci a hneď sme sa presunuli do neďalekej Arushe.<br /> Aká bude tá Afrika? Ako to tu zvládnem? Ako ma príjmú ľudia v Dongobeshi? Aké bude stretnutie s riaditeľom Paulom? V hlave mi vírilo množstvo otázok ale aj obáv. Po prvých stretnutiach s Martinom Tangom, riaditeľom školy v Dongobeshi a Zakom, pastorom v oblasti Manyara, kam máme namierené. som sa upokojil. Ľudia sú tu milí a pri každom stretnutí prejavujú radosť a nadšenie. Po krátkej adaptácií a príprave sa vydávame na cestu do Dongobesha.</p>\n<p>Cesty sú prašné, všade okolo množstvo ľudí, prepravujú sa hlavne peši a na bicykloch… Míňame územie Masajov a po únavnej ceste sme dorazili do Dongobesha. Dongobesh je 18 tisícové mestečko kde sme bývali a odtiaľ sme vyrážali na návštevy okolitých zborov v  osadách alebo mestách.<br /> Bývanie je tu veľmi skromné a všetko je zariadené veľmi jednoducho, ale funkčne. Domáci nám venujú veľa pozornosti a sú veľmi nápomocní. Hneď prvý deň sme boli na návšteve v Bindži a Endanachan, kde nás prijali domáci veľmi srdečne a strávili sme tam celý deň na spoločných službách Božích a seminároch. Nasledujúce dni sú rovnako hektické: cesty, návštevy nových miest Haydom, Mbulu, Dodoma, Haeraby… Stále noví ľudia, nové zážitky, svedectvá, silné príbehy. Veľmi silno je tu cítiť radosť ľudí, schopnosť tešiť sa a byť vďačný zato čo im život prináša. Sú veľmi radi ak sa môžu rozprávať s nami. Niektorí prosia o pomoc pre svoje detí, ale nikdy sa nesťažujú.<br /> Celá oblasť. kde sme boli, leží vo výške cca 2000 metrov nad morom, stále tam svieti slnko a fúka mierny vietor. Pôsobí to únavne a v kombinácií s naším nabitým programom a zážitkami v novom prostredí to spôsobuje, že večer sme už veľmi unavení.</p>\n<p>Návšteva u pastora Zaka, ktorý bol u nás minulý rok na návšteve, bola pre nás všetkých veľkým povzbudením a neobyčajne silným zážitkom. Zak sa spolu s manželkou stará o 19 adoptovaných detí. Býva v malom domčeku v ťažkých podmienkach. Strávili sme s nimi niekoľko hodín, niekoľko nezabudnuteľných hodín.<br /> Návšteva Paula Buru v Maretadu bola pre mňa dôležitým bodom pobytu. Bol som rád, že môžem osobne poznať Paula, vidieť školu, zoznámiť sa s učiteľmi, hovoriť so študentmi. Chcel som vidieť ako sú využívané prostriedky od podporovateľov, kde pestuje škola plodiny, v akých triedach sa učia študenti, aký je ich denný režim.<br /> Škola Yedidiass leží na okraji mestečka. Videl som aj okolie školy, výstavbu novej triedy, miesta odkiaľ dovážajú pomocou povozu s volmi vodu na pitie aj na stavbu. Je to veľmi náročné v týchto podmienkach zabezpečiť dostatok vody, jej filtráciu, prepravu. Sú to podmienky, ktoré sú pre našinca nepredstaviteľné. V Maretadu na rozdiel od Dongobesha nie je ani elektrina. Jedinou možnosťou na jej výrobu sú solárne nabíjačky alebo elektrocentrály. Učiteľ je tu vážené povolanie, ale jeho mesačný zárobok je len 160 eur.<br /> Škola má 137 študentov, 7 učiteľov, 3 zamestnancov, vlastní polia v okolí školy, kde sa pestuje kukurica, fazuľa a slnečnica pre vlastné potreby. Tiež má ihriská na futbal, volejbal a netball, čo je potrebné pre udelenie licencie škole zo strany štátu. Vyučovanie je cez pracovné dni od 8.00 do 17.00 hod. V piatok je výučba náboženstva. Vyučovacie predmety sú: matematika, svahilština, biológia, chémia, poľnohospodárstvo, angličtina, fyzika,  náuka o spoločnosti a literatúra. Všetky predmety, okrem svahilštiny, sa vyučujú v angličtine.</p>\n<p>Napriek týmto skutočnostiam som videl na učiteľoch a  študentoch nadšenie a vďačnosť, že môžu chodiť do školy, môžu sa učiť, získať vzdelanie, ktoré im veľmi pomôže pri uplatnení v spoločnosti. V Tanzánií sa za školu platí. A ak nemôžu za dieťa zaplatiť rodičia, je v podstate jedinou možnosťou podpora zo zahraničia.<br /> Som veľmi rád, že som dostal odpovede na všetky moje otázky a tiež s Paulom a predsedom rady školy Malkiadym prebral plány a potreby školy na ďalšie obdobie. Plánov je veľa a potreby sú značné.<br /> Činnosťou, ktorú robíme, umožňujeme spájať ochotných podporovateľov a podporované detí, ktoré to veľmi potrebujú. Paulo a učiteľský zbor si veľmi vážia túto podporu, lebo umožňuje aj rozširovanie školy na potrebný počet tried. Ostáva tu veľa práce, ale všetci veria, že spoločnými silami a hlavne s Božou pomocou sa podarí dobudovať školu a rozšíriť počet študentov.<br /> Z Maretadu a Dongobesha som priniesol veľa pozdravovm od pastora Zaka, Paula, Martina a iných pre nás všetkých a predovšetkým pre podporovateľov. Patrí vám veľká vďaka za to čo robíte.<br />Ak máte záujem o stretnutie s nami, radi k vám prídeme s osobnými svedectvami a ďalšími informáciami priamo z Afriky.</p>\n<p style="text-align: justify;"> </p>\n<p style="text-align: justify;">                                                                                  Laco Ivanecký a tím Deti Afriky</p>',`meta_keywords` = '',`meta_description` = '',`online` = 1 WHERE `article_lang`.`id_article` = 20 AND `article_lang`.`lang` = 'sk';

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

UPDATE `article_media` SET `id_article` = 5,`id_media` = 1,`online` = 1,`ordering` = 1,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 5 AND `article_media`.`id_media` = 1;
UPDATE `article_media` SET `id_article` = 6,`id_media` = 2,`online` = 1,`ordering` = 1,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 6 AND `article_media`.`id_media` = 2;
UPDATE `article_media` SET `id_article` = 7,`id_media` = 4,`online` = 1,`ordering` = 1,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 7 AND `article_media`.`id_media` = 4;
UPDATE `article_media` SET `id_article` = 8,`id_media` = 3,`online` = 1,`ordering` = 1,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 8 AND `article_media`.`id_media` = 3;
UPDATE `article_media` SET `id_article` = 17,`id_media` = 5,`online` = 1,`ordering` = 1,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 17 AND `article_media`.`id_media` = 5;
UPDATE `article_media` SET `id_article` = 17,`id_media` = 6,`online` = 1,`ordering` = 2,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 17 AND `article_media`.`id_media` = 6;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 7,`online` = 1,`ordering` = 1,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 7;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 8,`online` = 1,`ordering` = 2,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 8;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 9,`online` = 1,`ordering` = 20,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 9;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 10,`online` = 1,`ordering` = 7,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 10;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 11,`online` = 1,`ordering` = 8,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 11;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 12,`online` = 1,`ordering` = 4,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 12;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 13,`online` = 1,`ordering` = 5,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 13;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 14,`online` = 1,`ordering` = 14,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 14;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 15,`online` = 1,`ordering` = 6,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 15;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 16,`online` = 1,`ordering` = 9,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 16;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 17,`online` = 1,`ordering` = 13,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 17;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 18,`online` = 1,`ordering` = 12,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 18;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 19,`online` = 1,`ordering` = 11,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 19;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 20,`online` = 1,`ordering` = 19,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 20;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 21,`online` = 1,`ordering` = 3,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 21;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 22,`online` = 1,`ordering` = 18,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 22;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 23,`online` = 1,`ordering` = 17,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 23;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 24,`online` = 1,`ordering` = 16,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 24;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 25,`online` = 1,`ordering` = 15,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 25;
UPDATE `article_media` SET `id_article` = 20,`id_media` = 26,`online` = 1,`ordering` = 10,`url` = NULL,`lang_display` = NULL WHERE `article_media`.`id_article` = 20 AND `article_media`.`id_media` = 26;

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

UPDATE `article_type` SET `id_type` = 1,`type` = 'slider',`ordering` = 0,`description` = '',`type_flag` = 10 WHERE `article_type`.`id_type` = 1;

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

UPDATE `extend_field_type` SET `id_extend_field_type` = 1,`type_name` = 'Input',`default_values` = 1,`values` = 0,`translated` = 1,`active` = 1,`display` = 1,`validate` = NULL,`html_element` = 'input',`html_element_type` = 'text',`html_element_class` = 'w95p inputtext',`html_element_pattern` = NULL WHERE `extend_field_type`.`id_extend_field_type` = 1;
UPDATE `extend_field_type` SET `id_extend_field_type` = 2,`type_name` = 'Textarea',`default_values` = 1,`values` = 0,`translated` = 1,`active` = 1,`display` = 1,`validate` = NULL,`html_element` = 'textarea',`html_element_type` = 'textarea',`html_element_class` = 'w95p autogrow inputtext',`html_element_pattern` = NULL WHERE `extend_field_type`.`id_extend_field_type` = 2;
UPDATE `extend_field_type` SET `id_extend_field_type` = 3,`type_name` = 'Textarea + Editor',`default_values` = 1,`values` = 0,`translated` = 1,`active` = 1,`display` = 1,`validate` = NULL,`html_element` = 'textarea',`html_element_type` = 'editor',`html_element_class` = 'w95p smallTinyTextarea inputtext',`html_element_pattern` = NULL WHERE `extend_field_type`.`id_extend_field_type` = 3;
UPDATE `extend_field_type` SET `id_extend_field_type` = 4,`type_name` = 'Checkbox',`default_values` = 1,`values` = 1,`translated` = 0,`active` = 1,`display` = 1,`validate` = NULL,`html_element` = 'input',`html_element_type` = 'checkbox',`html_element_class` = 'checkbox',`html_element_pattern` = NULL WHERE `extend_field_type`.`id_extend_field_type` = 4;
UPDATE `extend_field_type` SET `id_extend_field_type` = 5,`type_name` = 'Radio',`default_values` = 1,`values` = 1,`translated` = 0,`active` = 1,`display` = 1,`validate` = NULL,`html_element` = 'input',`html_element_type` = 'radio',`html_element_class` = 'radio',`html_element_pattern` = NULL WHERE `extend_field_type`.`id_extend_field_type` = 5;
UPDATE `extend_field_type` SET `id_extend_field_type` = 6,`type_name` = 'Select',`default_values` = 1,`values` = 1,`translated` = 0,`active` = 1,`display` = 1,`validate` = NULL,`html_element` = 'input',`html_element_type` = 'select',`html_element_class` = 'select inputtext',`html_element_pattern` = NULL WHERE `extend_field_type`.`id_extend_field_type` = 6;
UPDATE `extend_field_type` SET `id_extend_field_type` = 7,`type_name` = 'Date Time',`default_values` = 0,`values` = 0,`translated` = 0,`active` = 1,`display` = 1,`validate` = NULL,`html_element` = 'input',`html_element_type` = 'date',`html_element_class` = 'date w120 inputtext',`html_element_pattern` = NULL WHERE `extend_field_type`.`id_extend_field_type` = 7;
UPDATE `extend_field_type` SET `id_extend_field_type` = 8,`type_name` = 'Medias',`default_values` = 0,`values` = 0,`translated` = 1,`active` = 1,`display` = 1,`validate` = NULL,`html_element` = 'div',`html_element_type` = 'media',`html_element_class` = NULL,`html_element_pattern` = NULL WHERE `extend_field_type`.`id_extend_field_type` = 8;
UPDATE `extend_field_type` SET `id_extend_field_type` = 100,`type_name` = 'Number',`default_values` = 1,`values` = 0,`translated` = 0,`active` = 1,`display` = 1,`validate` = 'numeric',`html_element` = 'input',`html_element_type` = 'number',`html_element_class` = 'w120 inputtext',`html_element_pattern` = NULL WHERE `extend_field_type`.`id_extend_field_type` = 100;
UPDATE `extend_field_type` SET `id_extend_field_type` = 110,`type_name` = 'Email',`default_values` = 0,`values` = 0,`translated` = 0,`active` = 1,`display` = 1,`validate` = 'email',`html_element` = 'input',`html_element_type` = 'email',`html_element_class` = 'w95p inputtext',`html_element_pattern` = NULL WHERE `extend_field_type`.`id_extend_field_type` = 110;
UPDATE `extend_field_type` SET `id_extend_field_type` = 120,`type_name` = 'Phone',`default_values` = 0,`values` = 0,`translated` = 0,`active` = 1,`display` = 1,`validate` = 'digits',`html_element` = 'input',`html_element_type` = 'tel',`html_element_class` = 'w140 inputtext',`html_element_pattern` = '^((\\+\\d{1,3}(-| )?\\(?\\d\\)?(-| )?\\d{1,5})|(\\(?\\d{2,6}\\)?))(-| )?(\\d{3,4})(-| )?(\\d{4})(( x| ext)\\d{1,5}){0,1}$' WHERE `extend_field_type`.`id_extend_field_type` = 120;
UPDATE `extend_field_type` SET `id_extend_field_type` = 130,`type_name` = 'Internal Link',`default_values` = 0,`values` = 0,`translated` = 1,`active` = 1,`display` = 1,`validate` = NULL,`html_element` = 'div',`html_element_type` = 'link',`html_element_class` = 'droppable',`html_element_pattern` = NULL WHERE `extend_field_type`.`id_extend_field_type` = 130;

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

UPDATE `lang` SET `lang` = 'sk',`name` = 'slovak',`online` = '1',`def` = '1',`ordering` = 1,`direction` = 1 WHERE `lang`.`lang` = 'sk';

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `media`
--

UPDATE `media` SET `id_media` = 1,`type` = 'picture',`file_name` = '1.jpg',`path` = 'files/1.jpg',`base_path` = 'files/',`copyright` = NULL,`provider` = '',`date` = '0000-00-00 00:00:00',`link` = NULL,`square_crop` = 'm' WHERE `media`.`id_media` = 1;
UPDATE `media` SET `id_media` = 2,`type` = 'picture',`file_name` = '2.jpg',`path` = 'files/2.jpg',`base_path` = 'files/',`copyright` = NULL,`provider` = '',`date` = '0000-00-00 00:00:00',`link` = NULL,`square_crop` = 'm' WHERE `media`.`id_media` = 2;
UPDATE `media` SET `id_media` = 3,`type` = 'picture',`file_name` = '4.jpg',`path` = 'files/4.jpg',`base_path` = 'files/',`copyright` = NULL,`provider` = '',`date` = '0000-00-00 00:00:00',`link` = NULL,`square_crop` = 'm' WHERE `media`.`id_media` = 3;
UPDATE `media` SET `id_media` = 4,`type` = 'picture',`file_name` = '3.jpg',`path` = 'files/3.jpg',`base_path` = 'files/',`copyright` = NULL,`provider` = '',`date` = '0000-00-00 00:00:00',`link` = NULL,`square_crop` = 'm' WHERE `media`.`id_media` = 4;
UPDATE `media` SET `id_media` = 5,`type` = 'picture',`file_name` = 'semienka.jpg',`path` = 'files/semienka.jpg',`base_path` = 'files/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 5;
UPDATE `media` SET `id_media` = 6,`type` = 'picture',`file_name` = 'fazula.jpg',`path` = 'files/fazula.jpg',`base_path` = 'files/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 6;
UPDATE `media` SET `id_media` = 7,`type` = 'picture',`file_name` = 'img_1871_12805440216c99709_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1871_12805440216c99709_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 7;
UPDATE `media` SET `id_media` = 8,`type` = 'picture',`file_name` = 'img_1877_12805440216d45f30_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1877_12805440216d45f30_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 8;
UPDATE `media` SET `id_media` = 9,`type` = 'picture',`file_name` = 'img_1880_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1880_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 9;
UPDATE `media` SET `id_media` = 10,`type` = 'picture',`file_name` = 'img_1885_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1885_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 10;
UPDATE `media` SET `id_media` = 11,`type` = 'picture',`file_name` = 'img_1887_1280544023adbc924_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1887_1280544023adbc924_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 11;
UPDATE `media` SET `id_media` = 12,`type` = 'picture',`file_name` = 'img_1888_12805440226ceb189_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1888_12805440226ceb189_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 12;
UPDATE `media` SET `id_media` = 13,`type` = 'picture',`file_name` = 'img_1889_12805440226dc526e_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1889_12805440226dc526e_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 13;
UPDATE `media` SET `id_media` = 14,`type` = 'picture',`file_name` = 'img_1894_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1894_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 14;
UPDATE `media` SET `id_media` = 15,`type` = 'picture',`file_name` = 'img_1898_12805440226e8969f_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1898_12805440226e8969f_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 15;
UPDATE `media` SET `id_media` = 16,`type` = 'picture',`file_name` = 'img_1914_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1914_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 16;
UPDATE `media` SET `id_media` = 17,`type` = 'picture',`file_name` = 'img_1917_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1917_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 17;
UPDATE `media` SET `id_media` = 18,`type` = 'picture',`file_name` = 'img_1924_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1924_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 18;
UPDATE `media` SET `id_media` = 19,`type` = 'picture',`file_name` = 'img_1934_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1934_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 19;
UPDATE `media` SET `id_media` = 20,`type` = 'picture',`file_name` = 'img_1939_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1939_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 20;
UPDATE `media` SET `id_media` = 21,`type` = 'picture',`file_name` = 'img_1941_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1941_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 21;
UPDATE `media` SET `id_media` = 22,`type` = 'picture',`file_name` = 'img_1966_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1966_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 22;
UPDATE `media` SET `id_media` = 23,`type` = 'picture',`file_name` = 'img_1969_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1969_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 23;
UPDATE `media` SET `id_media` = 24,`type` = 'picture',`file_name` = 'img_1974_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1974_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 24;
UPDATE `media` SET `id_media` = 25,`type` = 'picture',`file_name` = 'img_1990_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_1990_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 25;
UPDATE `media` SET `id_media` = 26,`type` = 'picture',`file_name` = 'img_2000_1280_1024x768.jpg',`path` = 'files/album_z_africkeho_dennika/img_2000_1280_1024x768.jpg',`base_path` = 'files/album_z_africkeho_dennika/',`copyright` = '',`provider` = '',`date` = '0000-00-00 00:00:00',`link` = '',`square_crop` = 'm' WHERE `media`.`id_media` = 26;

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

UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 5,`title` = 'Semienka fazule',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 5;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 6,`title` = 'Fazuľa obsahuje veľa bielkov&iacute;n',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 6;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 7,`title` = 'Cesta z Maretadu do Yedidia ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 7;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 8,`title` = 'Ulica v centre Maretadu ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 8;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 9,`title` = 'Obydlie &scaron;tudentky Loemy ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 9;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 10,`title` = 'Hlavn&aacute; budova Yedidia ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 10;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 11,`title` = ' Nov&aacute; budov&aacute; pre &scaron;tudentov a učiteľov ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 11;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 12,`title` = 'Riaditeľ &scaron;koly Paulo Bura ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 12;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 13,`title` = 'Predseda rady &scaron;koly Malkiadi Mathayo ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 13;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 14,`title` = 'N&aacute;stup pred &scaron;kolou ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 14;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 15,`title` = 'Učiteľsk&yacute; zbor Yedidia ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 15;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 16,`title` = ' Pohľad na v&scaron;etky budovy &scaron;koly ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 16;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 17,`title` = 'Pozostatky pvej triedy ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 17;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 18,`title` = 'Začiatok &scaron;portov&eacute;ho dňa ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 18;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 19,`title` = 'Volejbalov&yacute; z&aacute;pas ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 19;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 20,`title` = '&scaron;kolsk&eacute; pole kukurice pred žatvou ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 20;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 21,`title` = 'Such&eacute; koryto rieky pri &scaron;kole ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 21;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 22,`title` = '&Scaron;kolsk&aacute; kuchyňa Yedidia ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 22;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 23,`title` = 'V&yacute;uka v rozostavanej budove ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 23;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 24,`title` = 'Triedy je potrebn&eacute; vybaviť n&aacute;bytkom ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 24;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 25,`title` = 'Voda sa naber&aacute; v noci ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 25;
UPDATE `media_lang` SET `lang` = 'sk',`id_media` = 26,`title` = 'Dom riatiteľa Paula Buru ',`alt` = '',`description` = '' WHERE `media_lang`.`lang` = 'sk' AND `media_lang`.`id_media` = 26;

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

UPDATE `menu` SET `id_menu` = 1,`name` = 'main',`title` = 'Main menu',`ordering` = NULL WHERE `menu`.`id_menu` = 1;
UPDATE `menu` SET `id_menu` = 2,`name` = 'system',`title` = 'System menu',`ordering` = NULL WHERE `menu`.`id_menu` = 2;

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

UPDATE `notification` SET `id_notification` = 1,`date_creation` = '2015-02-23',`code` = 'sitemap_refresh',`category` = 'System',`title` = 'Sitemap refresh',`content` = 'Sitemap needs to be refreshed.<br/> Go to <b>Tools > System Diagnosis > Tools</b> and click on <b>"Refresh Sitemap"</b>.',`read` = 0 WHERE `notification`.`id_notification` = 1;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page`
--

UPDATE `page` SET `id_page` = 1,`id_parent` = 0,`id_menu` = 2,`id_type` = 0,`id_subnav` = 0,`name` = '404',`ordering` = 0,`level` = 0,`online` = 1,`home` = 0,`author` = NULL,`updater` = NULL,`created` = '0000-00-00 00:00:00',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '0000-00-00 00:00:00',`logical_date` = '0000-00-00 00:00:00',`appears` = 0,`has_url` = 1,`view` = NULL,`view_single` = NULL,`article_list_view` = NULL,`article_view` = NULL,`article_order` = 'ordering',`article_order_direction` = 'ASC',`link` = '',`link_type` = NULL,`link_id` = '',`pagination` = 0,`priority` = 0,`used_by_module` = NULL,`deny_code` = NULL WHERE `page`.`id_page` = 1;
UPDATE `page` SET `id_page` = 2,`id_parent` = 0,`id_menu` = 2,`id_type` = 0,`id_subnav` = 0,`name` = '401',`ordering` = 0,`level` = 0,`online` = 1,`home` = 0,`author` = NULL,`updater` = NULL,`created` = '0000-00-00 00:00:00',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '0000-00-00 00:00:00',`logical_date` = '0000-00-00 00:00:00',`appears` = 0,`has_url` = 1,`view` = NULL,`view_single` = NULL,`article_list_view` = NULL,`article_view` = NULL,`article_order` = 'ordering',`article_order_direction` = 'ASC',`link` = '',`link_type` = NULL,`link_id` = '',`pagination` = 0,`priority` = 0,`used_by_module` = NULL,`deny_code` = NULL WHERE `page`.`id_page` = 2;
UPDATE `page` SET `id_page` = 3,`id_parent` = 0,`id_menu` = 2,`id_type` = 0,`id_subnav` = 0,`name` = '403',`ordering` = 0,`level` = 0,`online` = 1,`home` = 0,`author` = NULL,`updater` = NULL,`created` = '0000-00-00 00:00:00',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '0000-00-00 00:00:00',`logical_date` = '0000-00-00 00:00:00',`appears` = 0,`has_url` = 1,`view` = NULL,`view_single` = NULL,`article_list_view` = NULL,`article_view` = NULL,`article_order` = 'ordering',`article_order_direction` = 'ASC',`link` = '',`link_type` = NULL,`link_id` = '',`pagination` = 0,`priority` = 0,`used_by_module` = NULL,`deny_code` = NULL WHERE `page`.`id_page` = 3;
UPDATE `page` SET `id_page` = 4,`id_parent` = 0,`id_menu` = 1,`id_type` = 0,`id_subnav` = 0,`name` = 'home',`ordering` = 1,`level` = 0,`online` = 1,`home` = 1,`author` = NULL,`updater` = 'admin',`created` = '0000-00-00 00:00:00',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 11:05:09',`logical_date` = '0000-00-00 00:00:00',`appears` = 1,`has_url` = 1,`view` = 'home_page',`view_single` = '',`article_list_view` = NULL,`article_view` = NULL,`article_order` = 'ordering',`article_order_direction` = 'ASC',`link` = '',`link_type` = NULL,`link_id` = '',`pagination` = 0,`priority` = 5,`used_by_module` = 0,`deny_code` = '404' WHERE `page`.`id_page` = 4;
UPDATE `page` SET `id_page` = 5,`id_parent` = 6,`id_menu` = 1,`id_type` = 0,`id_subnav` = 0,`name` = 'podporovani-studenti',`ordering` = 1,`level` = 1,`online` = 1,`home` = 0,`author` = 'admin',`updater` = 'admin',`created` = '2015-02-20 15:37:15',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 10:53:44',`logical_date` = '0000-00-00 00:00:00',`appears` = 1,`has_url` = 1,`view` = 'page_student_list',`view_single` = '',`article_list_view` = NULL,`article_view` = NULL,`article_order` = 'ordering',`article_order_direction` = 'ASC',`link` = '',`link_type` = NULL,`link_id` = '',`pagination` = 0,`priority` = 5,`used_by_module` = 0,`deny_code` = '404' WHERE `page`.`id_page` = 5;
UPDATE `page` SET `id_page` = 6,`id_parent` = 0,`id_menu` = 1,`id_type` = 0,`id_subnav` = 0,`name` = 'podporujeme',`ordering` = 2,`level` = 0,`online` = 1,`home` = 0,`author` = 'admin',`updater` = 'admin',`created` = '2015-02-20 16:01:51',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 10:47:58',`logical_date` = '0000-00-00 00:00:00',`appears` = 1,`has_url` = 1,`view` = 'page',`view_single` = 'page_content',`article_list_view` = NULL,`article_view` = NULL,`article_order` = 'ordering',`article_order_direction` = 'ASC',`link` = '',`link_type` = NULL,`link_id` = '',`pagination` = 0,`priority` = 5,`used_by_module` = 0,`deny_code` = '404' WHERE `page`.`id_page` = 6;
UPDATE `page` SET `id_page` = 7,`id_parent` = 6,`id_menu` = 1,`id_type` = 0,`id_subnav` = 0,`name` = 'cakatelia-na-podporu',`ordering` = 2,`level` = 1,`online` = 1,`home` = 0,`author` = 'admin',`updater` = 'admin',`created` = '2015-02-20 16:53:48',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 10:53:51',`logical_date` = '0000-00-00 00:00:00',`appears` = 1,`has_url` = 1,`view` = 'page_student_list',`view_single` = '',`article_list_view` = NULL,`article_view` = NULL,`article_order` = 'ordering',`article_order_direction` = 'ASC',`link` = '',`link_type` = NULL,`link_id` = '',`pagination` = 0,`priority` = 5,`used_by_module` = 0,`deny_code` = '404' WHERE `page`.`id_page` = 7;
UPDATE `page` SET `id_page` = 8,`id_parent` = 0,`id_menu` = 1,`id_type` = 0,`id_subnav` = 0,`name` = 'aktuality',`ordering` = 5,`level` = 0,`online` = 1,`home` = 0,`author` = 'admin',`updater` = 'admin',`created` = '2015-02-20 17:14:50',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-20 17:16:58',`logical_date` = '0000-00-00 00:00:00',`appears` = 0,`has_url` = 0,`view` = '',`view_single` = '',`article_list_view` = NULL,`article_view` = NULL,`article_order` = 'ordering',`article_order_direction` = 'ASC',`link` = '',`link_type` = NULL,`link_id` = '',`pagination` = 0,`priority` = 5,`used_by_module` = 0,`deny_code` = '404' WHERE `page`.`id_page` = 8;
UPDATE `page` SET `id_page` = 9,`id_parent` = 0,`id_menu` = 1,`id_type` = 0,`id_subnav` = 0,`name` = 'projekty',`ordering` = 6,`level` = 0,`online` = 1,`home` = 0,`author` = 'admin',`updater` = 'admin',`created` = '2015-02-21 21:42:20',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 21:48:25',`logical_date` = '0000-00-00 00:00:00',`appears` = 1,`has_url` = 1,`view` = 'page_projects',`view_single` = '',`article_list_view` = NULL,`article_view` = NULL,`article_order` = 'ordering',`article_order_direction` = 'ASC',`link` = '',`link_type` = NULL,`link_id` = '',`pagination` = 0,`priority` = 5,`used_by_module` = 0,`deny_code` = '404' WHERE `page`.`id_page` = 9;
UPDATE `page` SET `id_page` = 10,`id_parent` = 9,`id_menu` = 1,`id_type` = 0,`id_subnav` = 0,`name` = 'aktualne',`ordering` = 7,`level` = 1,`online` = 1,`home` = 0,`author` = 'admin',`updater` = 'admin',`created` = '2015-02-21 21:44:54',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 22:06:52',`logical_date` = '0000-00-00 00:00:00',`appears` = 1,`has_url` = 1,`view` = 'page_content',`view_single` = 'page_content',`article_list_view` = NULL,`article_view` = NULL,`article_order` = 'ordering',`article_order_direction` = 'ASC',`link` = '',`link_type` = NULL,`link_id` = '',`pagination` = 0,`priority` = 5,`used_by_module` = 0,`deny_code` = '404' WHERE `page`.`id_page` = 10;
UPDATE `page` SET `id_page` = 11,`id_parent` = 9,`id_menu` = 1,`id_type` = 0,`id_subnav` = 0,`name` = 'realizovane',`ordering` = 8,`level` = 1,`online` = 1,`home` = 0,`author` = 'admin',`updater` = 'admin',`created` = '2015-02-21 22:14:13',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-21 22:15:20',`logical_date` = '0000-00-00 00:00:00',`appears` = 1,`has_url` = 1,`view` = 'page_content',`view_single` = 'page_content',`article_list_view` = NULL,`article_view` = NULL,`article_order` = 'ordering',`article_order_direction` = 'ASC',`link` = '',`link_type` = NULL,`link_id` = '',`pagination` = 0,`priority` = 5,`used_by_module` = 0,`deny_code` = '404' WHERE `page`.`id_page` = 11;
UPDATE `page` SET `id_page` = 12,`id_parent` = 0,`id_menu` = 1,`id_type` = 0,`id_subnav` = 0,`name` = 'galeria',`ordering` = 9,`level` = 0,`online` = 1,`home` = 0,`author` = 'admin',`updater` = 'admin',`created` = '2015-02-23 12:23:54',`publish_on` = '0000-00-00 00:00:00',`publish_off` = '0000-00-00 00:00:00',`updated` = '2015-02-23 14:27:35',`logical_date` = '0000-00-00 00:00:00',`appears` = 1,`has_url` = 1,`view` = 'page_projects',`view_single` = 'page_content',`article_list_view` = NULL,`article_view` = NULL,`article_order` = 'ordering',`article_order_direction` = 'ASC',`link` = '',`link_type` = NULL,`link_id` = '',`pagination` = 0,`priority` = 5,`used_by_module` = 0,`deny_code` = '404' WHERE `page`.`id_page` = 12;

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

UPDATE `page_article` SET `id_page` = 1,`id_article` = 1,`online` = 1,`view` = NULL,`ordering` = 0,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 0 WHERE `page_article`.`id_page` = 1 AND `page_article`.`id_article` = 1;
UPDATE `page_article` SET `id_page` = 2,`id_article` = 2,`online` = 1,`view` = NULL,`ordering` = 0,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 0 WHERE `page_article`.`id_page` = 2 AND `page_article`.`id_article` = 2;
UPDATE `page_article` SET `id_page` = 3,`id_article` = 3,`online` = 1,`view` = NULL,`ordering` = 0,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 0 WHERE `page_article`.`id_page` = 3 AND `page_article`.`id_article` = 3;
UPDATE `page_article` SET `id_page` = 4,`id_article` = 4,`online` = 1,`view` = NULL,`ordering` = 1,`id_type` = 1,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 0 WHERE `page_article`.`id_page` = 4 AND `page_article`.`id_article` = 4;
UPDATE `page_article` SET `id_page` = 4,`id_article` = 13,`online` = 1,`view` = NULL,`ordering` = 1,`id_type` = 1,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 4 AND `page_article`.`id_article` = 13;
UPDATE `page_article` SET `id_page` = 5,`id_article` = 5,`online` = 1,`view` = NULL,`ordering` = 2,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 5 AND `page_article`.`id_article` = 5;
UPDATE `page_article` SET `id_page` = 5,`id_article` = 6,`online` = 1,`view` = NULL,`ordering` = 1,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 5 AND `page_article`.`id_article` = 6;
UPDATE `page_article` SET `id_page` = 6,`id_article` = 9,`online` = 1,`view` = NULL,`ordering` = 2,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 6 AND `page_article`.`id_article` = 9;
UPDATE `page_article` SET `id_page` = 6,`id_article` = 14,`online` = 1,`view` = NULL,`ordering` = 1,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 6 AND `page_article`.`id_article` = 14;
UPDATE `page_article` SET `id_page` = 7,`id_article` = 7,`online` = 1,`view` = NULL,`ordering` = 2,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 7 AND `page_article`.`id_article` = 7;
UPDATE `page_article` SET `id_page` = 7,`id_article` = 8,`online` = 1,`view` = NULL,`ordering` = 1,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 7 AND `page_article`.`id_article` = 8;
UPDATE `page_article` SET `id_page` = 8,`id_article` = 10,`online` = 1,`view` = NULL,`ordering` = 3,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 8 AND `page_article`.`id_article` = 10;
UPDATE `page_article` SET `id_page` = 8,`id_article` = 11,`online` = 1,`view` = NULL,`ordering` = 2,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 8 AND `page_article`.`id_article` = 11;
UPDATE `page_article` SET `id_page` = 8,`id_article` = 12,`online` = 1,`view` = NULL,`ordering` = 1,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 8 AND `page_article`.`id_article` = 12;
UPDATE `page_article` SET `id_page` = 10,`id_article` = 15,`online` = 1,`view` = NULL,`ordering` = 2,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 10 AND `page_article`.`id_article` = 15;
UPDATE `page_article` SET `id_page` = 11,`id_article` = 17,`online` = 1,`view` = NULL,`ordering` = 1,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 11 AND `page_article`.`id_article` = 17;
UPDATE `page_article` SET `id_page` = 12,`id_article` = 20,`online` = 1,`view` = NULL,`ordering` = 1,`id_type` = NULL,`link_type` = '',`link_id` = '',`link` = '',`main_parent` = 1 WHERE `page_article`.`id_page` = 12 AND `page_article`.`id_article` = 20;

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

UPDATE `page_lang` SET `lang` = 'sk',`id_page` = 1,`url` = '404',`link` = '',`title` = '404',`subtitle` = 'Can''t find requested page.',`nav_title` = '',`subnav_title` = '',`meta_title` = NULL,`meta_description` = NULL,`meta_keywords` = NULL,`online` = 1 WHERE `page_lang`.`lang` = 'sk' AND `page_lang`.`id_page` = 1;
UPDATE `page_lang` SET `lang` = 'sk',`id_page` = 2,`url` = '401',`link` = '',`title` = '401',`subtitle` = 'Login needed',`nav_title` = '',`subnav_title` = '',`meta_title` = NULL,`meta_description` = NULL,`meta_keywords` = NULL,`online` = 1 WHERE `page_lang`.`lang` = 'sk' AND `page_lang`.`id_page` = 2;
UPDATE `page_lang` SET `lang` = 'sk',`id_page` = 3,`url` = '403',`link` = '',`title` = '403',`subtitle` = 'Forbidden',`nav_title` = '',`subnav_title` = '',`meta_title` = NULL,`meta_description` = NULL,`meta_keywords` = NULL,`online` = 1 WHERE `page_lang`.`lang` = 'sk' AND `page_lang`.`id_page` = 3;
UPDATE `page_lang` SET `lang` = 'sk',`id_page` = 4,`url` = 'home',`link` = '',`title` = 'Domov',`subtitle` = '',`nav_title` = 'Domov',`subnav_title` = '',`meta_title` = 'Domov',`meta_description` = '',`meta_keywords` = '',`online` = 1 WHERE `page_lang`.`lang` = 'sk' AND `page_lang`.`id_page` = 4;
UPDATE `page_lang` SET `lang` = 'sk',`id_page` = 5,`url` = 'podporovani-studenti',`link` = '',`title` = 'Podporovaní študenti',`subtitle` = '',`nav_title` = 'Podporovaní študenti',`subnav_title` = '',`meta_title` = 'Podporovaní študenti',`meta_description` = '',`meta_keywords` = '',`online` = 1 WHERE `page_lang`.`lang` = 'sk' AND `page_lang`.`id_page` = 5;
UPDATE `page_lang` SET `lang` = 'sk',`id_page` = 6,`url` = 'podporujeme',`link` = '',`title` = 'Podporujeme',`subtitle` = '',`nav_title` = 'Podporujeme',`subnav_title` = '',`meta_title` = 'Podporujeme',`meta_description` = '',`meta_keywords` = '',`online` = 1 WHERE `page_lang`.`lang` = 'sk' AND `page_lang`.`id_page` = 6;
UPDATE `page_lang` SET `lang` = 'sk',`id_page` = 7,`url` = 'cakatelia-na-podporu',`link` = '',`title` = 'Čakatelia na podporu',`subtitle` = '',`nav_title` = 'Čakatelia na podporu',`subnav_title` = '',`meta_title` = 'Čakatelia na podporu',`meta_description` = '',`meta_keywords` = '',`online` = 1 WHERE `page_lang`.`lang` = 'sk' AND `page_lang`.`id_page` = 7;
UPDATE `page_lang` SET `lang` = 'sk',`id_page` = 8,`url` = 'aktuality',`link` = '',`title` = 'Aktuality',`subtitle` = '',`nav_title` = 'Aktuality',`subnav_title` = '',`meta_title` = 'Aktuality',`meta_description` = '',`meta_keywords` = '',`online` = 1 WHERE `page_lang`.`lang` = 'sk' AND `page_lang`.`id_page` = 8;
UPDATE `page_lang` SET `lang` = 'sk',`id_page` = 9,`url` = 'projekty',`link` = '',`title` = 'Projekty',`subtitle` = '',`nav_title` = '',`subnav_title` = '',`meta_title` = 'Projekty',`meta_description` = '',`meta_keywords` = '',`online` = 1 WHERE `page_lang`.`lang` = 'sk' AND `page_lang`.`id_page` = 9;
UPDATE `page_lang` SET `lang` = 'sk',`id_page` = 10,`url` = 'aktualne',`link` = '',`title` = 'Aktuálne',`subtitle` = '',`nav_title` = '',`subnav_title` = '',`meta_title` = 'Aktuálne',`meta_description` = '',`meta_keywords` = '',`online` = 1 WHERE `page_lang`.`lang` = 'sk' AND `page_lang`.`id_page` = 10;
UPDATE `page_lang` SET `lang` = 'sk',`id_page` = 11,`url` = 'realizovane',`link` = '',`title` = 'Realizované',`subtitle` = '',`nav_title` = '',`subnav_title` = '',`meta_title` = 'Realizované',`meta_description` = '',`meta_keywords` = '',`online` = 1 WHERE `page_lang`.`lang` = 'sk' AND `page_lang`.`id_page` = 11;
UPDATE `page_lang` SET `lang` = 'sk',`id_page` = 12,`url` = 'galeria',`link` = '',`title` = 'Galéria',`subtitle` = '',`nav_title` = '',`subnav_title` = '',`meta_title` = '',`meta_description` = '',`meta_keywords` = '',`online` = 1 WHERE `page_lang`.`lang` = 'sk' AND `page_lang`.`id_page` = 12;

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

UPDATE `resource` SET `id_resource` = 1,`id_parent` = NULL,`resource` = 'admin',`actions` = '',`title` = 'Backend login',`description` = 'Connect to ionize backend' WHERE `resource`.`id_resource` = 1;
UPDATE `resource` SET `id_resource` = 10,`id_parent` = NULL,`resource` = 'admin/menu',`actions` = 'create,edit,delete',`title` = 'Menu',`description` = 'Menus' WHERE `resource`.`id_resource` = 10;
UPDATE `resource` SET `id_resource` = 11,`id_parent` = 10,`resource` = 'admin/menu/permissions/backend',`actions` = '',`title` = 'Permissions',`description` = 'Menu > Backend Permissions' WHERE `resource`.`id_resource` = 11;
UPDATE `resource` SET `id_resource` = 20,`id_parent` = NULL,`resource` = 'admin/translations',`actions` = '',`title` = 'Translations',`description` = 'Translations' WHERE `resource`.`id_resource` = 20;
UPDATE `resource` SET `id_resource` = 30,`id_parent` = NULL,`resource` = 'admin/filemanager',`actions` = 'upload,rename,delete,move',`title` = 'Filemanager',`description` = 'FileManager' WHERE `resource`.`id_resource` = 30;
UPDATE `resource` SET `id_resource` = 35,`id_parent` = NULL,`resource` = 'admin/medialist',`actions` = '',`title` = 'MediaList',`description` = 'MediaList' WHERE `resource`.`id_resource` = 35;
UPDATE `resource` SET `id_resource` = 40,`id_parent` = NULL,`resource` = 'admin/page',`actions` = 'create,edit,delete',`title` = 'Page',`description` = 'Page' WHERE `resource`.`id_resource` = 40;
UPDATE `resource` SET `id_resource` = 41,`id_parent` = 40,`resource` = 'admin/page/article',`actions` = 'add',`title` = 'Article',`description` = 'Page > Article' WHERE `resource`.`id_resource` = 41;
UPDATE `resource` SET `id_resource` = 42,`id_parent` = 40,`resource` = 'admin/page/element',`actions` = 'add',`title` = 'Content Element',`description` = 'Page > Content Element' WHERE `resource`.`id_resource` = 42;
UPDATE `resource` SET `id_resource` = 50,`id_parent` = 40,`resource` = 'admin/page/media',`actions` = 'link,unlink,edit',`title` = 'Media',`description` = 'Page > Media' WHERE `resource`.`id_resource` = 50;
UPDATE `resource` SET `id_resource` = 60,`id_parent` = 40,`resource` = 'admin/page/permissions',`actions` = '',`title` = 'Permission',`description` = 'Page > Permission' WHERE `resource`.`id_resource` = 60;
UPDATE `resource` SET `id_resource` = 61,`id_parent` = 60,`resource` = 'admin/page/permissions/backend',`actions` = '',`title` = 'Backend',`description` = 'Page > Permission > Backend' WHERE `resource`.`id_resource` = 61;
UPDATE `resource` SET `id_resource` = 62,`id_parent` = 60,`resource` = 'admin/page/permissions/frontend',`actions` = '',`title` = 'Frontend',`description` = 'Page > Permission > Frontend' WHERE `resource`.`id_resource` = 62;
UPDATE `resource` SET `id_resource` = 70,`id_parent` = NULL,`resource` = 'admin/article',`actions` = 'create,edit,delete,move,copy,duplicate',`title` = 'Article',`description` = 'Article' WHERE `resource`.`id_resource` = 70;
UPDATE `resource` SET `id_resource` = 80,`id_parent` = 70,`resource` = 'admin/article/media',`actions` = 'link,unlink,edit',`title` = 'Media',`description` = 'Article > Media' WHERE `resource`.`id_resource` = 80;
UPDATE `resource` SET `id_resource` = 85,`id_parent` = 70,`resource` = 'admin/article/element',`actions` = 'add',`title` = 'Content Element',`description` = 'Article > Content Element' WHERE `resource`.`id_resource` = 85;
UPDATE `resource` SET `id_resource` = 86,`id_parent` = 70,`resource` = 'admin/article/category',`actions` = '',`title` = 'Manage categories',`description` = 'Article > Categories' WHERE `resource`.`id_resource` = 86;
UPDATE `resource` SET `id_resource` = 90,`id_parent` = 70,`resource` = 'admin/article/permissions',`actions` = '',`title` = 'Permission',`description` = 'Article > Permission' WHERE `resource`.`id_resource` = 90;
UPDATE `resource` SET `id_resource` = 91,`id_parent` = 90,`resource` = 'admin/article/permissions/backend',`actions` = '',`title` = 'Backend',`description` = 'Article > Permission > Backend' WHERE `resource`.`id_resource` = 91;
UPDATE `resource` SET `id_resource` = 92,`id_parent` = 90,`resource` = 'admin/article/permissions/frontend',`actions` = '',`title` = 'Frontend',`description` = 'Article > Permission > Frontend' WHERE `resource`.`id_resource` = 92;
UPDATE `resource` SET `id_resource` = 93,`id_parent` = 70,`resource` = 'admin/article/tag',`actions` = '',`title` = 'Manage tags',`description` = 'Article > Tags' WHERE `resource`.`id_resource` = 93;
UPDATE `resource` SET `id_resource` = 100,`id_parent` = NULL,`resource` = 'admin/tree',`actions` = '',`title` = 'Tree',`description` = '' WHERE `resource`.`id_resource` = 100;
UPDATE `resource` SET `id_resource` = 101,`id_parent` = 100,`resource` = 'admin/tree/menu',`actions` = 'add_page,edit',`title` = 'Menus',`description` = '' WHERE `resource`.`id_resource` = 101;
UPDATE `resource` SET `id_resource` = 102,`id_parent` = 100,`resource` = 'admin/tree/page',`actions` = 'status,add_page,add_article,order',`title` = 'Pages',`description` = '' WHERE `resource`.`id_resource` = 102;
UPDATE `resource` SET `id_resource` = 103,`id_parent` = 100,`resource` = 'admin/tree/article',`actions` = 'unlink,status,move,copy,order',`title` = 'Articles',`description` = '' WHERE `resource`.`id_resource` = 103;
UPDATE `resource` SET `id_resource` = 120,`id_parent` = NULL,`resource` = 'admin/article/type',`actions` = 'create,edit,delete',`title` = 'Article Type',`description` = 'Article types' WHERE `resource`.`id_resource` = 120;
UPDATE `resource` SET `id_resource` = 150,`id_parent` = NULL,`resource` = 'admin/modules',`actions` = 'install',`title` = 'Modules',`description` = 'Modules' WHERE `resource`.`id_resource` = 150;
UPDATE `resource` SET `id_resource` = 151,`id_parent` = 150,`resource` = 'admin/modules/permissions',`actions` = '',`title` = 'Set Permissions',`description` = 'Modules > Permissions' WHERE `resource`.`id_resource` = 151;
UPDATE `resource` SET `id_resource` = 180,`id_parent` = NULL,`resource` = 'admin/element',`actions` = 'create,edit,delete',`title` = 'Content Element',`description` = 'Content Elements' WHERE `resource`.`id_resource` = 180;
UPDATE `resource` SET `id_resource` = 181,`id_parent` = 180,`resource` = 'admin/element/media',`actions` = 'link,unlink,edit',`title` = 'Media',`description` = 'Content Elements > Media' WHERE `resource`.`id_resource` = 181;
UPDATE `resource` SET `id_resource` = 210,`id_parent` = NULL,`resource` = 'admin/extend',`actions` = 'create,edit,delete',`title` = 'Extend Fields',`description` = 'Extend Fields' WHERE `resource`.`id_resource` = 210;
UPDATE `resource` SET `id_resource` = 220,`id_parent` = NULL,`resource` = 'admin/item',`actions` = 'create,edit,delete,add',`title` = 'Static Items',`description` = 'Static Items' WHERE `resource`.`id_resource` = 220;
UPDATE `resource` SET `id_resource` = 221,`id_parent` = 220,`resource` = 'admin/item/definition',`actions` = 'edit',`title` = 'Definition',`description` = 'Static Items > Definition' WHERE `resource`.`id_resource` = 221;
UPDATE `resource` SET `id_resource` = 222,`id_parent` = 220,`resource` = 'admin/item/media',`actions` = 'link,unlink,edit',`title` = 'Media',`description` = 'Static Items > Media' WHERE `resource`.`id_resource` = 222;
UPDATE `resource` SET `id_resource` = 240,`id_parent` = NULL,`resource` = 'admin/tools',`actions` = '',`title` = 'Tools',`description` = 'Tools' WHERE `resource`.`id_resource` = 240;
UPDATE `resource` SET `id_resource` = 241,`id_parent` = 240,`resource` = 'admin/tools/google_analytics',`actions` = '',`title` = 'Google Analytics',`description` = 'Tools > Google Analytics' WHERE `resource`.`id_resource` = 241;
UPDATE `resource` SET `id_resource` = 250,`id_parent` = 240,`resource` = 'admin/tools/system',`actions` = '',`title` = 'System Diagnosis',`description` = 'Tools > System' WHERE `resource`.`id_resource` = 250;
UPDATE `resource` SET `id_resource` = 251,`id_parent` = 250,`resource` = 'admin/tools/system/information',`actions` = '',`title` = 'Information',`description` = 'Tools > System > Information' WHERE `resource`.`id_resource` = 251;
UPDATE `resource` SET `id_resource` = 252,`id_parent` = 250,`resource` = 'admin/tools/system/repair',`actions` = '',`title` = 'Repair tools',`description` = 'Tools > System > Repair' WHERE `resource`.`id_resource` = 252;
UPDATE `resource` SET `id_resource` = 253,`id_parent` = 250,`resource` = 'admin/tools/system/report',`actions` = '',`title` = 'Reports',`description` = 'Tools > System > Reports' WHERE `resource`.`id_resource` = 253;
UPDATE `resource` SET `id_resource` = 270,`id_parent` = NULL,`resource` = 'admin/settings',`actions` = '',`title` = 'Settings',`description` = 'Settings' WHERE `resource`.`id_resource` = 270;
UPDATE `resource` SET `id_resource` = 271,`id_parent` = 270,`resource` = 'admin/settings/ionize',`actions` = '',`title` = 'Ionize UI',`description` = 'Settings > UI Settings' WHERE `resource`.`id_resource` = 271;
UPDATE `resource` SET `id_resource` = 272,`id_parent` = 270,`resource` = 'admin/settings/languages',`actions` = '',`title` = 'Languages Management',`description` = 'Settings > Languages' WHERE `resource`.`id_resource` = 272;
UPDATE `resource` SET `id_resource` = 273,`id_parent` = 270,`resource` = 'admin/settings/themes',`actions` = 'edit',`title` = 'Themes',`description` = 'Settings > Themes' WHERE `resource`.`id_resource` = 273;
UPDATE `resource` SET `id_resource` = 274,`id_parent` = 270,`resource` = 'admin/settings/website',`actions` = '',`title` = 'Website settings',`description` = 'Settings > Website' WHERE `resource`.`id_resource` = 274;
UPDATE `resource` SET `id_resource` = 275,`id_parent` = 270,`resource` = 'admin/settings/technical',`actions` = '',`title` = 'Technical settings',`description` = 'Settings > Technical' WHERE `resource`.`id_resource` = 275;
UPDATE `resource` SET `id_resource` = 300,`id_parent` = NULL,`resource` = 'admin/users_roles',`actions` = '',`title` = 'Users / Roles',`description` = 'Users / Roles' WHERE `resource`.`id_resource` = 300;
UPDATE `resource` SET `id_resource` = 301,`id_parent` = 300,`resource` = 'admin/user',`actions` = 'create,edit,delete',`title` = 'Users',`description` = 'Users' WHERE `resource`.`id_resource` = 301;
UPDATE `resource` SET `id_resource` = 302,`id_parent` = 300,`resource` = 'admin/role',`actions` = 'create,edit,delete',`title` = 'Roles',`description` = 'Roles' WHERE `resource`.`id_resource` = 302;
UPDATE `resource` SET `id_resource` = 303,`id_parent` = 302,`resource` = 'admin/role/permissions',`actions` = '',`title` = 'Set Permissions',`description` = 'See Role''s permissions' WHERE `resource`.`id_resource` = 303;

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

UPDATE `role` SET `id_role` = 1,`role_level` = 10000,`role_code` = 'super-admin',`role_name` = 'Super Admin',`role_description` = '' WHERE `role`.`id_role` = 1;
UPDATE `role` SET `id_role` = 2,`role_level` = 5000,`role_code` = 'admin',`role_name` = 'Admin',`role_description` = '' WHERE `role`.`id_role` = 2;
UPDATE `role` SET `id_role` = 3,`role_level` = 1000,`role_code` = 'editor',`role_name` = 'Editor',`role_description` = '' WHERE `role`.`id_role` = 3;
UPDATE `role` SET `id_role` = 4,`role_level` = 100,`role_code` = 'user',`role_name` = 'User',`role_description` = '' WHERE `role`.`id_role` = 4;
UPDATE `role` SET `id_role` = 5,`role_level` = 50,`role_code` = 'pending',`role_name` = 'Pending',`role_description` = '' WHERE `role`.`id_role` = 5;
UPDATE `role` SET `id_role` = 6,`role_level` = 10,`role_code` = 'guest',`role_name` = 'Guest',`role_description` = '' WHERE `role`.`id_role` = 6;
UPDATE `role` SET `id_role` = 7,`role_level` = -10,`role_code` = 'banned',`role_name` = 'Banned',`role_description` = '' WHERE `role`.`id_role` = 7;
UPDATE `role` SET `id_role` = 8,`role_level` = -100,`role_code` = 'deactivated',`role_name` = 'Deactivated',`role_description` = '' WHERE `role`.`id_role` = 8;

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

UPDATE `rule` SET `id_role` = 1,`resource` = 'all',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 1 AND `rule`.`resource` = 'all' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/article',`actions` = 'create,edit,delete,move,copy,duplicate',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/article' AND `rule`.`actions` = 'create,edit,delete,move,copy,duplicate';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/article/category',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/article/category' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/article/element',`actions` = 'add',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/article/element' AND `rule`.`actions` = 'add';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/article/media',`actions` = 'link,unlink,edit',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/article/media' AND `rule`.`actions` = 'link,unlink,edit';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/article/permissions',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/article/permissions' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/article/permissions/backend',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/article/permissions/backend' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/article/permissions/frontend',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/article/permissions/frontend' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/article/tag',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/article/tag' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/article/type',`actions` = 'create,edit,delete',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/article/type' AND `rule`.`actions` = 'create,edit,delete';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/element',`actions` = 'create,edit,delete',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/element' AND `rule`.`actions` = 'create,edit,delete';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/element/media',`actions` = 'link,unlink,edit',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/element/media' AND `rule`.`actions` = 'link,unlink,edit';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/extend',`actions` = 'create,edit,delete',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/extend' AND `rule`.`actions` = 'create,edit,delete';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/filemanager',`actions` = 'upload,rename,delete,move',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/filemanager' AND `rule`.`actions` = 'upload,rename,delete,move';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/item',`actions` = 'create,edit,delete,add',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/item' AND `rule`.`actions` = 'create,edit,delete,add';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/item/media',`actions` = 'link,unlink,edit',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/item/media' AND `rule`.`actions` = 'link,unlink,edit';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/medialist',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/medialist' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/menu',`actions` = 'create,edit,delete',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/menu' AND `rule`.`actions` = 'create,edit,delete';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/modules',`actions` = 'install',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/modules' AND `rule`.`actions` = 'install';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/modules/permissions',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/modules/permissions' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/page',`actions` = 'create,edit,delete',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/page' AND `rule`.`actions` = 'create,edit,delete';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/page/article',`actions` = 'add',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/page/article' AND `rule`.`actions` = 'add';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/page/element',`actions` = 'add',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/page/element' AND `rule`.`actions` = 'add';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/page/media',`actions` = 'link,unlink,edit',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/page/media' AND `rule`.`actions` = 'link,unlink,edit';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/page/permissions',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/page/permissions' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/page/permissions/backend',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/page/permissions/backend' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/page/permissions/frontend',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/page/permissions/frontend' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/role',`actions` = 'create,edit,delete',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/role' AND `rule`.`actions` = 'create,edit,delete';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/role/permissions',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/role/permissions' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/settings',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/settings' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/settings/ionize',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/settings/ionize' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/settings/languages',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/settings/languages' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/settings/website',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/settings/website' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/tools',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/tools' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/tools/google_analytics',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/tools/google_analytics' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/tools/system',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/tools/system' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/tools/system/information',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/tools/system/information' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/tools/system/repair',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/tools/system/repair' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/tools/system/report',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/tools/system/report' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/translations',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/translations' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/tree',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/tree' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/tree/article',`actions` = 'unlink,status,move,copy,order',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/tree/article' AND `rule`.`actions` = 'unlink,status,move,copy,order';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/tree/menu',`actions` = 'add_page,edit',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/tree/menu' AND `rule`.`actions` = 'add_page,edit';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/tree/page',`actions` = 'status,add_page,add_article,order',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/tree/page' AND `rule`.`actions` = 'status,add_page,add_article,order';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/user',`actions` = 'create,edit,delete',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/user' AND `rule`.`actions` = 'create,edit,delete';
UPDATE `rule` SET `id_role` = 2,`resource` = 'admin/users_roles',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 2 AND `rule`.`resource` = 'admin/users_roles' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/article',`actions` = 'create,edit,delete,move,copy,duplicate',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/article' AND `rule`.`actions` = 'create,edit,delete,move,copy,duplicate';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/article/category',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/article/category' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/article/element',`actions` = 'add',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/article/element' AND `rule`.`actions` = 'add';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/article/media',`actions` = 'link,unlink,edit',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/article/media' AND `rule`.`actions` = 'link,unlink,edit';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/article/permissions',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/article/permissions' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/article/permissions/backend',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/article/permissions/backend' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/article/permissions/frontend',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/article/permissions/frontend' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/article/tag',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/article/tag' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/element/media',`actions` = 'link,unlink,edit',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/element/media' AND `rule`.`actions` = 'link,unlink,edit';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/filemanager',`actions` = 'upload,rename,delete,move',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/filemanager' AND `rule`.`actions` = 'upload,rename,delete,move';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/item',`actions` = 'create,edit,delete,add',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/item' AND `rule`.`actions` = 'create,edit,delete,add';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/item/media',`actions` = 'link,unlink,edit',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/item/media' AND `rule`.`actions` = 'link,unlink,edit';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/medialist',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/medialist' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/menu',`actions` = 'create,edit,delete',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/menu' AND `rule`.`actions` = 'create,edit,delete';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/modules',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/modules' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/page',`actions` = 'create,edit,delete',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/page' AND `rule`.`actions` = 'create,edit,delete';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/page/article',`actions` = 'add',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/page/article' AND `rule`.`actions` = 'add';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/page/element',`actions` = 'add',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/page/element' AND `rule`.`actions` = 'add';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/page/media',`actions` = 'link,unlink,edit',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/page/media' AND `rule`.`actions` = 'link,unlink,edit';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/page/permissions',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/page/permissions' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/page/permissions/backend',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/page/permissions/backend' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/page/permissions/frontend',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/page/permissions/frontend' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/settings',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/settings' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/settings/ionize',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/settings/ionize' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/settings/languages',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/settings/languages' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/settings/website',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/settings/website' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/tools',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/tools' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/tools/google_analytics',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/tools/google_analytics' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/tools/system',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/tools/system' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/tools/system/information',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/tools/system/information' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/tools/system/report',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/tools/system/report' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/translations',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/translations' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/tree',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/tree' AND `rule`.`actions` = '';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/tree/article',`actions` = 'unlink,status,move,copy,order',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/tree/article' AND `rule`.`actions` = 'unlink,status,move,copy,order';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/tree/menu',`actions` = 'add_page,edit',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/tree/menu' AND `rule`.`actions` = 'add_page,edit';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/tree/page',`actions` = 'status,add_page,add_article,order',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/tree/page' AND `rule`.`actions` = 'status,add_page,add_article,order';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/user',`actions` = 'create,edit,delete',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/user' AND `rule`.`actions` = 'create,edit,delete';
UPDATE `rule` SET `id_role` = 3,`resource` = 'admin/users_roles',`actions` = '',`permission` = 1,`id_element` = NULL,`id_user` = 0 WHERE `rule`.`id_role` = 3 AND `rule`.`resource` = 'admin/users_roles' AND `rule`.`actions` = '';

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

UPDATE `setting` SET `id_setting` = 1,`name` = 'ionize_version',`content` = '1.0.7',`lang` = '' WHERE `setting`.`id_setting` = 1;
UPDATE `setting` SET `id_setting` = 2,`name` = 'site_email',`content` = '',`lang` = '' WHERE `setting`.`id_setting` = 2;
UPDATE `setting` SET `id_setting` = 3,`name` = 'files_path',`content` = 'files',`lang` = '' WHERE `setting`.`id_setting` = 3;
UPDATE `setting` SET `id_setting` = 4,`name` = 'theme',`content` = 'deti-afriky',`lang` = '' WHERE `setting`.`id_setting` = 4;
UPDATE `setting` SET `id_setting` = 5,`name` = 'theme_admin',`content` = 'admin',`lang` = '' WHERE `setting`.`id_setting` = 5;
UPDATE `setting` SET `id_setting` = 6,`name` = 'google_analytics',`content` = '',`lang` = '' WHERE `setting`.`id_setting` = 6;
UPDATE `setting` SET `id_setting` = 7,`name` = 'filemanager',`content` = 'mootools-filemanager',`lang` = '' WHERE `setting`.`id_setting` = 7;
UPDATE `setting` SET `id_setting` = 8,`name` = 'show_help_tips',`content` = '1',`lang` = '' WHERE `setting`.`id_setting` = 8;
UPDATE `setting` SET `id_setting` = 9,`name` = 'display_connected_label',`content` = '1',`lang` = '' WHERE `setting`.`id_setting` = 9;
UPDATE `setting` SET `id_setting` = 10,`name` = 'display_dashboard_shortcuts',`content` = '1',`lang` = '' WHERE `setting`.`id_setting` = 10;
UPDATE `setting` SET `id_setting` = 11,`name` = 'display_dashboard_modules',`content` = '1',`lang` = '' WHERE `setting`.`id_setting` = 11;
UPDATE `setting` SET `id_setting` = 12,`name` = 'display_dashboard_users',`content` = '1',`lang` = '' WHERE `setting`.`id_setting` = 12;
UPDATE `setting` SET `id_setting` = 13,`name` = 'display_dashboard_content',`content` = '1',`lang` = '' WHERE `setting`.`id_setting` = 13;
UPDATE `setting` SET `id_setting` = 14,`name` = 'display_front_offline_content',`content` = '1',`lang` = '' WHERE `setting`.`id_setting` = 14;
UPDATE `setting` SET `id_setting` = 15,`name` = 'display_dashboard_quick_settings',`content` = '1',`lang` = '' WHERE `setting`.`id_setting` = 15;
UPDATE `setting` SET `id_setting` = 16,`name` = 'texteditor',`content` = 'tinymce',`lang` = '' WHERE `setting`.`id_setting` = 16;
UPDATE `setting` SET `id_setting` = 17,`name` = 'media_thumb_size',`content` = '120',`lang` = '' WHERE `setting`.`id_setting` = 17;
UPDATE `setting` SET `id_setting` = 18,`name` = 'tinybuttons1',`content` = 'pdw_toggle,|,bold,italic,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,formatselect,|,bullist,numlist,|,link,unlink,image,|,spellchecker',`lang` = '' WHERE `setting`.`id_setting` = 18;
UPDATE `setting` SET `id_setting` = 19,`name` = 'tinybuttons2',`content` = 'fullscreen, undo,redo,|,pastetext,selectall,removeformat,|,media,charmap,hr,blockquote,|,template,|,codemirror',`lang` = '' WHERE `setting`.`id_setting` = 19;
UPDATE `setting` SET `id_setting` = 20,`name` = 'tinybuttons3',`content` = 'tablecontrols',`lang` = '' WHERE `setting`.`id_setting` = 20;
UPDATE `setting` SET `id_setting` = 21,`name` = 'smalltinybuttons1',`content` = 'bold,italic,|,bullist,numlist,|,link,unlink,image,|,nonbreaking',`lang` = '' WHERE `setting`.`id_setting` = 21;
UPDATE `setting` SET `id_setting` = 22,`name` = 'smalltinybuttons2',`content` = '',`lang` = '' WHERE `setting`.`id_setting` = 22;
UPDATE `setting` SET `id_setting` = 23,`name` = 'smalltinybuttons3',`content` = '',`lang` = '' WHERE `setting`.`id_setting` = 23;
UPDATE `setting` SET `id_setting` = 24,`name` = 'displayed_admin_languages',`content` = 'en',`lang` = '' WHERE `setting`.`id_setting` = 24;
UPDATE `setting` SET `id_setting` = 25,`name` = 'date_format',`content` = '%Y.%m.%d',`lang` = '' WHERE `setting`.`id_setting` = 25;
UPDATE `setting` SET `id_setting` = 26,`name` = 'force_lang_urls',`content` = '0',`lang` = '' WHERE `setting`.`id_setting` = 26;
UPDATE `setting` SET `id_setting` = 27,`name` = 'tinyblockformats',`content` = 'p,h2,h3,h4,h5,pre,div',`lang` = '' WHERE `setting`.`id_setting` = 27;
UPDATE `setting` SET `id_setting` = 28,`name` = 'article_allowed_tags',`content` = 'h2,h3,h4,h5,h6,em,img,iframe,table,object,thead,tbody,tfoot,tr,th,td,param,embed,map,p,a,ul,ol,li,br,b,strong',`lang` = '' WHERE `setting`.`id_setting` = 28;
UPDATE `setting` SET `id_setting` = 29,`name` = 'filemanager_file_types',`content` = 'gif,jpe,jpeg,jpg,png,mpeg,mpg,mp3,doc,docx,pdf,rar,word,zip',`lang` = '' WHERE `setting`.`id_setting` = 29;
UPDATE `setting` SET `id_setting` = 30,`name` = 'default_admin_lang',`content` = 'en',`lang` = '' WHERE `setting`.`id_setting` = 30;
UPDATE `setting` SET `id_setting` = 31,`name` = 'upload_autostart',`content` = '1',`lang` = '' WHERE `setting`.`id_setting` = 31;
UPDATE `setting` SET `id_setting` = 32,`name` = 'resize_on_upload',`content` = '1',`lang` = '' WHERE `setting`.`id_setting` = 32;
UPDATE `setting` SET `id_setting` = 33,`name` = 'picture_max_width',`content` = '1200',`lang` = '' WHERE `setting`.`id_setting` = 33;
UPDATE `setting` SET `id_setting` = 34,`name` = 'picture_max_height',`content` = '1200',`lang` = '' WHERE `setting`.`id_setting` = 34;
UPDATE `setting` SET `id_setting` = 35,`name` = 'upload_mode',`content` = '',`lang` = '' WHERE `setting`.`id_setting` = 35;
UPDATE `setting` SET `id_setting` = 36,`name` = 'no_source_picture',`content` = 'default.png',`lang` = '' WHERE `setting`.`id_setting` = 36;
UPDATE `setting` SET `id_setting` = 37,`name` = 'enable_backend_tracker',`content` = '0',`lang` = '' WHERE `setting`.`id_setting` = 37;
UPDATE `setting` SET `id_setting` = 38,`name` = 'backend_ui_style',`content` = 'original',`lang` = '' WHERE `setting`.`id_setting` = 38;
UPDATE `setting` SET `id_setting` = 39,`name` = 'notification',`content` = '1',`lang` = '' WHERE `setting`.`id_setting` = 39;
UPDATE `setting` SET `id_setting` = 40,`name` = 'notification_date',`content` = '',`lang` = '' WHERE `setting`.`id_setting` = 40;
UPDATE `setting` SET `id_setting` = 41,`name` = 'site_title',`content` = 'My website',`lang` = 'sk' WHERE `setting`.`id_setting` = 41;
UPDATE `setting` SET `id_setting` = 42,`name` = 'last_notification_refresh',`content` = '2015-02-23 11:57:10',`lang` = '' WHERE `setting`.`id_setting` = 42;
UPDATE `setting` SET `id_setting` = 43,`name` = 'last_version',`content` = '1.0.7',`lang` = '' WHERE `setting`.`id_setting` = 43;
UPDATE `setting` SET `id_setting` = 44,`name` = 'media_thumb_unsharp',`content` = '',`lang` = '' WHERE `setting`.`id_setting` = 44;

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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `url`
--

UPDATE `url` SET `id_url` = 47,`id_entity` = 6,`type` = 'page',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'podporujeme',`path_ids` = '6',`full_path_ids` = '6',`creation_date` = '2015-02-21 10:47:59' WHERE `url`.`id_url` = 47;
UPDATE `url` SET `id_url` = 48,`id_entity` = 9,`type` = 'article',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'podporujeme/ako-podporovat',`path_ids` = '6/9',`full_path_ids` = '6/9',`creation_date` = '2015-02-21 10:47:59' WHERE `url`.`id_url` = 48;
UPDATE `url` SET `id_url` = 55,`id_entity` = 5,`type` = 'page',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'podporujeme/podporovani-studenti',`path_ids` = '6/5',`full_path_ids` = '6/5',`creation_date` = '2015-02-21 10:53:44' WHERE `url`.`id_url` = 55;
UPDATE `url` SET `id_url` = 56,`id_entity` = 5,`type` = 'article',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'podporujeme/podporovani-studenti/basirista-dahaye-duay',`path_ids` = '6/5/5',`full_path_ids` = '6/5/5',`creation_date` = '2015-02-21 10:53:44' WHERE `url`.`id_url` = 56;
UPDATE `url` SET `id_url` = 57,`id_entity` = 6,`type` = 'article',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'podporujeme/podporovani-studenti/paschal-emmanuel-awe',`path_ids` = '6/5/6',`full_path_ids` = '6/5/6',`creation_date` = '2015-02-21 10:53:44' WHERE `url`.`id_url` = 57;
UPDATE `url` SET `id_url` = 58,`id_entity` = 7,`type` = 'page',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'podporujeme/cakatelia-na-podporu',`path_ids` = '6/7',`full_path_ids` = '6/7',`creation_date` = '2015-02-21 10:53:51' WHERE `url`.`id_url` = 58;
UPDATE `url` SET `id_url` = 59,`id_entity` = 7,`type` = 'article',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'podporujeme/cakatelia-na-podporu/emiliana-nicodemus-daffi',`path_ids` = '6/7/7',`full_path_ids` = '6/7/7',`creation_date` = '2015-02-21 10:53:52' WHERE `url`.`id_url` = 59;
UPDATE `url` SET `id_url` = 60,`id_entity` = 8,`type` = 'article',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'podporujeme/cakatelia-na-podporu/naomi-naftali-yona',`path_ids` = '6/7/8',`full_path_ids` = '6/7/8',`creation_date` = '2015-02-21 10:53:52' WHERE `url`.`id_url` = 60;
UPDATE `url` SET `id_url` = 62,`id_entity` = 4,`type` = 'page',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'home',`path_ids` = '4',`full_path_ids` = '4',`creation_date` = '2015-02-21 11:05:10' WHERE `url`.`id_url` = 62;
UPDATE `url` SET `id_url` = 63,`id_entity` = 13,`type` = 'article',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'home/skola-yedidiass',`path_ids` = '4/13',`full_path_ids` = '4/13',`creation_date` = '2015-02-21 11:05:10' WHERE `url`.`id_url` = 63;
UPDATE `url` SET `id_url` = 64,`id_entity` = 14,`type` = 'article',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'podporujeme/podporte-nas-2-z-dane',`path_ids` = '6/14',`full_path_ids` = '6/14',`creation_date` = '2015-02-21 20:44:37' WHERE `url`.`id_url` = 64;
UPDATE `url` SET `id_url` = 69,`id_entity` = 9,`type` = 'page',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'projekty',`path_ids` = '9',`full_path_ids` = '9',`creation_date` = '2015-02-21 21:48:25' WHERE `url`.`id_url` = 69;
UPDATE `url` SET `id_url` = 81,`id_entity` = 10,`type` = 'page',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'projekty/aktualne',`path_ids` = '9/10',`full_path_ids` = '9/10',`creation_date` = '2015-02-21 22:06:52' WHERE `url`.`id_url` = 81;
UPDATE `url` SET `id_url` = 82,`id_entity` = 15,`type` = 'article',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'projekty/aktualne/dokoncenie-triedy-a-domu-uciteov',`path_ids` = '9/10/15',`full_path_ids` = '9/10/15',`creation_date` = '2015-02-21 22:06:52' WHERE `url`.`id_url` = 82;
UPDATE `url` SET `id_url` = 86,`id_entity` = 11,`type` = 'page',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'projekty/realizovane',`path_ids` = '9/11',`full_path_ids` = '9/11',`creation_date` = '2015-02-21 22:15:20' WHERE `url`.`id_url` = 86;
UPDATE `url` SET `id_url` = 87,`id_entity` = 17,`type` = 'article',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'projekty/realizovane/potravinova-pomoc',`path_ids` = '9/11/17',`full_path_ids` = '9/11/17',`creation_date` = '2015-02-21 22:15:20' WHERE `url`.`id_url` = 87;
UPDATE `url` SET `id_url` = 95,`id_entity` = 12,`type` = 'page',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'galeria',`path_ids` = '12',`full_path_ids` = '12',`creation_date` = '2015-02-23 14:27:35' WHERE `url`.`id_url` = 95;
UPDATE `url` SET `id_url` = 96,`id_entity` = 20,`type` = 'article',`canonical` = 1,`active` = 1,`lang` = 'sk',`path` = 'galeria/z-africkeho-dennika-25.6.-7.7.-2014',`path_ids` = '12/20',`full_path_ids` = '12/20',`creation_date` = '2015-02-23 14:27:35' WHERE `url`.`id_url` = 96;

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

UPDATE `user` SET `id_user` = 1,`id_role` = 1,`join_date` = '2015-02-20 14:11:15',`last_visit` = '2015-02-23 10:57:05',`username` = 'admin',`screen_name` = 'admin admin',`firstname` = 'admin',`lastname` = 'admin',`birthdate` = NULL,`gender` = NULL,`password` = 'wYxgOoOgMY43z+Cr',`email` = 'frank238238@gmail.com',`salt` = 'c2f34b7371ee57ef' WHERE `user`.`id_user` = 1;

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
MODIFY `id_article` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
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
MODIFY `id_media` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
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
MODIFY `id_page` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
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
MODIFY `id_url` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
