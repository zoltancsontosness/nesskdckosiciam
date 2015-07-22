-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Út 21.Júl 2015, 14:27
-- Verzia serveru: 5.6.24
-- Verzia PHP: 5.6.8

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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article`
--

INSERT INTO `article` (`id_article`, `name`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `indexed`, `id_category`, `comment_allow`, `comment_autovalid`, `comment_expire`, `flag`, `has_url`, `priority`) VALUES
(1, '404', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-17 14:10:07', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(2, '401', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(3, '403', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(5, 'zapasy', 'admin', 'admin', '2015-04-17 10:51:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-17 10:57:36', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(6, 'turnaje', 'admin', 'admin', '2015-04-17 10:57:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-17 10:58:07', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(7, 'toto-je-nas-tim', 'admin', 'admin', '2015-04-17 10:58:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-17 10:59:04', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(8, 'filozofia-skoly-1', 'admin', 'admin', '2015-04-20 13:49:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 17:07:49', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(12, 'igor-liba', 'admin', 'admin', '2015-04-21 17:02:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-21 17:03:22', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(13, 'pavel-valko-st.', 'admin', 'admin', '2015-04-21 17:10:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 15:59:05', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(14, 'jaromir-dragan', 'admin', 'admin', '2015-04-21 17:12:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 13:42:28', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(15, 'uvod', 'admin', NULL, '2015-04-22 10:03:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-22 10:03:20', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(16, 'oznam-1', 'admin', 'admin', '2015-04-22 13:03:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 13:24:56', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(17, 'oznam', 'admin', 'admin', '2015-04-22 13:04:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 13:24:44', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(18, NULL, NULL, NULL, '2015-04-24 17:07:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 17:07:53', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(19, 'pavel-valko-st.-1', 'admin', 'admin', '2015-04-27 13:44:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 13:45:39', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(20, 'pavel-valko-st.-2', 'admin', NULL, '2015-04-27 13:46:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 13:46:19', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(21, 'pavel-valko-st.-3', 'admin', 'admin', '2015-04-27 14:11:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 08:54:56', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(22, 'jaromir-dragan-1', 'admin', 'admin', '2015-04-27 14:13:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 10:38:45', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(23, 'slavomir-ilavsk', 'admin', 'admin', '2015-04-27 14:19:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 10:39:49', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(25, 'rozpis-treningov', 'admin', 'admin', '2015-04-27 17:17:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:19:02', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(26, 'kodex-klubu', 'admin', 'admin', '2015-04-27 17:20:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:25:01', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(27, 'ulohy-trenerov', 'admin', 'admin', '2015-04-27 17:22:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:24:53', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(28, 'desatoro-pre-rodicov', 'admin', 'admin', '2015-04-27 17:23:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:24:45', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(29, 'prihlaska', 'admin', 'admin', '2015-05-06 10:47:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-06 15:13:12', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(30, 'specialne-treningy', 'admin', 'admin', '2015-05-07 08:54:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:06:39', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(31, 'sezona-2014-2015', 'admin', NULL, '2015-05-07 09:29:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:29:43', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(32, 'sezona-2013-2014', 'admin', NULL, '2015-05-07 09:30:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:30:57', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(33, 'sezona-2012-2013', 'admin', NULL, '2015-05-07 09:39:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:39:22', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(34, 'sezona-2014-2015-1', 'admin', NULL, '2015-05-07 09:40:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:40:48', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(35, 'sezona-2013-2014-1', 'admin', NULL, '2015-05-07 09:41:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:41:13', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(36, 'sezona-2012-2013-1', 'admin', NULL, '2015-05-07 09:41:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:41:36', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(38, '2-z-dani', 'admin', 'admin', '2015-05-07 09:48:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:50:39', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(39, '17.04.2014-vekonocn-turnaj-caa-chlapci-skupina-1', 'admin', 'admin', '2015-05-07 10:06:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:17:37', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(40, 'medzinarodn-hokejov-turnaj-miskolc-07.04.2014', 'admin', 'admin', '2015-05-07 10:57:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-22 10:17:59', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(41, 'skupina-4', 'admin', NULL, '2015-05-07 11:00:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 11:00:03', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(42, 'letn-hokejov-kemp-2014', 'admin', 'admin', '2015-05-07 11:01:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 11:01:22', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(43, 'mikulas-2013', 'admin', 'admin', '2015-05-07 11:02:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 11:03:08', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(44, 'kontakt', 'admin', 'admin', '2015-05-07 12:49:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 13:44:12', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
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
(61, 'hgdhgd', 'admin', NULL, '2015-06-30 11:53:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-30 11:53:08', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(62, 'skupina-1', 'admin', 'admin', '2015-07-15 16:29:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 10:48:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(63, 'skupina-2', 'admin', 'admin', '2015-07-15 16:30:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 10:47:49', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(64, 'turnaj-o-pohar-starostu-obce-caa-skupina', 'admin', 'admin', '2015-07-16 15:37:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-16 16:07:46', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(65, 'novoro-ny-turnaj-skupina-2', 'admin', 'admin', '2015-07-16 16:08:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-17 07:14:32', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(66, 'rusnak-liba-lukac.-utok-ktor-velebil-aj-tichonov', 'admin', 'admin', '2015-07-17 10:56:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-17 10:56:43', '2015-04-21 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(67, 'igor-liba-vychovava-aj-baletky.-mesto-mu-zrejme-znizi-najomne', 'admin', 'admin', '2015-07-17 10:56:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-17 10:57:13', '2015-04-20 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(68, 'gretzky-m-stval-nechtl-jit-na-pivo-vzpomina-liba-na-legendu', 'admin', 'admin', '2015-07-17 10:58:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-17 10:58:36', '2015-04-09 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(69, 'lorem-ipsum', 'admin', 'admin', '2015-07-20 08:11:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 08:43:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(70, 'lorem-ipsum1', 'admin', 'admin', '2015-07-20 09:05:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-17 14:10:07', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(71, 'desatoro-pre-rodicov-1', 'admin', NULL, '2015-07-20 10:18:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 10:18:56', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(72, 'sezona-2014-2015-2', 'admin', NULL, '2015-07-20 12:32:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 12:32:29', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(73, 'sezona-2013-2014-2', 'admin', NULL, '2015-07-20 12:34:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 12:34:37', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(74, 'sezona-2014-2015-3', 'admin', NULL, '2015-07-20 12:49:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 12:49:40', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(75, 'apparel', 'admin', 'admin', '2015-07-20 14:54:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 15:05:59', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(76, 'souvenirs', 'admin', NULL, '2015-07-20 14:55:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 14:55:39', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(77, 'other', 'admin', NULL, '2015-07-20 15:14:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 15:14:41', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(78, 'letn-hokejov-kemp-2014-1', 'admin', 'admin', '2015-07-20 15:31:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 15:35:49', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(79, 'severim-gonci', 'admin', 'admin', '2015-07-21 08:15:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 08:16:28', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(80, 'pavol-valko-ml.', 'admin', NULL, '2015-07-21 08:17:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 08:17:07', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(81, 'tomas-bugos', 'admin', NULL, '2015-07-21 08:18:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 08:18:01', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(82, 'diana-riskova-krasokorcuovanie', 'admin', NULL, '2015-07-21 08:18:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 08:18:48', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(83, 'lucia-kupcova-krasokorcuovanie', 'admin', NULL, '2015-07-21 08:19:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 08:19:32', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(84, 'alexandra-dulakova-krasokorcuovanie', 'admin', NULL, '2015-07-21 08:20:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 08:20:31', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(85, 'mirka-lipcakova-krasokorcuovanie', 'admin', NULL, '2015-07-21 08:21:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 08:21:20', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(86, 'skupina-3', 'admin', 'admin', '2015-07-21 10:44:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 10:48:10', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(87, 'skupina-5', 'admin', 'admin', '2015-07-21 10:47:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 10:48:22', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5);

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
(1, 'sk', '404', '404', '', '', '<p>Ľutujeme. Stránka, ktorú sa pokúšate otvoriť sa nenašla.</p>', '', '', 1),
(2, 'sk', '401', '401', 'Please login', NULL, '<p>Please login to see this content.</p>', NULL, NULL, 1),
(3, 'sk', '403', '403', 'Forbidden', NULL, '<p>This content is forbidden.</p>', NULL, NULL, 1),
(5, 'sk', 'zapasy', 'Zápasy', '', '', '', '', '', 1),
(6, 'sk', 'turnaje', 'Turnaje', '', '', '', '', '', 1),
(7, 'sk', 'toto-je-nas-tim', 'Toto je náš tím', '', '', '', '', '', 1),
(8, 'sk', 'filozofia-skoly-1', 'Filozofia školy', '', '', '<p>Tak ako v zahraničí existuje veľa mimoklubových výberov, aj na Slovensku začína fungovať mnoho výberov hráčov rôznych ročníkov, niektoré fungujú skvele, iné horšie. Našou prioritou je podpora talentovaných jedincov zo širokej športovej oblasti od útleho veku, ktorí majú o svoj športový rast predovšetkým vlastný záujem, bez ohľadu na klubovú príslušnosť. Jedná sa o celoročnú spoluprácu vhodne doplňujúcu "klubové povinosti" bez konfliktu.</p>\n<p>Týmto športovcom sa Hockey Liba Academy bude snažiť vytvárať čo najoptimálnejšie podmienky na rozvíjanie ich talentu nasledujúcimi spôsobmi:</p>\n<ul class="liba">\n<li>rôznymi formami tréningov</li>\n<li>organizovaním campov</li>\n<li>sústredeniami</li>\n<li>individuálnou prípravou</li>\n<li>poradenskou činnosťou</li>\n<li>zdravotnými prehliadkami</li>\n</ul>\n<p>Budeme sa snažiť prezentovať ich talent na kvalitných slovenských i medzinárodných akciách.</p>\n<p></p>\n<p><strong>Hokejová akadémia Igora Libu</strong> je špeciálne zameraná na mladých hráčov hneď od začiatku ich hokejového vývoja, tak, aby získali čo najlepšie návyky pre svoj hokejový rast.</p>\n<ul class="liba">\n<li>Ponúkame komplexnú starostlivosť v najrýchlejšom tímovom športe na svete</li>\n<li>U nás môžete očakávať pozitívny prístup trénerov. Našou snahou je, aby sa každý hráč v našej akadémii cítil dobre, zbavil sa strachu z chýb, ktorých sa všetci zákonite v priebehu učenia nových zručností dopúšťame.</li>\n<li>Trpezlivá práca s každým. Našou snahou je vytvoriť v jej priebehu dostatok času a priestoru na učenie sa novým hokejovým schopnostiam, ich opakovanie a zdokonaľovanie. Iba tak môže každý získať a následne rozvíjať správne pohybové a herné návyky, ktoré mu neskôr umožní jeho ďalší hokejový rast</li>\n<li>Odovzdávanie najnovších poznatkov a použitie efektívnych metód tréningu z celého sveta</li>\n<li>Svojím individuálnym prístupom sa snažíme u chlapcov aj dievčat o čo najväčšie posilnenie sebadôvery. Tým, že každému pomôžeme uvedomiť si svoje prednosti a spoznať svoje nedostatky mu umožníme, aby mohol sám svoje prednosti ďalej rozvíjať a svoje nedostatky postupne odstraňovať. Samozrejmosťou je potom plné rešpektovanie vekovej a výkonnostnej úrovne každého hráča.</li>\n<li>Podrobne sa zoznámite s našim individuálnym tréningovým procesom a môžete tak niektoré veci rozvíjať aj Vy mimo tréningový proces v domácich podmienkach</li>\n</ul>', NULL, NULL, 1),
(12, 'sk', 'igor-liba', 'Igor LIBA', '', '', '<p>Často považovaný za najvšestrannejšieho česko-slovenského hokejistu 80. rokov – výborný korčuliar, fyzicky i technicky dokonale vybavený s vyváženou útočnou a obrannou činnosťou.</p>\n<p>S hokejom začínal ako desaťročný, je odchovancom klubu ZPA Prešov. Hráč VSŽ Košice, Dukly Jihlava, Zelttwegu a HK Spišská Nová Ves. V NHL hráč Minnesota North Stars, Los Angeles Kings (kde jeho spoluhráčom v útoku bol fenomenálny Wayne Gretzky), New York Rangers. Bol draftovaný v roku 1983 tímom Calgary Flames v 5. kole z 91. miesta.</p>\n<p>Je držiteľom striebornej medaily zo ZOH 1984 a bronzovej zo ZOH 1992. Majster sveta 1985, strieborný z MS 1982 – 83. Reprezentačný dres ČSSR obliekol 211-krát, najviac spomedzi všetkých slovenských hráčov. Tromfol hokejistu storočia Dzurillu, legendárneho Golonku, Pašeka, Rusnáka i Lukáča. Raz (v roku 1993 proti Francúzom) nastúpil aj v reprezentačnom tíme Slovenska. Na Majstrovstvách sveta 1985 prispel významným spôsobom k zlatej medaile.</p>\n<p>V oranžovo - čiernom drese Košíc sa dvakrát radoval z československého titulu (1986 a 1988). V roku 1999 sa dočkal aj titulu majstra Slovenska, keď dokázal zomknúť partiu proti bratislavskému Slovanu. Vtedy si ako prvý mohol so slzami v očiach poťažkať nový pohár určený pre víťaza extraligy. Počas kariéry ho sprevádzalo číslo 11. Nosil ho nielen v reprezentácii, ale aj v spomínaných Košiciach a nevynechal ani zahraničie. Iba v zámorí mu prischli čísla 26 respektíve 23.</p>', '', '', 1),
(13, 'sk', 'pavel-valko-st.', 'Pavel VALKO st.', '', '', '<p>Hráčska kariéra:<br />1. Československá liga – Košice (1985 až 1987 a 1989 až 1993), Trenčín ( 1987 až 1989 )<br />2. Slovenská liga – Košice (1993 až 1997), Nitra, Skalica<br />3. Česká liga - Znojmo, Zlín ( 1999 až 2001 ) <br />4. Švédska liga - Karlskrona, Motal<br />5. Anglická liga – Romford<br />6. Maďarská liga – Szekesfehervar<br />7. Rumunská liga – Mercuria Ciuc<br /><br />Reprezentácia:<br />1. ME 18 ( za Československo ) – 3. miesto ( Duseldorf – Nemecko )<br />2. MS 20 ( za Československo ) – 4. miesto ( Moskva )<br />3. 3 štarty za Slovensko <br /><br />Úspechy:<br />1. Majster Československa – VSŽ Košice – 1986<br />2. 2. miesto ( Československá liga ) – Trenčín – 1989<br />3. Majster Slovenska – HC Košice – 1995 a 1996<br />4. 1. miesto ( Švédska liga ) – Karlskrona – 2006<br />5. 1. miesto ( Maďarská liga ) – Szekesfehervar <br />6. 1. miesto ( Rumunska liga ) – Mercuria Ciuc <br /><br />Trénerska kariéra:<br />- seniori Michalovce<br />- juniori Motala Švédsko<br />- dorast Trebišov<br />- dorast Romford Anglicko</p>', '', '', 1),
(14, 'sk', 'jaromir-dragan', 'Jaromír Dragan', '', '', '<p>- bývalý slovenský hokejový brankár <br /><br />Hráčska kariera: <br />Liptovský Mikuláš, Slovan Bratislava, Topoľčany, Košice, Zvolen, Zlin, Ferencvaros Budapešť <br />Reprezentácia: <br />1992 za Česko-Slovensko bronz na zimných olympijských hrách v Albertville. Za slovenskú reprezentáciu odohral celkom 56 zápasov. Na majstrovstvách sveta v roku 1995, kedy Slovensko hralo ešte v skupine B, dopomohol k postupu do najvyššej skupiny po výhre 4:3 nad Lotyšskom.<br /><br />MS: <br />1996 10. miesto<br />1997 9. miesto<br /><br />ZOH: <br />1992 3. miesto<br />1994 6. miesto<br /><br />OCENENIA: 1995/1996 najlepší hokejista Slovenska<br /><br />Prehľad medailí: <br />BRONZ ZOH 1992 ČSFR<br />ZLATO MS skupiny C 1994<br />MS skupiny B 1995<br />Československá liga 1987/1988<br />Slovenská liga 1994/1995, 1995/1996<br /><br />TRENERSKA KARIERA:<br />1999 – 2006 HC Košice tréner mládeže ,/ žiaci, juniori, brankári <br />2006 – 2007 MHC Martin tréner mládeže , / dorast, brankári /<br />2007 – 2008 HC Nitra tréner mládeže , / juniori, brankári /<br />2008 – 2011 PHK Prešov tréner mládeže, / žiaci, dorast, juniori <br />2003 – 2009 Reprezentácia SR / tréner brankárov SR 16,17, 18 </p>', '', '', 1),
(15, 'sk', 'uvod', 'Úvod', '', '', '<p>Stiahnite si: <strong>VYHLÁSENIE o poukázaní sumy do výšky 2% (3 %) zaplatenej dane</strong> <a href="http://www.igorliba.sk/documents/vyhlasenie_2perc_2014-editovatelne.rtf" target="_blank">word dokument</a>, <a href="http://www.igorliba.sk/documents/vyhlasenie_2perc_2014-editovatelne-2.pdf" target="_blank">pdf dokument</a><br /><br />Rozpis tréningov od 3. 11. 2014 </p>\n<table border="1" cellpadding="3" align="center" class="center" id="trainings">\n<thead>\n<tr align="center" valign="middle" class="center">\n<td align="center" valign="middle" class="center"></td>\n<th align="center" valign="middle">8:00-9:15</th><th align="center" valign="middle">9:30-10:30</th><th align="center" valign="middle">10:45-11:45</th><th align="center" valign="middle">12:00-13:00</th><th align="center" valign="middle">15:15-16:15</th><th align="center" valign="middle">16:30-17:30</th><th align="center" valign="middle">20:15-21:15</th></tr>\n</thead>\n<tbody>\n<tr>\n<td>Pondelok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Utorok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Streda</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Štvrtok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Piatok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Sobota</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n</tr>\n<tr>\n<td>Nedeľa</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n</tr>\n</tbody>\n</table>\n<p><br />POZOR, v nedeľu možné zmeny podľa zápasov hokejových prípraviek HP 5,<br />zmeny budú oznamované prostredníctvom web. stránky a facebooku.</p>\n<p></p>\n<p>Zmeny tréningov - apríl 2015 </p>', NULL, NULL, 1),
(16, 'sk', 'oznam-1', 'Oznam', '', '', 'Dňa 28.03.2015 sa uskutoční turnaj v Sabinove. Skupina 1. Zraz o 6:00 hod pred zimným štadiónom v Čani. ', '', '', 1),
(17, 'sk', 'oznam', 'Oznam', '', '', 'Dňa 7.4.2015 z dôvodu konania Veľkonočného turnaja skupina 3 (15:15 hod.) nebude mať tréning.', '', '', 1),
(19, 'sk', 'pavel-valko-st.-1', 'Pavel VALKO st.', '', '', '<p>- bývalý slovenský hokejový brankár <br /><br />Hráčska kariera: <br />Liptovský Mikuláš, Slovan Bratislava, Topoľčany, Košice, Zvolen, Zlin, Ferencvaros Budapešť <br />Reprezentácia: <br />1992 za Česko-Slovensko bronz na zimných olympijských hrách v Albertville. Za slovenskú reprezentáciu odohral celkom 56 zápasov. Na majstrovstvách sveta v roku 1995, kedy Slovensko hralo ešte v skupine B, dopomohol k postupu do najvyššej skupiny po výhre 4:3 nad Lotyšskom.<br /><br />MS: <br />1996 10. miesto<br />1997 9. miesto<br /><br />ZOH: <br />1992 3. miesto<br />1994 6. miesto<br /><br />OCENENIA: 1995/1996 najlepší hokejista Slovenska<br /><br />Prehľad medailí: <br />BRONZ ZOH 1992 ČSFR<br />ZLATO MS skupiny C 1994<br />MS skupiny B 1995<br />Československá liga 1987/1988<br />Slovenská liga 1994/1995, 1995/1996<br /><br />TRENERSKA KARIERA:<br />1999 – 2006 HC Košice tréner mládeže ,/ žiaci, juniori, brankári <br />2006 – 2007 MHC Martin tréner mládeže , / dorast, brankári /<br />2007 – 2008 HC Nitra tréner mládeže , / juniori, brankári /<br />2008 – 2011 PHK Prešov tréner mládeže, / žiaci, dorast, juniori <br />2003 – 2009 Reprezentácia SR / tréner brankárov SR 16,17, 18 </p>', '', '', 1),
(20, 'sk', 'pavel-valko-st.', 'Pavel VALKO st.', '', '', '<p>- bývalý slovenský hokejový brankár <br /><br />Hráčska kariera: <br />Liptovský Mikuláš, Slovan Bratislava, Topoľčany, Košice, Zvolen, Zlin, Ferencvaros Budapešť <br />Reprezentácia: <br />1992 za Česko-Slovensko bronz na zimných olympijských hrách v Albertville. Za slovenskú reprezentáciu odohral celkom 56 zápasov. Na majstrovstvách sveta v roku 1995, kedy Slovensko hralo ešte v skupine B, dopomohol k postupu do najvyššej skupiny po výhre 4:3 nad Lotyšskom.<br /><br />MS: <br />1996 10. miesto<br />1997 9. miesto<br /><br />ZOH: <br />1992 3. miesto<br />1994 6. miesto<br /><br />OCENENIA: 1995/1996 najlepší hokejista Slovenska<br /><br />Prehľad medailí: <br />BRONZ ZOH 1992 ČSFR<br />ZLATO MS skupiny C 1994<br />MS skupiny B 1995<br />Československá liga 1987/1988<br />Slovenská liga 1994/1995, 1995/1996<br /><br />TRENERSKA KARIERA:<br />1999 – 2006 HC Košice tréner mládeže ,/ žiaci, juniori, brankári <br />2006 – 2007 MHC Martin tréner mládeže , / dorast, brankári /<br />2007 – 2008 HC Nitra tréner mládeže , / juniori, brankári /<br />2008 – 2011 PHK Prešov tréner mládeže, / žiaci, dorast, juniori <br />2003 – 2009 Reprezentácia SR / tréner brankárov SR 16,17, 18 </p>', NULL, NULL, 1),
(21, 'sk', 'pavel-valko-st.', 'Pavel VALKO st.', '', '', '<p><strong>Hráčska kariéra:</strong></p>\n<ol>\n<li>Československá liga – Košice (1985 až 1987 a 1989 až 1993), Trenčín ( 1987 až 1989 )</li>\n<li>Slovenská liga – Košice (1993 až 1997), Nitra, Skalica</li>\n<li>Česká liga - Znojmo, Zlín ( 1999 až 2001 ) </li>\n<li>Švédska liga - Karlskrona, Motal</li>\n<li>Anglická liga – Romford</li>\n<li>Maďarská liga – Szekesfehervar</li>\n<li>Rumunská liga – Mercuria Ciuc</li>\n</ol>\n<p><strong>Reprezentácia:</strong></p>\n<ol>\n<li>ME 18 ( za Československo ) – 3. miesto ( Duseldorf – Nemecko )</li>\n<li>MS 20 ( za Československo ) – 4. miesto ( Moskva )</li>\n<li>3 štarty za Slovensko </li>\n</ol>\n<p><strong>Úspechy:</strong></p>\n<ul>\n<li>Majster Československa – VSŽ Košice – 1986</li>\n<li>2. miesto ( Československá liga ) – Trenčín – 1989</li>\n<li>Majster Slovenska – HC Košice – 1995 a 1996</li>\n<li>1. miesto ( Švédska liga ) – Karlskrona – 2006</li>\n<li>1. miesto ( Maďarská liga ) – Szekesfehervar </li>\n<li>1. miesto ( Rumunska liga ) – Mercuria Ciuc </li>\n</ul>\n<p><strong>Trénerska kariéra:</strong></p>\n<ul>\n<li>seniori Michalovce</li>\n<li>juniori Motala Švédsko</li>\n<li>dorast Trebišov</li>\n<li>dorast Romford Anglicko</li>\n</ul>', '', '', 1),
(22, 'sk', 'jaromir-dragan', 'Jaromír Dragan', '', '', '<ul>\n<li>bývalý slovenský hokejový brankár </li>\n</ul>\n<p><strong>Hráčska kariera: </strong><br />Liptovský Mikuláš, Slovan Bratislava, Topoľčany, Košice, Zvolen, Zlin, Ferencvaros Budapešť <br /><strong>Reprezentácia:</strong></p>\n<ul>\n<li>1992 za Česko-Slovensko bronz na zimných olympijských hrách v Albertville. Za slovenskú reprezentáciu odohral celkom 56 zápasov. Na majstrovstvách sveta v roku </li>\n<li>1995, kedy Slovensko hralo ešte v skupine B, dopomohol k postupu do najvyššej skupiny po výhre 4:3 nad Lotyšskom.</li>\n</ul>\n<p>MS: </p>\n<ul>\n<li>1996 10. miesto</li>\n<li>1997 9. miesto</li>\n</ul>\n<p>ZOH: </p>\n<ul>\n<li>1992 3. miesto</li>\n<li>1994 6. miesto</li>\n</ul>\n<p>OCENENIA: 1995/1996 najlepší hokejista Slovenska<br /><br /><strong>Prehľad medailí:</strong></p>\n<ul>\n<li>BRONZ ZOH 1992 ČSFR</li>\n<li>ZLATO MS skupiny C 1994</li>\n<li>MS skupiny B 1995</li>\n<li>Československá liga 1987/1988</li>\n<li>Slovenská liga 1994/1995, 1995/1996</li>\n</ul>\n<p><strong>TRENERSKA KARIERA:</strong></p>\n<ul>\n<li>1999 – 2006 HC Košice tréner mládeže ,/ žiaci, juniori, brankári </li>\n<li>2006 – 2007 MHC Martin tréner mládeže , / dorast, brankári /</li>\n<li>2007 – 2008 HC Nitra tréner mládeže , / juniori, brankári /</li>\n<li>2008 – 2011 PHK Prešov tréner mládeže, / žiaci, dorast, juniori /</li>\n<li>2003 – 2009 Reprezentácia SR / tréner brankárov SR 16,17, 18</li>\n</ul>', '', '', 1),
(23, 'sk', 'slavomir-ilavsk', 'Slavomír Ilavský', '', '', '<p><strong>Hráčska kariéra:</strong></p>\n<ul>\n<li>Československá liga - -3 sezóny VSŽ Košice</li>\n<li>Slovenska liga - -5 sezón HC Košice</li>\n<li>Švédsko</li>\n<li>Francúzsko</li>\n<li>Rumunsko</li>\n<li>Reprezentácia Slovenska - 24 zápasov</li>\n<li>Taliánsky pohár 1993</li>\n<li>Tele Cup Nórsko 1993</li>\n<li>Svetový pohár Canada-USA 1996</li>\n<li>Úspechy - majster Slovenska HC Košice 1995,1996,1999</li>\n<li>majster Rumunska 2007</li>\n<li>All Stars Slovenska - stredný útočník 1995-1996</li>\n</ul>\n<p><strong>Trénerska kariéra:</strong></p>\n<ul>\n<li>CS Megeve - mládež</li>\n<li>CO Courbevoie - seniori a mládež</li>\n</ul>', '', '', 1),
(25, 'sk', 'rozpis-treningov', 'Rozpis tréningov', '', '', '<p></p>\n<table border="1" cellpadding="3" align="center" class="center" id="trainings">\n<thead>\n<tr align="center" valign="middle" class="center">\n<td align="center" valign="middle" class="center"></td>\n<th align="center" valign="middle">8:00-9:15</th><th align="center" valign="middle">9:30-10:30</th><th align="center" valign="middle">10:45-11:45</th><th align="center" valign="middle">12:00-13:00</th><th align="center" valign="middle">15:15-16:15</th><th align="center" valign="middle">16:30-17:30</th><th align="center" valign="middle">20:15-21:15</th></tr>\n</thead>\n<tbody>\n<tr>\n<td>Pondelok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Utorok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Streda</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td></td>\n</tr>\n<tr>\n<td>Štvrtok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Piatok</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n</tr>\n<tr>\n<td>Sobota</td>\n<td></td>\n<td></td>\n<td></td>\n<td></td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n</tr>\n<tr>\n<td>Nedeľa</td>\n<td>x</td>\n<td>x</td>\n<td></td>\n<td></td>\n<td>x</td>\n<td>x</td>\n<td>x</td>\n</tr>\n</tbody>\n</table>', '', '', 1),
(26, 'sk', 'kodex-klubu', 'Kódex rodičov', '', '', '<ol>\n<li>Dávajú prednosť dlhodobému a zdravému športovému vývoju dieťaťa pred vlastnými ambíciami.</li>\n<li>Umožňujú svojim deťom vykonávať aj iné aktivity,veľmi dôležitá je regenerácia.</li>\n<li>Nenútia deti do športových výkonov proti ich vôli.Deti by mali športovať pre svoje vlastné potešenie,hra je určená pre deti ,nie pre rodičov.</li>\n<li>Kladú dôraz na správnu životosprávu detí,nechajú riadne doliečiť zranenia,choroby i drobné nachladenia.</li>\n<li>Pri zápasoch deťom fandia a aktívne ich povzbudzujú.Ak chcú ,aby deti hrali ako tím,musia rodičia vystupovať tiež ako tím.</li>\n<li>Zdôrazňujú vplyv poctivého tréningu na výkon dieťaťa v zápase.</li>\n<li>Trénerovi dôverujú ,deťom nedávajú pokyny v rozpore s pokynmi trénera a neznižujú jeho autoritu.</li>\n<li>Nikdy nezasahajú do kompetencií trénera pri tréningu a zápase.Nevstupujú do priestorov striedačiek a nevynucujú si zaradenie svojho dieťaťa do zostavy.</li>\n<li>Nepostávajú pri mantineli a nevolajú svoje dieťa po rady.Nepokrikujú po rozhodcoch.</li>\n<li>Pokiaľ majú výhrady,riešia ich najprv s hlavným trénerom a potom s vedením klubu.</li>\n<li>Slušne sa vyjadruje a nepoužíva vulgarizmy.</li>\n</ol>', '', '', 1),
(27, 'sk', 'ulohy-trenerov', 'Úlohy trénerov', '', '', '<ol>\n<li>Organizujú a vedú tréningový proces pridelených mužstiev v LIBA ACADEMY 11.</li>\n<li>Spolupracujú s ostatnými trénermi mládežnickych mužstiev,podľa možností ich prípravu a zápasy.</li>\n<li>Sledujú prospech v škole a udržujú kontakt s rodičmi.</li>\n<li>Vedú pridelené mužstvo v zápase,určujú zostavu a nasadzovanie hráčov.Iba tréner je oprávnený udeľovať zaväzné pokyny vedúcim mužstva a jeho hráčom.</li>\n<li>Dbajú o zdravie a fyzickú pripravenosť členov svojho mužstva,vedú ich k dodržiavaniu životosprávy,výživy,hygieny,regenerácie,rehabilitácie a športovej etiky.</li>\n<li>Pracujú na zdokonaľovaní tréningových metód a sú príkladom pre svojich hráčov.</li>\n<li>Uverňujú na internetových stránkach LIBA ACADEMY 11 týždenné plány mužstiev/prehľad zápasov,výsledkov,termínov zrazov,aktuálne informácie atď/</li>\n<li>Usilujú sa o spravodlivosť,čo sa týka sympatií a pozornosti.</li>\n<li>Budovať u hráčov sebadôveru ale aj sebakontrolu.</li>\n<li>Učiť umeniu koncentrácie a relaxácie.</li>\n<li>Slušne sa vyadruje a nepoužíva vulgarizmy</li>\n</ol>', '', '', 1),
(28, 'sk', 'desatoro-pre-rodicov', 'Desatoro pre rodičov', '', '', '<ol>\n<li>Pozitívne motivovať chlapcov pred tréningom a nezaťažovať ich radami, čo majú robiť.</li>\n<li>Po tréningu pochváliť a povzbudiť bez ohľadu na výkon chlapca.</li>\n<li>Nezasahovať do činnosti trénera pri tréningu a zápase.</li>\n<li>Nevynucovať si zaradenie svojho syna do zostavy.</li>\n<li>Nepostávať pri mantineloch, nevolať chlapcov a neradiť im.</li>\n<li>Nevstupovať do priestorov striedačky a do priestorov šatní.</li>\n<li>Nepokrikovať na rozhodcov.</li>\n<li>Nenosiť chlapcom výstroj.</li>\n<li>Nenarušovať dochádzku na tréningy a zápasy počas víkendov (odchod na chaty a výlety...)</li>\n<li>Nezabúdať na pravidelnú kontrolu výstroja a svojho syna (ribaná, dresy, korčule...)</li>\n</ol>\n<p><br />Čas strávený s Vašimi deťmi počas tréningov a zápasov bude pre všetkých príjemný. Majte na pamäti, že sú to len Vaše deti.</p>', '', '', 1),
(29, 'sk', 'prihlaska', 'Prihláška', '', '', '<p>Sme radi, že ste sa rozhodli sa k nám pridať.</p>', '', '', 1),
(30, 'sk', 'specialne-treningy', 'špeciálne tréningy', '', '', '<p><strong>Špeciálne brankárske tréningy pod vedením Jaromíra Dragana</strong><br /><br />- maximálny počet brankárov = 12<br /><br /></p>\n<table>\n<tbody>\n<tr>\n<td>Cena:</td>\n<td>brankár - 10 Eur ( brankár našej akadémie - 5 Eur )</td>\n</tr>\n<tr>\n<td> </td>\n<td>strelec - 5 Eur</td>\n</tr>\n</tbody>\n</table>\n<p><br />Ukážka tréningu: <a href="http://www.youtube.com/watch?v=b8dNsaqRlnM&amp;feature=youtu.be" target="_blank">video</a><br /><br />Kto má záujem o tento špeciálny tréning (brankársky alebo strelecký), prosím vyplnite nasledujúcu prihlášku. Ak sa jedná o neplnoletú osobu, je nutné vyplniť aj informácie o zákonnom zástupcovi.</p>\n<p><strong>Sme radi, že ste sa rozhodli sa k nám pridať.</strong></p>', NULL, NULL, 1),
(31, 'sk', 'sezona-2014-2015', 'Sezóna 2014/2015', '', '', '<p>30.10.2014 - L.A.11 - ICE DREAM (7:5), skupina 3.4</p>\n<p>09.11.2014 - L.A.11 - ICE DREAM (3:3), skupina 3</p>\n<p>23.11.2014 - L.A.11 - ICE DREAM (8:6), skupina 3</p>\n<p>04.12.2014 - L.A.11 - ICE DREAM (6:3), skupina 3</p>\n<p>14.12.2014 - L.A.11 - Gelnica(3:4pp), skupina 3</p>\n<p>30.12.2014 - L.A.11 - HC Košice; priateľský zápas, HP5(skupina A: 5:8; skupina B: 7:4; celkove skóre 12:12 ; Trestné strieľanie: 8:6)</p>\n<p>18.1.2015 - L.A.11 - Sabinov, konfrontačný trojzápas, skupina 3 2:5 / L.A.11 - Ice Dream 5:3 / L.A.11 - Gelnica 3:5</p>', NULL, NULL, 1),
(32, 'sk', 'sezona-2013-2014', 'Sezóna 2013/2014', '', '', '<p>11.04.2014 - L.A.11 - ICE DREAM Košice (10:2), skupina 3</p>\n<p>21.02.2014 - L.A.11 - Dudince, Zápas legiend - <a href="https://www.youtube.com/watch?v=edSynpP1_3E&amp;feature=youtu.be" target="_blank">video</a>, <a href="http://www.igorliba.sk/fotogaleria-21-2-2014-zapas-legiend">galéria</a></p>\n<p>Sezóna 2013/2014 - L.A.11- AHL, <a href="http://www.igorliba.sk/documents/uploads/Zapasy%20Tabulka%204%20skupina.doc" target="_blank">skupina 4 - tabuľka</a></p>\n<p>03.02.2014 - L.A.11 - Sabinov ( 1:2 ), skupina 3</p>\n<p>03.02.2014 - L.A.11 - Gelnica ( 6:0 ), skupina 3</p>\n<p>18.01.2014 - L.A.11 - Sabinov ( 0:4 ), skupina 3</p>\n<p>18.01.2014 - L.A.11 - ICE Dream Košice ( 6:0 ), skupina 3</p>\n<p>06.01.2014 - L.A.11 - Sabinov ( 10:5 ), skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-cana-060114">galéria</a></p>\n<p>06.01.2014 - L.A.11 - Gelnica ( 0:8 ), skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-cana-060114">galéria</a></p>\n<p>19.12.2013 - L.A.11 - Gelnica ( 6:1 ), skupina 2</p>\n<p>14.12.2013 - L.A.11 - Michalovce ( vyhrali L.A.11 ), skupina 2</p>\n<p>07.12.2013 - L.A.11 - ICE DREAM Košice ( 5:4 ), skupina 3</p>\n<p>30.11.2013 - L.A.11 - ICE DREAM Košice ( 6:1 ), skupina 3</p>\n<p>26.09.2013 - L.A.11 - Black Wolves Košice ( 4:5 ), skupina 2</p>\n<p>19.09.2013 - L.A.11 - Black Wolves Košice ( 3:6 ), skupina 1 - najmenší odohrali svoj prvý zápas</p>\n<p>12.09.2013 - L.A.11 - Black Wolves Košice ( 4:6 ), skupina 2</p>', NULL, NULL, 1),
(33, 'sk', 'sezona-2012-2013', 'Sezóna 2012/2013', '', '', '<p>14.03.2013 - L.A.11 - AHK Sokoľany, skupina C - chlapci vyhrali svoj prvý zápas</p>\n<p>02.03.2013 - L.A.11 - Spišská Nová Ves, skupina B</p>\n<p>22.02.2013 - L.A.11 - Gelnica, skupina C</p>\n<p>22.02.2013 - Sabinov - L.A. 11, skupina B - <a href="http://www.igorliba.sk/fotogaleria-22-2-2013-sabinov-cana">galéria Čaňa</a>, <a href="http://www.igorliba.sk/fotogaleria-22-2-sabinov-turnaj">galéria Sabinov</a></p>\n<p>01.02.2013 - Gelnica - L.A. 11, skupina C</p>\n<p>26.01.2013 - Exhibičný zápas L.A. 11 - Old Boys Prešov - <a href="http://www.igorliba.sk/fotogaleria-26-1-2013-exhibicia">galéria</a></p>\n<p>16.01.2013 - Bardejov - L.A. 11, skupina C</p>\n<p>04.01.2013 - L.A.11 - Michalovce, skupina B a C - <a href="http://www.igorliba.sk/fotogaleria-4-1-2013-michalovce">galéria</a></p>\n<p>19.12.2012 - Trebišov - L.A. 11, skupina C</p>', NULL, NULL, 1),
(34, 'sk', 'sezona-2014-2015', 'Sezóna 2014/2015', '', '', '<p>11.1. a 18.1.2015 - Turnaj o pohár starostu obce Čaňa - skupina 4 - 2. miesto</p>\n<p>5.1.2015 - Novoročný turnaj - skupina 2 - 2. miesto</p>\n<p>29.12.2014 - Vianočný turnaj - skupina 3 - <a href="http://www.igorliba.sk/documents/vianocny2014.pdf" target="_blank">propozície</a> - 3.miesto</p>\n<p>22.12.2014 - 3. ročník hokejového turnaja tretiakov - skupina 1 - 6. miesto</p>\n<p>7.12.2014 - Mikulášsky turnaj Rimavská Sobota - chlapci skupina 1 - <a href="http://www.igorliba.sk/documents/141207_pozvanka.pdf" target="_blank">pozvánka</a>,<a href="http://www.igorliba.sk/documents/141207_podmienky.pdf" target="_blank">podmienky</a></p>\n<p>17.11.2014 - Turnaj v minihokeji - chlapci skupina 1 - <a href="http://www.igorliba.sk/documents/pozvanka141117.pdf" target="_blank">propozície</a> - <a href="http://www.igorliba.sk/documents/zapasy141117.pdf" target="_blank">rozpis zápasov</a> -<a href="http://www.igorliba.sk/documents/vysledky141117.pdf" target="_blank">výsledková tabuľa</a> - galéria</p>', NULL, NULL, 1),
(35, 'sk', 'sezona-2013-2014', 'Sezóna 2013/2014', '', '', '<p>17.04.2014 - Veľkonočný turnaj Čaňa - chlapci skupina 1 - <a href="http://www.igorliba.sk/documents/propozicieVT2014.pdf" target="_blank">propozície</a>, <a href="http://www.igorliba.sk/documents/rozpisVT2014.pdf" target="_blank">rozpis</a>,<a href="http://www.igorliba.sk/fotogaleria-vn2014-sk1.php">galéria</a> | Boli sme v <a href="http://www.radiosport.sk/" target="_blank">Rádiu Šport</a> - <a href="http://www.igorliba.sk/documents/radio_sport/Junior_Klub_19.4.2014_vstup1.mp3" target="_blank">vstup 1</a>, <a href="http://www.igorliba.sk/documents/radio_sport/Junior_Klub_19.4.2014_vstup2.mp3" target="_blank">vstup 2</a></p>\n<p>07.04.2014 - Medzinárodný hokejový turnaj Miskolc ľadový medveď - chlapci skupina 2 - <a href="http://www.igorliba.sk/documents/miskolc-april2014-ucastnici.pdf" target="_blank">účastníci</a>, <a href="http://www.igorliba.sk/documents/miskolc-april2014-vyhodnotenie.pdf" target="_blank">vyhodnotenie</a>, <a href="http://www.igorliba.sk/documents/miskolc-april2014-hraci.pdf" target="_blank">zoznam hráčov</a>, <a href="http://www.igorliba.sk/fotogaleria-miskolc-07042014.php">galéria</a></p>\n<p>05.-06.04.2014 - BASF CUP 2014 - hokejový turnaj 5.ŠHT v Žiline chlapci skupina 2+3 - <a href="http://www.igorliba.sk/documents/basf2014.pdf" target="_blank">propozície</a>, <a href="http://www.igorliba.sk/documents/basf2014v.pdf" target="_blank">vyhodnotenie</a>, <a href="http://www.igorliba.sk/fotogaleria-basf2014.php">galéria</a></p>\n<p>06.03.2014 - Prázdninový hokejový turnaj v Čani - chlapci skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-prazdniny06032014.php">galéria</a></p>\n<p>03.03.2014 - Prázdninový hokejový turnaj v Čani - chlapci skupina 2 - <a href="http://www.igorliba.sk/fotogaleria-prazdniny03032014.php">galéria</a></p>\n<p>02.03.2014 - Turnaj o cenu primátorky Sabinov - chlapci skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-sabinov02032014.php">galéria</a></p>\n<p>23.02.2014 - Turnaj pod záštitou primátorky Gelnica - chlapci skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-gelnica23022014.php">galéria</a>,<a href="http://www.igorliba.sk/documents/propozicie23022014.pdf" target="_blank">propozície</a></p>\n<p>09.02.2014 - Turnaj Orange Minihokej Tour Michalovce - chlapci skupina 2 -<a href="http://www.igorliba.sk/documents/propozicie09022014.pdf" target="_blank">propozície</a>, <a href="http://www.igorliba.sk/documents/rozlosovanie09022014.pdf" target="_blank">rozlosovanie</a></p>\n<p>04.01.2014 - MiniTurnaj v Čani - chlapci skupina 2 - <a href="http://www.igorliba.sk/fotogaleria-cana-040114">galeria</a></p>\n<p>30.12.2013 - Turnaj v Spišskej Novej Vsi - chlapci skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-snv-301213.php">galéria</a></p>\n<p>29.12.2013 - Turnaj v Trebišove - chlapci skupina 3 - <a href="http://www.igorliba.sk/fotogaleria-trebisov-291213.php">galéria</a></p>\n<p>27.12.2013 - Turnaj v Spišskej Novej Vsi - chlapci skupina 2 - <a href="http://www.igorliba.sk/documents/propozicie27122013.pdf" target="_blank">propozície</a></p>\n<p>23-25.8.2013 - MULTI ŠPORT CUP 2013 - <a href="http://www.igorliba.sk/documents/rozpis_zapasov_2013_7_druzstiev.pdf" target="_blank">Rozpis zápasov.</a>, <a href="http://www.igorliba.sk/documents/Casovy_rozpis_turnaja.pdf" target="_blank">Časový rozpis turnaja</a></p>', NULL, NULL, 1),
(36, 'sk', 'sezona-2012-2013', 'Sezóna 2012/2013', '', '', '<p>29.03.2013 - Turnaj, Čaňa - <a href="http://www.igorliba.sk/documents/cana29032013/Pozvanka.pdf" target="_blank">pozvánka</a>, <a href="http://www.igorliba.sk/documents/cana29032013/supisky.pdf" target="_blank">súpisky</a>, <a href="http://www.igorliba.sk/documents/cana29032013/zapasy.pdf" target="_blank">zápasy</a>, <a href="http://www.igorliba.sk/fotogaleria-29-3-gelnica-sabinov">galéria Gelnica - Sabinov</a>,<a href="http://www.igorliba.sk/fotogaleria-29-3-gelnica-trebisov">galéria Gelnica - Trebišov</a>, <a href="http://www.igorliba.sk/fotogaleria-29-3-la-sabinov">galéria Liba Academy - Sabinov</a>, <a href="http://www.igorliba.sk/fotogaleria-29-3-vyhodnotenie">galéria Vyhodnotenie</a></p>\n<p>28.03.2013 - Turnaj v Spišskej Novej Vsi - chlapci skupina B - vyhrali svoj prvý zápas s Topolčanmi - <a href="http://www.igorliba.sk/fotogaleria-28-3-snv-turnaj">galéria</a>, <a href="http://www.igorliba.sk/documents/snv28032013/vysledky.pdf" target="_blank">výsledky</a></p>\n<p>03.03.2013 - Turnaj v Gelnici - chlapci skupina B a C, Michalovce, Miškolc a Gelnica</p>\n<p>29.12.2012 - Prvý turnaj, Trebišov - chlapci B skupina, <a href="http://www.hokej.sk/liga_exd/clanok104108-Vianocny_turnaj_piatakov_koristou_Bardejovcanov__FOTO.htm?utm_source=rss" target="_blank">info</a>, <a href="http://www.igorliba.sk/fotogaleria-turnaj-29-12-trebisov">galéria</a></p>', NULL, NULL, 1),
(38, 'sk', '2-z-dani', '2% z dani', '', '', '<p>Stiahnite si: <strong>VYHLÁSENIE o poukázaní sumy do výšky 2% (3 %) zaplatenej dane</strong> <a href="http://www.igorliba.sk/documents/vyhlasenie_2perc_2014-editovatelne.rtf" target="_blank">word dokument</a>, <a href="http://www.igorliba.sk/documents/vyhlasenie_2perc_2014-editovatelne-2.pdf" target="_blank">pdf dokument</a><img src="http://www.igorliba.sk/pictures/igorliba_dve_percenta.jpg" style="-webkit-user-select: none;" /></p>', '', '', 1),
(39, 'sk', '17.04.2014-vekonocny-turnaj-cana-chlapci-skupina-1', '17.04.2014 - Veľkonočný turnaj Čaňa - chlapci skupina 1', '', '', '', '', '', 1),
(40, 'sk', 'medzinarodny-hokejovy-turnaj-miskolc-07.04.2014', 'Medzinárodný hokejový turnaj Miskolc 07.04.2014', '', '', '', '', '', 1),
(41, 'sk', 'skupina-4', 'Skupina 4', '', '', '', NULL, NULL, 1),
(42, 'sk', 'letn-hokejov-kemp-2014', 'Letný hokejový kemp 2014', '', '', '', '', '', 1),
(43, 'sk', 'mikulas-2013', 'Mikuláš 2013', '', '', '', '', '', 1),
(44, 'sk', 'kontakt', 'Kontakt', '', '', '<p><strong>LIBA ACADEMY 11</strong><br /><br />Národná trieda 48<br />040 01 Košice<br /><br /><strong>IČO:</strong> 35539208<br /><strong>DIČ:</strong> 2021634461<br /><br /><strong>Bankové spojenie:</strong> TATRABANKA a.s.<br /><strong>Číslo účtu:</strong> 2620710408/1100<br /><br /><strong>Mobil:</strong> 0903 626 876, 0905 409 042<br /><br /><strong>email:</strong> <a href="mailto:info@igorliba.sk">info@igorliba.sk</a><br /><br />Pre kontakt môžete využiť aj následujúci formulár. <br />Odpovieme Vám v čo najkratšom možnom čase.</p>', '', '', 1),
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
(61, 'sk', 'hgdhgd', 'hgdhgd', '', '', '', NULL, NULL, 1),
(62, 'sk', 'skupina-1', 'Skupina 1', '', '', '<ul>\n<li><strong>ročníky:</strong> 2007, 2006, 2005</li>\n<li><strong>tréningy: </strong>pondelok – 16.30 hod., štvrtok– 15.15 hod. a sobota – 9.30 hod.</li>\n</ul>\n<ol>\n<li> Baksay Marko</li>\n<li> Bálint Samuel</li>\n<li> Buchla Peter</li>\n<li> Barakat Andree</li>\n<li> Binda Mathias</li>\n<li> Eštok Martin - <strong>HC Michalovce</strong></li>\n<li> Haluška Matej</li>\n<li> Hudák Jakub</li>\n<li> Janke Šimon</li>\n<li> Komendát Richard</li>\n<li> Krajcár Matúš</li>\n<li> Levkanič Adam</li>\n<li> Oravec Marek</li>\n<li> Ruščák Richard</li>\n<li> Slivkár Šimon</li>\n<li> Ujjobbágy Pavol</li>\n<li> Vasilík Ľuboslav</li>\n<li> Vindiš Martin</li>\n<li> Vizner Lukáš - <strong>HC Košice </strong></li>\n</ol>\n<p><strong>Brankári:</strong></p>\n<ul>\n<li>Baltes Eduard</li>\n<li>Barakat Alex</li>\n<li>Buróci Šimon</li>\n</ul>', '', '', 1),
(63, 'sk', 'skupina-2', 'Skupina 2', '', '', '<ul>\n<li><strong>ročníky:</strong> 2004, 2003</li>\n<li><strong>tréningy:</strong> streda – 16.30 hod., piatok – 15.15 hod. a sobota – 8.00 hod.</li>\n</ul>\n<ol>\n<li> Čelko Ferencech Šimon</li>\n<li> Domby Matej</li>\n<li> Droppa Patrik</li>\n<li> Fedor Alex</li>\n<li> Haluška Branislav</li>\n<li> Hanušovský Kristián</li>\n<li> Hegyi Kristián</li>\n<li> Horváth Dušan</li>\n<li> Kissi Tomáš</li>\n<li> Kočiš Róbert</li>\n<li> Lauff Eduard</li>\n<li> Marušiak Peter</li>\n<li> Pillár Sebastián</li>\n<li> Pollák Maxim</li>\n<li> Rohun Oliver</li>\n<li> Spišák Róbert</li>\n<li> Szilasi Tomáš</li>\n<li> Šelepský Sebastián</li>\n<li> Timko Frederik</li>\n<li> Tomčo Jakub</li>\n<li> Ujjobbágy Samuel</li>\n<li> Valent Jakub</li>\n<li> Vizner Jakub</li>\n<li> Zajac Štefan</li>\n</ol>\n<p><strong>Brankári:</strong></p>\n<ul>\n<li>Pataki Samuel</li>\n<li>Trnka Matúš</li>\n<li>Youssef Štefan</li>\n</ul>', '', '', 1),
(64, 'sk', 'turnaj-o-pohar-starostu-obce-caa-skupina', 'Turnaj o pohár starostu obce Čaňa - skupina', '', '', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolo</p>', '', '', 1),
(65, 'sk', 'novoro-ny-turnaj-skupina-2', 'Novoročný turnaj - skupina 2', '', '', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolo</p>\n<p><a href="{{article:27.48}}">Prejsť na galériu</a></p>', '', '', 1),
(66, 'sk', 'rusnak-liba-lukac.-utok-ktor-velebil-aj-tichonov', 'Rusnák, Liba, Lukáč. Útok, ktorý velebil aj Tichonov', '', '', '', '', '', 1),
(67, 'sk', 'igor-liba-vychovava-aj-baletky.-mesto-mu-zrejme-znizi-najomne', 'Igor Liba vychováva aj baletky. Mesto mu zrejme zníži nájomné', '', '', '', '', '', 1),
(68, 'sk', 'gretzky-m-stval-nechtl-jit-na-pivo-vzpomina-liba-na-legendu', 'Gretzky mě štval, nechtěl jít na pivo, vzpomíná Liba na legendu', '', '', '', '', '', 1),
(69, 'sk', 'lorem-ipsum', 'Lorem ipsum', '', '', '<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\n<h4>Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC</h4>\n<p>"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"</p>\n<h4>1914 translation by H. Rackham</h4>\n<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"</p>', '', '', 1),
(70, 'sk', 'lorem-ipsum1', 'Lorem ipsum', '', '', '<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>\n<h4>Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC</h4>\n<p>"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"</p>\n<h4>1914 translation by H. Rackham</h4>\n<p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"</p>', '', '', 1),
(71, 'sk', 'desatoro-pre-rodicov', 'Desatoro pre rodičov', '', '', '<ol>\n<li>Pozitívne motivovať chlapcov pred tréningom a nezaťažovať ich radami, čo majú robiť.</li>\n<li>Po tréningu pochváliť a povzbudiť bez ohľadu na výkon chlapca.</li>\n<li>Nezasahovať do činnosti trénera pri tréningu a zápase.</li>\n<li>Nevynucovať si zaradenie svojho syna do zostavy.</li>\n<li>Nepostávať pri mantineloch, nevolať chlapcov a neradiť im.</li>\n<li>Nevstupovať do priestorov striedačky a do priestorov šatní.</li>\n<li>Nepokrikovať na rozhodcov.</li>\n<li>Nenosiť chlapcom výstroj.</li>\n<li>Nenarušovať dochádzku na tréningy a zápasy počas víkendov (odchod na chaty a výlety...)</li>\n<li>Nezabúdať na pravidelnú kontrolu výstroja a svojho syna (ribaná, dresy, korčule...)</li>\n</ol>\n<p>Čas strávený s Vašimi deťmi počas tréningov a zápasov bude pre všetkých príjemný. Majte na pamäti, že sú to len Vaše deti.</p>', NULL, NULL, 1),
(72, 'sk', 'sezona-2014-2015', 'Sezóna 2014/2015', '', '', '', NULL, NULL, 1),
(73, 'sk', 'sezona-2013-2014', 'Sezóna 2013/2014', '', '', '', NULL, NULL, 1),
(74, 'sk', 'sezona-2014-2015', 'Sezóna 2014/2015', '', '', '', NULL, NULL, 1),
(75, 'sk', 'apparel', 'Oblečenie', '', '', '', '', '', 1),
(76, 'sk', 'souvenirs', 'Suveníry', '', '', '', NULL, NULL, 1),
(77, 'sk', 'other', 'Ostatné', '', '', '', NULL, NULL, 1),
(78, 'sk', 'letn-hokejov-kemp-2014', 'Letný hokejový kemp 2014', '', '', '<p><strong>Termín:</strong> 27. 07. 2014 – 02. 08. 2014</p>\n<p><strong>Cieľ :</strong> Zlepšiť a zdokonaliť individuálne a herné činnosti jednotlivca. Vytvárať pozitívne vzťahy, socializovať deti v inom prostredí. Zmysluplne využívať voľný čas počas prázdnin.</p>\n<p><strong>Úloha KEMPu:</strong> Pripraviť hráčov a brankárov v rámci leta na novú hokejovú sezónu.</p>\n<p><strong>Zodpovedný hlavný vedúci:</strong> Pavol Valko Tréneri: Igor Liba, Jaromír Dragan, Slavomír Ilavský, Severín Gonci</p>\n<p><strong>Počet detí:</strong> 40</p>\n<p><strong>Vek detí:</strong> od 10 do 15 rokov</p>\n<p><strong>Skupina 1:</strong> vek 10 - 12, maximálny počet 20 vrátane brankárov</p>\n<p><strong>Skupina 2:</strong> vek 13 – 15 maximálny počet 20 vrátane brankárov</p>\n<p><strong>Program:</strong> 2 x denne príprava na ľade 2 x denne príprava na suchu, športové hry 3 x počas kempu špeciálny tréning brankárov a strelecký tréning Spoločenský program PREKVAPENIE KEMPu.</p>\n<p><strong>Cena:</strong> 300,- € (v cene je zahrnutý komplexný program vrátane ubytovania a stravy) Záloha 100,- € splatná s odoslaním prihlášky, doplatenie pri zahájení KEMPu. V prípade zrušenia účasti sa záloha nevráti!</p>\n<p><strong>Stravovanie, ubytovanie :</strong> Penzión Pláž Čaňa</p>\n<p><strong>Informácie o KEMPe:</strong> Uzávierka prihlášok do: 30. 06. 2014.</p>\n<ol>\n<li>Po vyplnení prihlášky Vám bude doručené emailové potvrdenie, kde budú uvedené aj detaily pre zaplatenie zálohy za kemp </li>\n<li>Dôležité potvrdenia:</li>\n</ol>\n<p>a) Čestné vyhlásenie </p>\n<p>b) Kópia karty poistenca </p>\n<p>c) Potvrdenie o vyplatení KEMPu </p>\n<p><strong>Číslo účtu na zaplatenie zálohy:</strong> IBAN: SK 33 1100 0000 0026 2071 0408 Kontakt: info@igorliba.sk, www.igorliba.sk</p>', '', '', 1),
(79, 'sk', 'severim-gonci', 'Severím GöNCI', '', '', '<p><strong>Hráčska kariéra:</strong></p>\n<ul>\n<li>HK VTJ Michalovce - vojenčina</li>\n<li>HC Košice</li>\n<li>HC Spišská Nová Ves</li>\n<li>HK Prešov</li>\n<li>HK Trebišov</li>\n</ul>\n<p><br /><strong>Reprezentácia:</strong></p>\n<ul>\n<li>mládežnícke výbery 16 rokov, 17 rokov, 18 rokov</li>\n<li>Svetová zimná univerziáda Torino</li>\n</ul>\n<p><br /><strong>Trénerská kariéra:</strong></p>\n<ul>\n<li>HK Prešov - mládež</li>\n</ul>', '', '', 1),
(80, 'sk', 'pavol-valko-ml.', 'Pavol VALKO ml.', '', '', '<p><strong>Hráčska kariéra:</strong></p>\n<ul>\n<li>HC Košice od žiakov až po dorast</li>\n<li>juniori Motala Švédsko</li>\n<li>seniori Motala Švédsko</li>\n<li>seniori Milton King Anglicko</li>\n<li>seniori Trebišov</li>\n</ul>\n<p><strong>Trenérska kariéra:</strong></p>\n<ul>\n<li>žiaci Milton King AnglickoO</li>\n<li>prípravka Motala Švédsko</li>\n<li>HDC Košice</li>\n</ul>', NULL, NULL, 1),
(81, 'sk', 'tomas-bugos', 'Tomáš BUGOŠ', '', '', '<p><strong>Hráčska kariéra:</strong> </p>\n<ul>\n<li>HC Košice od žiakov až po dorast</li>\n</ul>\n<p><strong>Trénerska kariéra:</strong></p>\n<ul>\n<li>mladý začinajúci tréner</li>\n</ul>', NULL, NULL, 1),
(82, 'sk', 'diana-riskova-krasokorcuovanie', 'Diana RIŠKOVÁ (krasokorčuľovanie)', '', '', '<ul>\n<li>od roku 1997 reprezentantka Slovenska športové dvojice</li>\n<li>viacnásobná majsterka Slovenska</li>\n<li>3-krát účastníčka majstrovstiev sveta</li>\n<li>profesionálka v Holliday on ice -tv show Belgicko, tv show Francúzsko, tv show Mexiko, Český Mrázik</li>\n<li>držiteľka trénerskej licencie - medzinárodná špecialistka pre športové dvojice jediná na Slovensku</li>\n</ul>', NULL, NULL, 1),
(83, 'sk', 'lucia-kupcova-krasokorcuovanie', 'Lucia KUPČOVÁ (krasokorčuľovanie)', '', '', '<p>Od roku 1998 vymenila súťažnú kariéru za trénersku:</p>\n<ul>\n<li>kraso centrum Košice</li>\n<li>HDC Košice - prípravka</li>\n<li>Figure Skating Club Košice</li>\n</ul>', NULL, NULL, 1),
(84, 'sk', 'alexandra-dulakova-krasokorcuovanie', 'Alexandra DULÁKOVÁ (krasokorčuľovanie)', '', '', '<p>Od roku 2005 až po rok 2011  bola členkou krasokorčuliarského klubu Kraso Centrum v Košiciach<br />Zúčastňovala sa viacerých súťaži na Slovensku aj v zahraničí a 6-krát sa zúčastnila  aj Majstrovstiev Slovenska<br />Vyhovela  krasokorčuliarským výkonným testom až po  6. Úroveň<br />2-krát bola účinkujúcou v show Jevgenija Pľuščenka v Košiciach a aj vystúpenia  pri príležitosti 10. Výročia U.S. Steel Košice</p>\n<p><strong>Úspechy:</strong><br /><em>4. Miesto – Majstrovstvá Slovenska 2008 a 2009</em> <br /><em>5. Miesto – Majstrovstvá Slovenska 2010</em> <br /><em>1. Miesto – Miskolc- 2007</em> <br /><em>2. Miesto – Miskolc- 2009</em></p>\n<p><strong>Trénerská kariéra:</strong><br />V sezóne 2011/2012 bola  trénerka v krasokorčuliarskej pripravke Figure Skating Club  v Košiciach<br />Od roku 2012 trénerka v hokejovom klube Hockey Liba Academy  a trénerka  v kurze korčuľovania pod vedením hlavnej trénerky Diany Riškovej v Čani.</p>', NULL, NULL, 1),
(85, 'sk', 'mirka-lipcakova-krasokorcuovanie', 'Mirka LIPČÁKOVÁ (krasokorčuľovanie)', '', '', '<ul>\n<li>bohatá pretekárska kariéra</li>\n<li>1x majsterka SR v roku 1988</li>\n<li>2x striebro na majstrovstvách SR v roku 1987 - 1992 </li>\n<li>1x bronz na majstrovstvách SR v roku 1993</li>\n<li>ukončenie pretekárskej činnosti v roku 1994 a prechod k profesionálom Holliday on ice 2 roky </li>\n<li>profesionálna trénerka s licenciou od roku 1996</li>\n</ul>', NULL, NULL, 1);
INSERT INTO `article_lang` (`id_article`, `lang`, `url`, `title`, `subtitle`, `meta_title`, `content`, `meta_keywords`, `meta_description`, `online`) VALUES
(86, 'sk', 'skupina-3', 'Skupina 3', '', '', '<ul>\n<li><strong>ročníky:</strong> 2003, 2002, 2001, 2000</li>\n<li><strong>tréningy:</strong> utorok – 15.15 hod., streda – 15.15 hod. a piatok – 16.30 hod. </li>\n</ul>\n<ol>\n<li>Bakši Šimon</li>\n<li>Boldižár Erik </li>\n<li>Cehlár Gabriel </li>\n<li>Eliaš Radoslav</li>\n<li>Gergeľ Nicolas</li>\n<li>Gregoire Ezra </li>\n<li>Helcmanovský Daniel </li>\n<li>Helcmanovský Róbert </li>\n<li>Hodor Radovan </li>\n<li>Hvizdoš Dominik </li>\n<li>Kišdučák Kristián </li>\n<li>Krišš Dávid 1</li>\n<li>Kukľa Matej </li>\n<li>Madáč Maroš</li>\n<li>Mišľan Filip </li>\n<li>Molnár Hugo </li>\n<li>Padyšák Daniel </li>\n<li>Pápay Márk </li>\n<li>Papcúň Marek </li>\n<li>Peko Daniel </li>\n<li>Pillár Sebastián </li>\n<li>Piroško Adam </li>\n<li>Pribula Tomáš </li>\n<li>Ridarčík Adam </li>\n<li>Ruščák Damián </li>\n<li>Slota Adam </li>\n<li>Solej Martin </li>\n<li>Šándor Denis </li>\n<li>Šeleng Martin </li>\n<li>Timko Ondrej </li>\n<li>Tomko Filip </li>\n<li>Vaco Daniel </li>\n<li>Zlaczki Benjamín </li>\n</ol>\n<p><strong>Brankári:</strong></p>\n<ul>\n<li>Goliáš Oliver </li>\n<li>Hancin Rastislav </li>\n<li>Ujjobbágy Teodor</li>\n</ul>', '', '', 1),
(87, 'sk', 'skupina-4', 'Skupina 4', '', '', '<ul>\n<li><strong>ročníky:</strong> 1999, 1998, 1997, 1996, 1995, .... </li>\n<li><strong>tréningy:</strong> utorok – 16.30 hod., streda – 20.15 hod. a sobota – 12.00 hod. (AHL) </li>\n</ul>\n<ol>\n<li>Bačo Adam </li>\n<li>Balog Tomáš </li>\n<li>Bidovský Jakub </li>\n<li>Fajdek Denis </li>\n<li>Fajfer Adam</li>\n<li>Gabaš Martin </li>\n<li>Gergely Adam </li>\n<li>Gregorovič Peter </li>\n<li>Hamrák Erik </li>\n<li>Hanušovský Vladimír </li>\n<li>Hegeduš Michal </li>\n<li>Herich Richard </li>\n<li>Ivan Martin </li>\n<li>Juhás Jozef </li>\n<li>Kissi Michal </li>\n<li>Kolesár Denis </li>\n<li>Kondáš Filip </li>\n<li>Kuchár Kristián </li>\n<li>Kulik Maroš </li>\n<li>Majer Richard </li>\n<li>Majorovič Matúš </li>\n<li>Munka Erik </li>\n<li>Ondášová Karolína </li>\n<li>Pačut Milan </li>\n<li>Pavlo Matej </li>\n<li>Petrová Lýdia </li>\n<li>Planeta Štefan </li>\n<li>Puha Ján </li>\n<li>Ráková Erika </li>\n<li>Ruščák Roland </li>\n<li>Sedlák Matúš </li>\n<li>Semančík Lukáš </li>\n<li>Takáč Patrik </li>\n<li>Tóth Dominik </li>\n<li>Vaňo Michal </li>\n<li>Vargovčák Ronald </li>\n<li>Vašš Marián </li>\n<li>Vojtko Martin </li>\n<li>Vozár Kristián </li>\n</ol>\n<p><strong>Brankári:</strong></p>\n<ul>\n<li>Gučík Dávid</li>\n<li>Kraus Peter </li>\n<li>Stašek Michal</li>\n</ul>', '', '', 1);

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
(64, 171, 1, 2, NULL, NULL),
(65, 128, 1, 1, NULL, NULL),
(69, 176, 1, 1, NULL, NULL),
(69, 177, 1, 2, NULL, NULL),
(69, 178, 1, 3, NULL, NULL),
(69, 179, 1, 4, NULL, NULL),
(69, 180, 1, 5, NULL, NULL),
(69, 181, 1, 6, NULL, NULL),
(75, 46, 1, 5, NULL, NULL),
(75, 48, 1, 12, NULL, NULL),
(75, 49, 1, 6, NULL, NULL),
(75, 198, 1, 1, NULL, NULL),
(75, 199, 1, 2, NULL, NULL),
(75, 200, 1, 3, NULL, NULL),
(75, 201, 1, 4, NULL, NULL),
(75, 202, 1, 7, NULL, NULL),
(75, 203, 1, 8, NULL, NULL),
(75, 204, 1, 9, NULL, NULL),
(75, 205, 1, 10, NULL, NULL),
(75, 206, 1, 11, NULL, NULL),
(75, 207, 1, 13, NULL, NULL),
(76, 44, 1, 1, NULL, NULL),
(76, 45, 1, 2, NULL, NULL),
(76, 47, 1, 9, NULL, NULL),
(76, 208, 1, 3, NULL, NULL),
(76, 209, 1, 4, NULL, NULL),
(76, 210, 1, 5, NULL, NULL),
(76, 211, 1, 6, NULL, NULL),
(76, 212, 1, 7, NULL, NULL),
(76, 213, 1, 8, NULL, NULL),
(76, 214, 1, 11, NULL, NULL),
(76, 215, 1, 12, NULL, NULL),
(77, 50, 1, 1, NULL, NULL),
(78, 74, 1, 1, NULL, NULL),
(79, 216, 1, 1, NULL, NULL),
(80, 217, 1, 1, NULL, NULL),
(81, 218, 1, 1, NULL, NULL),
(82, 219, 1, 1, NULL, NULL),
(83, 221, 1, 1, NULL, NULL),
(84, 220, 1, 1, NULL, NULL),
(85, 223, 1, 2, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article_type`
--

