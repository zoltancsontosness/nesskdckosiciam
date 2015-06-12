-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Pi 12.Jún 2015, 10:54
-- Verzia serveru: 5.6.21
-- Verzia PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáza: `ionize1`
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
(1, '404', 'demo', 'demo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-10 09:18:48', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(4, 'welcome-to-ionize', 'demo', 'demo', '2012-11-17 12:48:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-11-20 17:05:20', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(5, 'article-1', 'demo', 'admin', '2012-11-17 13:58:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-11 09:59:50', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(6, 'article-2', 'demo', 'admin', '2012-11-17 13:58:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-18 12:54:41', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(11, 'easy-edition', 'demo', 'demo', '2012-11-21 10:44:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-11-21 10:44:50', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(12, 'multilingual', 'demo', 'demo', '2012-11-21 10:46:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-11-21 10:46:28', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(13, 'userfriendly', 'demo', 'admin', '2012-11-21 10:46:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-28 08:47:37', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(14, 'template-system', 'demo', 'admin', '2012-11-21 10:47:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-21 08:54:57', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(15, 'about-us', 'demo', 'demo', '2012-11-21 11:42:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-27 01:15:33', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(16, 'footer-resources', 'demo', 'demo', '2012-11-21 11:52:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:33:05', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(17, 'service-1', 'demo', 'demo', '2012-12-06 14:34:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-27 01:15:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(18, 'service-2', 'demo', 'admin', '2012-12-06 14:38:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 12:40:27', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(19, 'service-3', 'demo', 'admin', '2012-12-06 14:38:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-07 12:40:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(20, 'service-4', 'demo', 'admin', '2012-12-06 14:39:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-08 07:50:12', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(24, 'contact-informations', 'demo', 'michelange', '2012-12-07 10:01:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-04-05 12:20:46', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(26, 'our-location', 'demo', 'demo', '2012-12-07 10:07:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 20:04:28', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(27, 'whats-ionize', 'demo', 'demo', '2012-12-21 16:27:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:27:54', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(28, 'can-i-help', 'demo', 'demo', '2012-12-21 16:30:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:30:10', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(29, 'send-us-a-message', 'demo', 'demo', '2012-12-21 17:04:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:04:43', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(30, 'not-logged-in', 'demo', 'demo', '2012-12-22 10:54:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-22 10:54:43', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(31, 'hello', 'demo', 'demo', '2012-12-22 11:15:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-22 11:42:04', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(32, '401', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(33, '403', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(34, 'slite', 'admin', 'admin', '2015-05-06 09:31:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-06 09:32:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(35, 'sl', 'admin', 'juraj.cangar@ness.com', '2015-05-06 09:36:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-12 10:11:01', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(36, 'al', 'admin', 'admin', '2015-05-07 08:18:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-15 13:40:08', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(37, 'el', 'admin', 'admin', '2015-05-07 08:28:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-28 08:24:56', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(38, '2-z-dani', 'admin', 'admin', '2015-05-07 12:24:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-18 08:14:53', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(39, 'ladislav-gurba', 'admin', 'admin', '2015-05-11 13:08:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-08 09:24:35', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(40, 'karol-petroczi-1996-1997', 'admin', 'admin', '2015-05-11 13:10:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-08 09:23:19', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(41, 'artem-podhajeck-1967-1994', 'admin', 'admin', '2015-05-11 13:11:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-08 09:23:32', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(42, 'jan-grunwald-1964-1967', 'admin', 'admin', '2015-05-11 13:12:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-08 09:23:45', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(43, 'spolupracovnici', 'admin', 'admin', '2015-05-11 13:15:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-11 13:48:32', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(45, 'francuzko-2007', 'admin', 'admin', '2015-05-12 09:33:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-12 09:37:39', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(46, 'spanielsko-2008', 'admin', 'admin', '2015-05-12 09:34:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-12 10:05:10', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(47, 'francuzko-2010', 'admin', 'admin', '2015-05-12 09:38:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-12 10:10:07', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(48, 'filipiny-2014', 'admin', 'admin', '2015-05-12 09:38:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-18 12:23:58', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(49, 'francuzko-2009', 'admin', NULL, '2015-05-12 09:39:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-12 09:39:21', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(50, 'spanielsko-2008-1', 'admin', 'admin', '2015-05-12 09:39:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-12 09:40:12', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(51, 'francuzko-2007-1', 'admin', 'admin', '2015-05-12 09:40:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-12 10:15:09', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(52, 'sodnfoinongovngnoprghperhgpwhrpghpreghipow', 'admin', 'admin', '2015-05-12 11:40:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-12 11:43:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(53, 'musica-iuvenalis-tosca', 'admin', 'admin', '2015-05-13 08:05:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-13 09:31:29', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(54, 'fhsfhstjhgf', 'admin', 'admin', '2015-05-13 09:34:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-13 09:41:35', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(55, 'video', 'admin', 'admin', '2015-05-13 10:00:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-18 11:59:07', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(56, 'musica-iuvenalis-theme-from-schindlers-list', 'admin', NULL, '2015-05-13 10:08:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-13 10:08:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(57, 'musica-iuvenalis-tibor-engler-grieg-piano-concerto-in-a-moll-1-mvt', 'admin', NULL, '2015-05-13 10:12:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-13 10:12:05', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(58, '2-z-dani-pew-musicu-iuvenalis', 'admin', 'admin', '2015-05-13 10:26:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-13 10:27:43', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(59, 'lucie-bila-s-kapelou-petra-malaska-a-musica-iuvenalis-ave-maria', 'admin', NULL, '2015-05-13 10:32:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-13 10:32:50', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(60, 'mladeznick-slacikov-orchester-pri-zus-m.-hemerkovej-hlavna-68-040-01-kosice', 'admin', 'admin', '2015-05-13 10:37:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-15 08:03:45', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(61, 'ahoj-iuvenalis', 'admin', 'admin', '2015-05-15 09:02:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-27 08:46:22', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(62, 'skuska', 'admin', 'admin', '2015-05-18 07:56:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-18 08:14:09', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(63, '2-z-dane', 'admin', 'admin', '2015-05-18 08:20:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-04 08:05:24', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(64, 'musica-iuvenalis-tosca-1', 'admin', 'admin', '2015-05-18 12:04:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-19 10:38:09', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(65, 'musica-iuvenalis-sa-predstavila-na-filipinach', 'admin', 'admin', '2015-05-18 12:12:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-19 09:14:05', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(66, 'oslavy-50.-vrocia', 'admin', 'admin', '2015-05-21 08:11:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-04 09:30:20', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(67, 'sengensk-poludnik', 'admin', 'admin', '2015-05-21 08:18:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-08 10:25:08', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(68, 'sengensk-poludnik-1', 'admin', 'juraj.cangar@ness.com', '2015-05-21 08:44:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-12 10:37:30', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(69, 'koncert-bile-vanoce-s-lucie-bilou-a-kapelou-petra-malaska', 'admin', 'admin', '2015-05-21 08:57:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-03 10:45:56', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(70, 'lucie-bila-s-kapelou-petra-malaska-a-musica-iuvenalis-ave-maria-1', 'admin', NULL, '2015-05-21 09:08:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-21 09:08:54', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(71, 'musica-iuvenalis-sa-predstavila-na-filipinach-1', 'admin', 'admin', '2015-05-21 09:11:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-21 09:12:02', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(72, 'o-nas', 'admin', 'admin', '2015-05-28 08:34:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-28 08:34:32', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(73, 'igor-dohovic', 'admin', 'admin', '2015-05-28 08:35:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-08 08:55:12', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(74, 'engensk-poludnik', 'admin', 'admin', '2015-05-28 12:22:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-28 12:24:26', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(75, '2-z-dane-1', 'admin', 'admin', '2015-05-28 12:30:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-04 08:05:13', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(76, 'oslavy-50.-vrocia-1', 'admin', 'admin', '2015-05-28 12:31:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-04 09:29:56', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(77, 'vianocn-koncert-musica-iuvenalis', 'admin', 'admin', '2015-06-04 07:55:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-04 07:57:23', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(78, 'vianocn-koncert-musica-iuvenalis-1', 'admin', 'admin', '2015-06-04 07:57:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-04 07:58:01', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(79, NULL, NULL, NULL, '2015-06-04 09:30:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-04 09:30:16', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(80, NULL, NULL, NULL, '2015-06-04 09:30:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-04 09:30:21', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(81, 'frantisek-ragulsk', 'admin', 'admin', '2015-06-08 09:20:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-08 09:21:52', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(82, 'arezhdhdfhadr', 'admin', 'admin', '2015-06-08 10:25:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-08 10:26:21', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_category`
--

CREATE TABLE IF NOT EXISTS `article_category` (
  `id_article` int(11) unsigned NOT NULL,
  `id_category` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article_category`
--

INSERT INTO `article_category` (`id_article`, `id_category`) VALUES
(4, 1),
(5, 1),
(5, 2),
(6, 2);

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
(1, 'en', '404', 'Can''t find requested page', '', '', '<p>Maecenas massa. varius non accumsan nec, commodo vitae felis! Quisque luctus, lorem vel elementum aliquam, lorem nulla dignissim velit, id placerat libero ipsum eget sapien. Cras erat risus, pellentesque ut auctor quis, fringilla vel elit. Cras nisl dolor, vulputate eget molestie ut, sollicitudin non dui.</p><h4>Reasons</h4><ul><li>Lorem ipsum dolor sit amet</li><li>Consectetur adipiscing elit</li><li>Nulla volutpat aliquam velit<ul><li>Phasellus iaculis neque</li><li>Purus sodales ultricies</li><li>Vestibulum laoreet porttitor sem</li><li>Ac tristique libero volutpat at</li></ul></li><li>Faucibus porta lacus fringilla vel</li></ul>', '', '', 1),
(4, 'en', 'the-power-of-php', 'The power of PHP', '', '', '<p>The Ionize CMS uses CodeIgniter, a powerful and lightweight PHP framework. For CodeIgniter developpers, starting developping on Ionize will be really easy as building a CI application !</p>', '', '', 1),
(5, 'en', 'article-1', 'O nás', '', '', '<p>Komorný sláčikový orchester Musica Iuvenalis vznikol v roku 1964 pri vtedajšej Ľudovej škole umenia na Sverdlovovej ulici z neprofesionálneho komorného hudobného telesa, ktoré pôsobilo na tejto škole. Prvým dirigentom bol Ján Grünwald. Orchester dlhé roky sídlil pri Ľudovej škole umenia na Sverdlovovej ulici, až kým sa v roku 1991 presťahoval s hudobnou školou, ktorá sa medzitým premenovala na Základnú umeleckú školu Márie Hemerkovej, do priestorov na Hlavnej ulici v Košiciach.</p>\n<p>    Orchester - to sú ľudia a ich osudy. Za tých pár desiatok rokov je to už niekoľko generácií. Členmi orchestra sú predovšetkým študenti stredných a vysokých škôl, ktorí sa venujú hudbe prevažne amatérsky, no za notovými pultmi sedia už aj zamestnaní dospelí ľudia. A čo robia, keď práve nemuzicírujú? Študujú alebo pracujú ako lekári, učitelia, inžinieri, podnikatelia a niektorí sú aj profesionálni hudobníci.</p>\n<p>    Dlhé roky (1967-1994) viedol orchester a veľa svojho času a skúseností odovzdával mladým ľuďom Artem Podhájecký. V rokoch 1994-1996 prevzal taktovku Ladislav Gurbaľ, ktorého v roku 1997 na krátky, ale veľmi produktívny čas vystriedal Karol Petróczi. Po jeho odchode sa umeleckým vedúcim orchestra Musica Iuvenalis stáva v roku 1997 Igor Dohovič, ktorý sám kedysi začínal ako huslista v tomto orchestri. Každý z dirigentov je iný, osobnosť vždy niečím výnimočná. Každý z nich odovzdal orchestru časť svojich skúseností i poznatkov z profesionálneho hudobného sveta. Počas svojho pôsobenia všetci dirigenti formovali duše mladých ľudí a zároveň im umožnili objaviť vždy to pekné, čo všetci dodnes nachádzajú nielen v počúvaní hudby, ale hlavne v aktívnom muzicírovaní.</p>\n<p>    Členovia orchestra sa stretávajú dvakrát týždenne na pravidelných skúškach v priestoroch hudobnej školy. Trojhodinový maratón tvrdej práce, zábavy a hudby. A výsledok si môžu poslucháči vypočuť na pravidelných vianočných, veľkonočných a výročných koncertoch, plesoch, vernisážach výstav, ale hlavne na hudobných festivaloch na Slovensku i v zahraničí. Počas svojej dlhoročnej histórie získal orchester Musica Iuvenalis mnoho ocenení doma i v zahraničí. Orchester sa zúčastňuje Festivalu neprofesionálnych komorných a symfonických telies „Divertimento Musicale ” . Niekoľkonásobným získaním prvého miesta s pochvalou poroty na Európskom hudobnom festivale mládeže v belgickom Neerpelte sa vo svojej kategórii dostal medzi európsku špičku. Viacnásobné pozvanie a účasť na Európskom festivale hudby mladých v portugalskom Vila Nova de Gaia boli uznaním dlhoročnej práce. Orchester úspešne reprezentuje na koncertoch v Českej republike, Poľsku, Maďarsku, Nemecku, Ukrajine, Španielsku a v Škótsku. Niekoľkokrát nahrával svoj repertoár aj pre Slovenský rozhlas.</p>\n<p>    Orchester a jeho život je úzko spätý s košickým hudobným dianím. Nie sú to len koncerty v rámci hudobnej školy, samostatné koncerty, ale aj spolupráca s viacerými košickými speváckymi zbormi (Košický spevácky zbor učiteľov, zbor Sv. Cecílie, ukrajinský miešaný zbor Karpaty), sólistami z radov žiakov košických hudobných škôl, konzervatória i Štátneho divadla v Košiciach. Zaujímavosťou sú nedávne spoločné vystúpenia vo forme výchovných koncertov s rockovou skupinou Sexit pre žiakov košických škôl i verejnosť.</p>\n<p>    Vrcholným uznaním práce orchestra bola v roku 1994 účasť v programe profesionálneho hudobného podujatia Košická hudobná jar. Na tomto koncerte sa zúčastnilo mnoho osobností košického hudobného života a krásnym gestom podpory bolo aktívne zapojenie bývalých členov orchestra. Spoločný koncert sa stal impulzom pre ďalšie spoločné stretnutia odchovancov Musica Iuvenalis, ktorí sa aj napriek svojim pracovným, rodičovským a mnohým iným povinnostiam a záujmom nechceli vzdať lásky k hudbe, priateľstva a krásneho pocitu z aktívneho muzicírovania a preto sa aj naďalej pravidelne stretávajú.</p>\n<p>    Z celej 40-ročnej histórie nie je ľahké spomenúť všetkých, ktorí sa snažili napomôcť mladým ľuďom v ich ceste životom spolu s hudbou, ktorú majú všetci tak radi. Vďaka patrí rodičom, učiteľom hudobných škôl, košickým hudobným školám, mestu Košice a všetkým, ktorí sa svojou troškou pričinili o to, aby ušľachtilé posolstvo hudby zostalo v duši mladých ľudí zachované.</p>\n<p> </p>', '', '', 1),
(6, 'en', 'igor-dohovic', 'Igor Dohovič', '', '', '<p>Dirigentom orchestra Musica Iuvenalis je v súčasnosti <b>Igor Dohovič</b>.</p>\n<p>- je absolvent Hudobnej akadémie Ľvov (Ukrajina) v triede Bohdana Kasjkiva – husle a v triede Jurija Luciva – operno-symfonické dirigovanie, kde pokračoval v doktorantskom štúdiu.</p>\n<p>- V roku <b>1999</b> sa stal členom dirigentskej asociácie <b>„Conductor´s guild, Inc“</b></p>\n<p>- je autorom a realizátorom projektu koncertov pre mládež pod názvom <b>„Klasická a rocková hudba sa vzájomne nevylučujú“</b>, ktorý v priebehu dvoch rokov malo možnosť vidieť viac ako osem tisíc mladých poslucháčov.</p>\n<p>- je hosťujúcim dirigentom viacerých domácich ale i zahraničných orchestrov (napr. Štátna filharmónia Košice, Filharmónia Bydgoszcz, Lublinská filharmónia, Poznanské operné divadlo či Operné štúdio Hudobnej akadémie Ľvov)</p>\n<p>- v roku <b>2002</b> bol finalistom šiestej Medzinárodnej dirigentskej súťaže Cadaques v Barcelone</p>\n<p>- v roku <b>2003</b> bol osobne pozvaný dirigentom Zubinom Mehtom do Štátnej opery Mníchov na naštudovanie opernej tetralógie Richarda Wagnera.</p>\n<p>- od roku <b>2003</b> - hosťujúci dirigent hudobného festivalu „Viva il canto“, Poľsko, Cieszyn</p>\n<p>- <b>2004</b> - otvárací koncert Middle europe music festival, Žilina</p>\n<p>- <b>2004</b> - Stagione in Spoleto, Taliansko - G. Rossini – L’Italiana in Algeri</p>\n<p>- <b>2005</b> - Riaditeľ festivalu Opery s názvom "Opera ako ju nepoznáme".</p>\n<p>- <b>2005</b> - hosťujúci dirigent festivalu opery, Miskolc</p>\n<p>- <b>2007</b> - členom poroty medzinárodnej dirigentskej súťaže Béla Bartók v meste Cluj, Rumunsko</p>\n<p>- <b>Ako hosťujúci dirigent dirigoval množstvo koncertov a zúčastnil sa mnohých hudobných festivalov v Maďarsku, Českej republike, Portugalsku, Taliansku, Ukrajine, Belgicku, Poľsku, Škótsku, Španielsku, Japonsku, Francúzsku a iných.</b></p>\n<p><b>Kompletný životopis v angličtine si je možné pozrieť na <a href="http://www.google.sk" target="_blank">stránke</a>.<br /></b></p>', '', '', 1),
(11, 'en', 'easy-edition', 'Easy edition', '', '', '<p>Copy / paste content from any word processing software. Inline links are automatically converted to hyperlinks. Emails are safely encoded to avoid spam.</p>', NULL, NULL, 1),
(12, 'en', 'multilingual', 'Multilingual', '', '', '<p>You can create as much languages as you need for your website. Every content can be translated : posts, static elements in templates, media data, etc.</p>', NULL, NULL, 1),
(13, 'en', 'najblizsie-koncerty', 'Najbližšie koncerty', '', '', '<h3>Sobota 09. 05. 2015 o 19:30 hod.<br />Konzerthaus Viedeň, Mozart-Saal</h3>\n<p><strong>Konstantin Schenk, </strong>dirigent<br /><strong>Tamara Trojani, spev</strong></p>', '', '', 1),
(14, 'en', 'template-system', 'Aktuality', '', '', '<p><strong> 2% z dane</strong></p>\n<p></p>\n<p>Po vydarených oslavách 50-tych narodením nášho orchestra je tu opäť príležitosť podporiť nás tým, že nám darujete Vaše 2% z dane.</p>\n<p>Ak nás podporíte vašimi dvomi percentami, prispejete tak k rozvoju orchestra Musica Iuvenalis a mladých ľudí, ktorí majú chuť stretávať sa, zahrať si a tešiť vás jednou z najkrajších vecí, ktorou je hudba.</p>\n<p></p>\n<p></p>\n<p><br /><br /></p>\n<p></p>\n<p></p>\n<p><strong><br /></strong></p>', '', '', 1),
(15, 'en', 'about-us-1', 'About Us', '', '', '<p>Duis diam tortor, suscipit sed varius id, dictum interdum tortor. Vivamus vel sapien vitae metus aliquet vehicula. Cras nec odio a dui sagittis semper? Nullam non luctus nisl. Cras ante ante, elementum a porta sit amet, aliquet in felis. Cras dictum metus non felis fermentum in mattis nisl dignissim. Suspendisse suscipit diam id ipsum elementum sed commodo massa ullamcorper. Curabitur tincidunt enim at ipsum aliquam a sagittis eros vulputate. Etiam elementum gravida ipsum eget congue. Pellentesque tempus facilisis odio, at porta nibh pulvinar vel.</p><p>Donec rutrum lectus eget enim aliquet in sollicitudin elit vestibulum. Sed iaculis mi quis ipsum congue elementum. Proin turpis urna, rutrum id vehicula et, cursus vel purus. Proin tincidunt, odio sed congue ultricies. Risus erat rhoncus leo, in fringilla elit libero vel metus. Sed adipiscing, orci vitae iaculis laoreet, ante nibh facilisis sem, ac pulvinar nunc risus sit amet nisl.</p>', '', '', 1),
(16, 'en', 'footer-resources', 'Online resources', '', '', '<p><strong>Community</strong> : Ionize''s forum<br /><strong>Project hosting</strong> : Ionize on github</p><p><strong>Last version</strong> : Download Ionize</p><p><strong>Contact</strong> : team@ionizecms.com</p>', '', '', 1),
(17, 'en', 'some-of-our-services', 'What we do for you', '', '', '<p>Suspendisse nec erat lacus? Morbi pharetra elit ac nibh ornare a vulputate urna dictum?</p><p>Vestibulum eu justo sit amet nulla adipiscing imperdiet. Nullam venenatis tortor nec mauris viverra at rutrum lacus ultricies. Sed condimentum aliquet congue! Aenean sed justo sapien.</p><p>Fusce ut turpis mauris. Phasellus ac felis arcu, semper rhoncus nisi? Quisque tortor nisl; convallis et varius vel, ullamcorper sit amet neque. Sed semper aliquam rutrum.</p><p>Phasellus ac nisl et quam laoreet interdum ultrices vel dui. Mauris et urna sed tortor molestie blandit quis vel sapien. Cras tempus sollicitudin magna eu faucibus. Nulla dapibus pharetra dapibus.</p>', '', '', 1),
(18, 'en', 'service-1', ' BENEFIČNÝ KONCERT JESENNÁ HARMÓNIA', '', '', '<p>(dobrovoľné vstupné), Dom Umenia, 17:00, Košice</p>', '', '', 1),
(19, 'en', 'service-2', 'Vianočný koncert Musica Iuvenalis', '', '', '<p>Kostol Premonštrátov, 20:00, Košice</p>', '', '', 1),
(20, 'en', 'slavnostny-galaprogram-dna-mesta-kosice', 'Slávnostný Galaprogram dňa mesta Košice', 'Schodisko Magistrátu Mesta Košice, 20:00, Košice', '', '<p>Schodisko Magistrátu Mesta Košice, 20:00, Košice</p>', '', '', 1),
(24, 'en', 'contact-informations', 'Contact Informations', '', '', '<p><strong>Ionize CMS</strong><br /> This is our street<br />AABBCC In This City</p>\n<p><strong>Tel</strong> : +33 012345678<strong><br />Email : </strong>team@ionizecms.com</p>', '', '', 1),
(26, 'en', 'our-location', 'Our location', '', '', '<p><iframe width="100%" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.fr/maps?f=q&amp;source=s_q&amp;hl=fr&amp;geocode=&amp;aq=&amp;sll=48.876161,2.377124&amp;sspn=0.007296,0.018175&amp;gl=fr&amp;g=villa+Marcel+Lods&amp;ie=UTF8&amp;hq=&amp;ll=48.876161,2.377124&amp;spn=0.001824,0.004544&amp;t=m&amp;z=16&amp;output=embed"></iframe></p>', '', '', 1),
(27, 'en', 'whats-ionize', 'What''s Ionize ?', '', '', '<p>Ionize is an Open Source content management system created by webdesigners for webdesigners.</p><p>Originally <a title="Ionize''s development agence internet" href="http://www.ionizecms.com/en/about">created by Partikule and Toopixel</a> for their clients, Ionize is today an OpenSource project, so everybody can build easy to maintain websites.</p>', NULL, NULL, 1),
(28, 'en', 'can-i-help', 'Can I help ?', '', '', '<p>Because talent is nothing without involvement, we are looking for motivated coders and webdesigners to join the project team.</p><p>You have a module idea ?<br />You want to make some improvement ?<br />You wants to get involved in a promising CMS ?</p>', '', '', 1),
(29, 'en', 'send-us-a-message', 'Send us a message !', '', '', '', NULL, NULL, 1),
(30, 'en', 'not-logged-in', 'Not logged in', '', '', '', NULL, NULL, 1),
(31, 'en', 'hello', 'Hello', '', '', '<p>Welcome to your account management page.</p>', '', '', 1),
(32, 'en', '401', '401', 'Please login', NULL, '<p>Please login to see this content.</p>', NULL, NULL, 1),
(33, 'en', '403', '403', 'Forbidden', NULL, '<p>This content is forbidden.</p>', NULL, NULL, 1),
(34, 'en', 'slite', 'slite', '', '', '', '', '', 1),
(35, 'en', 'ahoj-iuvenalis', 'Ahoj Iuvenalis', 'Ako sa máte v tento deň', '', '', '', '', 1),
(36, 'en', 'ahoj-iuvenalis-1', 'Ahoj Iuvenalis', 'Ako sa máte', '', '', '', '', 1),
(37, 'en', 'ahoj-iuvenalis-2', 'Ahoj Iuvenalis', 'Ako sa máte', '', '', '', '', 1),
(38, 'en', '2-z-dani', '2% z daní', '', '', '<p>Po vydarených oslavách 50-tych narodením nášho orchestra je tu opäť príležitosť podporiť nás tým, že nám darujete Vaše 2% z dane.</p>\n<p>Ak nás podporíte vašimi dvomi percentami, prispejete tak k rozvoju orchestra Musica Iuvenalis a mladých ľudí, ktorí majú chuť stretávať sa, zahrať si a tešiť vás jednou z najkrajších vecí, ktorou je hudba.</p>', '', '', 1),
(39, 'en', 'ladislav-gurbal-dirigent-v-rokoch-1994-1996-1998', 'Ladislav Gurbaľ (Dirigent v rokoch 1994 - 1996, 1998)', '(Dirigent v rokoch 1994 - 1996, 1998)', '', '', '', '', 1),
(40, 'en', 'karol-petroczi-dirigent-v-rokoch-1996-1997', 'Karol Petróczi (Dirigent v rokoch 1996 - 1997)', '', '', '', '', '', 1),
(41, 'en', 'artem-podhajecky-dirigent-v-rokoch-1967-1994', 'Artem Podhájecký (Dirigent v rokoch 1967 - 1994)', '', '', '', '', '', 1),
(42, 'en', 'jan-grunwald-dirigent-v-rokoch-1964-1967', 'Ján Grünwald (Dirigent v rokoch 1964 - 1967)', '', '', '', '', '', 1),
(43, 'en', 'spolupracovnici', 'Spolupracovníci', '', '', '<p><strong>František Ragulský - dlhoročný asistent orchestra</strong></p>', '', '', 1),
(45, 'en', 'filipiny-2014', 'Filipíny 2014', '', '', '', '', '', 1),
(46, 'en', 'skotsko-2012', 'Škótsko 2012', '', '', '', '', '', 1),
(47, 'en', 'francuzko-2010', 'Francúzko 2010', '', '', '', '', '', 1),
(48, 'en', 'filipiny-2014', 'Filipíny 2014', '', '', '', '', '', 1),
(49, 'en', 'francuzko-2009', 'Francúzko 2009', '', '', '', NULL, NULL, 1),
(50, 'en', 'spanielsko-2008', 'Španielsko 2008', '', '', '', '', '', 1),
(51, 'en', 'francuzko-2007', 'Francúzko 2007', '', '', '', '', '', 1),
(52, 'en', 'sodnf-oinon-ovng-noprghp-erh-gpw-hrpg-hpr-eghipow', 'sodnf oinon ovng noprghp erh gpw hrpg hpr eghipow', '', '', '', '', '', 1),
(53, 'en', 'musica-iuvenalis-tosca', 'Musica Iuvenalis - Tosca', '', '', '', '', '', 1),
(54, 'en', 'fhsfhstjhgf', 'fhsfhstjhgf', '', '', '<p><iframe width="320" height="240" src="http://www.youtube.com/embed/hPwiy17ASw0"></iframe></p>', '', '', 1),
(55, 'en', 'video', 'Musica Iuvenalis - Tosca', '', '', '<p><object width="425" height="350" data="http://www.youtube.com/embed/cc0SBZ6f1o8" type="application/x-shockwave-flash"><param name="src" value="http://www.youtube.com/embed/cc0SBZ6f1o8" /><param name="frameborder" value="0" /></object></p>', '', '', 1),
(56, 'en', 'musica-iuvenalis-theme-from-schindlers-list', 'Musica Iuvenalis - Theme from Schindler''s list', '', '', '<p><iframe width="320" height="240" src="http://www.youtube.com/embed/pJeQYu6hNPg?rel=1&amp;autoplay=0&amp;wmode=opaque"></iframe></p>', NULL, NULL, 1),
(57, 'en', 'musica-iuvenalis-tibor-engler-grieg-piano-concerto-in-a-moll-1-mvt', 'Musica Iuvenalis & Tibor Engler - Grieg Piano Concerto in A moll 1 mvt', '', '', '<p><iframe width="320" height="240" src="http://www.youtube.com/embed/07F_vvRvN0Y?rel=1&amp;autoplay=0&amp;wmode=opaque"></iframe></p>', NULL, NULL, 1),
(58, 'en', '2-z-dani-pew-musicu-iuvenalis', '2% z daní pre musicu Iuvenalis', '', '', '<p>Po vydarených oslavách 50-tych narodením nášho orchestra je tu opäť príležitosť podporiť nás tým, že nám darujete Vaše 2% z dane.</p>\n<p>Ak nás podporíte vašimi dvomi percentami, prispejete tak k rozvoju orchestra Musica Iuvenalis a mladých ľudí, ktorí majú chuť stretávať sa, zahrať si a tešiť vás jednou z najkrajších vecí, ktorou je hudba.</p>\n<p></p>\n<p><a href="http://musicaiuvenalis.sk/tlacivo2015_MI.pdf" target="_blank">Formulár pre poukázanie 2% z daní si môžete stiahnuť tu</a></p>\n<p> </p>', '', '', 1),
(59, 'en', 'lucie-bila-s-kapelou-petra-malaska-a-musica-iuvenalis-ave-maria', 'Lucie Bílá s kapelou Petra Maláska a Musica Iuvenalis - Ave Maria', '', '', '<p><iframe width="320" height="240" src="http://www.youtube.com/embed/yZ9nRDASsw0?rel=1&amp;autoplay=0&amp;wmode=opaque"></iframe></p>', NULL, NULL, 1),
(60, 'en', 'mladeznick-slacikov-orchester-pri-zus-m.-hemerkovej-hlavna-68-040-01-kosice', 'Mládežnícký sláčikový orchester pri ZUŠ M. Hemerkovej Hlavná 68, 040 01 Košice', '', '', '<p><strong>Mobil:+421 905 215 828 </strong></p>\n<p></p>\n<p><strong>F</strong><strong>ax:+421 55 62 531 12</strong></p>\n<p></p>\n<p>Dirigent: Igor Dohovič - igor@dohovic.com</p>\n<p></p>\n<p>Kontakt na správcu stránky - musica.iuvenalis.web@gmail.com</p>', '', '', 1),
(61, 'en', 'ahoj-iuvenalis-3', 'Ahoj Iuvenalis', 'Ako sa máte', '', '', '', '', 1),
(62, 'en', 'skuska', 'Skúška', '', '', '<p><iframe width="240" height="198" src="http://www.youtube.com/embed/APWok2Q9AAk" frameborder="0"></iframe>fcghfhchh</p>', '', '', 1),
(63, 'en', '2-z-dane-pre-iuvenalis', '2% z dane pre Iuvenalis', '', '', '<p>Po vydarených oslavách 50-tych narodením nášho orchestra je tu opäť príležitosť podporiť nás tým, že nám darujete Vaše 2% z dane.</p>\n<p>Ak nás podporíte vašimi dvomi percentami, prispejete tak k rozvoju orchestra Musica Iuvenalis a mladých ľudí, ktorí majú chuť stretávať sa, zahrať si a tešiť vás jednou z najkrajších vecí, ktorou je hudba.</p>', '', '', 1),
(64, 'en', 'musica-iuvenalis-tosca', 'Musica Iuvenalis - Tosca', '', '', '<p><iframe width="425" height="350" src="http://www.youtube.com/embed/hPwiy17ASw0" frameborder="0"></iframe></p>\n<p>Ahoj ako sa máte</p>', '', '', 1),
(65, 'en', 'musica-iuvenalis-sa-predstavila-na-filipinach', 'Musica Iuvenalis sa predstavila na Filipínach', '', '', '<p><iframe width="425" height="350" src="http://www.youtube.com/embed/pJeQYu6hNPg" frameborder="0"></iframe></p>\n<p>Aj napriek dlhej ceste a náročným tropickým podmienkam sa Musice Iuvenalis podarilo na horúcej filipínskej pôde zožať úspech. Absolvovali sme nádherné koncery, ktoré končili standing ovation a podarilo sa nám zaujať aj domácu tlač!</p>\n<p></p>\n<p><a href="http://entertainment.inquirer.net/147148/music-knows-no-boundaries#ixzz37pWLxeYO" target="_blank">Celý článok si môžete prečítať tu!</a></p>', '', '', 1),
(66, 'en', 'oslavy-50.-vrocia', 'Oslavy 50. výročia', '', '', '<p>Vážení a milí fanúšikovia, členovia orchestra, rodinní príslušníci.Dovolíme si Vás týmto pozvať na slávnostný koncert pri príložitosti osláv 50. výročia založenia orchestra Musica Iuvenalis, ktorý sa uskutoční <b style="font-size: 1em; line-height: 1.5em;">3.1.2015 o 17:00 v košickom Dome Umenia.</b>Lístky na túto výnimočnú udalosť je možné si zakúpiť, ako je už zvykom, u bývalých aj súčasných členov orchestra. Cena jedného lístka je 5 Eur.</p>\n<p>Kontaktné osoby:</p>\n<p>Kamila Rudíková - +421 908 647 713</p>\n<p>Leo Vojčík - +421 905 971 044</p>\n<p>Miriam Salzerová - +421 905 606 118</p>\n<p>Martina Vargová - +412 904 565 066</p>\n<p>Peter Sasák - +421 902 104 961</p>', '', '', 1),
(67, 'en', 'sengensk-poludnik', 'Šengenský poludník', '', '', '<p>Na prelome júna a júla 2014 sa orchester Musica Iuvenalis predstavil na medzinárodnom festivale mládežníckych orchestrov a zborov v spoločnosti národného mládežníckeho orchestra #Virtuoso<br /><br />Spoločne sme predviedli diela G.Pucciniho Tosca, kde sme doprevádzali sólistu P.Krokavca,</p>', '', '', 1),
(68, 'en', 'sengensk-poludnik', 'Šengenský poludník', '', '', '<p>Na prelome júna a júla 2014 sa orchester Musica Iuvenalis predstavil na medzinárodnom festivale mládežníckych orchestrov a zborov v spoločnosti národného mládežníckeho orchestra #Virtuoso<br /><br />Spoločne sme predviedli diela G.Pucciniho Tosca, kde sme doprevádzali sólistu P.Krokavca,</p>\n<p><iframe width="425" height="350" src="http://www.youtube.com/embed/bGnBxYfyrxY" frameborder="0"></iframe></p>\n<p>dielo J.Sibelia Andante Festivo</p>\n<p><iframe width="425" height="350" src="http://www.youtube.com/embed/tjSGUpRL_SI" frameborder="0"></iframe></p>\n<p>a E.Morriconeho Vtedy na západe so sólistkou Luciou Knotekovou</p>\n<p><iframe width="425" height="350" src="http://www.youtube.com/embed/tjSGUpRL_SI" frameborder="0"></iframe></p>', '', '', 1),
(69, 'en', 'koncert-bile-vanoce-s-lucie-bilou-a-kapelou-petra-malaska', 'Koncert - Bíle vánoce s Lucie Bílou a kapelou Petra Maláska', '', '', '<p>Lucia Bíla s kapelou Petra Maláska s názvom Bíle Vánoce</p>', '', '', 1),
(70, 'en', 'lucie-bila-s-kapelou-petra-malaska-a-musica-iuvenalis-ave-maria', 'Lucie Bílá s kapelou Petra Maláska a Musica Iuvenalis - Ave Maria', '', '', '<p><iframe width="425" height="350" src="http://www.youtube.com/embed/yZ9nRDASsw0" frameborder="0"></iframe></p>', NULL, NULL, 1),
(71, 'en', 'musica-iuvenalis-sa-predstavila-na-filipinach-1', 'Musica Iuvenalis sa predstavila na Filipínach', '', '', '<p>Aj napriek dlhej ceste a náročným tropickým podmienkam sa Musice Iuvenalis podarilo na horúcej filipínskej pôde zožať úspech. Absolvovali sme nádherné koncery, ktoré končili standing ovation a podarilo sa nám zaujať aj domácu tlač!</p>\n<p><iframe width="425" height="350" src="http://www.youtube.com/embed/sKtDgXuUeoU" frameborder="0"></iframe></p>\n<p><a href="http://entertainment.inquirer.net/147148/music-knows-no-boundaries#ixzz37pWLxeYO">Celý článok si môžete prečítať tu.</a></p>', '', '', 1),
(72, 'en', 'o-nas', 'O nás', '', '', '<p>Komorný sláčikový orchester Musica Iuvenalis vznikol v roku 1964 pri vtedajšej Ľudovej škole umenia na Sverdlovovej ulici z neprofesionálneho komorného hudobného telesa, ktoré pôsobilo na tejto škole. Prvým dirigentom bol Ján Grünwald. Orchester dlhé roky sídlil pri Ľudovej škole umenia na Sverdlovovej ulici, až kým sa v roku 1991 presťahoval s hudobnou školou, ktorá sa medzitým premenovala na Základnú umeleckú školu Márie Hemerkovej, do priestorov na Hlavnej ulici v Košiciach.</p>\n<p>    Orchester - to sú ľudia a ich osudy. Za tých pár desiatok rokov je to už niekoľko generácií. Členmi orchestra sú predovšetkým študenti stredných a vysokých škôl, ktorí sa venujú hudbe prevažne amatérsky, no za notovými pultmi sedia už aj zamestnaní dospelí ľudia. A čo robia, keď práve nemuzicírujú? Študujú alebo pracujú ako lekári, učitelia, inžinieri, podnikatelia a niektorí sú aj profesionálni hudobníci.</p>\n<p>    Dlhé roky (1967-1994) viedol orchester a veľa svojho času a skúseností odovzdával mladým ľuďom Artem Podhájecký. V rokoch 1994-1996 prevzal taktovku Ladislav Gurbaľ, ktorého v roku 1997 na krátky, ale veľmi produktívny čas vystriedal Karol Petróczi. Po jeho odchode sa umeleckým vedúcim orchestra Musica Iuvenalis stáva v roku 1997 Igor Dohovič, ktorý sám kedysi začínal ako huslista v tomto orchestri. Každý z dirigentov je iný, osobnosť vždy niečím výnimočná. Každý z nich odovzdal orchestru časť svojich skúseností i poznatkov z profesionálneho hudobného sveta. Počas svojho pôsobenia všetci dirigenti formovali duše mladých ľudí a zároveň im umožnili objaviť vždy to pekné, čo všetci dodnes nachádzajú nielen v počúvaní hudby, ale hlavne v aktívnom muzicírovaní.</p>\n<p>    Členovia orchestra sa stretávajú dvakrát týždenne na pravidelných skúškach v priestoroch hudobnej školy. Trojhodinový maratón tvrdej práce, zábavy a hudby. A výsledok si môžu poslucháči vypočuť na pravidelných vianočných, veľkonočných a výročných koncertoch, plesoch, vernisážach výstav, ale hlavne na hudobných festivaloch na Slovensku i v zahraničí. Počas svojej dlhoročnej histórie získal orchester Musica Iuvenalis mnoho ocenení doma i v zahraničí. Orchester sa zúčastňuje Festivalu neprofesionálnych komorných a symfonických telies „Divertimento Musicale ” . Niekoľkonásobným získaním prvého miesta s pochvalou poroty na Európskom hudobnom festivale mládeže v belgickom Neerpelte sa vo svojej kategórii dostal medzi európsku špičku. Viacnásobné pozvanie a účasť na Európskom festivale hudby mladých v portugalskom Vila Nova de Gaia boli uznaním dlhoročnej práce. Orchester úspešne reprezentuje na koncertoch v Českej republike, Poľsku, Maďarsku, Nemecku, Ukrajine, Španielsku a v Škótsku. Niekoľkokrát nahrával svoj repertoár aj pre Slovenský rozhlas.</p>\n<p>    Orchester a jeho život je úzko spätý s košickým hudobným dianím. Nie sú to len koncerty v rámci hudobnej školy, samostatné koncerty, ale aj spolupráca s viacerými košickými speváckymi zbormi (Košický spevácky zbor učiteľov, zbor Sv. Cecílie, ukrajinský miešaný zbor Karpaty), sólistami z radov žiakov košických hudobných škôl, konzervatória i Štátneho divadla v Košiciach. Zaujímavosťou sú nedávne spoločné vystúpenia vo forme výchovných koncertov s rockovou skupinou Sexit pre žiakov košických škôl i verejnosť.</p>\n<p>    Vrcholným uznaním práce orchestra bola v roku 1994 účasť v programe profesionálneho hudobného podujatia Košická hudobná jar. Na tomto koncerte sa zúčastnilo mnoho osobností košického hudobného života a krásnym gestom podpory bolo aktívne zapojenie bývalých členov orchestra. Spoločný koncert sa stal impulzom pre ďalšie spoločné stretnutia odchovancov Musica Iuvenalis, ktorí sa aj napriek svojim pracovným, rodičovským a mnohým iným povinnostiam a záujmom nechceli vzdať lásky k hudbe, priateľstva a krásneho pocitu z aktívneho muzicírovania a preto sa aj naďalej pravidelne stretávajú.</p>\n<p>    Z celej 40-ročnej histórie nie je ľahké spomenúť všetkých, ktorí sa snažili napomôcť mladým ľuďom v ich ceste životom spolu s hudbou, ktorú majú všetci tak radi. Vďaka patrí rodičom, učiteľom hudobných škôl, košickým hudobným školám, mestu Košice a všetkým, ktorí sa svojou troškou pričinili o to, aby ušľachtilé posolstvo hudby zostalo v duši mladých ľudí zachované.</p>\n<p> </p>', '', '', 1),
(73, 'en', 'igor-dohovic-1', 'Igor Dohovič', '', '', '<p>Dirigentom orchestra Musica Iuvenalis je v súčasnosti <b>Igor Dohovič</b>.</p>\n<p>- je absolvent Hudobnej akadémie Ľvov (Ukrajina) v triede Bohdana Kasjkiva – husle a v triede Jurija Luciva – operno-symfonické dirigovanie, kde pokračoval v doktorantskom štúdiu.</p>\n<p>- V roku <b>1999</b> sa stal členom dirigentskej asociácie <b>„Conductor´s guild, Inc“</b></p>\n<p>- je autorom a realizátorom projektu koncertov pre mládež pod názvom <b>„Klasická a rocková hudba sa vzájomne nevylučujú“</b>, ktorý v priebehu dvoch rokov malo možnosť vidieť viac ako osem tisíc mladých poslucháčov.</p>\n<p>- je hosťujúcim dirigentom viacerých domácich ale i zahraničných orchestrov (napr. Štátna filharmónia Košice, Filharmónia Bydgoszcz, Lublinská filharmónia, Poznanské operné divadlo či Operné štúdio Hudobnej akadémie Ľvov)</p>\n<p>- v roku <b>2002</b> bol finalistom šiestej Medzinárodnej dirigentskej súťaže Cadaques v Barcelone</p>\n<p>- v roku <b>2003</b> bol osobne pozvaný dirigentom Zubinom Mehtom do Štátnej opery Mníchov na naštudovanie opernej tetralógie Richarda Wagnera.</p>\n<p>- od roku <b>2003</b> - hosťujúci dirigent hudobného festivalu „Viva il canto“, Poľsko, Cieszyn</p>\n<p>- <b>2004</b> - otvárací koncert Middle europe music festival, Žilina</p>\n<p>- <b>2004</b> - Stagione in Spoleto, Taliansko - G. Rossini – L’Italiana in Algeri</p>\n<p>- <b>2005</b> - Riaditeľ festivalu Opery s názvom "Opera ako ju nepoznáme".</p>\n<p>- <b>2005</b> - hosťujúci dirigent festivalu opery, Miskolc</p>\n<p>- <b>2007</b> - členom poroty medzinárodnej dirigentskej súťaže Béla Bartók v meste Cluj, Rumunsko</p>\n<p>- <b>Ako hosťujúci dirigent dirigoval množstvo koncertov a zúčastnil sa mnohých hudobných festivalov v Maďarsku, Českej republike, Portugalsku, Taliansku, Ukrajine, Belgicku, Poľsku, Škótsku, Španielsku, Japonsku, Francúzsku a iných.</b></p>\n<p><b>Kompletný životopis v angličtine si je možné pozrieť na <a href="http://www.google.sk" target="_blank">stránke</a>.</b></p>', '', '', 1),
(74, 'en', 'engensk-poludnik', 'Šengenský poludník', '', '', '<p>Na prelome júna a júla 2014 sa orchester Musica Iuvenalis predstavil na medzinárodnom festivale mládežníckych orchestrov a zborov v spoločnosti národného mládežníckeho orchestra #Virtuoso<br /><br />Spoločne sme predviedli diela G.Pucciniho Tosca, kde sme doprevádzali sólistu P.Krokavca,</p>', '', '', 1),
(75, 'en', '2-z-dane-pre-iuvenalis', '2 % z dane pre Iuvenalis', '', '', '<p>Po vydarených oslavách 50-tych narodením nášho orchestra je tu opäť príležitosť podporiť nás tým, že nám darujete Vaše 2% z dane.</p>\n<p>Ak nás podporíte vašimi dvomi percentami, prispejete tak k rozvoju orchestra Musica Iuvenalis a mladých ľudí, ktorí majú chuť stretávať sa, zahrať si a tešiť vás jednou z najkrajších vecí, ktorou je hudba.</p>', '', '', 1),
(76, 'en', 'oslavy-50.-vrocia', 'Oslavy 50. výročia', '', '', '<p>Vážení a milí fanúšikovia, členovia orchestra, rodinní príslušníci.Dovolíme si Vás týmto pozvať na slávnostný koncert pri príložitosti osláv 50. výročia založenia orchestra Musica Iuvenalis, ktorý sa uskutoční <b style="font-size: 1em; line-height: 1.5em;">3.1.2015 o 17:00 v košickom Dome Umenia.</b>Lístky na túto výnimočnú udalosť je možné si zakúpiť, ako je už zvykom, u bývalých aj súčasných členov orchestra. Cena jedného lístka je 5 Eur.</p>\n<p>Kontaktné osoby:</p>\n<p>Kamila Rudíková - +421 908 647 713</p>\n<p>Leo Vojčík - +421 905 971 044</p>\n<p>Miriam Salzerová - +421 905 606 118</p>\n<p>Martina Vargová - +412 904 565 066</p>\n<p>Peter Sasák - +421 902 104 961</p>', '', '', 1),
(77, 'en', 'vianocn-koncert-musica-iuvenalis', 'Vianočný koncert Musica Iuvenalis', '', '', '<p>15.12.2012 sme odohrali náš Vianočný koncert už tradične v kostole Premonštrátov na Hlavnej ulici v Košiciach. Spolu s naším orchestrom pod taktovkou <b>Igora Dohoviča</b> na koncerte účinkoval aj Zbor sv. Cecílie pod vedením <b>Viliama Gurbaľa</b>.</p>\n<p>     Vianočný koncert sme začali trošku netradične. Jednotliví členovia orchestra boli rozmiestnení po kostole a postupne sa počas hrania koledy "Carol of the bells" presunuli na pódium. Súčasťou programu boli skladby ako Festival Rondeau zo suity Abdelazer od H. Purcella, A. Corelli - Concerto Grosso, op.6/3 alebo L. Janáček - Suite, výber. Naši sólisti <b>Peter Sasák a Erik Kaptur</b> zahrali sólo zo skladby od J. Williamsa a R. Longfielda - Témy z filmu Schindlerov zoznam.</p>\n<p> </p>', '', '', 1),
(78, 'en', 'vianocn-koncert-musica-iuvenalis', 'Vianočný koncert Musica Iuvenalis', '', '', '', '', '', 1),
(81, 'en', 'frantisek-ragulsk', 'František Ragulský', '', '', '<p>Dlhoročný asistent orchestra</p>', '', '', 1),
(82, 'en', 'arezhdhdfhadr', 'arezhdhdfhadr', '', '', '<p>áukrzáe</p>', '', '', 1);

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
(4, 3, 1, 1, NULL, NULL),
(6, 20, 1, 1, NULL, NULL),
(15, 5, 1, 2, NULL, NULL),
(17, 3, 1, 1, NULL, NULL),
(34, 3, 1, 1, NULL, NULL),
(35, 23, 1, 2, NULL, NULL),
(36, 21, 1, 1, NULL, NULL),
(37, 74, 1, 1, NULL, NULL),
(38, 23, 1, 2, NULL, NULL),
(43, 18, 1, 1, NULL, NULL),
(45, 24, 1, 1, NULL, NULL),
(46, 35, 1, 1, NULL, NULL),
(46, 36, 1, 2, NULL, NULL),
(46, 37, 1, 3, NULL, NULL),
(46, 38, 1, 4, NULL, NULL),
(47, 39, 1, 1, NULL, NULL),
(47, 40, 1, 2, NULL, NULL),
(47, 41, 1, 3, NULL, NULL),
(47, 42, 1, 4, NULL, NULL),
(47, 43, 1, 5, NULL, NULL),
(48, 27, 1, 1, NULL, NULL),
(48, 28, 1, 2, NULL, NULL),
(48, 29, 1, 3, NULL, NULL),
(48, 30, 1, 4, NULL, NULL),
(48, 31, 1, 5, NULL, NULL),
(48, 32, 1, 6, NULL, NULL),
(48, 33, 1, 7, NULL, NULL),
(48, 34, 1, 8, NULL, NULL),
(49, 44, 1, 1, NULL, NULL),
(49, 45, 1, 2, NULL, NULL),
(49, 46, 1, 3, NULL, NULL),
(49, 47, 1, 4, NULL, NULL),
(49, 48, 1, 5, NULL, NULL),
(50, 49, 1, 1, NULL, NULL),
(50, 50, 1, 2, NULL, NULL),
(50, 51, 1, 3, NULL, NULL),
(50, 52, 1, 4, NULL, NULL),
(50, 53, 1, 5, NULL, NULL),
(51, 54, 1, 1, NULL, NULL),
(51, 55, 1, 2, NULL, NULL),
(51, 56, 1, 3, NULL, NULL),
(51, 57, 1, 4, NULL, NULL),
(51, 58, 1, 5, NULL, NULL),
(53, 23, 1, 2, NULL, NULL),
(53, 59, 1, 1, NULL, NULL),
(54, 21, 1, 1, NULL, NULL),
(54, 59, 1, 2, NULL, NULL),
(61, 71, 1, 1, NULL, NULL),
(63, 23, 1, 1, NULL, NULL),
(66, 69, 1, 1, NULL, NULL),
(67, 75, 1, 2, NULL, NULL),
(72, 82, 1, 1, NULL, NULL),
(73, 20, 1, 2, NULL, NULL),
(73, 81, 1, 1, NULL, NULL),
(74, 75, 1, 1, NULL, NULL),
(76, 69, 1, 1, NULL, NULL),
(77, 78, 1, 1, NULL, NULL),
(81, 18, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `article_tag`
--

CREATE TABLE IF NOT EXISTS `article_tag` (
  `id_article` int(11) unsigned NOT NULL,
  `id_tag` int(11) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article_tag`
--

INSERT INTO `article_tag` (`id_article`, `id_tag`) VALUES
(5, 1),
(5, 3),
(6, 2),
(6, 4),
(7, 1),
(8, 4),
(9, 4),
(10, 1),
(14, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article_type`
--

INSERT INTO `article_type` (`id_type`, `type`, `ordering`, `description`, `type_flag`) VALUES
(4, 'bloc', 0, '', 5),
(5, 'not-logged-in', 0, '', 1),
(6, 'logged-in', 0, '', 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `category`
--

INSERT INTO `category` (`id_category`, `name`, `ordering`) VALUES
(1, 'ionize', 0),
(2, 'website', 0);

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

--
-- Sťahujem dáta pre tabuľku `category_lang`
--

INSERT INTO `category_lang` (`id_category`, `lang`, `title`, `subtitle`, `description`) VALUES
(1, 'en', 'Ionize CMS', '', ''),
(2, 'en', 'Website', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `extend_field`
--

INSERT INTO `extend_field` (`id_extend_field`, `name`, `type`, `description`, `parent`, `id_parent`, `ordering`, `translated`, `value`, `default_value`, `global`, `main`) VALUES
(1, 'title', 7, '', 'page', 1, 0, '0', '', '', 0, 1),
(2, 'text', 1, '', 'item', 1, 0, '0', '', '', 0, 0),
(3, 'date', 7, '', 'article', 0, 0, '1', '', '', 0, 0),
(4, 'time', 1, '', 'article', 0, 0, '0', '', '', 0, 0),
(5, 'place', 1, '', 'article', 0, 0, '0', '', '', 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `extend_fields`
--

INSERT INTO `extend_fields` (`id_extend_fields`, `id_extend_field`, `parent`, `id_parent`, `lang`, `content`, `ordering`) VALUES
(1, 1, 'item', 2, '', 'My first Flag', 0),
(2, 2, 'item', 2, '', 'New !!!', 0),
(3, 3, 'article', 20, 'en', '2014-05-07', 0),
(4, 4, 'article', 20, '', '20:00', 0),
(5, 5, 'article', 20, '', ' Magistrát Mesta Košice', 0),
(6, 3, 'article', 69, 'en', '2012-12-05', 0),
(7, 4, 'article', 69, '', '18:00', 0),
(8, 5, 'article', 69, '', ' Košická Steel Aréna ', 0),
(9, 1, 'page', 25, '', '', 0),
(10, 3, 'article', 76, 'en', '', 0),
(11, 4, 'article', 76, '', '', 0),
(12, 5, 'article', 76, '', '', 0),
(13, 3, 'article', 77, 'en', '', 0),
(14, 4, 'article', 77, '', '', 0),
(15, 5, 'article', 77, '', '', 0),
(16, 3, 'article', 78, 'en', '', 0),
(17, 4, 'article', 78, '', '', 0),
(18, 5, 'article', 78, '', '', 0),
(19, 3, 'article', 63, 'en', '', 0),
(20, 4, 'article', 63, '', '', 0),
(21, 5, 'article', 63, '', '', 0),
(22, 3, 'article', 75, 'en', '', 0),
(23, 4, 'article', 75, '', '', 0),
(24, 5, 'article', 75, '', '', 0),
(25, 3, 'article', 66, 'en', '', 0),
(26, 4, 'article', 66, '', '', 0),
(27, 5, 'article', 66, '', '', 0),
(28, 1, 'page', 27, '', '', 0),
(29, 1, 'page', 16, '', '', 0),
(30, 1, 'page', 15, '', '', 0),
(31, 1, 'page', 26, '', '', 0),
(32, 1, 'page', 4, '', '', 0),
(33, 1, 'page', 3, '', '', 0),
(34, 3, 'article', 68, 'en', '', 0),
(35, 4, 'article', 68, '', '', 0),
(36, 5, 'article', 68, '', '', 0),
(37, 3, 'article', 73, 'en', '', 0),
(38, 4, 'article', 73, '', '', 0),
(39, 5, 'article', 73, '', '', 0),
(40, 3, 'article', 81, 'en', '', 0),
(41, 4, 'article', 81, '', '', 0),
(42, 5, 'article', 81, '', '', 0),
(43, 3, 'article', 39, 'en', '', 0),
(44, 4, 'article', 39, '', '', 0),
(45, 5, 'article', 39, '', '', 0),
(46, 3, 'article', 40, 'en', '', 0),
(47, 4, 'article', 40, '', '', 0),
(48, 5, 'article', 40, '', '', 0),
(49, 3, 'article', 41, 'en', '', 0),
(50, 4, 'article', 41, '', '', 0),
(51, 5, 'article', 41, '', '', 0),
(52, 3, 'article', 42, 'en', '', 0),
(53, 4, 'article', 42, '', '', 0),
(54, 5, 'article', 42, '', '', 0),
(55, 3, 'article', 67, 'en', '', 0),
(56, 4, 'article', 67, '', '', 0),
(57, 5, 'article', 67, '', '', 0),
(58, 3, 'article', 82, 'en', '', 0),
(59, 4, 'article', 82, '', '', 0),
(60, 5, 'article', 82, '', '', 0),
(61, 1, 'page', 10, '', '', 0),
(62, 3, 'article', 35, 'en', '', 0),
(63, 4, 'article', 35, '', '', 0),
(64, 5, 'article', 35, '', '', 0);

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
(1, 'en', 'Title'),
(2, 'en', 'Text'),
(3, 'en', 'Date of event'),
(4, 'en', 'Time of event'),
(5, 'en', 'Place of event');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Item instances';

--
-- Sťahujem dáta pre tabuľku `item`
--

INSERT INTO `item` (`id_item`, `id_item_definition`, `name`, `description`, `ordering`) VALUES
(2, 1, NULL, NULL, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Items definition table';

--
-- Sťahujem dáta pre tabuľku `item_definition`
--

INSERT INTO `item_definition` (`id_item_definition`, `name`, `description`) VALUES
(1, 'flag', 'Article''s Flags');

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

--
-- Sťahujem dáta pre tabuľku `item_definition_lang`
--

INSERT INTO `item_definition_lang` (`id_item_definition`, `lang`, `title_definition`, `title_item`) VALUES
(1, 'en', 'Flags', 'Flag');

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
('en', 'english', '1', '1', 1, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `media`
--

INSERT INTO `media` (`id_media`, `type`, `file_name`, `path`, `base_path`, `copyright`, `provider`, `date`, `link`, `square_crop`) VALUES
(3, 'picture', 'screenshot_ionize_dashboard.jpg', 'files/screenshot_ionize_dashboard.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(4, 'picture', 'IMG_8359.jpg', 'files/pictures/IMG_8359.jpg', 'files/pictures/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(5, 'picture', 'IMG_8447.jpg', 'files/pictures/IMG_8447.jpg', 'files/pictures/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(6, 'picture', 'IMG_8632.jpg', 'files/pictures/IMG_8632.jpg', 'files/pictures/', '', '', '0000-00-00 00:00:00', '', 'm'),
(7, 'picture', 'IMG_8645.jpg', 'files/pictures/IMG_8645.jpg', 'files/pictures/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(8, 'picture', 'IMG_8963.jpg', 'files/pictures/IMG_8963.jpg', 'files/pictures/', NULL, NULL, '0000-00-00 00:00:00', NULL, 'm'),
(9, 'video', '68203296', 'http://player.vimeo.com/video/68203296', 'http://player.vimeo.com/video/', NULL, 'vimeo', '0000-00-00 00:00:00', NULL, 'm'),
(10, 'picture', 'default.png', 'files/default.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(11, 'picture', 'orchester1.jpg', 'files/orchester1.jpg', 'files/', '', '', '0000-00-00 00:00:00', '', 'm'),
(12, 'picture', 'orchester2.jpg', 'files/orchester2.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(13, 'picture', 'logo_final.png', 'files/pictures/logo_final.png', 'files/pictures/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(14, 'picture', 'camera_skins.png', 'files/camera_skins.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(15, 'picture', 'tree.jpg', 'files/tree.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(16, 'picture', 'logo_final.png', 'files/logo_final.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(17, 'picture', 'orchester3.png', 'files/orchester3.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(18, 'picture', 'ferko_ragulsky1.png', 'files/ferko_ragulsky1.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(19, 'picture', 'orchester4.png', 'files/orchester4.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(20, 'picture', 'dirigent.png', 'files/dirigent.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(21, 'picture', 'orchester6.jpg', 'files/orchester6.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(22, 'picture', 'orchester7.jpg', 'files/orchester7.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(23, 'picture', 'orchester8.jpg', 'files/orchester8.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(24, 'picture', '100x75_scale_thumb_fr2007_7.png', 'files/100x75_scale_thumb_fr2007_7.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(25, 'picture', 'f1.png', 'files/f1.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(26, 'picture', 'f2.png', 'files/f2.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(27, 'picture', 'f1.png', 'files/filipiny_2014/f1.png', 'files/filipiny_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(28, 'picture', 'f2.png', 'files/filipiny_2014/f2.png', 'files/filipiny_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(29, 'picture', 'f3.png', 'files/filipiny_2014/f3.png', 'files/filipiny_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(30, 'picture', 'f4.png', 'files/filipiny_2014/f4.png', 'files/filipiny_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(31, 'picture', 'f5.png', 'files/filipiny_2014/f5.png', 'files/filipiny_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(32, 'picture', 'f6.png', 'files/filipiny_2014/f6.png', 'files/filipiny_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(33, 'picture', 'f7.png', 'files/filipiny_2014/f7.png', 'files/filipiny_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(34, 'picture', 'f8.png', 'files/filipiny_2014/f8.png', 'files/filipiny_2014/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(35, 'picture', 'f1.png', 'files/skotsko_2012/f1.png', 'files/skotsko_2012/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(36, 'picture', 'f2.png', 'files/skotsko_2012/f2.png', 'files/skotsko_2012/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(37, 'picture', 'f3.png', 'files/skotsko_2012/f3.png', 'files/skotsko_2012/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(38, 'picture', 'f4.png', 'files/skotsko_2012/f4.png', 'files/skotsko_2012/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(39, 'picture', 'f1.png', 'files/francuzko_2010/f1.png', 'files/francuzko_2010/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(40, 'picture', 'f2.png', 'files/francuzko_2010/f2.png', 'files/francuzko_2010/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(41, 'picture', 'f3.png', 'files/francuzko_2010/f3.png', 'files/francuzko_2010/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(42, 'picture', 'f4.png', 'files/francuzko_2010/f4.png', 'files/francuzko_2010/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(43, 'picture', 'f5.png', 'files/francuzko_2010/f5.png', 'files/francuzko_2010/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(44, 'picture', 'f1.png', 'files/francuzko_2009/f1.png', 'files/francuzko_2009/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(45, 'picture', 'f2.png', 'files/francuzko_2009/f2.png', 'files/francuzko_2009/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(46, 'picture', 'f3.png', 'files/francuzko_2009/f3.png', 'files/francuzko_2009/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(47, 'picture', 'f4.png', 'files/francuzko_2009/f4.png', 'files/francuzko_2009/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(48, 'picture', 'f5.png', 'files/francuzko_2009/f5.png', 'files/francuzko_2009/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(49, 'picture', 'f1.png', 'files/spanielsko_2008/f1.png', 'files/spanielsko_2008/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(50, 'picture', 'f2.png', 'files/spanielsko_2008/f2.png', 'files/spanielsko_2008/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(51, 'picture', 'f3.png', 'files/spanielsko_2008/f3.png', 'files/spanielsko_2008/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(52, 'picture', 'f4.png', 'files/spanielsko_2008/f4.png', 'files/spanielsko_2008/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(53, 'picture', 'f5.png', 'files/spanielsko_2008/f5.png', 'files/spanielsko_2008/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(54, 'picture', 'f1.png', 'files/francuzko_2007/f1.png', 'files/francuzko_2007/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(55, 'picture', 'f2.png', 'files/francuzko_2007/f2.png', 'files/francuzko_2007/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(56, 'picture', 'f3.png', 'files/francuzko_2007/f3.png', 'files/francuzko_2007/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(57, 'picture', 'f4.png', 'files/francuzko_2007/f4.png', 'files/francuzko_2007/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(58, 'picture', 'f5.png', 'files/francuzko_2007/f5.png', 'files/francuzko_2007/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(59, 'video', 'hPwiy17ASw0?rel=1&amp;autoplay=0&amp;wmode=opaque', 'http://www.youtube.com/embed/hPwiy17ASw0?rel=1&amp;autoplay=0&amp;wmode=opaque', 'http://www.youtube.com/embed/', NULL, 'youtube', '0000-00-00 00:00:00', NULL, 'm'),
(60, 'picture', 'slider1.png.jpg', 'files/slider1.png.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(61, 'picture', 'slider2.png.jpg', 'files/slider2.png.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(62, 'picture', 'slider3.png.jpg', 'files/slider3.png.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(63, 'picture', 'slider4.png.jpg', 'files/slider4.png.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(64, 'video', 'f9WZrxZ10Z4', 'http://www.youtube.com/embed/f9WZrxZ10Z4', 'http://www.youtube.com/embed/', NULL, 'youtube', '0000-00-00 00:00:00', NULL, 'm'),
(65, 'video', 'APWok2Q9AAk', 'http://www.youtube.com/embed/APWok2Q9AAk', 'http://www.youtube.com/embed/', NULL, 'youtube', '0000-00-00 00:00:00', NULL, 'm'),
(66, 'video', 'kKXTFJV-S1o', 'http://www.youtube.com/embed/kKXTFJV-S1o', 'http://www.youtube.com/embed/', NULL, 'youtube', '0000-00-00 00:00:00', NULL, 'm'),
(67, 'video', 'sKtDgXuUeoU', 'http://www.youtube.com/embed/sKtDgXuUeoU', 'http://www.youtube.com/embed/', NULL, 'youtube', '0000-00-00 00:00:00', NULL, 'm'),
(68, 'video', 'hPwiy17ASw0', 'http://www.youtube.com/embed/hPwiy17ASw0', 'http://www.youtube.com/embed/', NULL, 'youtube', '0000-00-00 00:00:00', NULL, 'm'),
(69, 'picture', 'vyrocie.png', 'files/vyrocie.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(70, 'picture', 'sengensky_poludnik_2014.png', 'files/sengensky_poludnik_2014.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(71, 'picture', 'luciebila2012_1.png', 'files/luciebila2012_1.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(72, 'picture', 'f5_1.png', 'files/f5_1.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(73, 'picture', 'orchester10_1.png', 'files/orchester10_1.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(74, 'picture', 'orchester1.png', 'files/orchester1.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(75, 'picture', 'sengensky-poludnik-2014.png', 'files/Aktuality/sengensky-poludnik-2014.png', 'files/Aktuality/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(76, 'video', 'bGnBxYfyrxY', 'http://www.youtube.com/embed/bGnBxYfyrxY', 'http://www.youtube.com/embed/', NULL, 'youtube', '0000-00-00 00:00:00', NULL, 'm'),
(77, 'video', 'tjSGUpRL_SI', 'http://www.youtube.com/embed/tjSGUpRL_SI', 'http://www.youtube.com/embed/', NULL, 'youtube', '0000-00-00 00:00:00', NULL, 'm'),
(78, 'picture', 'vianocny2012.png', 'files/Aktuality/vianocny2012.png', 'files/Aktuality/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(79, 'picture', 'musicaiuvenalis.png', 'files/musicaiuvenalis.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(80, 'picture', 'igor.jpg', 'files/igor.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(81, 'picture', 'igor.png', 'files/igor.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(82, 'picture', 'musicaiuvenalis_1.png', 'files/musicaiuvenalis_1.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm');

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
('en', 4, 'Mingun', 'Alot of young munks live in a monastery next to the Hsinbyume pagoda', 'Alot of young munks live in a monastery next to the Hsinbyume pagoda'),
('en', 5, 'Mandalay', 'One working day in the historical capital of Burma.', 'One working day in the historical capital of Burma.'),
('en', 6, 'Monywa, Burma', 'In the mountain of Monywa, more than two thousand caves were built in honor of Budha.', 'In the mountain of Monywa, more than two thousand caves were built in honor of Budha.'),
('en', 7, 'Monywa wall paints', 'These 17th centruey wall painting are very well preserved because the caves were forgivven for centuries.', 'These 17th centruey wall painting are very well preserved because the caves were forgivven for centuries.'),
('en', 11, '', '', '');

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
(1, '2015-06-12', 'sitemap_refresh', 'System', 'Sitemap refresh', 'Sitemap needs to be refreshed.<br/> Go to <b>Tools > System Diagnosis > Tools</b> and click on <b>"Refresh Sitemap"</b>.', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page`
--

INSERT INTO `page` (`id_page`, `id_parent`, `id_menu`, `id_type`, `id_subnav`, `name`, `ordering`, `level`, `online`, `home`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `appears`, `has_url`, `view`, `view_single`, `article_list_view`, `article_view`, `article_order`, `article_order_direction`, `link`, `link_type`, `link_id`, `pagination`, `priority`, `used_by_module`, `deny_code`) VALUES
(1, 0, 2, 0, 0, '404', 0, 0, 1, 0, 'demo', 'demo', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 14:42:05', '0000-00-00 00:00:00', 0, 1, '', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, NULL),
(2, 0, 1, 0, 0, 'welcome', 1, 0, 1, 1, 'demo', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-26 13:02:36', '0000-00-00 00:00:00', 1, 1, 'page_home', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(3, 0, 1, 0, 0, 'fotogaleria', 4, 0, 1, 0, 'demo', 'juraj.cangar@ness.com', '2012-11-17 09:42:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-12 09:51:22', '0000-00-00 00:00:00', 1, 1, 'page_articles', 'page_single_article', NULL, '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(4, 0, 1, 0, 0, 'contact', 5, 0, 1, 0, 'demo', 'admin', '2012-11-17 09:42:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-04 11:14:00', '0000-00-00 00:00:00', 1, 1, 'page_video', 'page_single_article_video', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(6, 0, 1, 0, 0, 'blog', 3, 0, 1, 0, 'demo', 'admin', '2012-11-17 13:57:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-06 13:20:01', '0000-00-00 00:00:00', 1, 1, '', '', '', '', 'ordering', 'ASC', '', NULL, '', 3, 5, 0, '404'),
(9, 0, 2, 0, 0, 'footer', 1, 0, 1, 0, 'demo', 'demo', '2012-11-21 11:52:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-11-21 11:52:30', '0000-00-00 00:00:00', 0, 1, '', '', NULL, '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, NULL),
(10, 0, 1, 0, 0, 'kontakt', 6, 0, 1, 0, 'demo', 'juraj.cangar@ness.com', '2012-12-21 20:11:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-12 09:52:22', '0000-00-00 00:00:00', 1, 1, 'page_contact', '', NULL, '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(11, 0, 2, 0, 0, '401', 0, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(12, 0, 2, 0, 0, '403', 0, 0, 1, 0, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, NULL, NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(14, 0, 2, 0, 0, 'slideshow', 2, 0, 1, 0, 'admin', 'admin', '2015-05-06 09:36:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-28 11:28:45', '0000-00-00 00:00:00', 1, 1, 'page_home', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(15, 6, 1, 0, 0, 'o-nas', 8, 1, 1, 0, 'admin', 'admin', '2015-05-07 08:58:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-08 08:30:10', '0000-00-00 00:00:00', 1, 1, 'page_about', 'page_about', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(16, 6, 1, 0, 0, 'dirigenti', 9, 1, 1, 0, 'admin', 'admin', '2015-05-07 09:07:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-08 08:53:45', '0000-00-00 00:00:00', 1, 1, 'page_about', 'page_about', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(23, 0, 1, 0, 0, '2-z-dani', 8, 0, 1, 0, 'admin', 'admin', '2015-05-07 11:56:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-13 10:30:19', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(24, 0, 1, 0, 0, 'sengensk-poludnik', 7, 0, 1, 0, 'admin', 'admin', '2015-05-07 11:58:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-05-28 08:30:15', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', 'http://poludnik.nesskdc.sk', 'external', '0', 0, 5, 0, '404'),
(25, 0, 2, 0, 0, 'aktuality', 3, 0, 1, 0, 'admin', 'admin', '2015-05-07 12:23:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-04 08:27:36', '0000-00-00 00:00:00', 1, 1, '', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(26, 0, 1, 0, 0, 'koncerty', 2, 0, 1, 0, 'admin', 'admin', '2015-05-07 12:32:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-04 13:45:19', '0000-00-00 00:00:00', 1, 1, 'page', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(27, 6, 1, 0, 0, 'pracovnici', 10, 1, 1, 0, 'admin', 'admin', '2015-06-04 09:46:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-06-04 09:48:20', '0000-00-00 00:00:00', 1, 1, 'page', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404');

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
(3, 46, 1, NULL, 2, NULL, '', '', '', 1),
(3, 47, 1, NULL, 3, NULL, '', '', '', 1),
(3, 48, 1, NULL, 1, NULL, '', '', '', 1),
(3, 49, 1, NULL, 4, NULL, '', '', '', 1),
(3, 50, 1, NULL, 5, NULL, '', '', '', 1),
(3, 51, 1, NULL, 6, NULL, '', '', '', 1),
(4, 64, 1, NULL, 2, NULL, '', '', '', 1),
(4, 65, 1, NULL, 3, NULL, '', '', '', 1),
(4, 68, 1, NULL, 1, NULL, '', '', '', 1),
(4, 70, 1, NULL, 4, NULL, '', '', '', 1),
(4, 71, 1, NULL, 5, NULL, '', '', '', 1),
(9, 16, 1, NULL, 3, NULL, '', '', '', 1),
(9, 27, 1, NULL, 1, NULL, '', '', '', 1),
(9, 28, 1, NULL, 2, NULL, '', '', '', 1),
(10, 60, 1, NULL, 2, NULL, '', '', '', 1),
(11, 32, 1, NULL, 0, NULL, '', '', '', 0),
(12, 33, 1, NULL, 0, NULL, '', '', '', 0),
(14, 35, 1, NULL, 1, 0, '', '', '', 1),
(14, 36, 1, NULL, 3, NULL, '', '', '', 1),
(14, 37, 1, NULL, 4, NULL, '', '', '', 1),
(14, 61, 1, NULL, 2, NULL, '', '', '', 1),
(15, 72, 1, NULL, 1, NULL, '', '', '', 1),
(16, 73, 1, NULL, 1, NULL, '', '', '', 1),
(23, 58, 1, NULL, 1, NULL, '', '', '', 1),
(25, 63, 1, NULL, 2, NULL, '', '', '', 1),
(25, 66, 1, NULL, 3, NULL, '', '', '', 1),
(25, 74, 1, NULL, 1, NULL, '', '', '', 1),
(25, 77, 1, NULL, 4, NULL, '', '', '', 1),
(26, 18, 1, NULL, 4, 0, '', '', '', 1),
(26, 19, 1, NULL, 3, 0, '', '', '', 1),
(26, 20, 1, NULL, 1, 0, '', '', '', 1),
(26, 69, 1, NULL, 2, NULL, '', '', '', 1),
(27, 39, 1, NULL, 2, NULL, '', '', '', 1),
(27, 40, 1, NULL, 3, NULL, '', '', '', 1),
(27, 41, 1, NULL, 4, NULL, '', '', '', 1),
(27, 42, 1, NULL, 5, NULL, '', '', '', 1),
(27, 81, 1, NULL, 1, NULL, '', '', '', 1);

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
('en', 1, '404', '', '404', 'Can''t find requested page !', '', '', '', '', '', 1),
('en', 2, 'home', '', 'Domov', 'the most professional \n& friendly CMS ever made.', '', '', '', '', '', 1),
('en', 3, 'fotogaleria', '', 'Fotogaleria', 'Some info about us !', '', '', '', '', '', 1),
('en', 4, 'video', '', 'Video', 'Find us, send us one message', '', '', '', '', '', 1),
('en', 6, 'blog', '', 'Orchester', 'Interesting stories ', '', '', '', '', '', 1),
('en', 9, 'footer', '', 'Footer', '', '', '', '', '', '', 1),
('en', 10, 'kontakt', '', 'Kontakt', '', '', '', '', '', '', 1),
('en', 11, '401', '', '401', 'Login needed', '', '', NULL, NULL, NULL, 1),
('en', 12, '403', '', '403', 'Forbidden', '', '', NULL, NULL, NULL, 1),
('en', 14, 'slideshow', '', 'Slideshow', '', '', '', '', '', '', 1),
('en', 15, 'o-nas', '', 'O nás', '', '', '', '', '', '', 1),
('en', 16, 'dirigent', '', 'Dirigent', '', '', '', '', '', '', 1),
('en', 23, '2-z-dani', '', '2% z dane', '', '', '', '', '', '', 1),
('en', 24, 'sengensk-poludnik', '', 'Šengenský poludník', '', '', '', '', '', '', 1),
('en', 25, 'novinky', '', 'Novinky', '', '', '', '', '', '', 1),
('en', 26, 'koncerty', '', 'Koncerty', '', '', '', '', '', '', 1),
('en', 27, 'pracovnici', '', 'Pracovníci', '', '', '', '', '', '', 1);

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
(2, 4, 1, 13, NULL),
(2, 5, 1, 10, NULL),
(2, 6, 1, 1, NULL),
(2, 7, 1, 11, NULL),
(2, 8, 1, 12, NULL);

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
(2, 'site_email', '', ''),
(3, 'files_path', 'files', ''),
(4, 'theme', 'uni_theme', ''),
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
(41, 'site_title', 'Musica Iuvenalis', 'en'),
(42, 'last_notification_refresh', '2015-06-12 07:29:41', ''),
(43, 'last_version', '1.0.7', ''),
(44, 'meta_keywords', '', 'en'),
(45, 'meta_description', '', 'en'),
(46, 'google_analytics_id', '', ''),
(47, 'google_analytics_profile_id', '', ''),
(48, 'google_analytics_url', '', ''),
(49, 'google_analytics_email', 'juraj.cangar@ness.sk', ''),
(50, 'google_analytics_password', '1234', ''),
(51, 'dashboard_google', '', ''),
(52, 'email_technical', '', ''),
(53, 'email_contact', '', ''),
(54, 'email_info', '', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
`id_tag` int(11) unsigned NOT NULL,
  `tag_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `tag`
--

INSERT INTO `tag` (`id_tag`, `tag_name`) VALUES
(1, 'Content Management'),
(2, 'development'),
(3, 'company'),
(4, 'services');

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
) ENGINE=InnoDB AUTO_INCREMENT=1104 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `url`
--

INSERT INTO `url` (`id_url`, `id_entity`, `type`, `canonical`, `active`, `lang`, `path`, `path_ids`, `full_path_ids`, `creation_date`) VALUES
(601, 1, 'page', 1, 1, 'en', '404', '1', '1', '2012-12-28 19:56:07'),
(602, 1, 'article', 1, 1, 'en', '404/404', '1/1', '1/1', '2012-12-28 19:56:07'),
(626, 9, 'page', 1, 1, 'en', 'footer', '9', '9', '2012-12-28 19:56:07'),
(627, 16, 'article', 1, 1, 'en', 'footer/footer-resources', '9/16', '9/16', '2012-12-28 19:56:07'),
(628, 27, 'article', 1, 1, 'en', 'footer/whats-ionize', '9/27', '9/27', '2012-12-28 19:56:07'),
(629, 28, 'article', 1, 1, 'en', 'footer/can-i-help', '9/28', '9/28', '2012-12-28 19:56:07'),
(653, 6, 'page', 1, 1, 'en', 'blog', '6', '6', '2015-05-06 13:20:02'),
(823, 23, 'page', 1, 1, 'en', '2-z-dani', '23', '23', '2015-05-13 10:30:19'),
(824, 58, 'article', 1, 1, 'en', '2-z-dani/2-z-dani-pew-musicu-iuvenalis', '23/58', '23/58', '2015-05-13 10:30:19'),
(908, 2, 'page', 1, 1, 'en', 'home', '2', '2', '2015-05-26 13:02:36'),
(911, 24, 'page', 1, 1, 'en', 'sengensk-poludnik', '24', '24', '2015-05-28 08:30:16'),
(915, 14, 'page', 1, 1, 'en', 'slideshow', '14', '14', '2015-05-28 11:28:45'),
(916, 35, 'article', 1, 1, 'en', 'slideshow/ahoj-iuvenalis', '14/35', '14/35', '2015-05-28 11:28:45'),
(917, 36, 'article', 1, 1, 'en', 'slideshow/ahoj-iuvenalis-1', '14/36', '14/36', '2015-05-28 11:28:45'),
(918, 37, 'article', 1, 1, 'en', 'slideshow/ahoj-iuvenalis-2', '14/37', '14/37', '2015-05-28 11:28:45'),
(919, 61, 'article', 1, 1, 'en', 'slideshow/ahoj-iuvenalis-3', '14/61', '14/61', '2015-05-28 11:28:45'),
(1012, 25, 'page', 1, 1, 'en', 'novinky', '25', '25', '2015-06-04 08:27:36'),
(1013, 63, 'article', 1, 1, 'en', 'novinky/2-z-dane-pre-iuvenalis', '25/63', '25/63', '2015-06-04 08:27:37'),
(1014, 66, 'article', 1, 1, 'en', 'novinky/oslavy-50.-vrocia', '25/66', '25/66', '2015-06-04 08:27:37'),
(1015, 74, 'article', 1, 1, 'en', 'novinky/engensk-poludnik', '25/74', '25/74', '2015-06-04 08:27:37'),
(1016, 77, 'article', 1, 1, 'en', 'novinky/vianocn-koncert-musica-iuvenalis', '25/77', '25/77', '2015-06-04 08:27:37'),
(1029, 27, 'page', 1, 1, 'en', 'blog/pracovnici', '6/27', '6/27', '2015-06-04 09:48:20'),
(1030, 39, 'article', 1, 0, 'en', 'blog/pracovnici/ladislav-gurba', '6/27/39', '6/27/39', '2015-06-04 09:48:21'),
(1031, 40, 'article', 1, 0, 'en', 'blog/pracovnici/karol-petroczi-1996-1997', '6/27/40', '6/27/40', '2015-06-04 09:48:21'),
(1032, 41, 'article', 1, 0, 'en', 'blog/pracovnici/artem-podhajeck-1967-1994', '6/27/41', '6/27/41', '2015-06-04 09:48:21'),
(1033, 42, 'article', 1, 0, 'en', 'blog/pracovnici/jan-grunwald-1964-1967', '6/27/42', '6/27/42', '2015-06-04 09:48:22'),
(1049, 4, 'page', 1, 1, 'en', 'video', '4', '4', '2015-06-04 11:14:00'),
(1050, 64, 'article', 1, 1, 'en', 'video/musica-iuvenalis-tosca', '4/64', '4/64', '2015-06-04 11:14:00'),
(1051, 65, 'article', 1, 1, 'en', 'video/musica-iuvenalis-sa-predstavila-na-filipinach', '4/65', '4/65', '2015-06-04 11:14:01'),
(1052, 68, 'article', 1, 1, 'en', 'video/sengensk-poludnik', '4/68', '4/68', '2015-06-04 11:14:01'),
(1053, 70, 'article', 1, 1, 'en', 'video/lucie-bila-s-kapelou-petra-malaska-a-musica-iuvenalis-ave-maria', '4/70', '4/70', '2015-06-04 11:14:01'),
(1054, 71, 'article', 1, 1, 'en', 'video/musica-iuvenalis-sa-predstavila-na-filipinach-1', '4/71', '4/71', '2015-06-04 11:14:01'),
(1077, 26, 'page', 1, 1, 'en', 'koncerty', '26', '26', '2015-06-04 13:45:19'),
(1078, 18, 'article', 1, 1, 'en', 'koncerty/service-1', '26/18', '26/18', '2015-06-04 13:45:19'),
(1079, 19, 'article', 1, 1, 'en', 'koncerty/service-2', '26/19', '26/19', '2015-06-04 13:45:19'),
(1080, 20, 'article', 1, 0, 'en', 'koncerty/service-3', '26/20', '26/20', '2015-06-04 13:45:19'),
(1081, 69, 'article', 1, 1, 'en', 'koncerty/koncert-bile-vanoce-s-lucie-bilou-a-kapelou-petra-malaska', '26/69', '26/69', '2015-06-04 13:45:19'),
(1082, 20, 'article', 1, 1, 'en', 'koncerty/slavnostny-galaprogram-dna-mesta-kosice', '26/20', '26/20', '2015-06-08 07:50:12'),
(1083, 15, 'page', 1, 1, 'en', 'blog/o-nas', '6/15', '6/15', '2015-06-08 08:30:10'),
(1084, 72, 'article', 1, 1, 'en', 'blog/o-nas/o-nas', '6/15/72', '6/15/72', '2015-06-08 08:30:10'),
(1085, 16, 'page', 1, 1, 'en', 'blog/dirigent', '6/16', '6/16', '2015-06-08 08:53:45'),
(1086, 73, 'article', 1, 1, 'en', 'blog/dirigent/igor-dohovic-1', '6/16/73', '6/16/73', '2015-06-08 08:53:45'),
(1087, 81, 'article', 1, 1, 'en', 'blog/pracovnici/frantisek-ragulsk', '6/27/81', '6/27/81', '2015-06-08 09:20:52'),
(1088, 39, 'article', 1, 1, 'en', 'blog/pracovnici/ladislav-gurbal-dirigent-v-rokoch-1994-1996-1998', '6/27/39', '6/27/39', '2015-06-08 09:23:05'),
(1089, 40, 'article', 1, 1, 'en', 'blog/pracovnici/karol-petroczi-dirigent-v-rokoch-1996-1997', '6/27/40', '6/27/40', '2015-06-08 09:23:18'),
(1090, 41, 'article', 1, 1, 'en', 'blog/pracovnici/artem-podhajecky-dirigent-v-rokoch-1967-1994', '6/27/41', '6/27/41', '2015-06-08 09:23:31'),
(1091, 42, 'article', 1, 1, 'en', 'blog/pracovnici/jan-grunwald-dirigent-v-rokoch-1964-1967', '6/27/42', '6/27/42', '2015-06-08 09:23:44'),
(1095, 3, 'page', 1, 1, 'en', 'fotogaleria', '3', '3', '2015-06-12 09:51:22'),
(1096, 46, 'article', 1, 1, 'en', 'fotogaleria/skotsko-2012', '3/46', '3/46', '2015-06-12 09:51:22'),
(1097, 47, 'article', 1, 1, 'en', 'fotogaleria/francuzko-2010', '3/47', '3/47', '2015-06-12 09:51:22'),
(1098, 48, 'article', 1, 1, 'en', 'fotogaleria/filipiny-2014', '3/48', '3/48', '2015-06-12 09:51:23'),
(1099, 49, 'article', 1, 1, 'en', 'fotogaleria/francuzko-2009', '3/49', '3/49', '2015-06-12 09:51:23'),
(1100, 50, 'article', 1, 1, 'en', 'fotogaleria/spanielsko-2008', '3/50', '3/50', '2015-06-12 09:51:23'),
(1101, 51, 'article', 1, 1, 'en', 'fotogaleria/francuzko-2007', '3/51', '3/51', '2015-06-12 09:51:23'),
(1102, 10, 'page', 1, 1, 'en', 'kontakt', '10', '10', '2015-06-12 09:52:22'),
(1103, 60, 'article', 1, 1, 'en', 'kontakt/mladeznick-slacikov-orchester-pri-zus-m.-hemerkovej-hlavna-68-040-01-kosice', '10/60', '10/60', '2015-06-12 09:52:22');

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
(2, 1, '2015-06-10 11:39:43', '2015-06-10 11:40:14', 'juraj.cangar@ness.com', '', 'Juraj', 'Cangar', NULL, NULL, 'Yoon5wE5pZYmuNdoU8zqQQ==', 'juraj.cangar@ness.com', '87e735ad6357dc3e');

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
MODIFY `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
MODIFY `id_captcha` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id_category` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id_extend_field` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `extend_fields`
--
ALTER TABLE `extend_fields`
MODIFY `id_extend_fields` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `extend_field_type`
--
ALTER TABLE `extend_field_type`
MODIFY `id_extend_field_type` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
MODIFY `id_item` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `item_definition`
--
ALTER TABLE `item_definition`
MODIFY `id_item_definition` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
MODIFY `id_media` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
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
MODIFY `id_page` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
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
MODIFY `id_setting` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
MODIFY `id_tag` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
MODIFY `id_url` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1104;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
