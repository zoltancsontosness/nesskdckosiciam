-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Út 25.Aug 2015, 11:05
-- Verzia serveru: 5.6.21
-- Verzia PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáza: `libacentrum`
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

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
(28, 'desatoro-pre-rodicov', 'admin', 'admin', '2015-04-27 17:23:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:24:45', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(29, 'prihlaska', 'admin', 'admin', '2015-05-06 10:47:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-06 15:13:12', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(30, 'specialne-treningy', 'admin', 'admin', '2015-05-07 08:54:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:06:39', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(31, 'sezona-2014-2015', 'admin', 'admin', '2015-05-07 09:29:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-08-25 10:42:33', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(32, 'sezona-2013-2014', 'admin', NULL, '2015-05-07 09:30:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:30:57', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(33, 'sezona-2012-2013', 'admin', NULL, '2015-05-07 09:39:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:39:22', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(34, 'poster', 'admin', 'juraj.cangar@ness.com', '2015-05-07 09:40:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-22 10:12:55', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(35, 'sezona-2013-2014-1', 'admin', NULL, '2015-05-07 09:41:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:41:13', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(36, 'sezona-2012-2013-1', 'admin', NULL, '2015-05-07 09:41:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:41:36', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(37, 'kempy', 'admin', NULL, '2015-05-07 09:43:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:43:32', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(38, '2-z-dani', 'admin', 'admin', '2015-05-07 09:48:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:50:39', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(39, '17.04.2014-vekonocn-turnaj-caa-chlapci-skupina-1', 'admin', 'admin', '2015-05-07 10:06:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:17:37', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(40, 'medzinarodn-hokejov-turnaj-miskolc-07.04.2014', 'admin', 'admin', '2015-05-07 10:57:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:17:59', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(41, 'skupina-4', 'admin', NULL, '2015-05-07 11:00:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 11:00:03', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(42, 'letn-hokejov-kemp-2014', 'admin', 'admin', '2015-05-07 11:01:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 11:01:22', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(43, 'mikulas-2013', 'admin', 'admin', '2015-05-07 11:02:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 11:03:08', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(44, 'kontakt', 'admin', 'admin', '2015-05-07 12:49:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-08-25 10:19:33', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(45, 'basf-cup-2014-hokejovy-turnaj-5-sht-v-ziline-chlapci-skupina-23', 'admin', 'admin', '2015-05-22 09:19:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 09:58:46', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(46, 'prazdninovy-hokejovy-turnaj-v-cani-chlapci-skupina-3', 'admin', 'admin', '2015-05-22 09:33:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 09:59:07', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(47, 'prazdninovy-hokejovy-turnaj-v-cani-chlapci-skupina-2', 'admin', 'admin', '2015-05-22 09:42:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 09:59:28', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(48, 'turnaj-o-cenu-primatorky-sabinov-skupina-3', 'admin', 'admin', '2015-05-22 09:46:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:00:20', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(49, 'turnaj-pod-zastitou-primatorky-gelnica-skupina-3', 'admin', 'admin', '2015-05-22 09:50:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:00:52', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(50, 'l.a.11-dudince-zapas-legiend', 'admin', 'admin', '2015-05-22 09:54:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:01:10', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(51, 'turnaj-04.01.2014-cana', 'admin', NULL, '2015-05-22 10:02:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:02:15', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(52, 'turnaj-30.12.2013-snv', 'admin', NULL, '2015-05-22 10:05:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:05:37', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(53, 'turnaj-29.12.2013-trebisov', 'admin', NULL, '2015-05-22 10:09:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:09:12', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(54, 'turnaj-22.2.2013-sabinov', 'admin', NULL, '2015-05-22 10:10:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:10:52', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(55, 'turnaj-28.3.2013-snv', 'admin', NULL, '2015-05-22 10:14:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:14:34', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(56, 'turnaj-29.12.2012-trebisov', 'admin', NULL, '2015-05-22 10:20:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:20:11', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(57, 'letny-hokejovy-kemp-2013', 'admin', NULL, '2015-05-22 10:25:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:25:48', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(58, 'trening-skupina-1', 'admin', 'admin', '2015-05-22 10:29:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:32:16', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(59, 'fotogaleria-trening-s-rodicmi-28.12.2012', 'admin', NULL, '2015-05-22 10:34:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:34:19', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(60, 'prve-treningy', 'admin', NULL, '2015-05-22 10:41:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:41:06', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(61, 'prihlaska-na-zaujmovu-cinnos', 'admin', NULL, '2015-07-20 11:19:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 11:19:50', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(62, 'odhlaska-zo-zaujmovej-cinnosti', 'admin', NULL, '2015-07-20 11:20:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 11:20:14', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(63, 'vchovn-program', 'admin', NULL, '2015-07-20 11:20:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 11:20:27', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(64, 'plan-prace', 'admin', NULL, '2015-07-20 11:20:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 11:20:38', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(65, 'zriaovacia-listina', 'admin', NULL, '2015-07-20 11:20:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 11:20:53', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(66, 'skolska-rada', 'admin', NULL, '2015-07-20 11:21:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 11:21:06', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(67, 'dokumenty', 'admin', 'admin', '2015-07-20 11:22:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-23 13:12:55', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(68, 'galeria', 'juraj.cangar@ness.com', 'juraj.cangar@ness.com', '2015-07-21 08:20:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-22 08:51:04', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(69, 'oznam-2', 'juraj.cangar@ness.com', 'juraj.cangar@ness.com', '2015-07-21 12:32:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 12:38:24', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(70, 'oznam-3', 'juraj.cangar@ness.com', NULL, '2015-07-21 12:39:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 12:39:16', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(71, 'oznam-4', 'juraj.cangar@ness.com', NULL, '2015-07-21 12:39:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 12:39:32', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(72, NULL, NULL, NULL, '2015-07-21 12:45:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 12:45:37', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(73, NULL, NULL, NULL, '2015-07-21 13:36:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 13:36:21', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(74, 'odhlaska-zo-zaujmovej-cinnosti-1', 'juraj.cangar@ness.com', 'admin', '2015-07-22 08:15:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-23 13:07:26', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(75, 'vchovn-program-1', 'juraj.cangar@ness.com', NULL, '2015-07-22 08:15:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-22 08:15:42', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(76, 'plan-prace-1', 'juraj.cangar@ness.com', NULL, '2015-07-22 08:15:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-22 08:15:54', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(77, 'zriaovacia-listina-1', 'juraj.cangar@ness.com', NULL, '2015-07-22 08:16:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-22 08:16:06', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(78, 'skolska-rada-1', 'juraj.cangar@ness.com', 'juraj.cangar@ness.com', '2015-07-22 08:16:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-22 08:16:42', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(79, 'galeria-2', 'juraj.cangar@ness.com', 'juraj.cangar@ness.com', '2015-07-22 08:54:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-22 08:55:07', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(80, 'zimne-prazdniny', 'juraj.cangar@ness.com', 'admin', '2015-07-22 08:56:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-08-25 10:48:19', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(81, 'turnaje-1', 'admin', NULL, '2015-08-25 10:18:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-08-25 10:18:27', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(82, 'polrocne-prazdniny', 'admin', 'admin', '2015-08-25 10:49:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-08-25 10:49:11', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5);

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
(28, 'sk', 'desatoro-pre-rodicov', 'Desatoro pre rodičov', '', '', '<ol>\n<li>Pozitívne motivovať chlapcov pred tréningom a nezaťažovať ich radami, čo majú robiť.</li>\n<li>Po tréningu pochváliť a povzbudiť bez ohľadu na výkon chlapca.</li>\n<li>Nezasahovať do činnosti trénera pri tréningu a zápase.</li>\n<li>Nevynucovať si zaradenie svojho syna do zostavy.</li>\n<li>Nepostávať pri mantineloch, nevolať chlapcov a neradiť im.</li>\n<li>Nevstupovať do priestorov striedačky a do priestorov šatní.</li>\n<li>Nepokrikovať na rozhodcov.</li>\n<li>Nenosiť chlapcom výstroj.</li>\n<li>Nenarušovať dochádzku na tréningy a zápasy počas víkendov (odchod na chaty a výlety...)</li>\n<li>Nezabúdať na pravidelnú kontrolu výstroja a svojho syna (ribaná, dresy, korčule...)</li>\n</ol>\n<p><br />Čas strávený s Vašimi deťmi počas tréningov a zápasov bude pre všetkých príjemný. Majte na pamäti, že sú to len Vaše deti.</p>', '', '', 1),
(29, 'sk', 'prihlaska', 'Prihláška', '', '', '<p>Sme radi, že ste sa rozhodli sa k nám pridať.</p>', '', '', 1),
(30, 'sk', 'specialne-treningy', 'špeciálne tréningy', '', '', '<p><strong>Špeciálne brankárske tréningy pod vedením Jaromíra Dragana</strong><br /><br />- maximálny počet brankárov = 12<br /><br /></p>\n<table>\n<tbody>\n<tr>\n<td>Cena:</td>\n<td>brankár - 10 Eur ( brankár našej akadémie - 5 Eur )</td>\n</tr>\n<tr>\n<td> </td>\n<td>strelec - 5 Eur</td>\n</tr>\n</tbody>\n</table>\n<p><br />Ukážka tréningu: <a href="http://www.youtube.com/watch?v=b8dNsaqRlnM&amp;feature=youtu.be" target="_blank">video</a><br /><br />Kto má záujem o tento špeciálny tréning (brankársky alebo strelecký), prosím vyplnite nasledujúcu prihlášku. Ak sa jedná o neplnoletú osobu, je nutné vyplniť aj informácie o zákonnom zástupcovi.</p>\n<p><strong>Sme radi, že ste sa rozhodli sa k nám pridať.</strong></p>', NULL, NULL, 1),
(31, 'sk', 'sezona-2014-2015', 'Sezóna 2014/2015', '', '', '<p>30.10.2014 - L.A.11 - ICE DREAM (7:5), skupina 3.4</p>\n<p>09.11.2014 - L.A.11 - ICE DREAM (3:3), skupina 3</p>\n<p>23.11.2014 - L.A.11 - ICE DREAM (8:6), skupina 3</p>', '', '', 1),
(32, 'sk', 'sezona-2013-2014', 'Sezóna 2013/2014', '', '', '<p>11.04.2014 - L.A.11 - ICE DREAM Košice (10:2), skupina 3</p>\n<p>21.02.2014 - L.A.11 - Dudince, Zápas legiend - <a href="https://www.youtube.com/watch?v=edSynpP1_3E&amp;feature=youtu.be" target="_blank">video</a>, <a href="http://www.igorliba.sk/fotogaleria-21-2-2014-zapas-legiend">galéria</a></p>\n<p>Sezóna 2013/2014 - L.A.11- AHL, <a href="http://www.igorliba.sk/documents/uploads/Zapasy%20Tabulka%204%20skupina.doc" target="_blank">skupina 4 - tabuľka</a></p>\n<p>03.02.2014 - L.A.11 - Sabinov ( 1:2 ), skupina 3</p>\n<p>03.02.2014 - L.A.11 - Gelnica ( 6:0 ), skupina 3</p>\n<p>18.01.2014 - L.A.11 - Sabinov ( 0:4 ), skupina 3</p>\n<p>18.01.2014 - L.A.11 - ICE Dream Košice ( 6:0 ), skupina 3</p>\n<p>06.01.2014 - L.A.11 - Sabinov ( 10:5 ), skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-cana-060114">galéria</a></p>\n<p>06.01.2014 - L.A.11 - Gelnica ( 0:8 ), skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-cana-060114">galéria</a></p>\n<p>19.12.2013 - L.A.11 - Gelnica ( 6:1 ), skupina 2</p>\n<p>14.12.2013 - L.A.11 - Michalovce ( vyhrali L.A.11 ), skupina 2</p>\n<p>07.12.2013 - L.A.11 - ICE DREAM Košice ( 5:4 ), skupina 3</p>\n<p>30.11.2013 - L.A.11 - ICE DREAM Košice ( 6:1 ), skupina 3</p>\n<p>26.09.2013 - L.A.11 - Black Wolves Košice ( 4:5 ), skupina 2</p>\n<p>19.09.2013 - L.A.11 - Black Wolves Košice ( 3:6 ), skupina 1 - najmenší odohrali svoj prvý zápas</p>\n<p>12.09.2013 - L.A.11 - Black Wolves Košice ( 4:6 ), skupina 2</p>', NULL, NULL, 1),
(33, 'sk', 'sezona-2012-2013', 'Sezóna 2012/2013', '', '', '<p>14.03.2013 - L.A.11 - AHK Sokoľany, skupina C - chlapci vyhrali svoj prvý zápas</p>\n<p>02.03.2013 - L.A.11 - Spišská Nová Ves, skupina B</p>\n<p>22.02.2013 - L.A.11 - Gelnica, skupina C</p>\n<p>22.02.2013 - Sabinov - L.A. 11, skupina B - <a href="http://www.igorliba.sk/fotogaleria-22-2-2013-sabinov-cana">galéria Čaňa</a>, <a href="http://www.igorliba.sk/fotogaleria-22-2-sabinov-turnaj">galéria Sabinov</a></p>\n<p>01.02.2013 - Gelnica - L.A. 11, skupina C</p>\n<p>26.01.2013 - Exhibičný zápas L.A. 11 - Old Boys Prešov - <a href="http://www.igorliba.sk/fotogaleria-26-1-2013-exhibicia">galéria</a></p>\n<p>16.01.2013 - Bardejov - L.A. 11, skupina C</p>\n<p>04.01.2013 - L.A.11 - Michalovce, skupina B a C - <a href="http://www.igorliba.sk/fotogaleria-4-1-2013-michalovce">galéria</a></p>\n<p>19.12.2012 - Trebišov - L.A. 11, skupina C</p>', NULL, NULL, 1),
(34, 'sk', 'poster', 'Poster', '', '', '', '', '', 1),
(35, 'sk', 'sezona-2013-2014', 'Sezóna 2013/2014', '', '', '<p>17.04.2014 - Veľkonočný turnaj Čaňa - chlapci skupina 1 - <a href="http://www.igorliba.sk/documents/propozicieVT2014.pdf" target="_blank">propozície</a>, <a href="http://www.igorliba.sk/documents/rozpisVT2014.pdf" target="_blank">rozpis</a>,<a href="http://www.igorliba.sk/fotogaleria-vn2014-sk1.php">galéria</a> | Boli sme v <a href="http://www.radiosport.sk/" target="_blank">Rádiu Šport</a> - <a href="http://www.igorliba.sk/documents/radio_sport/Junior_Klub_19.4.2014_vstup1.mp3" target="_blank">vstup 1</a>, <a href="http://www.igorliba.sk/documents/radio_sport/Junior_Klub_19.4.2014_vstup2.mp3" target="_blank">vstup 2</a></p>\n<p>07.04.2014 - Medzinárodný hokejový turnaj Miskolc ľadový medveď - chlapci skupina 2 - <a href="http://www.igorliba.sk/documents/miskolc-april2014-ucastnici.pdf" target="_blank">účastníci</a>, <a href="http://www.igorliba.sk/documents/miskolc-april2014-vyhodnotenie.pdf" target="_blank">vyhodnotenie</a>, <a href="http://www.igorliba.sk/documents/miskolc-april2014-hraci.pdf" target="_blank">zoznam hráčov</a>, <a href="http://www.igorliba.sk/fotogaleria-miskolc-07042014.php">galéria</a></p>\n<p>05.-06.04.2014 - BASF CUP 2014 - hokejový turnaj 5.ŠHT v Žiline chlapci skupina 2+3 - <a href="http://www.igorliba.sk/documents/basf2014.pdf" target="_blank">propozície</a>, <a href="http://www.igorliba.sk/documents/basf2014v.pdf" target="_blank">vyhodnotenie</a>, <a href="http://www.igorliba.sk/fotogaleria-basf2014.php">galéria</a></p>\n<p>06.03.2014 - Prázdninový hokejový turnaj v Čani - chlapci skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-prazdniny06032014.php">galéria</a></p>\n<p>03.03.2014 - Prázdninový hokejový turnaj v Čani - chlapci skupina 2 - <a href="http://www.igorliba.sk/fotogaleria-prazdniny03032014.php">galéria</a></p>\n<p>02.03.2014 - Turnaj o cenu primátorky Sabinov - chlapci skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-sabinov02032014.php">galéria</a></p>\n<p>23.02.2014 - Turnaj pod záštitou primátorky Gelnica - chlapci skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-gelnica23022014.php">galéria</a>,<a href="http://www.igorliba.sk/documents/propozicie23022014.pdf" target="_blank">propozície</a></p>\n<p>09.02.2014 - Turnaj Orange Minihokej Tour Michalovce - chlapci skupina 2 -<a href="http://www.igorliba.sk/documents/propozicie09022014.pdf" target="_blank">propozície</a>, <a href="http://www.igorliba.sk/documents/rozlosovanie09022014.pdf" target="_blank">rozlosovanie</a></p>\n<p>04.01.2014 - MiniTurnaj v Čani - chlapci skupina 2 - <a href="http://www.igorliba.sk/fotogaleria-cana-040114">galeria</a></p>\n<p>30.12.2013 - Turnaj v Spišskej Novej Vsi - chlapci skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-snv-301213.php">galéria</a></p>\n<p>29.12.2013 - Turnaj v Trebišove - chlapci skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-trebisov-291213.php">galéria</a></p>\n<p>27.12.2013 - Turnaj v Spišskej Novej Vsi - chlapci skupina 2 - <a href="http://www.igorliba.sk/documents/propozicie27122013.pdf" target="_blank">propozície</a></p>\n<p>23-25.8.2013 - MULTI ŠPORT CUP 2013 - <a href="http://www.igorliba.sk/documents/rozpis_zapasov_2013_7_druzstiev.pdf" target="_blank">Rozpis zápasov.</a>, <a href="http://www.igorliba.sk/documents/Casovy_rozpis_turnaja.pdf" target="_blank">Časový rozpis turnaja</a></p>', NULL, NULL, 1),
(36, 'sk', 'sezona-2012-2013', 'Sezóna 2012/2013', '', '', '<p>29.03.2013 - Turnaj, Čaňa - <a href="http://www.igorliba.sk/documents/cana29032013/Pozvanka.pdf" target="_blank">pozvánka</a>, <a href="http://www.igorliba.sk/documents/cana29032013/supisky.pdf" target="_blank">súpisky</a>, <a href="http://www.igorliba.sk/documents/cana29032013/zapasy.pdf" target="_blank">zápasy</a>, <a href="http://www.igorliba.sk/fotogaleria-29-3-gelnica-sabinov">galéria Gelnica - Sabinov</a>,<a href="http://www.igorliba.sk/fotogaleria-29-3-gelnica-trebisov">galéria Gelnica - Trebišov</a>, <a href="http://www.igorliba.sk/fotogaleria-29-3-la-sabinov">galéria Liba Academy - Sabinov</a>, <a href="http://www.igorliba.sk/fotogaleria-29-3-vyhodnotenie">galéria Vyhodnotenie</a></p>\n<p>28.03.2013 - Turnaj v Spišskej Novej Vsi - chlapci skupina B - vyhrali svoj prvý zápas s Topolčanmi - <a href="http://www.igorliba.sk/fotogaleria-28-3-snv-turnaj">galéria</a>, <a href="http://www.igorliba.sk/documents/snv28032013/vysledky.pdf" target="_blank">výsledky</a></p>\n<p>03.03.2013 - Turnaj v Gelnici - chlapci skupina B a C, Michalovce, Miškolc a Gelnica</p>\n<p>29.12.2012 - Prvý turnaj, Trebišov - chlapci B skupina, <a href="http://www.hokej.sk/liga_exd/clanok104108-Vianocny_turnaj_piatakov_koristou_Bardejovcanov__FOTO.htm?utm_source=rss" target="_blank">info</a>, <a href="http://www.igorliba.sk/fotogaleria-turnaj-29-12-trebisov">galéria</a></p>', NULL, NULL, 1),
(37, 'sk', 'kempy', 'Kempy', '', '', '<p>Letný hokejový kemp 2013 - <a href="http://www.igorliba.sk/documents/kemp2013/KOKK_0719_023FB.pdf" target="_blank">článok 1</a>, <a href="http://www.igorliba.sk/documents/kemp2013/KOKV_0726_018-FB.pdf" target="_blank">článok 2</a> + <a href="http://www.igorliba.sk/fotogaleria-kemp-2013">galéria</a></p>\n<p>Letný hokejový kemp 2014 - <a href="http://www.igorliba.sk/documents/kemp2014.pdf" target="_blank">Informácie</a> + <a href="http://www.igorliba.sk/letny-hokejovy-kemp-prihlaska">Prihláška do kempu</a></p>', NULL, NULL, 1),
(38, 'sk', '2-z-dani', '2% z dani', '', '', '<p>Stiahnite si: <strong>VYHLÁSENIE o poukázaní sumy do výšky 2% (3 %) zaplatenej dane</strong> <a href="http://www.igorliba.sk/documents/vyhlasenie_2perc_2014-editovatelne.rtf" target="_blank">word dokument</a>, <a href="http://www.igorliba.sk/documents/vyhlasenie_2perc_2014-editovatelne-2.pdf" target="_blank">pdf dokument</a><img src="http://www.igorliba.sk/pictures/igorliba_dve_percenta.jpg" style="-webkit-user-select: none;" /></p>', '', '', 1),
(39, 'sk', '17.04.2014-vekonocny-turnaj-cana-chlapci-skupina-1', '17.04.2014 - Veľkonočný turnaj Čaňa - chlapci skupina 1', '', '', '', '', '', 1),
(40, 'sk', 'medzinarodny-hokejovy-turnaj-miskolc-07.04.2014', 'Medzinárodný hokejový turnaj Miskolc 07.04.2014', '', '', '', '', '', 1),
(41, 'sk', 'skupina-4', 'Skupina 4', '', '', '', NULL, NULL, 1),
(42, 'sk', 'letn-hokejov-kemp-2014', 'Letný hokejový kemp 2014', '', '', '', '', '', 1),
(43, 'sk', 'mikulas-2013', 'Mikuláš 2013', '', '', '', '', '', 1),
(44, 'sk', 'kontakt', 'Kontakt', '', '', '<p><strong>Riaditeľka S – CVČ </strong><br />Mgr. Ľudmila Mizáková - 0911 885 438<br /><br /></p>\n<p class="Odsekzoznamu"><strong>Vedúca  Elokovaného pracoviska Janigova 2, Košice</strong></p>\n<p class="Odsekzoznamu">Mgr. Monika Kováčová</p>\n<p class="Odsekzoznamu"></p>\n<p class="Odsekzoznamu"><strong>Vedúca Elokovaného pracoviska Starozagorská 8, Košice</strong></p>\n<p>Erika Nová          </p>', '', '', 1),
(45, 'sk', 'basf-cup-2014-hokejovy-turnaj-5-sht-v-ziline-chlapci-skupina-23', '05.-06.04.2014 - BASF CUP 2014 - hokejový turnaj 5.ŠHT v Žiline chlapci skupina 2+3', '', '', '', '', '', 1),
(46, 'sk', 'prazdninovy-hokejovy-turnaj-v-cani-chlapci-skupina-3', '06.03.2014 - Prázdninový hokejový turnaj v Čani - chlapci skupina 3', '', '', '', '', '', 1),
(47, 'sk', 'prazdninovy-hokejovy-turnaj-v-cani-chlapci-skupina-2', '03.03.2014 - Prázdninový hokejový turnaj v Čani - chlapci skupina 2', '', '', '', '', '', 1),
(48, 'sk', 'turnaj-o-cenu-primatorky-sabinov-skupina-3', '02.03.2014 - Turnaj o cenu primátorky Sabinov - chlapci skupina 3', '', '', '', '', '', 1),
(49, 'sk', 'turnaj-pod-zastitou-primatorky-gelnica-skupina-3', '23.02.2014 - Turnaj pod záštitou primátorky Gelnica - chlapci skupina 3', '', '', '', '', '', 1),
(50, 'sk', 'l.a.11-dudince-zapas-legiend', '21.02.2014 - L.A.11 - Dudince, Zápas legiend', '', '', '', '', '', 1),
(51, 'sk', 'turnaj-04.01.2014-cana', 'Turnaj 04.01.2014 Čaňa', '', '', '', NULL, NULL, 1),
(52, 'sk', 'turnaj-30.12.2013-snv', 'Turnaj 30.12.2013 SNV', '', '', '', NULL, NULL, 1),
(53, 'sk', 'turnaj-29.12.2013-trebisov', 'Turnaj 29.12.2013 Trebišov', '', '', '', NULL, NULL, 1),
(54, 'sk', 'turnaj-22.2.2013-sabinov', 'Turnaj 22.2.2013 Sabinov', '', '', '', NULL, NULL, 1),
(55, 'sk', 'turnaj-28.3.2013-snv', 'Turnaj 28.3.2013 SNV', '', '', '', NULL, NULL, 1),
(56, 'sk', 'turnaj-29.12.2012-trebisov', 'Turnaj 29.12.2012 Trebišov', '', '', '', NULL, NULL, 1),
(57, 'sk', 'letny-hokejovy-kemp-2013', 'Letný hokejový kemp 2013', '', '', '', NULL, NULL, 1),
(58, 'sk', 'skupina-1', 'Skupina 1', '', '', '', '', '', 1),
(59, 'sk', 'fotogaleria-trening-s-rodicmi-28.12.2012', 'Fotogaléria Tréning s rodičmi 28.12.2012', '', '', '', NULL, NULL, 1),
(60, 'sk', 'prve-treningy', 'Prvé tréningy', '', '', '', NULL, NULL, 1),
(61, 'sk', 'prihlaska-na-zaujmovu-cinnos', 'Prihláška na záujmovú činnosť', '', '', '', NULL, NULL, 1),
(62, 'sk', 'odhlaska-zo-zaujmovej-cinnosti', 'Odhláška zo záujmovej činnosti', '', '', '', NULL, NULL, 1),
(63, 'sk', 'vchovn-program', 'Výchovný program', '', '', '', NULL, NULL, 1),
(64, 'sk', 'plan-prace', 'Plán práce', '', '', '', NULL, NULL, 1),
(65, 'sk', 'zriaovacia-listina', 'Zriaďovacia listina', '', '', '', NULL, NULL, 1),
(66, 'sk', 'skolska-rada', 'Školská rada', '', '', '', NULL, NULL, 1),
(67, 'sk', 'prihlaska-na-zaujmovu-cinnost', 'Prihláška na záujmovú činnosť', '', '', '<ul>\n<li><a href="files/Dokumenty/prihlaska_cvc_1.xlsx" style="font-size: 1em; line-height: 1.5em;">Prihláška na záujmovú činnosť</a></li>\n</ul>', '', '', 1),
(68, 'sk', 'galeria', 'Galéria', '', '', '', '', '', 1),
(69, 'sk', 'oznam', 'Oznam', '', '', '<p>Dňa 7.4.2015 z dôvodu konania Veľkonočného turnaja skupina 4 (15:15 hod.) nebude mať tréning.</p>', '', '', 1),
(70, 'sk', 'oznam-1', 'Oznam', '', '', '<p>Dňa 7.4.2015 z dôvodu konania Veľkonočného turnaja skupina 3 (15:15 hod.) nebude mať tréning</p>', NULL, NULL, 1),
(71, 'sk', 'oznam-2', 'Oznam', '', '', '<p>Dňa 7.4.2015 z dôvodu konania Veľkonočného turnaja skupina 3 (15:15 hod.) nebude mať tréning</p>', NULL, NULL, 1),
(74, 'sk', 'odhlaska-zo-zaujmovej-cinnosti', 'Odhláška zo záujmovej činnosti', '', '', '<ul>\n<li><a href="files/Dokumenty/vzor_cvc.xlsx">Odhláška zo záujmovej činnosti</a></li>\n</ul>', '', '', 1),
(75, 'sk', 'vchovn-program', 'Výchovný program', '', '', '', NULL, NULL, 1),
(76, 'sk', 'plan-prace', 'Plán práce', '', '', '', NULL, NULL, 1),
(77, 'sk', 'zriaovacia-listina', 'Zriaďovacia listina', '', '', '', NULL, NULL, 1),
(78, 'sk', 'skolska-rada', 'Školská rada', '', '', '', '', '', 1),
(79, 'sk', 'galeria-2', 'Galeria 2', '', '', '', '', '', 1),
(80, 'sk', 'zimne-prazdniny', 'Zimné prázdniny', '', '', '<p>Tak ako v zahraničí existuje veľa mimoklubových výberov, aj na Slovensku začína fungovať mnoho výberov hráčov rôznych ročníkov, niektoré fungujú skvele, iné horšie. Našou prioritou je podpora talentovaných jedincov zo širokej športovej oblasti od útleho veku, ktorí majú o svoj športový rast predovšetkým vlastný záujem, bez ohľadu na klubovú príslušnosť. Jedná sa o celoročnú spoluprácu vhodne doplňujúcu "klubové povinosti" bez konfliktu.</p>\n<p>Týmto športovcom sa Hockey Liba Academy bude snažiť vytvárať čo najoptimálnejšie podmienky na rozvíjanie ich talentu nasledujúcimi spôsobmi:</p>\n<ul class="liba">\n<li>rôznymi formami tréningov</li>\n<li>organizovaním campov</li>\n<li>sústredeniami</li>\n<li>individuálnou prípravou</li>\n<li>poradenskou činnosťou</li>\n<li>zdravotnými prehliadkami</li>\n</ul>\n<p>Budeme sa snažiť prezentovať ich talent na kvalitných slovenských i medzinárodných akciách.</p>\n<p></p>\n<p><strong>Hokejová akadémia Igora Libu</strong> je špeciálne zameraná na mladých hráčov hneď od začiatku ich hokejového vývoja, tak, aby získali čo najlepšie návyky pre svoj hokejový rast.</p>\n<ul class="liba">\n<li>Ponúkame komplexnú starostlivosť v najrýchlejšom tímovom športe na svete</li>\n<li>U nás môžete očakávať pozitívny prístup trénerov. Našou snahou je, aby sa každý hráč v našej akadémii cítil dobre, zbavil sa strachu z chýb, ktorých sa všetci zákonite v priebehu učenia nových zručností dopúšťame.</li>\n<li>Trpezlivá práca s každým. Našou snahou je vytvoriť v jej priebehu dostatok času a priestoru na učenie sa novým hokejovým schopnostiam, ich opakovanie a zdokonaľovanie. Iba tak môže každý získať a následne rozvíjať správne pohybové a herné návyky, ktoré mu neskôr umožní jeho ďalší hokejový rast</li>\n<li>Odovzdávanie najnovších poznatkov a použitie efektívnych metód tréningu z celého sveta</li>\n<li>Svojím individuálnym prístupom sa snažíme u chlapcov aj dievčat o čo najväčšie posilnenie sebadôvery. Tým, že každému pomôžeme uvedomiť si svoje prednosti a spoznať svoje nedostatky mu umožníme, aby mohol sám svoje prednosti ďalej rozvíjať a svoje nedostatky postupne odstraňovať. Samozrejmosťou je potom plné rešpektovanie vekovej a výkonnostnej úrovne každého hráča.</li>\n<li>Podrobne sa zoznámite s našim individuálnym tréningovým procesom a môžete tak niektoré veci rozvíjať aj Vy mimo tréningový proces v domácich podmienkach</li>\n</ul>', '', '', 1),
(81, 'sk', 'turnaje', 'Turnaje', '', '', '<p>Ahoj centrum Liba </p>', NULL, NULL, 1),
(82, 'sk', 'polrocne-prazdniny', 'Polročné prázdniny', '', '', '<p>Tak ako v zahraničí existuje veľa mimoklubových výberov, aj na Slovensku začína fungovať mnoho výberov hráčov rôznych ročníkov, niektoré fungujú skvele, iné horšie. Našou prioritou je podpora talentovaných jedincov zo širokej športovej oblasti od útleho veku, ktorí majú o svoj športový rast predovšetkým vlastný záujem, bez ohľadu na klubovú príslušnosť. Jedná sa o celoročnú spoluprácu vhodne doplňujúcu "klubové povinosti" bez konfliktu.</p>\n<p>Týmto športovcom sa Hockey Liba Academy bude snažiť vytvárať čo najoptimálnejšie podmienky na rozvíjanie ich talentu nasledujúcimi spôsobmi:</p>\n<ul class="liba">\n<li>rôznymi formami tréningov</li>\n<li>organizovaním campov</li>\n<li>sústredeniami</li>\n<li>individuálnou prípravou</li>\n<li>poradenskou činnosťou</li>\n<li>zdravotnými prehliadkami</li>\n</ul>\n<p>Budeme sa snažiť prezentovať ich talent na kvalitných slovenských i medzinárodných akciách.</p>\n<p></p>\n<p><strong>Hokejová akadémia Igora Libu</strong> je špeciálne zameraná na mladých hráčov hneď od začiatku ich hokejového vývoja, tak, aby získali čo najlepšie návyky pre svoj hokejový rast.</p>\n<ul class="liba">\n<li>Ponúkame komplexnú starostlivosť v najrýchlejšom tímovom športe na svete</li>\n<li>U nás môžete očakávať pozitívny prístup trénerov. Našou snahou je, aby sa každý hráč v našej akadémii cítil dobre, zbavil sa strachu z chýb, ktorých sa všetci zákonite v priebehu učenia nových zručností dopúšťame.</li>\n<li>Trpezlivá práca s každým. Našou snahou je vytvoriť v jej priebehu dostatok času a priestoru na učenie sa novým hokejovým schopnostiam, ich opakovanie a zdokonaľovanie. Iba tak môže každý získať a následne rozvíjať správne pohybové a herné návyky, ktoré mu neskôr umožní jeho ďalší hokejový rast</li>\n<li>Odovzdávanie najnovších poznatkov a použitie efektívnych metód tréningu z celého sveta</li>\n<li>Svojím individuálnym prístupom sa snažíme u chlapcov aj dievčat o čo najväčšie posilnenie sebadôvery. Tým, že každému pomôžeme uvedomiť si svoje prednosti a spoznať svoje nedostatky mu umožníme, aby mohol sám svoje prednosti ďalej rozvíjať a svoje nedostatky postupne odstraňovať. Samozrejmosťou je potom plné rešpektovanie vekovej a výkonnostnej úrovne každého hráča.</li>\n<li>Podrobne sa zoznámite s našim individuálnym tréningovým procesom a môžete tak niektoré veci rozvíjať aj Vy mimo tréningový proces v domácich podmienkach</li>\n</ul>', '', '', 1);

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
(24, 50, 1, 1, NULL, NULL),
(34, 1, 1, 2, NULL, NULL),
(39, 52, 1, 1, NULL, NULL),
(39, 53, 1, 2, NULL, NULL),
(39, 54, 1, 3, NULL, NULL),
(39, 55, 1, 4, NULL, NULL),
(39, 56, 1, 7, NULL, NULL),
(39, 57, 1, 6, NULL, NULL),
(39, 58, 1, 5, NULL, NULL),
(40, 59, 1, 1, NULL, NULL),
(40, 60, 1, 2, NULL, NULL),
(40, 61, 1, 3, NULL, NULL),
(40, 62, 1, 4, NULL, NULL),
(40, 63, 1, 5, NULL, NULL),
(40, 64, 1, 6, NULL, NULL),
(40, 65, 1, 7, NULL, NULL),
(41, 66, 1, 1, NULL, NULL),
(41, 67, 1, 2, NULL, NULL),
(41, 68, 1, 3, NULL, NULL),
(41, 69, 1, 4, NULL, NULL),
(41, 70, 1, 5, NULL, NULL),
(41, 71, 1, 6, NULL, NULL),
(41, 72, 1, 7, NULL, NULL),
(42, 73, 1, 1, NULL, NULL),
(42, 74, 1, 2, NULL, NULL),
(42, 75, 1, 3, NULL, NULL),
(42, 76, 1, 4, NULL, NULL),
(42, 77, 1, 5, NULL, NULL),
(42, 78, 1, 6, NULL, NULL),
(43, 79, 1, 1, NULL, NULL),
(43, 80, 1, 2, NULL, NULL),
(43, 81, 1, 3, NULL, NULL),
(43, 82, 1, 4, NULL, NULL),
(43, 83, 1, 5, NULL, NULL),
(43, 84, 1, 6, NULL, NULL),
(43, 85, 1, 7, NULL, NULL),
(45, 86, 1, 1, NULL, NULL),
(45, 87, 1, 2, NULL, NULL),
(45, 88, 1, 3, NULL, NULL),
(45, 89, 1, 4, NULL, NULL),
(45, 90, 1, 5, NULL, NULL),
(45, 91, 1, 6, NULL, NULL),
(45, 92, 1, 7, NULL, NULL),
(46, 93, 1, 1, NULL, NULL),
(46, 94, 1, 2, NULL, NULL),
(46, 95, 1, 3, NULL, NULL),
(46, 96, 1, 4, NULL, NULL),
(46, 97, 1, 5, NULL, NULL),
(46, 98, 1, 6, NULL, NULL),
(46, 99, 1, 7, NULL, NULL),
(47, 100, 1, 1, NULL, NULL),
(47, 101, 1, 2, NULL, NULL),
(47, 102, 1, 3, NULL, NULL),
(47, 103, 1, 4, NULL, NULL),
(47, 104, 1, 5, NULL, NULL),
(47, 105, 1, 6, NULL, NULL),
(47, 106, 1, 7, NULL, NULL),
(47, 107, 1, 8, NULL, NULL),
(48, 108, 1, 1, NULL, NULL),
(48, 109, 1, 2, NULL, NULL),
(48, 110, 1, 3, NULL, NULL),
(48, 111, 1, 4, NULL, NULL),
(48, 112, 1, 5, NULL, NULL),
(48, 113, 1, 6, NULL, NULL),
(49, 114, 1, 1, NULL, NULL),
(49, 115, 1, 2, NULL, NULL),
(49, 116, 1, 3, NULL, NULL),
(49, 117, 1, 4, NULL, NULL),
(49, 118, 1, 5, NULL, NULL),
(49, 119, 1, 6, NULL, NULL),
(49, 120, 1, 7, NULL, NULL),
(49, 121, 1, 8, NULL, NULL),
(50, 122, 1, 1, NULL, NULL),
(50, 123, 1, 2, NULL, NULL),
(50, 124, 1, 3, NULL, NULL),
(50, 125, 1, 4, NULL, NULL),
(50, 126, 1, 5, NULL, NULL),
(50, 127, 1, 6, NULL, NULL),
(50, 128, 1, 7, NULL, NULL),
(51, 129, 1, 1, NULL, NULL),
(51, 130, 1, 2, NULL, NULL),
(51, 131, 1, 3, NULL, NULL),
(51, 132, 1, 4, NULL, NULL),
(51, 133, 1, 5, NULL, NULL),
(51, 134, 1, 6, NULL, NULL),
(52, 135, 1, 1, NULL, NULL),
(52, 136, 1, 2, NULL, NULL),
(52, 137, 1, 3, NULL, NULL),
(52, 138, 1, 4, NULL, NULL),
(52, 139, 1, 5, NULL, NULL),
(52, 140, 1, 6, NULL, NULL),
(53, 141, 1, 1, NULL, NULL),
(53, 142, 1, 2, NULL, NULL),
(53, 143, 1, 3, NULL, NULL),
(53, 144, 1, 4, NULL, NULL),
(53, 145, 1, 5, NULL, NULL),
(53, 146, 1, 6, NULL, NULL),
(54, 147, 1, 1, NULL, NULL),
(54, 148, 1, 2, NULL, NULL),
(54, 149, 1, 3, NULL, NULL),
(54, 150, 1, 4, NULL, NULL),
(54, 151, 1, 5, NULL, NULL),
(54, 152, 1, 6, NULL, NULL),
(55, 153, 1, 1, NULL, NULL),
(55, 154, 1, 2, NULL, NULL),
(55, 155, 1, 3, NULL, NULL),
(55, 156, 1, 4, NULL, NULL),
(55, 157, 1, 5, NULL, NULL),
(55, 158, 1, 6, NULL, NULL),
(56, 159, 1, 1, NULL, NULL),
(56, 160, 1, 2, NULL, NULL),
(56, 161, 1, 3, NULL, NULL),
(56, 162, 1, 4, NULL, NULL),
(56, 163, 1, 5, NULL, NULL),
(56, 164, 1, 6, NULL, NULL),
(56, 165, 1, 7, NULL, NULL),
(56, 166, 1, 8, NULL, NULL),
(56, 167, 1, 9, NULL, NULL),
(56, 168, 1, 10, NULL, NULL),
(56, 169, 1, 11, NULL, NULL),
(57, 170, 1, 1, NULL, NULL),
(57, 171, 1, 2, NULL, NULL),
(57, 172, 1, 3, NULL, NULL),
(57, 173, 1, 4, NULL, NULL),
(57, 174, 1, 5, NULL, NULL),
(57, 175, 1, 6, NULL, NULL),
(58, 176, 1, 1, NULL, NULL),
(58, 177, 1, 2, NULL, NULL),
(58, 178, 1, 3, NULL, NULL),
(58, 179, 1, 4, NULL, NULL),
(58, 180, 1, 5, NULL, NULL),
(58, 181, 1, 6, NULL, NULL),
(59, 182, 1, 1, NULL, NULL),
(59, 183, 1, 2, NULL, NULL),
(59, 184, 1, 3, NULL, NULL),
(59, 185, 1, 4, NULL, NULL),
(59, 186, 1, 5, NULL, NULL),
(59, 187, 1, 6, NULL, NULL),
(60, 188, 1, 1, NULL, NULL),
(60, 189, 1, 2, NULL, NULL),
(60, 190, 1, 3, NULL, NULL),
(60, 191, 1, 4, NULL, NULL),
(60, 192, 1, 5, NULL, NULL),
(60, 193, 1, 6, NULL, NULL),
(60, 194, 1, 7, NULL, NULL),
(60, 195, 1, 8, NULL, NULL),
(68, 170, 1, 1, NULL, NULL),
(68, 171, 1, 2, NULL, NULL),
(68, 172, 1, 3, NULL, NULL),
(68, 173, 1, 4, NULL, NULL),
(68, 174, 1, 5, NULL, NULL),
(68, 175, 1, 6, NULL, NULL),
(79, 79, 1, 1, NULL, NULL),
(79, 80, 1, 2, NULL, NULL),
(79, 81, 1, 3, NULL, NULL),
(79, 82, 1, 4, NULL, NULL),
(79, 83, 1, 5, NULL, NULL),
(79, 84, 1, 6, NULL, NULL),
(79, 85, 1, 7, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

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
(51, 'picture', 'ness_logo.png', 'files/sponsors/ness_logo.png', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(52, 'picture', 'img1.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/img1.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(53, 'picture', 'img10.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/img10.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(54, 'picture', 'img100.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/img100.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(55, 'picture', 'img101.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/img101.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(56, 'picture', 'img104.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/img104.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(57, 'picture', 'img103.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/img103.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(58, 'picture', 'img102.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/img102.jpg', 'files/galeria/turnaje/17.04.2014_velkonocny_turnaj_cana_chlapci_skupina_1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(59, 'picture', 'img1_1.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/img1_1.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(60, 'picture', 'img10.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/img10.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(61, 'picture', 'img27.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/img27.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(62, 'picture', 'img29.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/img29.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(63, 'picture', 'img60.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/img60.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(64, 'picture', 'img37.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/img37.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(65, 'picture', 'img33.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/img33.jpg', 'files/galeria/turnaje/medzinarodny_hokejovy_turnaj_miskolc_07.04.2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(66, 'picture', 'img1.jpg', 'files/galeria/treningy/skupina4/img1.jpg', 'files/galeria/treningy/skupina4/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(67, 'picture', 'img2.jpg', 'files/galeria/treningy/skupina4/img2.jpg', 'files/galeria/treningy/skupina4/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(68, 'picture', 'img5.jpg', 'files/galeria/treningy/skupina4/img5.jpg', 'files/galeria/treningy/skupina4/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(69, 'picture', 'img8.jpg', 'files/galeria/treningy/skupina4/img8.jpg', 'files/galeria/treningy/skupina4/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(70, 'picture', 'img35.jpg', 'files/galeria/treningy/skupina4/img35.jpg', 'files/galeria/treningy/skupina4/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(71, 'picture', 'img32.jpg', 'files/galeria/treningy/skupina4/img32.jpg', 'files/galeria/treningy/skupina4/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(72, 'picture', 'img29.jpg', 'files/galeria/treningy/skupina4/img29.jpg', 'files/galeria/treningy/skupina4/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(73, 'picture', '14.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2014/14.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(74, 'picture', '20.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2014/20.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(75, 'picture', '32.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2014/32.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(76, 'picture', '44.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2014/44.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(77, 'picture', '53.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2014/53.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(78, 'picture', '49.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2014/49.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(79, 'picture', 'img1.jpg', 'files/galeria/ostatne/mikulas2013/img1.jpg', 'files/galeria/ostatne/mikulas2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(80, 'picture', 'img2.jpg', 'files/galeria/ostatne/mikulas2013/img2.jpg', 'files/galeria/ostatne/mikulas2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(81, 'picture', 'img3.jpg', 'files/galeria/ostatne/mikulas2013/img3.jpg', 'files/galeria/ostatne/mikulas2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(82, 'picture', 'img6.jpg', 'files/galeria/ostatne/mikulas2013/img6.jpg', 'files/galeria/ostatne/mikulas2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(83, 'picture', 'img8.jpg', 'files/galeria/ostatne/mikulas2013/img8.jpg', 'files/galeria/ostatne/mikulas2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(84, 'picture', 'img9.jpg', 'files/galeria/ostatne/mikulas2013/img9.jpg', 'files/galeria/ostatne/mikulas2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(85, 'picture', 'img10.jpg', 'files/galeria/ostatne/mikulas2013/img10.jpg', 'files/galeria/ostatne/mikulas2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(86, 'picture', 'img4.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/img4.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(87, 'picture', 'img7.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/img7.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(88, 'picture', 'img14.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/img14.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(89, 'picture', 'img21.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/img21.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(90, 'picture', 'img25.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/img25.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(91, 'picture', 'img36.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/img36.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(92, 'picture', 'img43.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/img43.jpg', 'files/galeria/turnaje/basf_cup_2014_hokejovy_turnaj_5_sht_v_ziline_chlapci_skupina_23/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(93, 'picture', 'img1.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/img1.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(94, 'picture', 'img4.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/img4.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(95, 'picture', 'img13.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/img13.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(96, 'picture', 'img24.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/img24.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(97, 'picture', 'img50.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/img50.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(98, 'picture', 'img56.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/img56.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(99, 'picture', 'img66.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/img66.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(100, 'picture', 'img1.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/img1.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(101, 'picture', 'img11.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/img11.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(102, 'picture', 'img17.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/img17.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(103, 'picture', 'img26.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/img26.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(104, 'picture', 'img45.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/img45.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(105, 'picture', 'img96.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/img96.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(106, 'picture', 'img105.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/img105.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(107, 'picture', 'img113.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/img113.jpg', 'files/galeria/turnaje/prazdninovy_hokejovy_turnaj_v_cani_chlapci_skupina_2/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(108, 'picture', 'img1.jpg', 'files/galeria/turnaje/turnaj_o_cenu_primatorky_sabinov_skupina_3/img1.jpg', 'files/galeria/turnaje/turnaj_o_cenu_primatorky_sabinov_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(109, 'picture', 'img4.jpg', 'files/galeria/turnaje/turnaj_o_cenu_primatorky_sabinov_skupina_3/img4.jpg', 'files/galeria/turnaje/turnaj_o_cenu_primatorky_sabinov_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(110, 'picture', 'img8.jpg', 'files/galeria/turnaje/turnaj_o_cenu_primatorky_sabinov_skupina_3/img8.jpg', 'files/galeria/turnaje/turnaj_o_cenu_primatorky_sabinov_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(111, 'picture', 'img10.jpg', 'files/galeria/turnaje/turnaj_o_cenu_primatorky_sabinov_skupina_3/img10.jpg', 'files/galeria/turnaje/turnaj_o_cenu_primatorky_sabinov_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(112, 'picture', 'img12.jpg', 'files/galeria/turnaje/turnaj_o_cenu_primatorky_sabinov_skupina_3/img12.jpg', 'files/galeria/turnaje/turnaj_o_cenu_primatorky_sabinov_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(113, 'picture', 'img16.jpg', 'files/galeria/turnaje/turnaj_o_cenu_primatorky_sabinov_skupina_3/img16.jpg', 'files/galeria/turnaje/turnaj_o_cenu_primatorky_sabinov_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(114, 'picture', 'img1.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/img1.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(115, 'picture', 'img16.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/img16.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(116, 'picture', 'img40.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/img40.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(117, 'picture', 'img64.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/img64.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(118, 'picture', 'img89.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/img89.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(119, 'picture', 'img101.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/img101.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(120, 'picture', 'img111.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/img111.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(121, 'picture', 'img118.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/img118.jpg', 'files/galeria/turnaje/turnaj_pod_zastitou_primatorky_gelnica_skupina_3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(122, 'picture', 'img1.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/img1.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(123, 'picture', 'img9.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/img9.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(124, 'picture', 'img20.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/img20.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(125, 'picture', 'img35.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/img35.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(126, 'picture', 'img46.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/img46.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(127, 'picture', 'img56.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/img56.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(128, 'picture', 'img61.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/img61.jpg', 'files/galeria/turnaje/l.a.11_dudince_zapas_legiend/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(129, 'picture', 'img5.jpg', 'files/galeria/turnaje/turnaj_04.01.2014_cana/img5.jpg', 'files/galeria/turnaje/turnaj_04.01.2014_cana/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(130, 'picture', 'img8.jpg', 'files/galeria/turnaje/turnaj_04.01.2014_cana/img8.jpg', 'files/galeria/turnaje/turnaj_04.01.2014_cana/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(131, 'picture', 'img12.jpg', 'files/galeria/turnaje/turnaj_04.01.2014_cana/img12.jpg', 'files/galeria/turnaje/turnaj_04.01.2014_cana/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(132, 'picture', 'img19.jpg', 'files/galeria/turnaje/turnaj_04.01.2014_cana/img19.jpg', 'files/galeria/turnaje/turnaj_04.01.2014_cana/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(133, 'picture', 'img25.jpg', 'files/galeria/turnaje/turnaj_04.01.2014_cana/img25.jpg', 'files/galeria/turnaje/turnaj_04.01.2014_cana/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(134, 'picture', 'img33.jpg', 'files/galeria/turnaje/turnaj_04.01.2014_cana/img33.jpg', 'files/galeria/turnaje/turnaj_04.01.2014_cana/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(135, 'picture', 'img1.jpg', 'files/galeria/turnaje/turnaj_30.12.2013_snv/img1.jpg', 'files/galeria/turnaje/turnaj_30.12.2013_snv/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(136, 'picture', 'img15.jpg', 'files/galeria/turnaje/turnaj_30.12.2013_snv/img15.jpg', 'files/galeria/turnaje/turnaj_30.12.2013_snv/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(137, 'picture', 'img27.jpg', 'files/galeria/turnaje/turnaj_30.12.2013_snv/img27.jpg', 'files/galeria/turnaje/turnaj_30.12.2013_snv/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(138, 'picture', 'img36.jpg', 'files/galeria/turnaje/turnaj_30.12.2013_snv/img36.jpg', 'files/galeria/turnaje/turnaj_30.12.2013_snv/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(139, 'picture', 'img48.jpg', 'files/galeria/turnaje/turnaj_30.12.2013_snv/img48.jpg', 'files/galeria/turnaje/turnaj_30.12.2013_snv/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(140, 'picture', 'img56.jpg', 'files/galeria/turnaje/turnaj_30.12.2013_snv/img56.jpg', 'files/galeria/turnaje/turnaj_30.12.2013_snv/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(141, 'picture', 'img1.jpg', 'files/galeria/turnaje/turnaj_29.12.2013_trebisov/img1.jpg', 'files/galeria/turnaje/turnaj_29.12.2013_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(142, 'picture', 'img15.jpg', 'files/galeria/turnaje/turnaj_29.12.2013_trebisov/img15.jpg', 'files/galeria/turnaje/turnaj_29.12.2013_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(143, 'picture', 'img27.jpg', 'files/galeria/turnaje/turnaj_29.12.2013_trebisov/img27.jpg', 'files/galeria/turnaje/turnaj_29.12.2013_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(144, 'picture', 'img36.jpg', 'files/galeria/turnaje/turnaj_29.12.2013_trebisov/img36.jpg', 'files/galeria/turnaje/turnaj_29.12.2013_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(145, 'picture', 'img48.jpg', 'files/galeria/turnaje/turnaj_29.12.2013_trebisov/img48.jpg', 'files/galeria/turnaje/turnaj_29.12.2013_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(146, 'picture', 'img56.jpg', 'files/galeria/turnaje/turnaj_29.12.2013_trebisov/img56.jpg', 'files/galeria/turnaje/turnaj_29.12.2013_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(147, 'picture', '1.jpg', 'files/galeria/turnaje/turnaj_22.2.2013_sabinov/1.jpg', 'files/galeria/turnaje/turnaj_22.2.2013_sabinov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(148, 'picture', '5.jpg', 'files/galeria/turnaje/turnaj_22.2.2013_sabinov/5.jpg', 'files/galeria/turnaje/turnaj_22.2.2013_sabinov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(149, 'picture', '9.jpg', 'files/galeria/turnaje/turnaj_22.2.2013_sabinov/9.jpg', 'files/galeria/turnaje/turnaj_22.2.2013_sabinov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(150, 'picture', '12.jpg', 'files/galeria/turnaje/turnaj_22.2.2013_sabinov/12.jpg', 'files/galeria/turnaje/turnaj_22.2.2013_sabinov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(151, 'picture', '16.jpg', 'files/galeria/turnaje/turnaj_22.2.2013_sabinov/16.jpg', 'files/galeria/turnaje/turnaj_22.2.2013_sabinov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(152, 'picture', '20.jpg', 'files/galeria/turnaje/turnaj_22.2.2013_sabinov/20.jpg', 'files/galeria/turnaje/turnaj_22.2.2013_sabinov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(153, 'picture', '1.jpg', 'files/galeria/turnaje/turnaj_28.3.2013_snv/1.jpg', 'files/galeria/turnaje/turnaj_28.3.2013_snv/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(154, 'picture', '5.jpg', 'files/galeria/turnaje/turnaj_28.3.2013_snv/5.jpg', 'files/galeria/turnaje/turnaj_28.3.2013_snv/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(155, 'picture', '8.jpg', 'files/galeria/turnaje/turnaj_28.3.2013_snv/8.jpg', 'files/galeria/turnaje/turnaj_28.3.2013_snv/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(156, 'picture', '9.jpg', 'files/galeria/turnaje/turnaj_28.3.2013_snv/9.jpg', 'files/galeria/turnaje/turnaj_28.3.2013_snv/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(157, 'picture', '10.jpg', 'files/galeria/turnaje/turnaj_28.3.2013_snv/10.jpg', 'files/galeria/turnaje/turnaj_28.3.2013_snv/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(158, 'picture', '14.jpg', 'files/galeria/turnaje/turnaj_28.3.2013_snv/14.jpg', 'files/galeria/turnaje/turnaj_28.3.2013_snv/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(159, 'picture', '1.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/1.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(160, 'picture', '101.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/101.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(161, 'picture', '114.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/114.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(162, 'picture', '130.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/130.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(163, 'picture', '145.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/145.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(164, 'picture', '156.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/156.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(165, 'picture', '169.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/169.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(166, 'picture', '238.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/238.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(167, 'picture', '315.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/315.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(168, 'picture', '470.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/470.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(169, 'picture', '707.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/707.jpg', 'files/galeria/turnaje/turnaj_29.12.2012_trebisov/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(170, 'picture', '1.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2013/1.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(171, 'picture', '3.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2013/3.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(172, 'picture', '6.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2013/6.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(173, 'picture', '8.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2013/8.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(174, 'picture', '9.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2013/9.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(175, 'picture', '11.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2013/11.jpg', 'files/galeria/kempy/letny_hokejovy_kemp_2013/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(176, 'picture', 'img1.jpg', 'files/galeria/treningy/skupina1/img1.jpg', 'files/galeria/treningy/skupina1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(177, 'picture', 'img8.jpg', 'files/galeria/treningy/skupina1/img8.jpg', 'files/galeria/treningy/skupina1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(178, 'picture', 'img11.jpg', 'files/galeria/treningy/skupina1/img11.jpg', 'files/galeria/treningy/skupina1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(179, 'picture', 'img17.jpg', 'files/galeria/treningy/skupina1/img17.jpg', 'files/galeria/treningy/skupina1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(180, 'picture', 'img20.jpg', 'files/galeria/treningy/skupina1/img20.jpg', 'files/galeria/treningy/skupina1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(181, 'picture', 'img25.jpg', 'files/galeria/treningy/skupina1/img25.jpg', 'files/galeria/treningy/skupina1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(182, 'picture', 'image1.jpg', 'files/galeria/treningy/fotogaleria_trening_s_rodicmi_28.12.2012/image1.jpg', 'files/galeria/treningy/fotogaleria_trening_s_rodicmi_28.12.2012/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(183, 'picture', 'image19.jpg', 'files/galeria/treningy/fotogaleria_trening_s_rodicmi_28.12.2012/image19.jpg', 'files/galeria/treningy/fotogaleria_trening_s_rodicmi_28.12.2012/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(184, 'picture', 'image26.jpg', 'files/galeria/treningy/fotogaleria_trening_s_rodicmi_28.12.2012/image26.jpg', 'files/galeria/treningy/fotogaleria_trening_s_rodicmi_28.12.2012/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(185, 'picture', 'image32.jpg', 'files/galeria/treningy/fotogaleria_trening_s_rodicmi_28.12.2012/image32.jpg', 'files/galeria/treningy/fotogaleria_trening_s_rodicmi_28.12.2012/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(186, 'picture', 'image38.jpg', 'files/galeria/treningy/fotogaleria_trening_s_rodicmi_28.12.2012/image38.jpg', 'files/galeria/treningy/fotogaleria_trening_s_rodicmi_28.12.2012/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(187, 'picture', 'image42.jpg', 'files/galeria/treningy/fotogaleria_trening_s_rodicmi_28.12.2012/image42.jpg', 'files/galeria/treningy/fotogaleria_trening_s_rodicmi_28.12.2012/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(188, 'picture', '1.jpg', 'files/galeria/treningy/prve_treningy/1.jpg', 'files/galeria/treningy/prve_treningy/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(189, 'picture', '13.jpg', 'files/galeria/treningy/prve_treningy/13.jpg', 'files/galeria/treningy/prve_treningy/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(190, 'picture', '24.jpg', 'files/galeria/treningy/prve_treningy/24.jpg', 'files/galeria/treningy/prve_treningy/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(191, 'picture', '29.jpg', 'files/galeria/treningy/prve_treningy/29.jpg', 'files/galeria/treningy/prve_treningy/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(192, 'picture', '36.jpg', 'files/galeria/treningy/prve_treningy/36.jpg', 'files/galeria/treningy/prve_treningy/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(193, 'picture', '41.jpg', 'files/galeria/treningy/prve_treningy/41.jpg', 'files/galeria/treningy/prve_treningy/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(194, 'picture', '48.jpg', 'files/galeria/treningy/prve_treningy/48.jpg', 'files/galeria/treningy/prve_treningy/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(195, 'picture', '55.jpg', 'files/galeria/treningy/prve_treningy/55.jpg', 'files/galeria/treningy/prve_treningy/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(196, 'picture', 'logo_final.png', 'files/sponsors/logo_final.png', 'files/sponsors/', NULL, '', '0000-00-00 00:00:00', NULL, 'm');

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
(1, '2015-08-25', 'sitemap_refresh', 'System', 'Sitemap refresh', 'Sitemap needs to be refreshed.<br/> Go to <b>Tools > System Diagnosis > Tools</b> and click on <b>"Refresh Sitemap"</b>.', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page`
--

INSERT INTO `page` (`id_page`, `id_parent`, `id_menu`, `id_type`, `id_subnav`, `name`, `ordering`, `level`, `online`, `home`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `appears`, `has_url`, `view`, `view_single`, `article_list_view`, `article_view`, `article_order`, `article_order_direction`, `link`, `link_type`, `link_id`, `pagination`, `priority`, `used_by_module`, `deny_code`) VALUES
(1, 0, 2, 0, 0, '404', 3, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(2, 0, 2, 0, 0, '401', 4, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(3, 0, 2, 0, 0, '403', 5, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(4, 0, 1, 0, 0, 'home', 1, 0, 1, 1, NULL, 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-21 17:48:38', '0000-00-00 00:00:00', 1, 1, 'page_home', 'page_blog_post', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(10, 0, 1, 0, 0, 'fotogaleria', 4, 0, 1, 0, 'admin', 'juraj.cangar@ness.com', '2015-04-15 11:42:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-22 08:52:22', '0000-00-00 00:00:00', 1, 1, 'page_gallery', 'page_single_gallery', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(11, 0, 1, 0, 0, 'kontakt', 5, 0, 1, 0, 'admin', 'admin', '2015-04-15 11:42:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-15 15:53:16', '0000-00-00 00:00:00', 1, 1, 'page_contact', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(13, 0, 0, 0, 0, 'filozofia-skoly', 8, 0, 1, 0, 'admin', 'admin', '2015-04-15 13:25:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 17:09:19', '0000-00-00 00:00:00', 1, 1, 'page_blog_post', 'page_blog_post', '', '', 'ordering', 'ASC', 'Filozofia školy', 'article', '13.8', 0, 5, 0, '404'),
(14, 0, 0, 0, 0, 'zoznam-hracov', 9, 0, 1, 0, 'admin', 'admin', '2015-04-15 13:26:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 17:06:35', '0000-00-00 00:00:00', 1, 1, 'page_blog_post', 'page_blog_post', '', '', 'ordering', 'ASC', 'Zoznam hráčov', 'article', '14.11', 0, 5, 0, '404'),
(15, 0, 0, 0, 0, 'treneri', 10, 0, 1, 0, 'admin', 'admin', '2015-04-15 13:29:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 13:18:53', '0000-00-00 00:00:00', 1, 1, 'page_blog', 'page_blog_post', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(16, 0, 0, 0, 0, 'rozpis-treningov', 11, 0, 1, 0, 'admin', 'admin', '2015-04-15 13:29:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:19:33', '0000-00-00 00:00:00', 1, 1, 'page_blog_post', '', '', '', 'ordering', 'ASC', 'Rozpis tréningov', 'article', '16.25', 0, 5, 0, '404'),
(17, 0, 0, 0, 0, 'specialne-brankarske-treningy', 12, 0, 1, 0, 'admin', 'admin', '2015-04-15 13:31:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 08:55:25', '0000-00-00 00:00:00', 1, 1, 'page_trenings_form', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(18, 0, 0, 0, 0, 'prihlasky', 13, 0, 1, 0, 'admin', 'admin', '2015-04-15 13:32:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-06 15:14:28', '0000-00-00 00:00:00', 1, 1, 'page_entry', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(19, 0, 0, 0, 0, 'clanky', 14, 0, 1, 0, 'admin', NULL, '2015-04-15 13:32:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(20, 0, 0, 0, 0, 'reklamne-predmety', 15, 0, 1, 0, 'admin', 'admin', '2015-04-15 13:32:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 13:36:55', '0000-00-00 00:00:00', 1, 1, 'page_gallery', 'page_gallery', '', '', 'ordering', 'ASC', 'Reklamné predmety', 'article', '20.24', 0, 5, 0, '404'),
(21, 0, 0, 0, 0, 'kodex-klubu-1', 16, 0, 1, 0, 'admin', 'admin', '2015-04-15 13:41:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:22:18', '0000-00-00 00:00:00', 1, 1, 'page_blog', 'page_blog_post', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(22, 0, 0, 0, 0, 'desatoro-pre-rodicov', 17, 0, 1, 0, 'admin', 'admin', '2015-04-15 13:41:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:24:24', '0000-00-00 00:00:00', 1, 1, '', 'page_blog_post', '', '', 'ordering', 'ASC', 'Desatoro pre rodičov', 'article', '22.28', 0, 5, 0, '404'),
(23, 0, 0, 0, 0, 'zapasy-1', 18, 0, 1, 0, 'admin', 'admin', '2015-04-15 13:42:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:31:54', '0000-00-00 00:00:00', 1, 1, 'page_blog', 'page_blog_post', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(24, 0, 0, 0, 0, 'turnaje', 19, 0, 1, 0, 'admin', 'admin', '2015-04-15 13:42:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:44:02', '0000-00-00 00:00:00', 1, 1, 'page_blog', 'page_blog_post', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(25, 0, 0, 0, 0, 'kempy', 20, 0, 1, 0, 'admin', 'admin', '2015-04-15 13:42:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:44:10', '0000-00-00 00:00:00', 1, 1, 'page_blog_post', '', '', '', 'ordering', 'ASC', 'Kempy', 'article', '25.37', 0, 5, 0, '404'),
(32, 0, 2, 0, 0, 'slideshow', 6, 0, 1, 0, 'admin', NULL, '2015-04-17 11:04:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(33, 0, 2, 0, 0, 'sponsors', 7, 0, 1, 0, 'admin', 'admin', '2015-04-17 13:43:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-30 09:12:21', '0000-00-00 00:00:00', 1, 1, '', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(36, 0, 0, 0, 0, 'zapasy-3', 28, 0, 1, 0, 'admin', NULL, '2015-07-20 10:50:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(37, 0, 0, 0, 0, 'turnaje-2', 29, 0, 1, 0, 'admin', NULL, '2015-07-20 10:54:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(38, 0, 0, 0, 0, 'kempy-2', 30, 0, 1, 0, 'admin', NULL, '2015-07-20 10:56:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(40, 0, 1, 0, 0, 'podujatia', 2, 0, 1, 0, 'admin', NULL, '2015-07-20 11:00:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(41, 40, 1, 0, 0, 'prazdninove-podujatia', 32, 1, 1, 0, 'admin', 'juraj.cangar@ness.com', '2015-07-20 11:00:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-22 10:09:18', '0000-00-00 00:00:00', 1, 0, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(43, 40, 1, 0, 0, 'sezonne-podujatia-1', 34, 1, 1, 0, 'admin', 'juraj.cangar@ness.com', '2015-07-20 11:01:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-22 10:10:19', '0000-00-00 00:00:00', 1, 0, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(45, 0, 1, 0, 0, 'dokumenty', 3, 0, 1, 0, 'admin', 'juraj.cangar@ness.com', '2015-07-20 11:02:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 13:20:39', '0000-00-00 00:00:00', 1, 1, 'page_documenty', 'page_documenty', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(46, 0, 2, 0, 0, 'zapasy', 2, 0, 1, 0, 'admin', NULL, '2015-07-20 11:06:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(47, 46, 2, 0, 0, 'zapasy-4', 8, 1, 1, 0, 'admin', 'juraj.cangar@ness.com', '2015-07-20 11:06:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 12:41:32', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(48, 46, 2, 0, 0, 'turnaje-1', 9, 1, 1, 0, 'admin', NULL, '2015-07-20 11:06:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(51, 46, 2, 0, 0, 'kempy-1', 11, 1, 1, 0, 'admin', NULL, '2015-07-20 11:09:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(52, 41, 1, 0, 0, 'zimne-prazdniny', 35, 2, 1, 0, 'admin', NULL, '2015-07-20 11:14:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(53, 41, 1, 0, 0, 'polrocne-prazdniny', 36, 2, 1, 0, 'admin', NULL, '2015-07-20 11:14:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(54, 41, 1, 0, 0, 'jarne-prazdniny', 37, 2, 1, 0, 'admin', NULL, '2015-07-20 11:14:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(55, 41, 1, 0, 0, 'vekonocne-prazdniny', 38, 2, 1, 0, 'admin', NULL, '2015-07-20 11:15:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(56, 41, 1, 0, 0, 'letne-prazdniny', 39, 2, 1, 0, 'admin', NULL, '2015-07-20 11:15:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(57, 43, 1, 0, 0, 'turnaje-3', 40, 2, 1, 0, 'admin', NULL, '2015-07-20 11:15:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(58, 43, 1, 0, 0, 'zapasy-2', 41, 2, 1, 0, 'admin', NULL, '2015-07-20 11:15:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(59, 43, 1, 0, 0, 'suaze', 42, 2, 1, 0, 'admin', NULL, '2015-07-20 11:15:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(60, 43, 1, 0, 0, 'vystupenia', 43, 2, 1, 0, 'admin', NULL, '2015-07-20 11:16:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(61, 43, 1, 0, 0, 'sustredenia', 44, 2, 1, 0, 'admin', NULL, '2015-07-20 11:16:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(62, 43, 1, 0, 0, 'prezentacie', 45, 2, 1, 0, 'admin', 'admin', '2015-07-20 11:16:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 11:16:37', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(65, 0, 2, 0, 0, 'news-1', 1, 0, 1, 0, 'juraj.cangar@ness.com', NULL, '2015-07-21 12:25:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL);

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
(10, 68, 1, NULL, 1, NULL, '', '', '', 1),
(10, 79, 1, NULL, 2, NULL, '', '', '', 1),
(11, 44, 1, NULL, 1, NULL, '', '', '', 1),
(13, 8, 1, NULL, 1, NULL, '', '', '', 1),
(14, 11, 1, NULL, 1, NULL, '', '', '', 1),
(15, 12, 1, NULL, 1, NULL, '', '', '', 1),
(15, 21, 1, NULL, 2, NULL, '', '', '', 1),
(15, 22, 1, NULL, 3, NULL, '', '', '', 1),
(15, 23, 1, NULL, 4, NULL, '', '', '', 1),
(16, 25, 1, NULL, 1, NULL, '', '', '', 1),
(17, 30, 1, NULL, 1, NULL, '', '', '', 1),
(18, 29, 1, NULL, 1, NULL, '', '', '', 1),
(20, 24, 1, NULL, 1, NULL, '', '', '', 1),
(21, 26, 1, NULL, 1, NULL, '', '', '', 1),
(21, 27, 1, NULL, 2, NULL, '', '', '', 1),
(22, 28, 1, NULL, 1, NULL, '', '', '', 1),
(32, 5, 1, NULL, 3, 1, '', '', '', 1),
(32, 6, 1, NULL, 2, 1, '', '', '', 1),
(32, 7, 1, NULL, 1, 1, '', '', '', 1),
(45, 67, 1, NULL, 1, NULL, '', '', '', 1),
(45, 74, 1, NULL, 2, NULL, '', '', '', 1),
(45, 75, 1, NULL, 3, NULL, '', '', '', 1),
(45, 76, 1, NULL, 4, NULL, '', '', '', 1),
(45, 77, 1, NULL, 5, NULL, '', '', '', 1),
(45, 78, 1, NULL, 6, NULL, '', '', '', 1),
(47, 31, 1, NULL, 1, NULL, '', '', '', 1),
(48, 34, 1, NULL, 1, NULL, '', '', '', 1),
(51, 37, 1, NULL, 1, NULL, '', '', '', 1),
(52, 80, 1, NULL, 1, NULL, '', '', '', 1),
(53, 82, 1, NULL, 1, NULL, '', '', '', 1),
(57, 81, 1, NULL, 1, NULL, '', '', '', 1),
(65, 69, 1, NULL, 3, NULL, '', '', '', 1),
(65, 70, 1, NULL, 2, NULL, '', '', '', 1),
(65, 71, 1, NULL, 1, NULL, '', '', '', 1);

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
('sk', 10, 'fotogaleria', '', 'Galéria', '', '', '', '', '', '', 1),
('sk', 11, 'kontakt', '', 'Kontakt', '', '', '', '', '', '', 1),
('sk', 13, 'filozofia-skoly', '', 'Filozofia školy', '', '', '', '', '', '', 1),
('sk', 14, 'zoznam-hracov', '', 'Zoznam hráčov', '', '', '', '', '', '', 1),
('sk', 15, 'treneri', '', 'Tréneri', '', '', '', '', '', '', 1),
('sk', 16, 'rozpis-treningov', '', 'Rozpis tréningov', '', '', '', '', '', '', 1),
('sk', 17, 'specialne-brankarske-treningy', '', 'Špeciálne brankárske tréningy', '', '', '', '', '', '', 1),
('sk', 18, 'prihlaska', '', 'Prihláška', '', '', '', '', '', '', 1),
('sk', 19, 'clanky', '', 'Články', '', '', '', '', NULL, NULL, 1),
('sk', 20, 'reklamne-predmety', '', 'Reklamné predmety', '', '', '', '', '', '', 1),
('sk', 21, 'kodex-klubu', '', 'Kódex klubu', '', '', '', '', '', '', 1),
('sk', 22, 'desatoro-pre-rodicov', '', 'Desatoro pre rodičov', '', '', '', '', '', '', 1),
('sk', 23, 'zapasy', '', 'Zápasy', '', '', '', '', '', '', 1),
('sk', 24, 'turnaje', '', 'Turnaje', '', '', '', '', '', '', 1),
('sk', 25, 'kempy', '', 'Kempy', '', '', '', '', '', '', 1),
('sk', 32, 'slideshow', '', 'slideshow', '', '', '', '', NULL, NULL, 1),
('sk', 33, 'sponsors', '', 'sponsors', '', '', '', '', '', '', 1),
('sk', 36, 'zapasy', '', 'Zápasy', '', '', '', '', NULL, NULL, 1),
('sk', 37, 'turnaje', '', 'Turnaje', '', '', '', '', NULL, NULL, 1),
('sk', 38, 'kempy', '', 'Kempy', '', '', '', '', NULL, NULL, 1),
('sk', 40, 'podujatia', '', 'Podujatia', '', '', '', '', NULL, NULL, 1),
('sk', 41, 'podujatia-1', '', 'Prázdninové podujatia', '', '', '', '', '', '', 1),
('sk', 43, 'podujatia-2', '', 'Sezónne podujatia', '', '', '', '', '', '', 1),
('sk', 45, 'dokumenty', '', 'Dokumenty', '', '', '', '', '', '', 1),
('sk', 46, 'zapasy', '', 'Zápasy', '', '', '', '', NULL, NULL, 1),
('sk', 47, 'akcie', '', 'Akcie', '', '', '', '', '', '', 1),
('sk', 48, 'turnaje-1', '', 'Turnaje', '', '', '', '', NULL, NULL, 1),
('sk', 51, 'kempy-1', '', 'Kempy', '', '', '', '', NULL, NULL, 1),
('sk', 52, 'zimne-prazdniny', '', 'Zimné prázdniny', '', '', '', '', NULL, NULL, 1),
('sk', 53, 'polrocne-prazdniny', '', 'Polročné prázdniny', '', '', '', '', NULL, NULL, 1),
('sk', 54, 'jarne-prazdniny', '', 'Jarné prázdniny', '', '', '', '', NULL, NULL, 1),
('sk', 55, 'vekonocne-prazdniny', '', 'Veľkonočné prázdniny', '', '', '', '', NULL, NULL, 1),
('sk', 56, 'letne-prazdniny', '', 'Letné prázdniny', '', '', '', '', NULL, NULL, 1),
('sk', 57, 'turnaje', '', 'Turnaje', '', '', '', '', NULL, NULL, 1),
('sk', 58, 'zapasy', '', 'Zápasy', '', '', '', '', NULL, NULL, 1),
('sk', 59, 'suaze', '', 'Súťaže', '', '', '', '', NULL, NULL, 1),
('sk', 60, 'vystupenia', '', 'Vystúpenia', '', '', '', '', NULL, NULL, 1),
('sk', 61, 'sustredenia', '', 'Sústredenia', '', '', '', '', NULL, NULL, 1),
('sk', 62, 'prezentacie', '', 'Prezentácie', '', '', '', '', '', '', 1),
('sk', 65, 'news', '', 'News', '', '', '', '', NULL, NULL, 1);

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
(33, 196, 1, 1, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `setting`
--

INSERT INTO `setting` (`id_setting`, `name`, `content`, `lang`) VALUES
(1, 'ionize_version', '1.0.7', ''),
(2, 'site_email', 'frank238238@gmail.com', ''),
(3, 'files_path', 'files', ''),
(4, 'theme', 'liba.th', ''),
(5, 'theme_admin', 'admin', ''),
(6, 'google_analytics', '', ''),
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
(29, 'filemanager_file_types', 'gif,jpe,jpeg,jpg,png,mpeg,mpg,mp3,pdf,xlsx', ''),
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
(42, 'last_notification_refresh', '2015-08-25 10:17:27', ''),
(43, 'last_version', '1.0.7', ''),
(44, 'meta_keywords', '', 'sk'),
(45, 'meta_description', '', 'sk'),
(46, 'google_analytics_id', '', ''),
(47, 'google_analytics_profile_id', '', ''),
(48, 'google_analytics_url', '', ''),
(49, 'google_analytics_email', 'admin', ''),
(50, 'google_analytics_password', '123456', ''),
(51, 'dashboard_google', '', ''),
(52, 'email_technical', '', ''),
(53, 'email_contact', 'frank238238@gmail.com', ''),
(54, 'email_info', '', ''),
(101, 'filemanager', 'mootools-filemanager', ''),
(135, 'site_title', 'My website', 'en'),
(136, 'media_thumb_unsharp', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=356 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `url`
--

INSERT INTO `url` (`id_url`, `id_entity`, `type`, `canonical`, `active`, `lang`, `path`, `path_ids`, `full_path_ids`, `creation_date`) VALUES
(35, 11, 'page', 1, 1, 'sk', 'kontakt', '11', '11', '2015-04-15 15:53:16'),
(41, 5, 'article', 1, 1, 'sk', 'slideshow/zapasy', '32/5', '32/5', '2015-04-17 10:59:47'),
(42, 6, 'article', 1, 1, 'sk', 'slideshow/turnaje', '32/6', '32/6', '2015-04-17 10:59:47'),
(43, 7, 'article', 1, 1, 'sk', 'slideshow/toto-je-nas-tim', '32/7', '32/7', '2015-04-17 10:59:47'),
(44, 32, 'page', 1, 1, 'sk', 'slideshow', '32', '32', '2015-04-17 11:04:07'),
(60, 19, 'page', 1, 1, 'sk', 'o-nas/clanky', '5/19', '5/19', '2015-04-20 13:51:14'),
(84, 4, 'page', 1, 1, 'sk', 'home', '4', '4', '2015-04-21 17:48:38'),
(108, 15, 'page', 1, 1, 'sk', 'o-nas/treneri', '5/15', '5/15', '2015-04-24 13:18:54'),
(109, 12, 'article', 1, 1, 'sk', 'o-nas/treneri/igor-liba', '5/15/12', '5/15/12', '2015-04-24 13:18:54'),
(129, 14, 'page', 1, 1, 'sk', 'o-nas/zoznam-hracov', '5/14', '5/14', '2015-04-24 17:06:35'),
(130, 11, 'article', 1, 1, 'sk', 'o-nas/zoznam-hracov/zoznam-hracov', '5/14/11', '5/14/11', '2015-04-24 17:06:35'),
(132, 13, 'page', 1, 1, 'sk', 'o-nas/filozofia-skoly', '5/13', '5/13', '2015-04-24 17:09:19'),
(133, 8, 'article', 1, 1, 'sk', 'o-nas/filozofia-skoly/filozofia-skoly-1', '5/13/8', '5/13/8', '2015-04-24 17:09:19'),
(136, 21, 'article', 1, 1, 'sk', 'o-nas/treneri/pavel-valko-st.', '5/15/21', '5/15/21', '2015-04-27 14:11:10'),
(137, 22, 'article', 1, 1, 'sk', 'o-nas/treneri/jaromir-dragan', '5/15/22', '5/15/22', '2015-04-27 14:13:09'),
(138, 23, 'article', 1, 1, 'sk', 'o-nas/treneri/slavomir-ilavsk', '5/15/23', '5/15/23', '2015-04-27 14:19:04'),
(147, 16, 'page', 1, 1, 'sk', 'o-nas/rozpis-treningov', '5/16', '5/16', '2015-04-27 17:19:33'),
(148, 25, 'article', 1, 1, 'sk', 'o-nas/rozpis-treningov/rozpis-treningov', '5/16/25', '5/16/25', '2015-04-27 17:19:34'),
(155, 21, 'page', 1, 1, 'sk', 'kodex-klubu/kodex-klubu', '6/21', '6/21', '2015-04-27 17:22:18'),
(156, 26, 'article', 1, 1, 'sk', 'kodex-klubu/kodex-klubu/kodex-klubu', '6/21/26', '6/21/26', '2015-04-27 17:22:18'),
(157, 27, 'article', 1, 1, 'sk', 'kodex-klubu/kodex-klubu/ulohy-trenerov', '6/21/27', '6/21/27', '2015-04-27 17:22:19'),
(165, 22, 'page', 1, 1, 'sk', 'kodex-klubu/desatoro-pre-rodicov', '6/22', '6/22', '2015-04-27 17:24:24'),
(166, 28, 'article', 1, 1, 'sk', 'kodex-klubu/desatoro-pre-rodicov/desatoro-pre-rodicov', '6/22/28', '6/22/28', '2015-04-27 17:24:24'),
(170, 18, 'page', 1, 1, 'sk', 'o-nas/prihlaska', '5/18', '5/18', '2015-05-06 15:14:28'),
(171, 29, 'article', 1, 1, 'sk', 'o-nas/prihlaska/prihlaska', '5/18/29', '5/18/29', '2015-05-06 15:14:28'),
(173, 17, 'page', 1, 1, 'sk', 'o-nas/specialne-brankarske-treningy', '5/17', '5/17', '2015-05-07 08:55:26'),
(174, 30, 'article', 1, 1, 'sk', 'o-nas/specialne-brankarske-treningy/specialne-treningy', '5/17/30', '5/17/30', '2015-05-07 08:55:26'),
(179, 23, 'page', 1, 1, 'sk', 'zapasy/zapasy', '7/23', '7/23', '2015-05-07 09:31:54'),
(187, 24, 'page', 1, 1, 'sk', 'zapasy/turnaje', '7/24', '7/24', '2015-05-07 09:44:03'),
(188, 34, 'article', 1, 0, 'sk', 'zapasy/turnaje/sezona-2014-2015', '7/24/34', '7/24/34', '2015-05-07 09:44:03'),
(191, 25, 'page', 1, 1, 'sk', 'zapasy/kempy', '7/25', '7/25', '2015-05-07 09:44:10'),
(192, 37, 'article', 1, 0, 'sk', 'zapasy/kempy/kempy', '7/25/37', '7/25/37', '2015-05-07 09:44:10'),
(225, 44, 'article', 1, 1, 'sk', 'kontakt/kontakt', '11/44', '11/44', '2015-05-07 12:49:07'),
(228, 20, 'page', 1, 1, 'sk', 'o-nas/reklamne-predmety', '5/20', '5/20', '2015-05-07 13:36:55'),
(229, 24, 'article', 1, 1, 'sk', 'o-nas/reklamne-predmety/reklamne-predmety', '5/20/24', '5/20/24', '2015-05-07 13:36:55'),
(248, 33, 'page', 1, 1, 'sk', 'sponsors', '33', '33', '2015-06-30 09:12:21'),
(250, 36, 'page', 1, 1, 'sk', 'home/zapasy/zapasy', '4/35/36', '4/35/36', '2015-07-20 10:50:40'),
(254, 37, 'page', 1, 1, 'sk', 'home/zapasy/turnaje', '4/35/37', '4/35/37', '2015-07-20 10:54:03'),
(255, 34, 'article', 1, 0, 'sk', 'zapasy/turnaje-1/sezona-2014-2015', '46/48/34', '46/48/34', '2015-07-20 10:54:08'),
(259, 38, 'page', 1, 1, 'sk', 'home/zapasy/kempy', '4/35/38', '4/35/38', '2015-07-20 10:56:10'),
(260, 37, 'article', 1, 1, 'sk', 'zapasy/kempy-1/kempy', '46/51/37', '46/51/37', '2015-07-20 10:56:15'),
(264, 40, 'page', 1, 1, 'sk', 'podujatia', '40', '40', '2015-07-20 11:00:11'),
(282, 46, 'page', 1, 1, 'sk', 'zapasy', '46', '46', '2015-07-20 11:06:13'),
(284, 48, 'page', 1, 1, 'sk', 'zapasy/turnaje-1', '46/48', '46/48', '2015-07-20 11:06:36'),
(287, 51, 'page', 1, 1, 'sk', 'zapasy/kempy-1', '46/51', '46/51', '2015-07-20 11:09:04'),
(315, 65, 'page', 1, 1, 'sk', 'news', '65', '65', '2015-07-21 12:25:56'),
(316, 69, 'article', 1, 1, 'sk', 'news/oznam', '65/69', '65/69', '2015-07-21 12:32:59'),
(317, 70, 'article', 1, 1, 'sk', 'news/oznam-1', '65/70', '65/70', '2015-07-21 12:39:16'),
(318, 71, 'article', 1, 1, 'sk', 'news/oznam-2', '65/71', '65/71', '2015-07-21 12:39:32'),
(319, 47, 'page', 1, 1, 'sk', 'zapasy/akcie', '46/47', '46/47', '2015-07-21 12:41:32'),
(320, 31, 'article', 1, 1, 'sk', 'zapasy/akcie/sezona-2014-2015', '46/47/31', '46/47/31', '2015-07-21 12:41:33'),
(323, 34, 'article', 1, 1, 'sk', 'zapasy/turnaje-1/poster', '46/48/34', '46/48/34', '2015-07-21 12:45:36'),
(326, 45, 'page', 1, 1, 'sk', 'dokumenty', '45', '45', '2015-07-21 13:20:39'),
(327, 67, 'article', 1, 0, 'sk', 'dokumenty/dokumenty', '45/67', '45/67', '2015-07-21 13:20:39'),
(328, 67, 'article', 1, 1, 'sk', 'dokumenty/prihlaska-na-zaujmovu-cinnost', '45/67', '45/67', '2015-07-22 08:15:09'),
(329, 74, 'article', 1, 1, 'sk', 'dokumenty/odhlaska-zo-zaujmovej-cinnosti', '45/74', '45/74', '2015-07-22 08:15:26'),
(330, 75, 'article', 1, 1, 'sk', 'dokumenty/vchovn-program', '45/75', '45/75', '2015-07-22 08:15:42'),
(331, 76, 'article', 1, 1, 'sk', 'dokumenty/plan-prace', '45/76', '45/76', '2015-07-22 08:15:54'),
(332, 77, 'article', 1, 1, 'sk', 'dokumenty/zriaovacia-listina', '45/77', '45/77', '2015-07-22 08:16:06'),
(333, 78, 'article', 1, 1, 'sk', 'dokumenty/skolska-rada', '45/78', '45/78', '2015-07-22 08:16:18'),
(336, 10, 'page', 1, 1, 'sk', 'fotogaleria', '10', '10', '2015-07-22 08:52:22'),
(337, 68, 'article', 1, 1, 'sk', 'fotogaleria/galeria', '10/68', '10/68', '2015-07-22 08:52:22'),
(338, 79, 'article', 1, 1, 'sk', 'fotogaleria/galeria-2', '10/79', '10/79', '2015-07-22 08:54:45'),
(340, 41, 'page', 1, 1, 'sk', 'podujatia-1', '40', '40/41', '2015-07-22 10:09:18'),
(341, 52, 'page', 1, 1, 'sk', 'podujatia/zimne-prazdniny', '40/52', '40/41/52', '2015-07-22 10:09:19'),
(342, 80, 'article', 1, 1, 'sk', 'podujatia/zimne-prazdniny/zimne-prazdniny', '40/52/80', '40/41/52/80', '2015-07-22 10:09:19'),
(343, 53, 'page', 1, 1, 'sk', 'podujatia/polrocne-prazdniny', '40/53', '40/41/53', '2015-07-22 10:09:19'),
(344, 54, 'page', 1, 1, 'sk', 'podujatia/jarne-prazdniny', '40/54', '40/41/54', '2015-07-22 10:09:19'),
(345, 55, 'page', 1, 1, 'sk', 'podujatia/vekonocne-prazdniny', '40/55', '40/41/55', '2015-07-22 10:09:19'),
(346, 56, 'page', 1, 1, 'sk', 'podujatia/letne-prazdniny', '40/56', '40/41/56', '2015-07-22 10:09:19'),
(347, 43, 'page', 1, 1, 'sk', 'podujatia-2', '40', '40/43', '2015-07-22 10:10:20'),
(348, 57, 'page', 1, 1, 'sk', 'podujatia/turnaje', '40/57', '40/43/57', '2015-07-22 10:10:20'),
(349, 58, 'page', 1, 1, 'sk', 'podujatia/zapasy', '40/58', '40/43/58', '2015-07-22 10:10:20'),
(350, 59, 'page', 1, 1, 'sk', 'podujatia/suaze', '40/59', '40/43/59', '2015-07-22 10:10:20'),
(351, 60, 'page', 1, 1, 'sk', 'podujatia/vystupenia', '40/60', '40/43/60', '2015-07-22 10:10:20'),
(352, 61, 'page', 1, 1, 'sk', 'podujatia/sustredenia', '40/61', '40/43/61', '2015-07-22 10:10:21'),
(353, 62, 'page', 1, 1, 'sk', 'podujatia/prezentacie', '40/62', '40/43/62', '2015-07-22 10:10:21'),
(354, 81, 'article', 1, 1, 'sk', 'podujatia/turnaje/turnaje', '40/57/81', '40/43/57/81', '2015-08-25 10:18:27'),
(355, 82, 'article', 1, 1, 'sk', 'podujatia/polrocne-prazdniny/polrocne-prazdniny', '40/53/82', '40/41/53/82', '2015-08-25 10:49:07');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `user`
--

INSERT INTO `user` (`id_user`, `id_role`, `join_date`, `last_visit`, `username`, `screen_name`, `firstname`, `lastname`, `birthdate`, `gender`, `password`, `email`, `salt`) VALUES
(1, 1, '2015-04-15 09:28:59', '2015-06-30 07:11:05', 'admin', 'admin admin', 'admin', 'admin', NULL, NULL, 'QYWmfVcmcZLZzhB1JcE=', 'frank238238@gmail.com', '0a72e12a518d9523'),
(2, 1, '2015-07-21 05:58:01', NULL, 'juraj.cangar@ness.com', 'Juraj Cangar', 'Juraj', 'Cangar', NULL, NULL, 'PZnzDI2u4AUbVc7Fpj+Y5g==', 'juraj.cangar@ness.com', '05adc88f0a8aaa1e');

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
MODIFY `id_article` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
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
MODIFY `id_media` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=197;
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
MODIFY `id_page` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
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
MODIFY `id_setting` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=137;
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
MODIFY `id_url` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=356;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