INSERT INTO `article_type` (`id_type`, `type`, `ordering`, `description`, `type_flag`) VALUES
(1, 'slideshow', 0, '', 17),
(2, 'eyecatcher', 0, '', 8);

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `element`
--

INSERT INTO `element` (`id_element`, `id_element_definition`, `parent`, `id_parent`, `ordering`) VALUES
(1, 1, 'article', 72, 6),
(2, 1, 'article', 72, 5),
(3, 1, 'article', 72, 4),
(4, 1, 'article', 72, 3),
(5, 1, 'article', 72, 2),
(6, 1, 'article', 72, 1),
(7, 1, 'article', 73, 13),
(8, 1, 'article', 73, 12),
(9, 1, 'article', 73, 11),
(10, 1, 'article', 73, 10),
(11, 1, 'article', 73, 9),
(12, 1, 'article', 73, 8),
(13, 1, 'article', 73, 7),
(14, 1, 'article', 73, 6),
(15, 1, 'article', 73, 5),
(16, 1, 'article', 73, 4),
(17, 1, 'article', 73, 3),
(18, 1, 'article', 73, 2),
(19, 1, 'article', 73, 1),
(20, 2, 'article', 74, 1),
(21, 2, 'article', 74, 2),
(22, 2, 'article', 74, 3),
(23, 2, 'article', 74, 4),
(24, 2, 'article', 74, 5);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `element_definition`
--

CREATE TABLE IF NOT EXISTS `element_definition` (
  `id_element_definition` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `element_definition`
--

INSERT INTO `element_definition` (`id_element_definition`, `name`, `description`, `ordering`) VALUES
(1, 'tournament', '', 0),
(2, 'match', '', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `element_definition_lang`
--

CREATE TABLE IF NOT EXISTS `element_definition_lang` (
  `id_element_definition` int(11) unsigned NOT NULL,
  `lang` varchar(8) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `element_definition_lang`
--

INSERT INTO `element_definition_lang` (`id_element_definition`, `lang`, `title`) VALUES
(1, 'sk', 'Turnaj'),
(2, 'sk', 'Zápas');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `extend_field`
--

INSERT INTO `extend_field` (`id_extend_field`, `name`, `type`, `description`, `parent`, `id_parent`, `ordering`, `translated`, `value`, `default_value`, `global`, `main`) VALUES
(1, 'date', 7, '', 'element', 1, 1, '0', '', '', 0, 0),
(2, 'name', 1, '', 'element', 1, 2, '0', '', '', 0, 0),
(3, 'group', 4, '', 'element', 1, 3, '0', '1:1\n2:2\n3:3\n4:4', '', 0, 0),
(4, 'place', 100, '', 'element', 1, 4, '0', '', '', 0, 0),
(5, 'gallery', 130, '', 'element', 1, 6, '0', '', '', 0, 0),
(6, 'other', 8, '', 'element', 1, 7, '0', '', '', 0, 0),
(7, 'date', 7, '', 'element', 2, 1, '0', '', '', 0, 0),
(8, 'home', 1, '', 'element', 2, 2, '0', '', '', 0, 0),
(9, 'guests', 1, '', 'element', 2, 4, '0', '', '', 0, 0),
(10, 'result', 1, '', 'element', 2, 3, '0', '', '', 0, 0),
(11, 'gallery', 130, '', 'element', 2, 7, '0', '', '', 0, 0),
(12, 'group', 4, '', 'element', 2, 6, '0', '1:skupina 1\n2:skupina 2\n3:skupina 3\n4:skupina 4', '', 0, 0),
(13, 'note', 1, '', 'element', 2, 8, '0', '', '', 0, 0),
(14, 'played', 5, '', 'element', 2, 5, '0', 'false:ešte nie\ntrue:už áno', 'false', 0, 0),
(15, 'played', 5, '', 'element', 1, 5, '0', 'false:ešte nie\ntrue:už áno', 'false', 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `extend_fields`
--

INSERT INTO `extend_fields` (`id_extend_fields`, `id_extend_field`, `parent`, `id_parent`, `lang`, `content`, `ordering`) VALUES
(1, 1, 'element', 1, '', '2014-11-17', 0),
(2, 2, 'element', 1, '', 'Turnaj v minihokeji', 0),
(4, 4, 'element', 1, '', '', 0),
(6, 5, 'element', 1, '', 'article:27.39', 0),
(8, 1, 'element', 2, '', '2014-12-07', 0),
(9, 2, 'element', 2, '', 'Mikulášsky turnaj Rimavská Sobota', 0),
(11, 4, 'element', 2, '', '', 0),
(12, 1, 'element', 3, '', '2014-12-22', 0),
(13, 2, 'element', 3, '', '3. ročník hokejového turnaja tretiakov', 0),
(15, 4, 'element', 3, '', '6', 0),
(16, 1, 'element', 4, '', '2014-12-29', 0),
(17, 2, 'element', 4, '', 'Vianočný turnaj', 0),
(19, 4, 'element', 4, '', '3', 0),
(20, 1, 'element', 5, '', '2015-01-05', 0),
(21, 2, 'element', 5, '', 'Novoročný turnaj ', 0),
(23, 4, 'element', 5, '', '2', 0),
(24, 1, 'element', 6, '', '2015-01-18', 0),
(25, 2, 'element', 6, '', 'Turnaj o pohár starostu obce Čaňa', 0),
(27, 4, 'element', 6, '', '2', 0),
(28, 1, 'element', 7, '', '2013-08-25', 0),
(29, 2, 'element', 7, '', 'MULTI ŠPORT CUP 2013', 0),
(30, 4, 'element', 7, '', '', 0),
(31, 1, 'element', 8, '', '2013-12-27', 0),
(32, 2, 'element', 8, '', 'Turnaj v Spišskej Novej Vsi', 0),
(33, 3, 'element', 8, '', '2', 0),
(34, 4, 'element', 8, '', '', 0),
(35, 1, 'element', 9, '', '2013-12-29', 0),
(36, 2, 'element', 9, '', 'Turnaj v Trebišove', 0),
(38, 4, 'element', 9, '', '', 0),
(39, 1, 'element', 10, '', '2013-12-30', 0),
(40, 2, 'element', 10, '', 'Turnaj v Spišskej Novej Vsi', 0),
(42, 4, 'element', 10, '', '', 0),
(43, 1, 'element', 11, '', '2014-01-04', 0),
(44, 2, 'element', 11, '', ' MiniTurnaj v Čani', 0),
(46, 4, 'element', 11, '', '', 0),
(47, 1, 'element', 12, '', '2014-02-09', 0),
(48, 2, 'element', 12, '', 'Turnaj Orange Minihokej Tour Michalovce', 0),
(49, 3, 'element', 12, '', '2', 0),
(50, 4, 'element', 12, '', '', 0),
(51, 1, 'element', 13, '', '2014-02-23', 0),
(52, 2, 'element', 13, '', 'Turnaj pod záštitou primátorky Gelnica', 0),
(54, 4, 'element', 13, '', '', 0),
(55, 1, 'element', 14, '', '2014-03-02', 0),
(56, 2, 'element', 14, '', ' Turnaj o cenu primátorky Sabinov', 0),
(58, 4, 'element', 14, '', '', 0),
(59, 1, 'element', 15, '', '2014-03-03', 0),
(60, 2, 'element', 15, '', 'Prázdninový hokejový turnaj v Čani', 0),
(62, 4, 'element', 15, '', '', 0),
(63, 1, 'element', 16, '', '2014-03-06', 0),
(64, 2, 'element', 16, '', 'Prázdninový hokejový turnaj v Čani', 0),
(66, 4, 'element', 16, '', '', 0),
(67, 1, 'element', 17, '', '2014-04-06', 0),
(68, 2, 'element', 17, '', 'BASF CUP 2014 - hokejový turnaj 5.ŠHT v Žiline', 0),
(70, 4, 'element', 17, '', '', 0),
(71, 1, 'element', 18, '', '2014-04-07', 0),
(72, 2, 'element', 18, '', 'Medzinárodný hokejový turnaj Miskolc ľadový medveď', 0),
(74, 4, 'element', 18, '', '', 0),
(75, 1, 'element', 19, '', '2015-04-17', 0),
(76, 2, 'element', 19, '', 'Veľkonočný turnaj Čaňa', 0),
(78, 4, 'element', 19, '', '', 0),
(79, 5, 'element', 9, '', 'article:27.56', 0),
(80, 3, 'element', 9, '', '3', 0),
(81, 5, 'element', 10, '', 'article:27.52', 0),
(82, 3, 'element', 10, '', '3', 0),
(83, 5, 'element', 11, '', 'article:27.51', 0),
(84, 3, 'element', 11, '', '2', 0),
(85, 5, 'element', 13, '', 'article:27.49', 0),
(86, 3, 'element', 13, '', '3', 0),
(87, 5, 'element', 14, '', 'article:27.48', 0),
(88, 3, 'element', 14, '', '3', 0),
(89, 5, 'element', 15, '', 'article:27.47', 0),
(90, 3, 'element', 15, '', '2', 0),
(91, 5, 'element', 16, '', 'article:27.46', 0),
(92, 3, 'element', 16, '', '3', 0),
(93, 5, 'element', 17, '', 'article:27.45', 0),
(94, 3, 'element', 17, '', '2,3', 0),
(95, 5, 'element', 18, '', 'article:27.40', 0),
(96, 3, 'element', 18, '', '2', 0),
(97, 5, 'element', 19, '', 'article:27.39', 0),
(98, 3, 'element', 19, '', '1', 0),
(99, 7, 'element', 20, '', '2014-12-14', 0),
(100, 8, 'element', 20, '', 'L.A.11', 0),
(101, 9, 'element', 20, '', 'Gelnica', 0),
(102, 10, 'element', 20, '', '3 : 4pp', 0),
(105, 7, 'element', 21, '', '2014-12-04', 0),
(106, 8, 'element', 21, '', 'L.A.11', 0),
(107, 9, 'element', 21, '', 'ICE DREAM', 0),
(108, 10, 'element', 21, '', '6 : 3', 0),
(110, 7, 'element', 22, '', '2014-11-23', 0),
(111, 8, 'element', 22, '', 'L.A.11', 0),
(112, 9, 'element', 22, '', 'ICE DREAM', 0),
(113, 10, 'element', 22, '', '8 : 6', 0),
(115, 7, 'element', 23, '', '2014-11-09', 0),
(116, 8, 'element', 23, '', 'L.A.11', 0),
(117, 9, 'element', 23, '', 'ICE DREAM', 0),
(118, 10, 'element', 23, '', '3 : 3', 0),
(120, 7, 'element', 24, '', '2014-10-30', 0),
(121, 8, 'element', 24, '', 'L.A.11', 0),
(122, 9, 'element', 24, '', 'ICE DREAM', 0),
(123, 10, 'element', 24, '', '7 : 5', 0),
(126, 13, 'element', 20, '', '', 0),
(127, 14, 'element', 20, '', 'false', 0),
(128, 12, 'element', 21, '', '3', 0),
(129, 13, 'element', 21, '', '', 0),
(130, 14, 'element', 21, '', 'true', 0),
(131, 12, 'element', 22, '', '3', 0),
(132, 13, 'element', 22, '', '', 0),
(133, 14, 'element', 22, '', 'true', 0),
(134, 12, 'element', 23, '', '3', 0),
(135, 13, 'element', 23, '', '', 0),
(136, 14, 'element', 23, '', 'true', 0),
(137, 12, 'element', 24, '', '3,4', 0),
(138, 13, 'element', 24, '', '', 0),
(139, 14, 'element', 24, '', 'true', 0),
(140, 12, 'element', 20, '', '3', 0),
(141, 3, 'element', 4, '', '3', 0),
(142, 15, 'element', 4, '', 'true', 0),
(143, 3, 'element', 3, '', '1', 0),
(144, 15, 'element', 3, '', 'true', 0),
(145, 3, 'element', 2, '', '1', 0),
(146, 15, 'element', 2, '', 'true', 0),
(147, 3, 'element', 1, '', '1', 0),
(148, 15, 'element', 1, '', 'true', 0),
(149, 3, 'element', 5, '', '2', 0),
(150, 15, 'element', 5, '', 'false', 0),
(151, 3, 'element', 6, '', '4', 0),
(152, 15, 'element', 6, '', 'false', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `extend_field_lang`
--

CREATE TABLE IF NOT EXISTS `extend_field_lang` (
  `id_extend_field` int(11) unsigned NOT NULL,
  `lang` varchar(8) NOT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `extend_field_lang`
--

INSERT INTO `extend_field_lang` (`id_extend_field`, `lang`, `label`) VALUES
(1, 'sk', 'Dátum'),
(2, 'sk', 'Názov'),
(3, 'sk', 'Skupina'),
(4, 'sk', 'Umiestnenie'),
(5, 'sk', 'Galéria'),
(6, 'sk', 'Príloha'),
(7, 'sk', 'Dátum'),
(8, 'sk', 'Domáci'),
(9, 'sk', 'Hostia'),
(10, 'sk', 'Výsledok'),
(11, 'sk', 'Galéria'),
(12, 'sk', 'Skupina'),
(13, 'sk', 'Poznámka'),
(14, 'sk', 'Odohralo sa'),
(15, 'sk', 'Odohralo sa');

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

--
-- Sťahujem dáta pre tabuľku `login_tracker`
--

INSERT INTO `login_tracker` (`ip_address`, `first_time`, `failures`) VALUES
('0.0.0.0', 1437458178, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `media`
--

INSERT INTO `media` (`id_media`, `type`, `file_name`, `path`, `base_path`, `copyright`, `provider`, `date`, `link`, `square_crop`) VALUES
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
(44, 'picture', 'biely_odznak.jpg', 'files/reklamne_predmety/biely_odznak.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(45, 'picture', 'cierny_odznak.jpg', 'files/reklamne_predmety/cierny_odznak.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(46, 'picture', 'nase_dresy.jpg', 'files/reklamne_predmety/nase_dresy.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(47, 'picture', 'nase_vlajocky.jpg', 'files/reklamne_predmety/nase_vlajocky.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(48, 'picture', 'treningove_dresy.jpg', 'files/reklamne_predmety/treningove_dresy.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(49, 'picture', 'oranzove_tricko.jpg', 'files/reklamne_predmety/oranzove_tricko.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(50, 'picture', 'nas_banner.jpg', 'files/reklamne_predmety/nas_banner.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
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
(198, 'picture', 'bunda.jpg', 'files/reklamne_predmety/bunda.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(199, 'picture', 'ciapka.jpg', 'files/reklamne_predmety/ciapka.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(200, 'picture', 'kratke_nohavice.jpg', 'files/reklamne_predmety/kratke_nohavice.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(201, 'picture', 'mikina.jpg', 'files/reklamne_predmety/mikina.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(202, 'picture', 'polokosela.jpg', 'files/reklamne_predmety/polokosela.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(203, 'picture', 'ribano.jpg', 'files/reklamne_predmety/ribano.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(204, 'picture', 'sal.jpg', 'files/reklamne_predmety/sal.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(205, 'picture', 'siltovka.jpg', 'files/reklamne_predmety/siltovka.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(206, 'picture', 'stulpne.jpg', 'files/reklamne_predmety/stulpne.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(207, 'picture', 'univerzitna_mikina.jpg', 'files/reklamne_predmety/univerzitna_mikina.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(208, 'picture', 'dres_ciarovy.jpg', 'files/reklamne_predmety/dres_ciarovy.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(209, 'picture', 'dres_hlavny.jpg', 'files/reklamne_predmety/dres_hlavny.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(210, 'picture', 'hrncek_cierny.jpg', 'files/reklamne_predmety/hrncek_cierny.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(211, 'picture', 'hrncek_oranzovy.jpg', 'files/reklamne_predmety/hrncek_oranzovy.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(212, 'picture', 'klucenky_magnetky.jpg', 'files/reklamne_predmety/klucenky_magnetky.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(213, 'picture', 'minidres.jpg', 'files/reklamne_predmety/minidres.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(214, 'picture', 'puk.jpg', 'files/reklamne_predmety/puk.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(215, 'picture', 'salka.jpg', 'files/reklamne_predmety/salka.jpg', 'files/reklamne_predmety/', '', '', '0000-00-00 00:00:00', '', 'm'),
(216, 'picture', 'severin_gonci.jpg', 'files/treneri/severin_gonci.jpg', 'files/treneri/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(217, 'picture', 'valko_ml.jpg', 'files/treneri/valko_ml.jpg', 'files/treneri/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(218, 'picture', 'tomas_bugos.jpg', 'files/treneri/tomas_bugos.jpg', 'files/treneri/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(219, 'picture', 'diana_riskova.jpg', 'files/treneri/diana_riskova.jpg', 'files/treneri/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(220, 'picture', 'alexandra_dulakova.jpg', 'files/treneri/alexandra_dulakova.jpg', 'files/treneri/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(221, 'picture', 'lucia_kupcova.jpg', 'files/treneri/lucia_kupcova.jpg', 'files/treneri/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(223, 'picture', 'default_avatar.png', 'files/default_avatar.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm');

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
('sk', 44, 'Biely odznak', '', ''),
('sk', 45, 'Čierny odznak', '', ''),
('sk', 46, 'Z&aacute;pasov&eacute; dresy', '', ''),
('sk', 47, 'Vlajočky', '', ''),
('sk', 48, 'Tr&eacute;ningov&eacute; dresy', '', ''),
('sk', 49, 'Oranžov&eacute; tričko', '', ''),
('sk', 50, 'N&aacute;&scaron; banner na &scaron;tadi&oacute;ne v Čani', '', ''),
('sk', 198, 'Bunda', '', ''),
('sk', 199, 'Čiapka', '', ''),
('sk', 200, 'Kr&aacute;tke nohavice', '', ''),
('sk', 201, 'Mikina', '', ''),
('sk', 202, 'Poloko&scaron;eľa', '', ''),
('sk', 203, 'Ribano', '', ''),
('sk', 204, '&Scaron;&aacute;l', '', ''),
('sk', 205, '&Scaron;iltovka', '', ''),
('sk', 206, '&Scaron;tulpne', '', ''),
('sk', 207, 'Univerzitn&aacute; mikina', '', ''),
('sk', 208, 'Dres čiarov&eacute;ho rozhodcu', '', ''),
('sk', 209, 'Dres hlavn&eacute;ho rozhodcu', '', ''),
('sk', 210, 'Hrnček čierny', '', ''),
('sk', 211, 'Hrnček oranžov&yacute;', '', ''),
('sk', 212, 'Kľ&uacute;čenky a magnetky ', '', ''),
('sk', 213, 'Minidres', '', ''),
('sk', 214, 'Puk', '', ''),
('sk', 215, '&Scaron;&aacute;lka', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `notification`
--

INSERT INTO `notification` (`id_notification`, `date_creation`, `code`, `category`, `title`, `content`, `read`) VALUES
(1, '2015-06-30', 'sitemap_refresh', 'System', 'Sitemap refresh', 'Sitemap needs to be refreshed.<br/> Go to <b>Tools > System Diagnosis > Tools</b> and click on <b>"Refresh Sitemap"</b>.', 1),
(2, '2015-07-21', 'sitemap_refresh', 'System', 'Sitemap refresh', 'Sitemap needs to be refreshed.<br/> Go to <b>Tools > System Diagnosis > Tools</b> and click on <b>"Refresh Sitemap"</b>.', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page`
--

INSERT INTO `page` (`id_page`, `id_parent`, `id_menu`, `id_type`, `id_subnav`, `name`, `ordering`, `level`, `online`, `home`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `appears`, `has_url`, `view`, `view_single`, `article_list_view`, `article_view`, `article_order`, `article_order_direction`, `link`, `link_type`, `link_id`, `pagination`, `priority`, `used_by_module`, `deny_code`) VALUES
(1, 0, 2, 0, 0, '404', 2, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(2, 0, 2, 0, 0, '401', 3, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(3, 0, 2, 0, 0, '403', 4, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 0, NULL, NULL),
(4, 0, 1, 0, 0, 'home', 1, 0, 1, 1, NULL, 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-17 12:08:38', '0000-00-00 00:00:00', 1, 1, 'page_home', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(5, 0, 1, 0, 0, 'o-nas', 3, 0, 1, 0, 'admin', 'admin', '2015-04-15 11:41:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-20 13:51:13', '0000-00-00 00:00:00', 1, 1, 'page_single_article', 'page_single_article', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(7, 0, 1, 0, 0, 'zapasy', 4, 0, 1, 0, 'admin', NULL, '2015-04-15 11:41:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(8, 0, 1, 0, 0, 'sportoviska', 5, 0, 1, 0, 'admin', NULL, '2015-04-15 11:42:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(9, 0, 1, 0, 0, '2-z-dani', 7, 0, 1, 0, 'admin', 'admin', '2015-04-15 11:42:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 09:49:24', '0000-00-00 00:00:00', 1, 1, 'page_blog_post', '', '', '', 'ordering', 'ASC', '2% z dani', 'article', '9.38', 0, 5, 0, '404'),
(10, 0, 1, 0, 0, 'fotogaleria', 6, 0, 1, 0, 'admin', 'admin', '2015-04-15 11:42:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-30 10:16:50', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(11, 0, 1, 0, 0, 'kontakt', 8, 0, 1, 0, 'admin', 'admin', '2015-04-15 11:42:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-15 15:53:16', '0000-00-00 00:00:00', 1, 1, 'page_contact', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(13, 5, 1, 0, 0, 'filozofia-skoly', 8, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:25:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-24 17:09:19', '0000-00-00 00:00:00', 1, 1, 'page_blog_post', 'page_blog_post', '', '', 'ordering', 'ASC', 'Filozofia školy', 'article', '13.8', 0, 5, 0, '404'),
(14, 5, 1, 0, 0, 'zoznam-hracov', 9, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:26:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-17 07:50:49', '0000-00-00 00:00:00', 1, 1, 'page_players', '', '', '', 'ordering', 'ASC', '', '', '', 0, 5, 0, '404'),
(15, 5, 1, 0, 0, 'treneri', 10, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:29:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-21 08:38:54', '0000-00-00 00:00:00', 1, 1, 'page_treners', 'page_trener', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(16, 5, 1, 0, 0, 'rozpis-treningov', 11, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:29:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-27 17:19:33', '0000-00-00 00:00:00', 1, 1, 'page_blog_post', '', '', '', 'ordering', 'ASC', 'Rozpis tréningov', 'article', '16.25', 0, 5, 0, '404'),
(17, 5, 1, 0, 0, 'specialne-brankarske-treningy', 12, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:31:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 08:55:25', '0000-00-00 00:00:00', 1, 1, 'page_trenings_form', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(18, 5, 1, 0, 0, 'prihlasky', 13, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:32:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-06 15:14:28', '0000-00-00 00:00:00', 1, 1, 'page_entry', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(19, 5, 1, 0, 0, 'clanky', 14, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:32:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-17 10:57:40', '0000-00-00 00:00:00', 1, 1, 'page_press', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(20, 5, 1, 0, 0, 'reklamne-predmety', 15, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:32:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 14:53:42', '0000-00-00 00:00:00', 1, 1, 'page_products', '', '', '', 'ordering', 'ASC', '', '', '', 0, 5, 0, '404'),
(21, 5, 1, 0, 0, 'kodex-klubu-1', 16, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:41:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 10:17:41', '0000-00-00 00:00:00', 1, 1, '', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(25, 7, 1, 0, 0, 'kempy', 3, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:42:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 15:50:07', '0000-00-00 00:00:00', 1, 1, 'page_camps', 'page_single_camp', '', '', 'ordering', 'ASC', '', '', '', 0, 5, 0, '404'),
(26, 8, 1, 0, 0, 'zimny-stadion-cana', 21, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:43:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-04-15 13:46:11', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', 'http://www.zimnystadioncana.sk/', 'external', '0', 0, 5, 0, '404'),
(27, 10, 1, 0, 0, 'turnaje-1', 22, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:46:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-30 11:57:06', '0000-00-00 00:00:00', 1, 1, 'page_gallery', 'page_single_gallery', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(28, 10, 1, 0, 0, 'cas-mimo-adu', 23, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:46:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-30 12:01:49', '0000-00-00 00:00:00', 1, 1, 'page_gallery', 'page_single_gallery', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(29, 10, 1, 0, 0, 'treningy', 24, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:47:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-30 12:01:58', '0000-00-00 00:00:00', 1, 1, 'page_gallery', 'page_single_gallery', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(30, 10, 1, 0, 0, 'kempy-1', 25, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:47:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-30 12:02:07', '0000-00-00 00:00:00', 1, 1, 'page_gallery', 'page_single_gallery', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(31, 10, 1, 0, 0, 'ostatne', 26, 1, 1, 0, 'admin', 'admin', '2015-04-15 13:47:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-30 12:02:15', '0000-00-00 00:00:00', 1, 1, 'page_gallery', 'page_single_gallery', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(32, 0, 2, 0, 0, 'slideshow', 5, 0, 1, 0, 'admin', NULL, '2015-04-17 11:04:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(33, 0, 2, 0, 0, 'sponsors', 6, 0, 1, 0, 'admin', 'admin', '2015-04-17 13:43:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-30 09:12:21', '0000-00-00 00:00:00', 1, 1, '', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(34, 0, 1, 0, 0, 'news', 2, 0, 1, 0, 'admin', 'admin', '2015-04-20 13:59:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 08:10:17', '0000-00-00 00:00:00', 0, 1, '', 'page_post', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(35, 7, 1, 0, 0, 'tournaments', 2, 1, 1, 0, 'admin', 'admin', '2015-07-20 11:55:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 11:55:24', '0000-00-00 00:00:00', 1, 1, 'page_tournaments', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(36, 7, 1, 0, 0, 'matches', 1, 1, 1, 0, 'admin', 'admin', '2015-07-20 12:49:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-07-20 13:01:22', '0000-00-00 00:00:00', 1, 1, 'page-matches', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404');

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
(1, 1, 1, NULL, 0, NULL, '', '', '', 1),
(2, 2, 1, NULL, 0, NULL, '', '', '', 1),
(3, 3, 1, NULL, 0, NULL, '', '', '', 1),
(4, 15, 1, NULL, 1, NULL, '', '', '', 1),
(9, 38, 1, NULL, 1, NULL, '', '', '', 1),
(11, 44, 1, NULL, 1, NULL, '', '', '', 1),
(13, 8, 1, NULL, 1, NULL, '', '', '', 1),
(14, 62, 1, NULL, 1, NULL, '', '', '', 1),
(14, 63, 1, NULL, 3, NULL, '', '', '', 1),
(14, 86, 1, NULL, 3, NULL, '', '', '', 1),
(14, 87, 1, NULL, 4, NULL, '', '', '', 1),
(15, 12, 1, NULL, 1, NULL, '', '', '', 1),
(15, 21, 1, NULL, 2, NULL, '', '', '', 1),
(15, 22, 1, NULL, 3, NULL, '', '', '', 1),
(15, 23, 1, NULL, 4, NULL, '', '', '', 1),
(15, 79, 1, NULL, 5, NULL, '', '', '', 1),
(15, 80, 1, NULL, 6, NULL, '', '', '', 1),
(15, 81, 1, NULL, 7, NULL, '', '', '', 1),
(15, 82, 1, NULL, 8, NULL, '', '', '', 1),
(15, 83, 1, NULL, 9, NULL, '', '', '', 1),
(15, 84, 1, NULL, 10, NULL, '', '', '', 1),
(15, 85, 1, NULL, 11, NULL, '', '', '', 1),
(16, 25, 1, NULL, 1, NULL, '', '', '', 1),
(17, 30, 1, NULL, 1, NULL, '', '', '', 1),
(18, 29, 1, NULL, 1, NULL, '', '', '', 1),
(19, 66, 1, NULL, 1, NULL, 'external', '', 'http://www.hokej.sk/reprezentacia/clanok130733-Rusnak_Liba_Lukac_Utok_ktory_velebil_aj_Tichonov.htm', 1),
(19, 67, 1, NULL, 2, NULL, 'external', '', 'http://kosice.korzar.sme.sk/c/7749534/igor-liba-vychovava-aj-baletky-mesto-mu-zrejme-znizi-najomne.html', 1),
(19, 68, 1, NULL, 3, NULL, 'external', '', 'http://hokej.idnes.cz/igor-liba-c68-/reprezentace.aspx?c=A150409_2154010_reprezentace_ald', 1),
(20, 75, 1, NULL, 1, NULL, '', '', '', 1),
(20, 76, 1, NULL, 2, NULL, '', '', '', 1),
(20, 77, 1, NULL, 3, NULL, '', '', '', 1),
(21, 26, 1, NULL, 1, NULL, '', '', '', 1),
(21, 27, 1, NULL, 2, NULL, '', '', '', 1),
(21, 71, 1, NULL, 3, NULL, '', '', '', 1),
(25, 78, 1, NULL, 2, NULL, '', '', '', 1),
(27, 39, 1, NULL, 1, NULL, '', '', '', 1),
(27, 40, 1, NULL, 2, NULL, '', '', '', 1),
(27, 45, 1, NULL, 3, NULL, '', '', '', 1),
(27, 46, 1, NULL, 4, NULL, '', '', '', 1),
(27, 47, 1, NULL, 5, NULL, '', '', '', 1),
(27, 48, 1, NULL, 6, NULL, '', '', '', 1),
(27, 49, 1, NULL, 7, NULL, '', '', '', 1),
(27, 50, 1, NULL, 8, NULL, '', '', '', 1),
(27, 51, 1, NULL, 9, NULL, '', '', '', 1),
(27, 52, 1, NULL, 10, NULL, '', '', '', 1),
(27, 53, 1, NULL, 11, NULL, '', '', '', 1),
(27, 54, 1, NULL, 12, NULL, '', '', '', 1),
(27, 55, 1, NULL, 13, NULL, '', '', '', 1),
(27, 56, 1, NULL, 14, NULL, '', '', '', 1),
(29, 41, 1, NULL, 1, NULL, '', '', '', 1),
(29, 58, 1, NULL, 2, NULL, '', '', '', 1),
(29, 59, 1, NULL, 3, NULL, '', '', '', 1),
(29, 60, 1, NULL, 4, NULL, '', '', '', 1),
(30, 42, 1, NULL, 1, NULL, '', '', '', 1),
(30, 57, 1, NULL, 2, NULL, '', '', '', 1),
(31, 43, 1, NULL, 1, NULL, '', '', '', 1),
(32, 5, 1, NULL, 3, 1, '', '', '', 1),
(32, 6, 1, NULL, 2, 1, '', '', '', 1),
(32, 7, 1, NULL, 1, 1, '', '', '', 1),
(34, 16, 1, NULL, 4, NULL, '', '', '', 1),
(34, 17, 1, NULL, 3, NULL, '', '', '', 1),
(34, 69, 1, NULL, 2, NULL, '', '', '', 1),
(34, 70, 1, '0', 1, 0, '', '', '', 1),
(35, 72, 1, NULL, 1, NULL, '', '', '', 1),
(35, 73, 1, NULL, 2, NULL, '', '', '', 1),
(36, 74, 1, NULL, 1, NULL, '', '', '', 1);

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
('sk', 7, 'zapasy', '', 'Zápasy', '', '', '', '', NULL, NULL, 1),
('sk', 8, 'sportoviska', '', 'Športoviská', '', '', '', '', NULL, NULL, 1),
('sk', 9, '2-z-dani', '', '2% z daní', '', '', '', '', '', '', 1),
('sk', 10, 'fotogaleria', '', 'Fotogaléria', '', '', '', '', '', '', 1),
('sk', 11, 'kontakt', '', 'Kontakt', '', '', '', '', '', '', 1),
('sk', 13, 'filozofia-skoly', '', 'Filozofia školy', '', '', '', '', '', '', 1),
('sk', 14, 'zoznam-hracov', '', 'Zoznam hráčov', '', '', '', '', '', '', 1),
('sk', 15, 'treneri', '', 'Tréneri', '', '', '', '', '', '', 1),
('sk', 16, 'rozpis-treningov', '', 'Rozpis tréningov', '', '', '', '', '', '', 1),
('sk', 17, 'specialne-brankarske-treningy', '', 'Špeciálne brankárske tréningy', '', '', '', '', '', '', 1),
('sk', 18, 'prihlaska', '', 'Prihláška', '', '', '', '', '', '', 1),
('sk', 19, 'clanky', '', 'Články', '', '', '', '', '', '', 1),
('sk', 20, 'reklamne-predmety', '', 'Reklamné predmety', '', '', '', '', '', '', 1),
('sk', 21, 'kodex-klubu', '', 'Kódex klubu', '', '', '', '', '', '', 1),
('sk', 25, 'kempy', '', 'Kempy', '', '', '', '', '', '', 1),
('sk', 26, 'zimny-stadion-cana', '', 'Zimný štadión Čaňa', '', '', '', '', '', '', 1),
('sk', 27, 'turnaje', '', 'Turnaje', '', '', '', '', '', '', 1),
('sk', 28, 'cas-mimo-adu', '', 'Čas mimo ľadu', '', '', '', '', '', '', 1),
('sk', 29, 'treningy', '', 'Tréningy', '', '', '', '', '', '', 1),
('sk', 30, 'kempy', '', 'Kempy', '', '', '', '', '', '', 1),
('sk', 31, 'ostatne', '', 'Ostatné', '', '', '', '', '', '', 1),
('sk', 32, 'slideshow', '', 'slideshow', '', '', '', '', NULL, NULL, 1),
('sk', 33, 'sponsors', '', 'sponsors', '', '', '', '', '', '', 1),
('sk', 34, 'news', '', 'Aktuality', '', '', '', '', '', '', 1),
('sk', 35, 'tournaments', '', 'Turnaje', '', '', '', '', '', '', 1),
('sk', 36, 'matches', '', 'Zápasy', '', '', '', '', '', '', 1);

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
(33, 32, 1, 28, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

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
(41, 'site_title', 'Igor Liba', 'sk'),
(42, 'last_notification_refresh', '2015-07-21 07:56:32', ''),
(43, 'last_version', '1.0.7', ''),
(44, 'meta_keywords', '', 'sk'),
(45, 'meta_description', 'Hockey liba academy', 'sk'),
(46, 'google_analytics_id', '', ''),
(47, 'google_analytics_profile_id', '', ''),
(48, 'google_analytics_url', '', ''),
(49, 'google_analytics_email', 'admin', ''),
(50, 'google_analytics_password', 'papatr3s', ''),
(51, 'dashboard_google', '', ''),
(52, 'email_technical', '', ''),
(53, 'email_contact', 'frank238238@gmail.com', ''),
(54, 'email_info', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=699 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `url`
--

INSERT INTO `url` (`id_url`, `id_entity`, `type`, `canonical`, `active`, `lang`, `path`, `path_ids`, `full_path_ids`, `creation_date`) VALUES
(605, 1, 'page', 1, 1, 'sk', '404', '1', '1', '2015-07-21 14:27:00'),
(606, 2, 'page', 1, 1, 'sk', '401', '2', '2', '2015-07-21 14:27:00'),
(607, 3, 'page', 1, 1, 'sk', '403', '3', '3', '2015-07-21 14:27:00'),
(608, 4, 'page', 1, 1, 'sk', 'home', '4', '4', '2015-07-21 14:27:00'),
(609, 15, 'article', 1, 1, 'sk', 'home/uvod', '4/15', '4/15', '2015-07-21 14:27:00'),
(610, 5, 'page', 1, 1, 'sk', 'o-nas', '5', '5', '2015-07-21 14:27:01'),
(611, 13, 'page', 1, 1, 'sk', 'o-nas/filozofia-skoly', '5/13', '5/13', '2015-07-21 14:27:01'),
(612, 8, 'article', 1, 1, 'sk', 'o-nas/filozofia-skoly/filozofia-skoly-1', '5/13/8', '5/13/8', '2015-07-21 14:27:01'),
(613, 14, 'page', 1, 1, 'sk', 'o-nas/zoznam-hracov', '5/14', '5/14', '2015-07-21 14:27:02'),
(614, 62, 'article', 1, 1, 'sk', 'o-nas/zoznam-hracov/skupina-1', '5/14/62', '5/14/62', '2015-07-21 14:27:02'),
(615, 63, 'article', 1, 1, 'sk', 'o-nas/zoznam-hracov/skupina-2', '5/14/63', '5/14/63', '2015-07-21 14:27:02'),
(616, 86, 'article', 1, 1, 'sk', 'o-nas/zoznam-hracov/skupina-3', '5/14/86', '5/14/86', '2015-07-21 14:27:02'),
(617, 87, 'article', 1, 1, 'sk', 'o-nas/zoznam-hracov/skupina-4', '5/14/87', '5/14/87', '2015-07-21 14:27:02'),
(618, 15, 'page', 1, 1, 'sk', 'o-nas/treneri', '5/15', '5/15', '2015-07-21 14:27:02'),
(619, 12, 'article', 1, 1, 'sk', 'o-nas/treneri/igor-liba', '5/15/12', '5/15/12', '2015-07-21 14:27:02'),
(620, 21, 'article', 1, 1, 'sk', 'o-nas/treneri/pavel-valko-st.', '5/15/21', '5/15/21', '2015-07-21 14:27:03'),
(621, 22, 'article', 1, 1, 'sk', 'o-nas/treneri/jaromir-dragan', '5/15/22', '5/15/22', '2015-07-21 14:27:03'),
(622, 23, 'article', 1, 1, 'sk', 'o-nas/treneri/slavomir-ilavsk', '5/15/23', '5/15/23', '2015-07-21 14:27:03'),
(623, 79, 'article', 1, 1, 'sk', 'o-nas/treneri/severim-gonci', '5/15/79', '5/15/79', '2015-07-21 14:27:03'),
(624, 80, 'article', 1, 1, 'sk', 'o-nas/treneri/pavol-valko-ml.', '5/15/80', '5/15/80', '2015-07-21 14:27:03'),
(625, 81, 'article', 1, 1, 'sk', 'o-nas/treneri/tomas-bugos', '5/15/81', '5/15/81', '2015-07-21 14:27:03'),
(626, 82, 'article', 1, 1, 'sk', 'o-nas/treneri/diana-riskova-krasokorcuovanie', '5/15/82', '5/15/82', '2015-07-21 14:27:03'),
(627, 83, 'article', 1, 1, 'sk', 'o-nas/treneri/lucia-kupcova-krasokorcuovanie', '5/15/83', '5/15/83', '2015-07-21 14:27:03'),
(628, 84, 'article', 1, 1, 'sk', 'o-nas/treneri/alexandra-dulakova-krasokorcuovanie', '5/15/84', '5/15/84', '2015-07-21 14:27:04'),
(629, 85, 'article', 1, 1, 'sk', 'o-nas/treneri/mirka-lipcakova-krasokorcuovanie', '5/15/85', '5/15/85', '2015-07-21 14:27:04'),
(630, 16, 'page', 1, 1, 'sk', 'o-nas/rozpis-treningov', '5/16', '5/16', '2015-07-21 14:27:04'),
(631, 25, 'article', 1, 1, 'sk', 'o-nas/rozpis-treningov/rozpis-treningov', '5/16/25', '5/16/25', '2015-07-21 14:27:04'),
(632, 17, 'page', 1, 1, 'sk', 'o-nas/specialne-brankarske-treningy', '5/17', '5/17', '2015-07-21 14:27:04'),
(633, 30, 'article', 1, 1, 'sk', 'o-nas/specialne-brankarske-treningy/specialne-treningy', '5/17/30', '5/17/30', '2015-07-21 14:27:05'),
(634, 18, 'page', 1, 1, 'sk', 'o-nas/prihlaska', '5/18', '5/18', '2015-07-21 14:27:05'),
(635, 29, 'article', 1, 1, 'sk', 'o-nas/prihlaska/prihlaska', '5/18/29', '5/18/29', '2015-07-21 14:27:05'),
(636, 19, 'page', 1, 1, 'sk', 'o-nas/clanky', '5/19', '5/19', '2015-07-21 14:27:05'),
(637, 66, 'article', 1, 1, 'sk', 'o-nas/clanky/rusnak-liba-lukac.-utok-ktor-velebil-aj-tichonov', '5/19/66', '5/19/66', '2015-07-21 14:27:06'),
(638, 67, 'article', 1, 1, 'sk', 'o-nas/clanky/igor-liba-vychovava-aj-baletky.-mesto-mu-zrejme-znizi-najomne', '5/19/67', '5/19/67', '2015-07-21 14:27:06'),
(639, 68, 'article', 1, 1, 'sk', 'o-nas/clanky/gretzky-m-stval-nechtl-jit-na-pivo-vzpomina-liba-na-legendu', '5/19/68', '5/19/68', '2015-07-21 14:27:06'),
(640, 20, 'page', 1, 1, 'sk', 'o-nas/reklamne-predmety', '5/20', '5/20', '2015-07-21 14:27:06'),
(641, 75, 'article', 1, 1, 'sk', 'o-nas/reklamne-predmety/apparel', '5/20/75', '5/20/75', '2015-07-21 14:27:06'),
(642, 76, 'article', 1, 1, 'sk', 'o-nas/reklamne-predmety/souvenirs', '5/20/76', '5/20/76', '2015-07-21 14:27:06'),
(643, 77, 'article', 1, 1, 'sk', 'o-nas/reklamne-predmety/other', '5/20/77', '5/20/77', '2015-07-21 14:27:06'),
(644, 21, 'page', 1, 1, 'sk', 'o-nas/kodex-klubu', '5/21', '5/21', '2015-07-21 14:27:07'),
(645, 26, 'article', 1, 1, 'sk', 'o-nas/kodex-klubu/kodex-klubu', '5/21/26', '5/21/26', '2015-07-21 14:27:07'),
(646, 27, 'article', 1, 1, 'sk', 'o-nas/kodex-klubu/ulohy-trenerov', '5/21/27', '5/21/27', '2015-07-21 14:27:07'),
(647, 71, 'article', 1, 1, 'sk', 'o-nas/kodex-klubu/desatoro-pre-rodicov', '5/21/71', '5/21/71', '2015-07-21 14:27:08'),
(648, 7, 'page', 1, 1, 'sk', 'zapasy', '7', '7', '2015-07-21 14:27:08'),
(649, 25, 'page', 1, 1, 'sk', 'zapasy/kempy', '7/25', '7/25', '2015-07-21 14:27:08'),
(650, 78, 'article', 1, 1, 'sk', 'zapasy/kempy/letn-hokejov-kemp-2014', '7/25/78', '7/25/78', '2015-07-21 14:27:08'),
(651, 35, 'page', 1, 1, 'sk', 'zapasy/tournaments', '7/35', '7/35', '2015-07-21 14:27:08'),
(652, 72, 'article', 1, 1, 'sk', 'zapasy/tournaments/sezona-2014-2015', '7/35/72', '7/35/72', '2015-07-21 14:27:09'),
(653, 73, 'article', 1, 1, 'sk', 'zapasy/tournaments/sezona-2013-2014', '7/35/73', '7/35/73', '2015-07-21 14:27:09'),
(654, 36, 'page', 1, 1, 'sk', 'zapasy/matches', '7/36', '7/36', '2015-07-21 14:27:10'),
(655, 74, 'article', 1, 1, 'sk', 'zapasy/matches/sezona-2014-2015', '7/36/74', '7/36/74', '2015-07-21 14:27:10'),
(656, 8, 'page', 1, 1, 'sk', 'sportoviska', '8', '8', '2015-07-21 14:27:10'),
(657, 26, 'page', 1, 1, 'sk', 'sportoviska/zimny-stadion-cana', '8/26', '8/26', '2015-07-21 14:27:10'),
(658, 9, 'page', 1, 1, 'sk', '2-z-dani', '9', '9', '2015-07-21 14:27:11'),
(659, 38, 'article', 1, 1, 'sk', '2-z-dani/2-z-dani', '9/38', '9/38', '2015-07-21 14:27:11'),
(660, 10, 'page', 1, 1, 'sk', 'fotogaleria', '10', '10', '2015-07-21 14:27:11'),
(661, 27, 'page', 1, 1, 'sk', 'fotogaleria/turnaje', '10/27', '10/27', '2015-07-21 14:27:11'),
(662, 39, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/17.04.2014-vekonocny-turnaj-cana-chlapci-skupina-1', '10/27/39', '10/27/39', '2015-07-21 14:27:11'),
(663, 40, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/medzinarodny-hokejovy-turnaj-miskolc-07.04.2014', '10/27/40', '10/27/40', '2015-07-21 14:27:12'),
(664, 45, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/basf-cup-2014-hokejovy-turnaj-5-sht-v-ziline-chlapci-skupina-23', '10/27/45', '10/27/45', '2015-07-21 14:27:13'),
(665, 46, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/prazdninovy-hokejovy-turnaj-v-cani-chlapci-skupina-3', '10/27/46', '10/27/46', '2015-07-21 14:27:13'),
(666, 47, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/prazdninovy-hokejovy-turnaj-v-cani-chlapci-skupina-2', '10/27/47', '10/27/47', '2015-07-21 14:27:13'),
(667, 48, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/turnaj-o-cenu-primatorky-sabinov-skupina-3', '10/27/48', '10/27/48', '2015-07-21 14:27:13'),
(668, 49, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/turnaj-pod-zastitou-primatorky-gelnica-skupina-3', '10/27/49', '10/27/49', '2015-07-21 14:27:14'),
(669, 50, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/l.a.11-dudince-zapas-legiend', '10/27/50', '10/27/50', '2015-07-21 14:27:15'),
(670, 51, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/turnaj-04.01.2014-cana', '10/27/51', '10/27/51', '2015-07-21 14:27:15'),
(671, 52, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/turnaj-30.12.2013-snv', '10/27/52', '10/27/52', '2015-07-21 14:27:15'),
(672, 53, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/turnaj-29.12.2013-trebisov', '10/27/53', '10/27/53', '2015-07-21 14:27:16'),
(673, 54, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/turnaj-22.2.2013-sabinov', '10/27/54', '10/27/54', '2015-07-21 14:27:16'),
(674, 55, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/turnaj-28.3.2013-snv', '10/27/55', '10/27/55', '2015-07-21 14:27:16'),
(675, 56, 'article', 1, 1, 'sk', 'fotogaleria/turnaje/turnaj-29.12.2012-trebisov', '10/27/56', '10/27/56', '2015-07-21 14:27:16'),
(676, 28, 'page', 1, 1, 'sk', 'fotogaleria/cas-mimo-adu', '10/28', '10/28', '2015-07-21 14:27:16'),
(677, 29, 'page', 1, 1, 'sk', 'fotogaleria/treningy', '10/29', '10/29', '2015-07-21 14:27:16'),
(678, 41, 'article', 1, 1, 'sk', 'fotogaleria/treningy/skupina-4', '10/29/41', '10/29/41', '2015-07-21 14:27:16'),
(679, 58, 'article', 1, 1, 'sk', 'fotogaleria/treningy/skupina-1', '10/29/58', '10/29/58', '2015-07-21 14:27:16'),
(680, 59, 'article', 1, 1, 'sk', 'fotogaleria/treningy/fotogaleria-trening-s-rodicmi-28.12.2012', '10/29/59', '10/29/59', '2015-07-21 14:27:16'),
(681, 60, 'article', 1, 1, 'sk', 'fotogaleria/treningy/prve-treningy', '10/29/60', '10/29/60', '2015-07-21 14:27:16'),
(682, 30, 'page', 1, 1, 'sk', 'fotogaleria/kempy', '10/30', '10/30', '2015-07-21 14:27:17'),
(683, 42, 'article', 1, 1, 'sk', 'fotogaleria/kempy/letn-hokejov-kemp-2014', '10/30/42', '10/30/42', '2015-07-21 14:27:18'),
(684, 57, 'article', 1, 1, 'sk', 'fotogaleria/kempy/letny-hokejovy-kemp-2013', '10/30/57', '10/30/57', '2015-07-21 14:27:18'),
(685, 31, 'page', 1, 1, 'sk', 'fotogaleria/ostatne', '10/31', '10/31', '2015-07-21 14:27:19'),
(686, 43, 'article', 1, 1, 'sk', 'fotogaleria/ostatne/mikulas-2013', '10/31/43', '10/31/43', '2015-07-21 14:27:19'),
(687, 11, 'page', 1, 1, 'sk', 'kontakt', '11', '11', '2015-07-21 14:27:20'),
(688, 44, 'article', 1, 1, 'sk', 'kontakt/kontakt', '11/44', '11/44', '2015-07-21 14:27:20'),
(689, 32, 'page', 1, 1, 'sk', 'slideshow', '32', '32', '2015-07-21 14:27:20'),
(690, 5, 'article', 1, 1, 'sk', 'slideshow/zapasy', '32/5', '32/5', '2015-07-21 14:27:21'),
(691, 6, 'article', 1, 1, 'sk', 'slideshow/turnaje', '32/6', '32/6', '2015-07-21 14:27:22'),
(692, 7, 'article', 1, 1, 'sk', 'slideshow/toto-je-nas-tim', '32/7', '32/7', '2015-07-21 14:27:22'),
(693, 33, 'page', 1, 1, 'sk', 'sponsors', '33', '33', '2015-07-21 14:27:22'),
(694, 34, 'page', 1, 1, 'sk', 'news', '34', '34', '2015-07-21 14:27:22'),
(695, 16, 'article', 1, 1, 'sk', 'news/oznam-1', '34/16', '34/16', '2015-07-21 14:27:23'),
(696, 17, 'article', 1, 1, 'sk', 'news/oznam', '34/17', '34/17', '2015-07-21 14:27:23'),
(697, 69, 'article', 1, 1, 'sk', 'news/lorem-ipsum', '34/69', '34/69', '2015-07-21 14:27:24'),
(698, 70, 'article', 1, 1, 'sk', 'news/lorem-ipsum1', '34/70', '34/70', '2015-07-21 14:27:24');

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
(1, 1, '2015-04-15 09:28:59', '2015-07-21 05:56:26', 'admin', 'admin admin', 'admin', 'admin', NULL, NULL, 'QYWmfVcmcZLZzhB1JcE=', 'frank238238@gmail.com', '0a72e12a518d9523');

--
-- Kľúče pre exportované tabuľky
--

--
-- Indexy pre tabuľku `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `api_log`
--
ALTER TABLE `api_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`);

--
-- Indexy pre tabuľku `article_comment`
--
ALTER TABLE `article_comment`
  ADD PRIMARY KEY (`id_article_comment`);

--
-- Indexy pre tabuľku `article_lang`
--
ALTER TABLE `article_lang`
  ADD PRIMARY KEY (`id_article`,`lang`);

--
-- Indexy pre tabuľku `article_media`
--
ALTER TABLE `article_media`
  ADD PRIMARY KEY (`id_article`,`id_media`);

--
-- Indexy pre tabuľku `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id_article`,`id_tag`);

--
-- Indexy pre tabuľku `article_type`
--
ALTER TABLE `article_type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexy pre tabuľku `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id_captcha`);

--
-- Indexy pre tabuľku `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexy pre tabuľku `category_lang`
--
ALTER TABLE `category_lang`
  ADD PRIMARY KEY (`id_category`,`lang`);

--
-- Indexy pre tabuľku `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`id_element`), ADD KEY `idx_element_id_element_definition` (`id_element_definition`), ADD KEY `idx_element_id_parent` (`id_parent`), ADD KEY `idx_element_parent` (`parent`);

--
-- Indexy pre tabuľku `element_definition`
--
ALTER TABLE `element_definition`
  ADD PRIMARY KEY (`id_element_definition`);

--
-- Indexy pre tabuľku `element_definition_lang`
--
ALTER TABLE `element_definition_lang`
  ADD PRIMARY KEY (`id_element_definition`,`lang`);

--
-- Indexy pre tabuľku `event_log`
--
ALTER TABLE `event_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pre tabuľku `extend_field`
--
ALTER TABLE `extend_field`
  ADD PRIMARY KEY (`id_extend_field`), ADD KEY `idx_extend_field_parent` (`parent`), ADD KEY `idx_extend_field_id_parent` (`id_parent`);

--
-- Indexy pre tabuľku `extend_fields`
--
ALTER TABLE `extend_fields`
  ADD PRIMARY KEY (`id_extend_fields`), ADD KEY `idx_extend_fields_id_parent` (`id_parent`), ADD KEY `idx_extend_fields_lang` (`lang`), ADD KEY `idx_extend_fields_id_extend_field` (`id_extend_field`);

--
-- Indexy pre tabuľku `extend_field_lang`
--
ALTER TABLE `extend_field_lang`
  ADD PRIMARY KEY (`id_extend_field`,`lang`);

--
-- Indexy pre tabuľku `extend_field_type`
--
ALTER TABLE `extend_field_type`
  ADD PRIMARY KEY (`id_extend_field_type`);

--
-- Indexy pre tabuľku `ion_sessions`
--
ALTER TABLE `ion_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexy pre tabuľku `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexy pre tabuľku `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id_item`,`parent`,`id_parent`);

--
-- Indexy pre tabuľku `item_definition`
--
ALTER TABLE `item_definition`
  ADD PRIMARY KEY (`id_item_definition`);

--
-- Indexy pre tabuľku `item_definition_lang`
--
ALTER TABLE `item_definition_lang`
  ADD PRIMARY KEY (`id_item_definition`,`lang`);

--
-- Indexy pre tabuľku `item_lang`
--
ALTER TABLE `item_lang`
  ADD PRIMARY KEY (`id_item`,`lang`);

--
-- Indexy pre tabuľku `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`lang`);

--
-- Indexy pre tabuľku `login_tracker`
--
ALTER TABLE `login_tracker`
  ADD PRIMARY KEY (`ip_address`);

--
-- Indexy pre tabuľku `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id_media`);

--
-- Indexy pre tabuľku `media_lang`
--
ALTER TABLE `media_lang`
  ADD PRIMARY KEY (`id_media`,`lang`);

--
-- Indexy pre tabuľku `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexy pre tabuľku `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id_module`), ADD KEY `i_module_name` (`name`);

--
-- Indexy pre tabuľku `module_setting`
--
ALTER TABLE `module_setting`
  ADD PRIMARY KEY (`id_module_setting`);

--
-- Indexy pre tabuľku `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id_note`);

--
-- Indexy pre tabuľku `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notification`);

--
-- Indexy pre tabuľku `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`), ADD KEY `idx_page_id_parent` (`id_parent`), ADD KEY `idx_page_level` (`level`), ADD KEY `idx_page_menu` (`id_menu`);

--
-- Indexy pre tabuľku `page_article`
--
ALTER TABLE `page_article`
  ADD PRIMARY KEY (`id_page`,`id_article`), ADD KEY `idx_page_article_id_type` (`id_type`);

--
-- Indexy pre tabuľku `page_lang`
--
ALTER TABLE `page_lang`
  ADD PRIMARY KEY (`id_page`,`lang`);

--
-- Indexy pre tabuľku `page_media`
--
ALTER TABLE `page_media`
  ADD PRIMARY KEY (`id_page`,`id_media`);

--
-- Indexy pre tabuľku `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id_resource`), ADD UNIQUE KEY `resource_key` (`resource`);

--
-- Indexy pre tabuľku `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`), ADD UNIQUE KEY `role_code` (`role_code`);

--
-- Indexy pre tabuľku `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id_role`,`resource`,`actions`);

--
-- Indexy pre tabuľku `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`), ADD UNIQUE KEY `idx_unq_setting` (`name`,`lang`);

--
-- Indexy pre tabuľku `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexy pre tabuľku `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- Indexy pre tabuľku `ui_element`
--
ALTER TABLE `ui_element`
  ADD PRIMARY KEY (`id_ui_element`);

--
-- Indexy pre tabuľku `ui_element_lk_extend`
--
ALTER TABLE `ui_element_lk_extend`
  ADD PRIMARY KEY (`id_ui_element`,`id_extend`);

--
-- Indexy pre tabuľku `url`
--
ALTER TABLE `url`
  ADD PRIMARY KEY (`id_url`), ADD KEY `idx_url_type` (`type`), ADD KEY `idx_url_active` (`active`), ADD KEY `idx_url_lang` (`lang`);

--
-- Indexy pre tabuľku `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`), ADD UNIQUE KEY `username` (`username`), ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT pre exportované tabuľky
--

--
-- AUTO_INCREMENT pre tabuľku `api_key`
--
ALTER TABLE `api_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `api_log`
--
ALTER TABLE `api_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT pre tabuľku `article_comment`
--
ALTER TABLE `article_comment`
  MODIFY `id_article_comment` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `article_type`
--
ALTER TABLE `article_type`
  MODIFY `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pre tabuľku `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id_captcha` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `element`
--
ALTER TABLE `element`
  MODIFY `id_element` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pre tabuľku `element_definition`
--
ALTER TABLE `element_definition`
  MODIFY `id_element_definition` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pre tabuľku `event_log`
--
ALTER TABLE `event_log`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `extend_field`
--
ALTER TABLE `extend_field`
  MODIFY `id_extend_field` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pre tabuľku `extend_fields`
--
ALTER TABLE `extend_fields`
  MODIFY `id_extend_fields` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT pre tabuľku `extend_field_type`
--
ALTER TABLE `extend_field_type`
  MODIFY `id_extend_field_type` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT pre tabuľku `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `item_definition`
--
ALTER TABLE `item_definition`
  MODIFY `id_item_definition` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `media`
--
ALTER TABLE `media`
  MODIFY `id_media` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT pre tabuľku `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pre tabuľku `module`
--
ALTER TABLE `module`
  MODIFY `id_module` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `module_setting`
--
ALTER TABLE `module_setting`
  MODIFY `id_module_setting` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `note`
--
ALTER TABLE `note`
  MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `notification`
--
ALTER TABLE `notification`
  MODIFY `id_notification` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pre tabuľku `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT pre tabuľku `resource`
--
ALTER TABLE `resource`
  MODIFY `id_resource` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT pre tabuľku `role`
--
ALTER TABLE `role`
  MODIFY `id_role` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pre tabuľku `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pre tabuľku `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `ui_element`
--
ALTER TABLE `ui_element`
  MODIFY `id_ui_element` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pre tabuľku `url`
--
ALTER TABLE `url`
  MODIFY `id_url` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=699;
--
-- AUTO_INCREMENT pre tabuľku `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
