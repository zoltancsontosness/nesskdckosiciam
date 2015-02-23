-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Hostiteľ: 127.0.0.1
-- Čas generovania: Út 17.Feb 2015, 12:51
-- Verzia serveru: 5.6.21
-- Verzia PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáza: `db_ionize`
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article`
--

INSERT INTO `article` (`id_article`, `name`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `indexed`, `id_category`, `comment_allow`, `comment_autovalid`, `comment_expire`, `flag`, `has_url`, `priority`) VALUES
(1, '404', 'demo', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 12:09:40', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(4, 'welcome-to-ionize', 'demo', 'demo', '2012-11-17 12:48:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-11-20 17:05:20', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(5, 'article-1', 'demo', 'michelange', '2012-11-17 13:58:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-04-06 09:33:24', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(6, 'article-2', 'demo', 'demo', '2012-11-17 13:58:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:47:57', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(7, 'article-3', 'demo', 'demo', '2012-11-17 13:59:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:52:39', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(8, 'article-4', 'demo', 'demo', '2012-11-17 13:59:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:52:46', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(9, 'article-5', 'demo', 'demo', '2012-11-17 14:10:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:52:52', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(10, 'article-6', 'demo', 'demo', '2012-11-17 14:17:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 15:52:58', '0000-00-00 00:00:00', 1, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(16, 'footer-resources', 'demo', 'demo', '2012-11-21 11:52:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:33:05', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(17, 'service-1', 'demo', 'demo', '2012-12-06 14:34:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-27 01:15:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(18, 'service-2', 'demo', 'demo', '2012-12-06 14:38:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:00:37', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(19, 'service-3', 'demo', 'demo', '2012-12-06 14:38:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:00:47', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(20, 'service-4', 'demo', 'demo', '2012-12-06 14:39:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:00:54', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(24, 'contact-informations', 'demo', 'michelange', '2012-12-07 10:01:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2014-04-05 12:20:46', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(26, 'our-location', 'demo', 'demo', '2012-12-07 10:07:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 20:04:28', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(27, 'whats-ionize', 'demo', 'demo', '2012-12-21 16:27:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:27:54', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(28, 'can-i-help', 'demo', 'demo', '2012-12-21 16:30:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 16:30:10', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(29, 'send-us-a-message', 'demo', 'demo', '2012-12-21 17:04:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-21 17:04:43', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(30, 'not-logged-in', 'demo', 'demo', '2012-12-22 10:54:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-22 10:54:43', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(31, 'hello', 'demo', 'demo', '2012-12-22 11:15:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2012-12-22 11:42:04', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(32, '401', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(33, '403', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL, '0', '0', NULL, 0, 1, 5),
(34, 'nazov-artikla-jeden', 'admin', 'admin', '2015-02-09 09:44:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-12 08:38:46', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(35, 'aktivity-mladych', 'admin', 'admin', '2015-02-09 09:54:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 08:44:41', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(36, 'posledny-treti-artikel', 'admin', 'admin', '2015-02-09 09:56:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-09 10:30:31', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(37, 'o-nas', 'admin', 'admin', '2015-02-09 10:48:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 10:52:24', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(38, 'treti-artikel', 'admin', 'admin', '2015-02-09 11:06:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-12 08:46:22', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(45, 'about-company', 'admin', 'admin', '2015-02-10 13:31:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-10 13:32:03', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(46, 'v-pripade-akchkovek-otazok-nas-nevahajte-kontaktova.', 'admin', 'admin', '2015-02-11 13:41:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-11 13:55:33', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(47, 'fotogaleria', 'admin', 'admin', '2015-02-11 14:25:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-11 14:26:23', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(48, NULL, NULL, NULL, '2015-02-12 08:37:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-12 08:37:48', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(49, 'rozvijame-sikovnos-a-tvorivos', 'admin', 'admin', '2015-02-12 13:36:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 14:50:12', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(51, 'robme-veci-spolu', 'admin', 'admin', '2015-02-12 14:13:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 14:57:37', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(52, 'komprax-kompetencie-pre-prax', 'admin', 'admin', '2015-02-12 14:13:36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 14:58:03', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(53, 'cestujeme-po-europskej-unii', 'admin', 'admin', '2015-02-12 14:14:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 14:58:21', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(54, 'slide-1', 'admin', 'admin', '2015-02-13 10:32:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-13 10:35:51', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(55, 'slide-2', 'admin', 'admin', '2015-02-13 10:59:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-13 11:29:19', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(56, 'slide-3', 'admin', NULL, '2015-02-13 11:24:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-13 11:24:15', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(57, 'aktivity-pre-deti', 'admin', 'admin', '2015-02-13 14:01:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-17 10:00:06', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(58, 'aktivity-mladch', 'admin', 'admin', '2015-02-13 14:02:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-17 10:00:17', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(59, 'rozne', 'admin', 'admin', '2015-02-13 14:03:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-17 10:00:39', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(60, 'vitafit', 'admin', 'admin', '2015-02-13 14:43:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-17 12:02:13', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(61, 'remeselne-dielne', 'admin', 'admin', '2015-02-13 14:43:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 14:59:03', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(62, 'rozvijaj-svoj-talent', 'admin', 'admin', '2015-02-13 14:44:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 14:59:21', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(63, 'spoznavaj-slovensko', 'admin', 'admin', '2015-02-13 14:45:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 14:59:44', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(64, 'dokumenty', 'admin', NULL, '2015-02-16 11:50:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 11:50:41', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5),
(65, 'kontakt', 'admin', 'admin', '2015-02-16 12:21:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-17 12:16:38', '0000-00-00 00:00:00', 0, NULL, '0', '0', '0000-00-00 00:00:00', 0, 1, 5);

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
(1, 'sk', '404', 'Can''t find requested page', '', '', '<h3>Je nám ľúto, ale požadovaná stránka nebola nájdená.</h3>\n<p>Odporúčame Vám postupovať podľa nasledujúcich možností:</p>\n<ul>\n<li>Skontrolujte tvar zadanej adresy v adresovom riadku prehliadača,</li>\n<li>Prejdite na úvodnú stránku a pokračujte odtiaľ,</li>\n</ul>\n<p><strong>Ďakujeme.</strong></p>', '', '', 1),
(4, 'sk', 'the-power-of-php', 'The power of PHP', '', '', '<p>The Ionize CMS uses CodeIgniter, a powerful and lightweight PHP framework. For CodeIgniter developpers, starting developping on Ionize will be really easy as building a CI application !</p>', '', '', 1),
(5, 'sk', 'article-1', 'One blog post', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\n<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>\n<p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', 1),
(6, 'sk', 'article-2', 'Another blog post', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', 1),
(7, 'sk', 'article-3', 'We got something...', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', 1),
(8, 'sk', 'article-4', 'Say it differently', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', 1),
(9, 'sk', 'article-5', '10 incredible items !', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', 1),
(10, 'sk', 'article-6', 'Send mail to your friends !', '', '', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p><p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p><p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam. est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p><p>Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.</p>', '', '', 1),
(16, 'sk', 'footer-resources', 'Online resources', '', '', '<p><strong>Community</strong> : Ionize''s forum<br /><strong>Project hosting</strong> : Ionize on github</p><p><strong>Last version</strong> : Download Ionize</p><p><strong>Contact</strong> : team@ionizecms.com</p>', '', '', 1),
(17, 'sk', 'some-of-our-services', 'What we do for you', '', '', '<p>Suspendisse nec erat lacus? Morbi pharetra elit ac nibh ornare a vulputate urna dictum?</p><p>Vestibulum eu justo sit amet nulla adipiscing imperdiet. Nullam venenatis tortor nec mauris viverra at rutrum lacus ultricies. Sed condimentum aliquet congue! Aenean sed justo sapien.</p><p>Fusce ut turpis mauris. Phasellus ac felis arcu, semper rhoncus nisi? Quisque tortor nisl; convallis et varius vel, ullamcorper sit amet neque. Sed semper aliquam rutrum.</p><p>Phasellus ac nisl et quam laoreet interdum ultrices vel dui. Mauris et urna sed tortor molestie blandit quis vel sapien. Cras tempus sollicitudin magna eu faucibus. Nulla dapibus pharetra dapibus.</p>', '', '', 1),
(18, 'sk', 'service-1', 'Service 1', '', '', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Nulla volutpat aliquam velit</p><p>Phasellus iaculis neque purus sodales ultricies vestibulum laoreet porttitor sem ac tristique libero volutpat at</p><p>Faucibus porta lacus fringilla vel.</p>', '', '', 1),
(19, 'sk', 'service-2', 'Service 2', '', '', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Nulla volutpat aliquam velit</p><p>Phasellus iaculis neque purus sodales ultricies vestibulum laoreet porttitor sem ac tristique libero volutpat at</p><p>Faucibus porta lacus fringilla vel.</p>', '', '', 1),
(20, 'sk', 'service-3', 'Service 3', '', '', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit Nulla volutpat aliquam velit</p><p>Phasellus iaculis neque purus sodales ultricies vestibulum laoreet porttitor sem ac tristique libero volutpat at</p><p>Faucibus porta lacus fringilla vel.</p>', '', '', 1),
(24, 'sk', 'contact-informations', 'Contact Informations', '', '', '<p><strong>Ionize CMS</strong><br /> This is our street<br />AABBCC In This City</p>\n<p><strong>Tel</strong> : +33 012345678<strong><br />Email : </strong>team@ionizecms.com</p>', '', '', 1),
(26, 'sk', 'our-location', 'Our location', '', '', '<p><iframe width="100%" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.fr/maps?f=q&amp;source=s_q&amp;hl=fr&amp;geocode=&amp;aq=&amp;sll=48.876161,2.377124&amp;sspn=0.007296,0.018175&amp;gl=fr&amp;g=villa+Marcel+Lods&amp;ie=UTF8&amp;hq=&amp;ll=48.876161,2.377124&amp;spn=0.001824,0.004544&amp;t=m&amp;z=16&amp;output=embed"></iframe></p>', '', '', 1),
(27, 'sk', 'whats-ionize', 'What''s Ionize ?', '', '', '<p>Ionize is an Open Source content management system created by webdesigners for webdesigners.</p><p>Originally <a title="Ionize''s development agence internet" href="http://www.ionizecms.com/en/about">created by Partikule and Toopixel</a> for their clients, Ionize is today an OpenSource project, so everybody can build easy to maintain websites.</p>', NULL, NULL, 1),
(28, 'sk', 'can-i-help', 'Can I help ?', '', '', '<p>Because talent is nothing without involvement, we are looking for motivated coders and webdesigners to join the project team.</p><p>You have a module idea ?<br />You want to make some improvement ?<br />You wants to get involved in a promising CMS ?</p>', '', '', 1),
(29, 'sk', 'send-us-a-message', 'Send us a message !', '', '', '', NULL, NULL, 1),
(30, 'sk', 'not-logged-in', 'Not logged in', '', '', '', NULL, NULL, 1),
(31, 'sk', 'hello', 'Hello', '', '', '<p>Welcome to your account management page.</p>', '', '', 1),
(32, 'sk', '401', '401', 'Please login', NULL, '<p>Please login to see this content.</p>', NULL, NULL, 1),
(33, 'sk', '403', '403', 'Forbidden', NULL, '<p>This content is forbidden.</p>', NULL, NULL, 1),
(34, 'sk', 'aktivity-pre-deti', 'Aktivity pre deti', '', '', '<p>  Projekt <strong>Rozvíjame šikovnosť a tvorivosť</strong>  je realizovaný pre deti ZŠ s podporou nadácie COOP Jednota v programe Nech sa nám netúlajú. Približne 35 – 50 detí a mladých ľudí pod vedením lektoriek sa venovali na tvorivých dielňach rozvoju umeleckého cítenia a nadania detí, rozvoju kreativity a šikovnosti, vzniknuté umelecké diela sú prezentované na výstavách tvorivých dielní.</p>', '', '', 1),
(35, 'sk', 'aktivity-mladych', 'Aktivity mladých', '', '', '<p>Mladí členovia OZ pracovali na projektoch ako dobrovoľníci. Projekt <strong>Robme veci spolu</strong> bol realizovaný v rámci programu Kultúra bez bariér cez Nadáciu Orange.</p>\n<p>Projektom <strong>Kompetencie pre prax - Život mladých  na farme</strong> sme naplnili voľno časové aktivity mládeže starostlivosťou o zvieratá a rastliny.</p>', '', '', 1),
(36, 'sk', 'posledny-treti-artikel', 'Posledny treti artikel', '', '', '<p>Duis neque nisi, dapibus sed mattis et quis, nibh. Sed et dapibus nisl amet mattis, sed a rutrum accumsan sed. Suspendisse eu.</p>', '', '', 1),
(37, 'sk', 'o-nas', '', '', '', '<p>Vítame Vás na stránkach nášho Informačného a vzdelávacieho inštitútu. V dnešnej dobe sú informácie a vzdelanie základom pre ďalší osobnostný rast a rozvoj. Náš inštitút Vám ponúka neformálne vzdelávanie -snažíme sa vytvárať podmienky pre slobodný rozvoj každého jednotlivca, rešpektujeme jeho individualitu, podporujeme tvorivú iniciatívu. Našim cieľom je vychovať mladého človeka uznávajúceho základné morálne princípy.</p>\n<p style="text-align: left;">Cieľom združenia je podporovať kultúrnosť, vzdelanosť, osvetu, dobrovoľníctvo, tvorivosť, informačnú gramotnosť občanov formou realizácie kultúrno-spoločenských a výchovno-vzdelávacích aktivít. Združenie chce vytvárať materiálne, technické a informačné podmienky pre uspokojovanie kultúrnych, informačných, vzdelávacích, sociálno-spoločenských a voľno-časových potrieb pre všetky vekové a sociálne skupiny obyvateľov predovšetkým košického a prešovského kraja. Združenie má záujem formálne a neformálne vzdelávať záujemcov v oblasti sociálnej práce a tým prispievať k prevencii sociálneho vylúčenia, prekonávaniu sociálnych, informačných, komunikačných bariér pri integrácii sociálne, zdravotne znevýhodnených spoluobčanov.</p>\n<p style="text-align: left;">Ciele združenia budú napĺňané najmä týmito formami:</p>\n<p style="text-align: left;">a) formálne a neformálne vzdelávanie mladých ľudí, detí a dospelých realizácia vzdelávacích a kultúrno-spoločenských podujatí zameraných predovšetkým na rozširovanie kultúrneho, spoločenského a vzdelanostného rozhľadu detí, mládeže a dospelých, prevencia nežiaducich spoločenských javov, podpora zdravého životného štýlu a osveta v oblasti ľudských práv, </p>\n<p style="text-align: left;">b) organizácia vzdelávacích a voľnočasových aktivít – tvorivé dielne, prednášky, stretnutia klubového typu, kurzy, školenia, semináre, konzultácie,</p>\n<p style="text-align: left;">c) sociálna oblasť/sociálna práca vytváranie vzdelávacích a materiálnych podmienok pre humanizáciu a skvalitňovanie života sociálne a zdravotne znevýhodnených občanov, výmena a rozvoj odborných skúseností, konzultácie a odborné poradenstvo v oblasti sociálnej práce pre študentov / študentské práce/, zamestnancov /kurzy, školenia v odbore sociálna práca/ a ďalších záujemcov/podávanie odborných informácií/,</p>\n<p style="text-align: left;">d) enviromentalistika – podpora detí, mládeže i dospelých vo vzdelávacích aktivitách pri starostlivosti o prírodu, zvieratá a okolie,</p>\n<p style="text-align: left;">e) projektová činnosť – podávanie žiadostí o grant, príprava, realizácia a hodnotenie projektov,</p>\n<p style="text-align: left;">f) spolupráca so štátnymi a neštátnymi inštitúciami v SR i v zahraničí, podporovanie a participácia na aktivitách občianskych združení, nadácií a ďalších komunít obdobného zamerania.</p>', '', '', 1),
(38, 'sk', 'rozne', 'Rôzne', '', '', '<p> V rámci neformálneho vzdelávania v našom OZ boli uskutočnené 4 aktivity zamerané na sociálno–komunikačné zručnosti, prezentáciu, riešenie konfliktov, práca v tíme.</p>\n<p>V letných mesiacoch sa mladé členky OZ zúčastnili exkurzie v meste Košice, na ktorej navštívili múzeá a historické pamiatky mesta.</p>', '', '', 1),
(45, 'sk', 'about-company', 'About Company', '', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s.</p>\n<p><a title="Terms of Use">Terms of Use</a><br /> <a title="Privacy Policy">Privacy Policy</a><br /> <a title="FAQ">FAQ</a><br /> <a title="Sitemap">Sitemap</a></p>', '', '', 1),
(46, 'sk', 'v-pripade-akchkovek-otazok-nas-nevahajte-kontaktova.', 'V prípade akýchkoľvek otázok nás neváhajte kontaktovať.', 'Kontaktný formulár sa Vám zobrazí po kliknutí na odkaz "Napíšte nám".', '', '<p>Napíšte nám!</p>', '', '', 1),
(47, 'sk', 'fotogaleria', 'Fotogaléria', '', '', '', '', '', 1),
(49, 'sk', 'rozvijame-sikovnos-a-tvorivos', 'Rozvíjame šikovnosť a tvorivosť', '', 'Rozvíjame šikovnosť a tvorivosť | Informačný a vzdelávací inštitút', '<p>Od septembra 2011 do mája  2012 sme realizovali  projekt Rozvíjame šikovnosť a tvorivosť. Projekt sa zameriaval na rozvíjanie šikovnosti  a kreativity u žiakov ZŠ formou kreatívnych dielní vo voľnom čase.  V uvedenom období   sme realizovali kreatívne dielne zamerané na servítkovú techniku zdobenia predmetov, výrobu šperkov zo zmršťovacej fólie, maľovanie na sklo, zhotovovanie vianočných ozdôb patchworkovou technikou, výrobu voňavých sviečok, výrobu šperkov z modelovacej hmoty, odlievanie predmetov z modelovacej hmoty, výrobu korálkových šperkov a ozdôb, zdobenie vajíčok a venčekov patchworkovou technikou, maľovanie sklenených pohárov, kraklovanie, kašírovanie, výrobu papierových kvetov, výrobu stromčekov šťastia, darčekov pre mamky, pohľadníc a pozdravov. V rámci projektu sme realizovali v mesiaci december 2011 a máj 2012 výstavy tvorivých dielní, na ktorých sme prezentovali práce detí.</p>\n<p>Realizáciou projektu sa nám podarilo dosiahnuť kvalitatívne výsledky projektu – podarilo sa nám vytvoriť vhodné podmienky na zmysluplné trávenie voľného času detí a rozvíjať  umelecké nadanie a cítenie, kreativitu a šikovnosť detí. Podarilo sa nám dosiahnuť aj kvantitatívne výsledky projektu – zrealizovať 2 výstavy tvorivých dielní.</p>', '', '', 1),
(51, 'sk', 'robme-veci-spolu', 'Robme veci spolu', '', 'Robme veci spolu | Informačný a vzdelávací inštitút', '<p>Primárnym zámerom projektu Robme veci spolu bolo sprístupnenie divadelno-hudobného predstavenia ,,U nás doma, na valale‘‘ pre zdravotne a sociálne znevýhodnené deti a dospelých. Sekundárnym zámerom projektu bolo  umožniť členom súboru  prezentovať  umenie, rozvíjať ich tvorivosť, schopnosť prezentovať sa na verejných vystúpeniach,  nadviazať a rozvíjať spoluprácu so subjektmi, ktoré majú na starosti deti a ľudí zo zdravotne a sociálne znevýhodneného prostredia -  Detský domov, DSS , Spojená škola  internátna, Detské integračné centrum, DÚHA – Združenie mentálne a zdravotne postihnutých a formou  tvorivých  dielní  umožniť ich vzájomné spoznávanie sa a integráciu do spoločnosti.</p>\n<p>Stanovené ciele projektu boli nasledovné: sprístupniť divadelno-hudobné predstavenie  primárnej cieľovej skupine bezplatne,  odstrániť fyzické a finančné bariéry v prístupe primárnej cieľovej skupiny k umeniu,  predstaviť a rozvíjať talent detí zo sociálne znevýhodneného prostredia,  odstrániť psychologické bariéry detí - členov divadelno-hudobného zoskupenia prezentovaním sa na verejnosti,  nadviazať a rozvíjať spoluprácu so subjektmi, ktoré majú na starosti deti, mladých ľudí a dospelých zo zdravotne a sociálne znevýhodneného prostredia, formou tvorivých  dielní  umožniť  vzájomné spoznávanie sa členov so sociálne a zdravotne znevýhodnenými deťmi, mladými ľuďmi a dospelými,  ich integrácia do spoločnosti.</p>\n<p>Od začiatku realizácie  projektu bola činnosť osôb participujúcich na projekte zameraná na splnenie cieľov projektu. Organizačné, finančné, umelecké  činnosti vyplývajúce z  realizácie projektu boli zamerané na splnenie stanovených cieľov, čo sa celému kolektívu podarilo.</p>\n<p>V rámci prípravnej fázy sa realizovalo nacvičenie divadelno-hudobného predstavenia U nás doma, na valale pod vedením Mgr. Ivany Zálepovej, materiálno-technické zabezpečenie  predstavenia (kulisy, rekvizity, kostýmy) mala na starosti Mgr. Titková. V rámci realizačnej fázy sa uskutočnilo v máji 2011 predstavenie  pre občanov, seniorov, zdravotne postihnutých v obci, v júni 2011 sa realizovali 2 predstavenia pre zdravotne postihnutých. Ďalšou aktivitou projektu bolo 6 tvorivých dielní, ktoré boli realizované v mesiacoch júl – september 2011, tvorivé dielne organizačne zabezpečila Mgr. Titková a Mgr. Zálepová. Na tvorivých dielňach pod vedením skúsenej lektorky deti rozvíjali umelecké cítenie a prejav, využívala sa napr. technika decoupage na sklo, doštičky a keramiku, výroba dekoratívnych predmetov z prírodných a farebných medzistienok, maľovanie výrobkov zo skla hubkovaním a pod. V hodnotiacej fáze sa uskutočnilo vyhodnotenie projektu na  spoločnom stretnutí realizátorov projektu so zástupcami pozvaných subjektov.</p>\n<p>Medzi zaujímavé momenty projektu patrila ochota a záujem, s akými sa deti snažili nacvičiť predstavenie pre iné deti a pripravenie drobnej pozornosti  - cukríkov, malých kvietkov (samy ich zhotovili),  ktorými  privítali svojich divákov na predstaveniach.</p>', '', '', 1),
(52, 'sk', 'komprax-kompetencie-pre-prax', 'Komprax - kompetencie pre prax', '', 'Komprax - kompetencie pre prax | Informačný a vzdelávací inštitút', '<p>Leto na farme - bol realizovaný v roku 2011, projektom sa naplnili voľnočasové aktivity mládeže starostlivosťou o zvieratá a rastliny. Účastníci si vyskúšali dojenie, sadenie, štepenie, výrobu produktov z mlieka, získali skúsenosti s prácou v prírode a potrebe jej ochrany. Projekt bol zameraný na neformálne vzdelávanie v environmentálnej oblasti,  spoznávanie pozitívnych a negatívnych vplyvov človeka na životné prostredie, na ochranu prírody.</p>', '', '', 1),
(53, 'sk', 'cestujeme-po-europskej-unii', 'Cestujeme po Európskej únii', '', 'Cestujeme po Európskej únii | Informačný a vzdelávací inštitút', '<p>Projekt Cestujeme po Európskej únii realizovali mladí ľudia pochádzajúci z vidieka. Projekt sa realizoval od mája 2013 do októbra 2013 v obci Nižný Hrušov. Projekt bol národnou mládežníckou iniciatívou. Hlavnou témou projektu bolo európske občianstvo a kreativita mladých ľudí. Projekt obsahoval všeobecný cieľ – poskytnutie deťom a mládeži zmysluplné trávenie voľného času zamerané na získanie informácií o EÚ, jej inštitúciách a členských krajinách. Špecifickým cieľom bolo získať sociálno-komunikačné zručnosti pre prácu s deťmi a mládežou. Ďalším špecifickým cieľom bolo získanie skúseností v oblasti IKT – s vyhľadávaním informácií, ich spracovaním a tvorbou prezentácií. Posledným špecifickým cieľom bolo zvyšovanie povedomia o EÚ, členských krajinách EÚ a zaujímavostiach EÚ. Projekt realizovala neformálna skupina, ktorú tvorilo 6 mladých ľudí. V projekte boli použité metódy neformálneho vzdelávania -  zážitková metóda, učenie sa riešením problémov a prepojenie naučeného s reálnymi situáciami, tvorivé dielne, učenie sa na základe interakcie v skupine, workshopy. Projekt Cestujeme po Európskej únii je finančne podporený z programu EU Mládež v akcii.</p>', '', '', 1),
(54, 'sk', 'slide-1', 'Slide 1', 'Projekt: Rozvíjame šikovnosť a tvorivosť', '', '', '', '', 1),
(55, 'sk', 'slide-2', 'Slide 2', 'Projekt: Komprax - kompetencie pre prax', '', '', '', '', 1),
(56, 'sk', 'slide-3', 'Slide 3', 'Projekt: Rozvíjaj svoj talent!', '', '', NULL, NULL, 1),
(57, 'sk', 'aktivity-pre-deti-1', 'Aktivity pre deti', '', 'Aktivity pre deti | Informačný a vzdelávací inštitút', '<p>Projekt <strong>Rozvíjame šikovnosť a tvorivosť</strong>  je realizovaný pre deti ZŠ s podporou nadácie COOP Jednota v programe Nech sa nám netúlajú. Približne 35 – 50 detí a mladých ľudí pod vedením lektoriek sa venovali na tvorivých dielňach rozvoju umeleckého cítenia a nadania detí, rozvoju kreativity a šikovnosti, vzniknuté umelecké diela sú prezentované na výstavách tvorivých dielní.</p>', '', '', 1),
(58, 'sk', 'aktivity-mladch-1', 'Aktivity mladých', '', 'Aktivity mladých | Informačný a vzdelávací inštitút', '<p>Mladí členovia OZ pracovali na projektoch ako dobrovoľníci. Projekt <strong>Robme veci spolu</strong>bol realizovaný v rámci programu Kultúra bez bariér cez Nadáciu Orange. Cieľom projektu bolo pripraviť s deťmi zo sociálne znevýhodneného prostredia kultúrne podujatie U nás doma na valale na motívy Čin – čin, podujatie bolo prezentované pre handicapované deti a mládež (Detské integračné centrum, Detský domov, Domov sociálnych služieb, klientov ZPMP a pod.), ďalšími aktivitami projektu boli spoločné tvorivé dielne s detskými účinkujúcimi a handicapovanými deťmi a mládežou.</p>\n<p>    Projektom <strong>Kompetencie pre prax - Život mladých  na farme</strong> sme naplnili voľno časové aktivity mládeže starostlivosťou o zvieratá a rastliny. Mali si možnosť vyskúšať dojenie, sadenie, štiepenie, výrobu produktov z mlieka a tým získať poznatky o prírode v praxi.</p>', '', '', 1),
(59, 'sk', 'rozne-1', 'Rôzne', '', 'Rôzne aktivity | Informačný a vzdelávací inštitút', '<p> V rámci neformálneho vzdelávania v našom OZ boli uskutočnené 4 aktivity zamerané na sociálno–komunikačné zručnosti, prezentáciu, riešenie konfliktov, práca v tíme. Neformálne vzdelávanie viedla Mgr. Zuzana Spišiaková, cieľovou skupinou bolo 8 našich mladých členov. V roku 2013 sme zrealizovali päť  tvorivých dielní pre deti a mládež v Nižnom Hrušove, tvorivé dielne boli zamerané na zmysluplné trávenie voľného času, ktoré vedie k rozvoju umeleckého cítenia a tvorivosti. Na základe získaného grantu z Ministerstva kultúry SR sme realizovali remeselné dielne na vybraných základných školách vo vranovskom okrese, na ktorých naše lektorky  realizovali tradičné remeselné techniky – výroba sviečok z vosku, drôtárstvo, maľovanie na sklo, hrnčiarstvo, košikárstvo, rezbárstvo,  výroba mydla, zemplínska výšivka.</p>\n<p>V letných mesiacoch sa mladé členky OZ zúčastnili exkurzie v meste Košice, na ktorej navštívili múzeá a historické pamiatky mesta.</p>\n<p>V rámci vzdelávania naši členovia - Zuzana Spišiaková, Igor Vaško, Jakub Šnajder sa zúčastnili vzdelávania organizovaného Nadáciou  deti Slovenska. Stali sa z nich vyškolení odborníci na zdravé stravovanie, ktorí v roku 2013 začali realizovať projekt Vita fit kútika. Zámerom projektu je pôsobiť preventívne na základných školách v Košickom samosprávnom kraji a vo Vita fit kútikoch v Tescu.</p>', '', '', 1),
(60, 'sk', 'vitafit', 'VITAFIT', '', 'VITAFIT | Informačný a vzdelávací inštitút', '<p>Projekt organizácie s názvom Racionálne a ekologicky proti obezite v programe Vitafit podporený Nadáciou detí Slovenska /NDS/, ktorý prebieha v Košiciach.</p>\n<p>V roku 2012 začala NDS s Nadáciou TESCO pilotný vzdelávaci program zameraný na zlepšenie zdravotného štýlu detí. Zámerom projektu je naučiť deti byť zodpovednými za vlastné zdravie. Cez prednášky na školách a pôsobením v kútikoch zdravia v komunitách chceme zlepšiť kvalitu života detí a ich schopnosť rozhodovať sa v prospech zdravého životného štýlu.</p>\n<p>V roku 2013 bol náš inštitút vybraný pre ďalšiu realizáciu projektu a pokračuje v spolupráci s NDS a Nadáciou Tesco vo vzdelávacom  programe, ktorý je  zameraný na zlepšenie  zdravotného štýlu detí.  Zámerom  projektu   je naučiť deti byť zodpovednými za vlastné zdravie. Cez prednášky na školách a pôsobením v kútikoch zdravia v komunitách chceme zlepšiť kvalitu života detí a ich schopnosť rozhodovať sa v prospech zdravého životného štýlu, kde zvyšujeme záujem detí a rodičov o zdravší spôsob stravovania a stravovacích návykoch.</p>\n<p>Vybraní členovia organizácie boli vyškolení ako poradcovia výživy, ktorí vedia vysvetliť význam zdraviu prospešných potravín a ich vplyv na zdravie detí a ich úlohou je šíriť informácie o efektivite zdravých potravín na zdravie detí.</p>\n<p>Tohto roku pokračuje  NDS   s Nadáciou TESCO vo vzdelávacom  programe, ktorý je  zameraný na zlepšenie  zdravotného štýlu detí.  Zámerom  projektu   je naučiť deti byť zodpovednými za  vlastné zdravie. Cez prednášky na školách a pôsobením v kútikoch v komunitách chceme zlepšiť kvalitu života detí a ich schopnosť rozhodovať sa v prospech zdravého životného štýlu.</p>', '', '', 1),
(61, 'sk', 'remeselne-dielne', 'Remeselné dielne', '', 'Remeselné dielne | Informačný a vzdelávací inštitút', '<p>Informačný a vzdelávací inštitút v spolupráci s materskými a základnými školami vo vranovskom okrese realizoval v mesiacoch október – december 2013 projekt Remeselné dielne. Remeselné tvorivé dielne boli zamerané na tradičné remeselné techniky – výroba sviečok z vosku, drotárstvo, výroba dekoračných predmetov v kombinácii s korálikmi, maľovanie na sklo, zemplínska výšivka, podnety z hrnčiarstva – modelovanie nádob a iných dekoračných predmetov z hliny a ich dekorácia, rezbárstvo, výroba mydla. Cieľom tradičných remeselných dielní bolo poznávať tradičné spôsoby remeselnej výroby a rozvíjať manuálne zručnosti. Výsledky edukačných aktivít detí a mládeže boli prezentované na dvoch kultúrno – spoločenských podujatiach – výstavách. Realizované s finančnou podporou Ministerstva kultúry Slovenskej republiky.</p>', '', '', 1),
(62, 'sk', 'rozvijaj-svoj-talent', 'Rozvíjaj svoj talent!', '', 'Rozvíjaj svoj talent! | Informačný a vzdelávací inštitút', '<p>Projekt „Rozvíjaj svoj talent! “   sa zameriava na vytvorenie podmienok pre rozvíjanie pohybových  a umeleckých aktivít detí a mládeže vo veku 7 – 15 rokov  v obci Nižný Hrušov. Zámerom projektu je zabezpečiť   zmysluplné trávenie voľného času detí a mládeže. Zámer projektu sa dosiahne športovými a tanečnými aktivitami, tvorivými a výtvarnými workshopmi. Informačný a vzdelávací inštitút realizuje aktivity  od mesiaca  máj 2014 do  septembera  2014 s finančnou podporou Nadácie Jednota COOP.</p>', '', '', 1),
(63, 'sk', 'spoznavaj-slovensko', 'Spoznávaj Slovensko!', '', 'Spoznávaj Slovensko! | Informačný a vzdelávací inštitút', '<p class="youthaf4subcomment" style="margin-bottom: 1.0pt; text-align: justify;">V rámci projektu sa realizovali prípravné aktivity v mesiacoch február -  marec  2014, v tomto období sa realizovala  príprava projektu, organizačné zabezpečenie projektu  - zabezpečenie priestorov na realizáciu projektu , lektora, propagácia projektu v regionálnej tlači a pomocou tlačených plagátov a letákov, zabezpečenie prepravcu,  zabezpečenie cestovného poistenia v Kooperatíve, spolupráca s CVČ Vranov n. T., Hornozemplínska knižnica  - zabezpečenie priestorov na výstavy, spolupráca so  ŠU a so základnými školami vo vranovskom regióne.  </p>\n<p class="youthaf4subcomment" style="margin-bottom: 1.0pt; text-align: justify;">V mesiacoch apríl -  september 2014  sa uskutočnila realizácia projektových aktivít - neformálneho vzdelávania  zameraného na získanie praktických skúsenosti s hľadaním a spracovávaním textových, grafických, číselných, zvukových informácií. Mladí ľudia sa naučili  ako získané informácie prezentovať, uchovávať, prenášať, získali skúsenosti s tvorbou prezentácií o Slovensku, skúsenosti s  komunikáciou prostredníctvom IKT, vytvorili fotogalériu, skupinu na Fb, vytvorili webovú stránku http://www.spoznavajslovensko.estranky.sk, vytvorili plagáty na propagáciu projektu a výstav pre širokú verejnosť a  pod. Neformálne vzdelávanie sa realizovalo interaktívnymi prednáškami, diskusiou v skupine, brainstormingom, riešením problémov, prepojením naučeného s reálnymi situáciami, skupinovou prácou. Ďalšou metódou vzdelávania boli jednodňové exkurzie po východnom Slovensku, ktorých cieľom bolo získať fotomateriály a informácie o jednotlivých objektoch, mestách, pamiatkach, zaujímavostiach. Mladí ľudia navštívili a spoznávali tieto mestá a pamiatky - Spiš, Levoča,  Vysoké Tatry, Ždiar, Kežmarok, Stará Ľubovňa, Prešov, Bardejov a pod.</p>\n<p class="youthaf4subcomment" style="margin-bottom: 1.0pt; text-align: justify;">Ďalšou aktivitou projektu boli prezentácie a výstavy Spoznávaj Slovensko! pre deti a mládež a širokú verejnosť vo vranovskom regióne. Po získaní fotodokumentácie z jednotlivých miest mladí ľudia pripravili  návrh na fotoknihy a prezentácie v PowerPointe, ktoré prezentovali deťom ZŠ na hodinách vlastivedy na doplnenie učiva a  v školských kluboch detí (CZŠ Vranov n. T – 2x, ZŠ Bernolákova, CVČ Dlhé Klčovo, ZŠ Nižný Hrušov 2x). Okrem prezentácií boli doplnené nové aktivity pre deti – vytvorené elektronické pexeso (deti si vyskúšali hrať na notebookoch, tabletoch ale aj na interaktívnej tabuli), klasické papierové pexeso, záložky. Pre širokú verejnosť účastníci pripravili z fotodokumentácie  výstavy – v CVČ Vranov n. T.,  Hornozemplínskej knižnici.</p>\n<p class="youthaf4subcomment" style="margin-bottom: 1.0pt; text-align: justify;">Projekt sa realizoval v partnerstve s CVČ Vranov n. T., ďalším partnerom projektu bol Školský úrad Dlhé Klčovo, ktorý sa do projektu zapojil odporúčaním a pomocou pri prezentáciách na základných školách. Obaja partneri prispeli k úspešnej realizácii projektu, nadviazaná spolupráca bude dobrým základom  pre nové projekty.</p>\n<p class="youthaf4subcomment" style="margin-bottom: 1.0pt; text-align: justify;">Na zabezpečenie hladkého priebehu aktivít boli realizované  hodnotiace stretnutia v spolupráci s koučkou pred začiatkom, počas a po ukončení vzdelávacej aktivity za účelom získania spätnej väzby – napr. aktivita "Sedem zmyslov", hodnotenie "Do kola" a pod.V rámci hodnotiacich aktivít sa  uskutočnili záverečné stretnutia účastníkov, na ktorých sa vyhodnotili projektové aktivity  v spolupráci s koučkou.  V rámci tejto aktivity bolo urobené aj vyúčtovanie projektu, dokladovanie a vypracovanie záverečnej  správy.</p>\n<p style="padding-top: 0px; padding-bottom: 0px; color: #594a5f; font-family: Arial; line-height: 20px;">Projekt je finančne podporený z programu EÚ Mládež v akcii.</p>\n<p style="padding-top: 0px; padding-bottom: 0px; color: #594a5f; font-family: Arial; line-height: 20px;"><b style="margin: 0px; padding: 0px;">Tak sa PRIDAJ k nám a Spoznávaj Slovensko!</b> </p>\n<p style="padding-top: 0px; padding-bottom: 0px; color: #594a5f; font-family: Arial; line-height: 20px;">(www.spoznavajslovensko.estranky.sk)</p>', '', '', 1),
(64, 'sk', 'dokumenty', 'Dokumenty', '', '', '', NULL, NULL, 1),
(65, 'sk', 'kontakt', 'Kontakt', '', '', '<p><strong>Informačný a vzdelávací inštitút</strong></p>\n<p>Lomnická 2</p>\n<p>040 01 Kosice</p>\n<p> </p>\n<p><strong>Tel.:</strong> 0911 357 162, 0908 348 327</p>\n<p><strong>E-mail:</strong>  informacnyavzdelavaciinstitut@gmail.com        </p>\n<p><strong>IČO:</strong> 42 248 418</p>', '', '', 1);

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
(5, 9, 1, 1, NULL, NULL),
(5, 18, 1, 1, NULL, NULL),
(6, 6, 1, 3, NULL, NULL),
(6, 7, 1, 4, NULL, NULL),
(6, 8, 1, 2, NULL, NULL),
(8, 3, 1, 1, NULL, NULL),
(9, 8, 1, 1, NULL, NULL),
(10, 4, 1, 1, NULL, NULL),
(17, 3, 1, 1, NULL, NULL),
(34, 23, 1, 1, NULL, NULL),
(35, 24, 1, 1, NULL, NULL),
(36, 12, 1, 1, NULL, NULL),
(37, 46, 1, 1, NULL, NULL),
(38, 22, 1, 1, NULL, NULL),
(47, 166, 1, 1, NULL, NULL),
(47, 167, 1, 2, NULL, NULL),
(47, 168, 1, 3, NULL, NULL),
(47, 169, 1, 4, NULL, NULL),
(47, 170, 1, 5, NULL, NULL),
(47, 171, 1, 6, NULL, NULL),
(47, 172, 1, 7, NULL, NULL),
(47, 173, 1, 8, NULL, NULL),
(47, 174, 1, 9, NULL, NULL),
(47, 175, 1, 10, NULL, NULL),
(47, 176, 1, 11, NULL, NULL),
(47, 177, 1, 12, NULL, NULL),
(47, 178, 1, 13, NULL, NULL),
(47, 179, 1, 14, NULL, NULL),
(47, 180, 1, 15, NULL, NULL),
(47, 181, 1, 16, NULL, NULL),
(49, 47, 1, 1, NULL, NULL),
(49, 48, 1, 2, NULL, NULL),
(49, 49, 1, 3, NULL, NULL),
(49, 50, 1, 4, NULL, NULL),
(51, 51, 1, 1, NULL, NULL),
(52, 52, 1, 1, NULL, NULL),
(52, 53, 1, 2, NULL, NULL),
(52, 54, 1, 3, NULL, NULL),
(52, 55, 1, 5, NULL, NULL),
(52, 56, 1, 6, NULL, NULL),
(52, 57, 1, 4, NULL, NULL),
(53, 58, 1, 2, NULL, NULL),
(53, 59, 1, 3, NULL, NULL),
(53, 60, 1, 1, NULL, NULL),
(54, 182, 1, 1, NULL, NULL),
(55, 183, 1, 1, NULL, NULL),
(56, 184, 1, 1, NULL, NULL),
(57, 44, 1, 1, NULL, NULL),
(58, 43, 1, 2, NULL, NULL),
(59, 42, 1, 1, NULL, NULL),
(60, 61, 1, 1, NULL, NULL),
(60, 62, 1, 2, NULL, NULL),
(60, 63, 1, 3, NULL, NULL),
(60, 64, 1, 4, NULL, NULL),
(60, 65, 1, 5, NULL, NULL),
(60, 66, 1, 6, NULL, NULL),
(60, 67, 1, 7, NULL, NULL),
(60, 68, 1, 8, NULL, NULL),
(60, 69, 1, 9, NULL, NULL),
(60, 70, 1, 10, NULL, NULL),
(60, 71, 1, 11, NULL, NULL),
(60, 72, 1, 12, NULL, NULL),
(60, 73, 1, 13, NULL, NULL),
(60, 74, 1, 14, NULL, NULL),
(60, 75, 1, 15, NULL, NULL),
(60, 76, 1, 16, NULL, NULL),
(60, 77, 1, 17, NULL, NULL),
(60, 78, 1, 18, NULL, NULL),
(60, 79, 1, 19, NULL, NULL),
(60, 80, 1, 20, NULL, NULL),
(60, 81, 1, 21, NULL, NULL),
(60, 82, 1, 22, NULL, NULL),
(60, 83, 1, 23, NULL, NULL),
(60, 84, 1, 24, NULL, NULL),
(61, 85, 1, 1, NULL, NULL),
(61, 86, 1, 2, NULL, NULL),
(61, 87, 1, 3, NULL, NULL),
(61, 88, 1, 4, NULL, NULL),
(61, 89, 1, 5, NULL, NULL),
(61, 90, 1, 6, NULL, NULL),
(61, 91, 1, 7, NULL, NULL),
(61, 92, 1, 8, NULL, NULL),
(62, 93, 1, 1, NULL, NULL),
(62, 94, 1, 2, NULL, NULL),
(62, 95, 1, 3, NULL, NULL),
(62, 96, 1, 4, NULL, NULL),
(62, 97, 1, 5, NULL, NULL),
(62, 98, 1, 6, NULL, NULL),
(62, 99, 1, 7, NULL, NULL),
(62, 100, 1, 8, NULL, NULL),
(62, 101, 1, 9, NULL, NULL),
(62, 102, 1, 10, NULL, NULL),
(62, 103, 1, 11, NULL, NULL),
(62, 104, 1, 12, NULL, NULL),
(62, 105, 1, 13, NULL, NULL),
(62, 106, 1, 14, NULL, NULL),
(62, 107, 1, 15, NULL, NULL),
(62, 108, 1, 16, NULL, NULL),
(62, 109, 1, 17, NULL, NULL),
(62, 110, 1, 18, NULL, NULL),
(62, 111, 1, 19, NULL, NULL),
(62, 112, 1, 20, NULL, NULL),
(62, 113, 1, 21, NULL, NULL),
(62, 114, 1, 22, NULL, NULL),
(62, 115, 1, 23, NULL, NULL),
(62, 116, 1, 24, NULL, NULL),
(62, 117, 1, 25, NULL, NULL),
(62, 118, 1, 26, NULL, NULL),
(63, 119, 1, 1, NULL, NULL),
(63, 120, 1, 2, NULL, NULL),
(63, 121, 1, 3, NULL, NULL),
(63, 122, 1, 4, NULL, NULL),
(63, 123, 1, 5, NULL, NULL),
(63, 124, 1, 6, NULL, NULL),
(63, 125, 1, 7, NULL, NULL),
(63, 126, 1, 8, NULL, NULL),
(63, 127, 1, 9, NULL, NULL),
(63, 128, 1, 10, NULL, NULL),
(63, 129, 1, 11, NULL, NULL),
(63, 130, 1, 12, NULL, NULL),
(63, 131, 1, 13, NULL, NULL),
(63, 132, 1, 14, NULL, NULL),
(63, 133, 1, 15, NULL, NULL),
(63, 134, 1, 16, NULL, NULL),
(63, 135, 1, 17, NULL, NULL),
(63, 136, 1, 18, NULL, NULL),
(63, 137, 1, 19, NULL, NULL),
(63, 138, 1, 20, NULL, NULL),
(63, 139, 1, 21, NULL, NULL),
(63, 140, 1, 22, NULL, NULL),
(63, 141, 1, 23, NULL, NULL),
(63, 142, 1, 24, NULL, NULL),
(63, 143, 1, 25, NULL, NULL),
(63, 144, 1, 26, NULL, NULL),
(63, 145, 1, 27, NULL, NULL),
(63, 146, 1, 28, NULL, NULL),
(63, 147, 1, 29, NULL, NULL),
(63, 148, 1, 30, NULL, NULL),
(63, 149, 1, 31, NULL, NULL),
(63, 150, 1, 32, NULL, NULL),
(63, 151, 1, 33, NULL, NULL),
(63, 152, 1, 34, NULL, NULL),
(63, 153, 1, 35, NULL, NULL),
(63, 154, 1, 36, NULL, NULL),
(63, 155, 1, 37, NULL, NULL),
(63, 156, 1, 38, NULL, NULL),
(63, 157, 1, 39, NULL, NULL),
(63, 158, 1, 40, NULL, NULL),
(63, 159, 1, 41, NULL, NULL),
(64, 160, 1, 1, NULL, NULL),
(64, 161, 1, 2, NULL, NULL),
(64, 162, 1, 3, NULL, NULL),
(64, 163, 1, 4, NULL, NULL),
(64, 164, 1, 5, NULL, NULL),
(64, 165, 1, 6, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `article_type`
--

INSERT INTO `article_type` (`id_type`, `type`, `ordering`, `description`, `type_flag`) VALUES
(7, 'home-info', 0, '', 10),
(12, 'slider', 0, '', 8);

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
(1, 'sk', 'Ionize CMS', '', ''),
(2, 'sk', 'Website', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `extend_field`
--

INSERT INTO `extend_field` (`id_extend_field`, `name`, `type`, `description`, `parent`, `id_parent`, `ordering`, `translated`, `value`, `default_value`, `global`, `main`) VALUES
(1, 'title', 1, '', 'item', 1, 0, '0', '', '', 0, 1),
(2, 'text', 1, '', 'item', 1, 0, '0', '', '', 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `extend_fields`
--

INSERT INTO `extend_fields` (`id_extend_fields`, `id_extend_field`, `parent`, `id_parent`, `lang`, `content`, `ordering`) VALUES
(1, 1, 'item', 2, '', 'My first Flag', 0),
(2, 2, 'item', 2, '', 'New !!!', 0);

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
(2, 'en', 'Text');

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

--
-- Sťahujem dáta pre tabuľku `items`
--

INSERT INTO `items` (`id_item`, `parent`, `id_parent`, `ordering`) VALUES
(2, 'article', 5, 1);

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
('sk', 'Slovak', '1', '1', 1, 1);

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
('0.0.0.0', 1423209932, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `media`
--

INSERT INTO `media` (`id_media`, `type`, `file_name`, `path`, `base_path`, `copyright`, `provider`, `date`, `link`, `square_crop`) VALUES
(3, 'picture', 'screenshot_ionize_dashboard.jpg', 'files/screenshot_ionize_dashboard.jpg', 'files/', NULL, NULL, '0000-00-00 00:00:00', NULL, 'm'),
(4, 'picture', 'IMG_8359.jpg', 'files/pictures/IMG_8359.jpg', 'files/pictures/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(5, 'picture', 'IMG_8447.jpg', 'files/pictures/IMG_8447.jpg', 'files/pictures/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(6, 'picture', 'IMG_8632.jpg', 'files/pictures/IMG_8632.jpg', 'files/pictures/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(7, 'picture', 'IMG_8645.jpg', 'files/pictures/IMG_8645.jpg', 'files/pictures/', '', NULL, '0000-00-00 00:00:00', '', 'm'),
(8, 'picture', 'IMG_8963.jpg', 'files/pictures/IMG_8963.jpg', 'files/pictures/', NULL, NULL, '0000-00-00 00:00:00', NULL, 'm'),
(9, 'video', '68203296', 'http://player.vimeo.com/video/68203296', 'http://player.vimeo.com/video/', NULL, 'vimeo', '0000-00-00 00:00:00', NULL, 'm'),
(10, 'picture', 'systemrestore_icon.png', 'files/systemrestore_icon.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(11, 'picture', 'lp_icon_256.png', 'files/lp_icon_256.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(12, 'picture', '1211754933.png', 'files/1211754933.png', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(13, 'picture', 'alone_big.jpg', 'files/alone_big.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(14, 'picture', 'boat_big.jpg', 'files/boat_big.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(15, 'picture', 'fashion2_big.jpg', 'files/fashion2_big.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(16, 'picture', 'mondial_big.jpg', 'files/mondial_big.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(17, 'picture', '1921137_10203123803202131_920241475_o.jpg', 'files/1921137_10203123803202131_920241475_o.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(18, 'picture', '10630635_583191631806632_3223087378212711320_o.jpg', 'files/10630635_583191631806632_3223087378212711320_o.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(19, 'picture', '10658619_583193428473119_8624156610566178979_o.jpg', 'files/10658619_583193428473119_8624156610566178979_o.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(20, 'picture', '10695328_735901309781011_905084675_n.jpg', 'files/10695328_735901309781011_905084675_n.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(21, 'picture', '10708505_583193858473076_4302913211187318751_o.jpg', 'files/10708505_583193858473076_4302913211187318751_o.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(22, 'picture', 'team_386673_640.jpg', 'files/team_386673_640.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(23, 'picture', 'children_516340_640.jpg', 'files/children_516340_640.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(24, 'picture', 'girl_538134_640.jpg', 'files/girl_538134_640.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(25, 'picture', '1597487_583193015139827_5623730006541991492_o.jpg', 'files/1597487_583193015139827_5623730006541991492_o.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(26, 'picture', '10551577_583193655139763_9222723778477238289_o.jpg', 'files/10551577_583193655139763_9222723778477238289_o.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(27, 'picture', '10733475_10203243787521298_790045162_n.jpg', 'files/10733475_10203243787521298_790045162_n.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(28, 'picture', '10735960_966214573394705_177168398_n.jpg', 'files/10735960_966214573394705_177168398_n.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(29, 'picture', '10799438_974247719258057_520138024_n.jpg', 'files/10799438_974247719258057_520138024_n.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(30, 'picture', '10807037_974247825924713_469731237_n.jpg', 'files/10807037_974247825924713_469731237_n.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(31, 'picture', '20141029_112302_1_1.jpg', 'files/20141029_112302_1_1.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(32, 'picture', 'iz_kupele.jpg', 'files/iz_kupele.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(33, 'picture', 'roadshow_foto1.jpg', 'files/roadshow_foto1.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(34, 'picture', 'prednaska_farara_ochtina.jpg', 'files/prednaska_farara_ochtina.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(35, 'picture', '1597487_583193015139827_5623730006541991492_o_2.jpg', 'files/1597487_583193015139827_5623730006541991492_o_2.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(36, 'picture', '1921137_10203123803202131_920241475_o_4.jpg', 'files/1921137_10203123803202131_920241475_o_4.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(37, 'picture', '10551577_583193655139763_9222723778477238289_o_2.jpg', 'files/10551577_583193655139763_9222723778477238289_o_2.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(38, 'picture', 'slavosovsky_tunel_okolie_1.jpg', 'files/slavosovsky_tunel_okolie_1.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(39, 'picture', 'slide1.jpg', 'files/slide1.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(40, 'picture', 'slide2.jpg', 'files/slide2.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(41, 'picture', 'slide3.jpg', 'files/slide3.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(42, 'picture', 'team.jpg', 'files/team.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(43, 'picture', 'girl.jpg', 'files/girl.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(44, 'picture', 'children.jpg', 'files/children.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(45, 'picture', 'logo.jpg', 'files/logo.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(46, 'picture', 'iavi.jpg', 'files/iavi.jpg', 'files/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(47, 'picture', 'rozvijame_s._a_tv.1.jpg', 'files/projekt1/rozvijame_s._a_tv.1.jpg', 'files/projekt1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(48, 'picture', 'rozvijame_sik._a_tvorivos_2.jpg', 'files/projekt1/rozvijame_sik._a_tvorivos_2.jpg', 'files/projekt1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(49, 'picture', 'rozvijame_sik._a_tvorivos_3.jpg.png', 'files/projekt1/rozvijame_sik._a_tvorivos_3.jpg.png', 'files/projekt1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(50, 'picture', 'rozvijame_sik._a_tvorivos_4.jpg.png', 'files/projekt1/rozvijame_sik._a_tvorivos_4.jpg.png', 'files/projekt1/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(51, 'picture', 'team_2.jpg', 'files/projekt2/team_2.jpg', 'files/projekt2/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(52, 'picture', 'komprax.jpg', 'files/projekt3/komprax.jpg', 'files/projekt3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(53, 'picture', 'komprax2.jpg', 'files/projekt3/komprax2.jpg', 'files/projekt3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(54, 'picture', 'komprax3.jpg', 'files/projekt3/komprax3.jpg', 'files/projekt3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(55, 'picture', 'komprax4.jpg', 'files/projekt3/komprax4.jpg', 'files/projekt3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(56, 'picture', 'komprax1.jpg', 'files/projekt3/komprax1.jpg', 'files/projekt3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(57, 'picture', 'komprax5.jpg', 'files/projekt3/komprax5.jpg', 'files/projekt3/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(58, 'picture', 'diel_a_1.jpg', 'files/projekt4/diel_a_1.jpg', 'files/projekt4/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(59, 'picture', 'diel_a_2.jpg', 'files/projekt4/diel_a_2.jpg', 'files/projekt4/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(60, 'picture', 'diel_a_2_kopia.jpg', 'files/projekt4/diel_a_2_kopia.jpg', 'files/projekt4/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(61, 'picture', 'img_20140502_180009.jpg', 'files/projekt5/img_20140502_180009.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(62, 'picture', 'dscn1333.jpg', 'files/projekt5/dscn1333.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(63, 'picture', 'dscn1335.jpg', 'files/projekt5/dscn1335.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(64, 'picture', 'img_20140425_164517.jpg', 'files/projekt5/img_20140425_164517.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(65, 'picture', 'img_20140425_181340.jpg', 'files/projekt5/img_20140425_181340.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(66, 'picture', 'img_20140426_114215.jpg', 'files/projekt5/img_20140426_114215.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(67, 'picture', 'img_20140502_165907.jpg', 'files/projekt5/img_20140502_165907.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(68, 'picture', 'img_20140502_172253.jpg', 'files/projekt5/img_20140502_172253.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(69, 'picture', 'img_20140503_113229.jpg', 'files/projekt5/img_20140503_113229.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(70, 'picture', 'img_20140503_113918.jpg', 'files/projekt5/img_20140503_113918.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(71, 'picture', 'img_20140503_114616.jpg', 'files/projekt5/img_20140503_114616.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(72, 'picture', 'img_20140503_120755.jpg', 'files/projekt5/img_20140503_120755.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(73, 'picture', 'img_20140503_121639.jpg', 'files/projekt5/img_20140503_121639.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(74, 'picture', 'img_20140503_123529.jpg', 'files/projekt5/img_20140503_123529.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(75, 'picture', 'img_20140503_131306.jpg', 'files/projekt5/img_20140503_131306.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(76, 'picture', 'img_20140503_132534.jpg', 'files/projekt5/img_20140503_132534.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(77, 'picture', 'img_20140503_134355.jpg', 'files/projekt5/img_20140503_134355.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(78, 'picture', 'img_20140516_161123.jpg', 'files/projekt5/img_20140516_161123.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(79, 'picture', 'img_20140516_162558.jpg', 'files/projekt5/img_20140516_162558.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(80, 'picture', 'img_20140516_170443.jpg', 'files/projekt5/img_20140516_170443.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(81, 'picture', 'snimka048.jpg', 'files/projekt5/snimka048.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(82, 'picture', 'snimka049.jpg', 'files/projekt5/snimka049.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(83, 'picture', 'snimka130.jpg', 'files/projekt5/snimka130.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(84, 'picture', 'snimka137.jpg', 'files/projekt5/snimka137.jpg', 'files/projekt5/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(85, 'picture', 'img_0009_kopia.jpg', 'files/projekt6/img_0009_kopia.jpg', 'files/projekt6/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(86, 'picture', 'img_0030_kopia.jpg', 'files/projekt6/img_0030_kopia.jpg', 'files/projekt6/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(87, 'picture', 'img_0042_kopia.jpg', 'files/projekt6/img_0042_kopia.jpg', 'files/projekt6/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(88, 'picture', 'img_0052_kopia.jpg', 'files/projekt6/img_0052_kopia.jpg', 'files/projekt6/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(89, 'picture', 'img_0057_kopia.jpg', 'files/projekt6/img_0057_kopia.jpg', 'files/projekt6/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(90, 'picture', 'img_0065_kopia.jpg', 'files/projekt6/img_0065_kopia.jpg', 'files/projekt6/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(91, 'picture', 'img_0066_kopia.jpg', 'files/projekt6/img_0066_kopia.jpg', 'files/projekt6/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(92, 'picture', 'img_0068_kopia.jpg', 'files/projekt6/img_0068_kopia.jpg', 'files/projekt6/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(93, 'picture', '1.jpg', 'files/projekt7/1.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(94, 'picture', '10270306_832340203460819_6957658234487685186_n.jpg', 'files/projekt7/10270306_832340203460819_6957658234487685186_n.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(95, 'picture', 'img_0284.jpg', 'files/projekt7/img_0284.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(96, 'picture', 'img_0285.jpg', 'files/projekt7/img_0285.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(97, 'picture', 'img_0287.jpg', 'files/projekt7/img_0287.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(98, 'picture', 'img_0358.jpg', 'files/projekt7/img_0358.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(99, 'picture', 'img_0360.jpg', 'files/projekt7/img_0360.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(100, 'picture', 'img_0363.jpg', 'files/projekt7/img_0363.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(101, 'picture', 'img_0397.jpg', 'files/projekt7/img_0397.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(102, 'picture', 'img_0447.jpg', 'files/projekt7/img_0447.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(103, 'picture', 'img_0449.jpg', 'files/projekt7/img_0449.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(104, 'picture', 'img_0451.jpg', 'files/projekt7/img_0451.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(105, 'picture', 'img_0472.jpg', 'files/projekt7/img_0472.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(106, 'picture', 'img_0494.jpg', 'files/projekt7/img_0494.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(107, 'picture', 'img_0505.jpg', 'files/projekt7/img_0505.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(108, 'picture', 'img_0525.jpg', 'files/projekt7/img_0525.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(109, 'picture', 'img_0615.jpg', 'files/projekt7/img_0615.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(110, 'picture', 'img_0616.jpg', 'files/projekt7/img_0616.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(111, 'picture', 'img_0636.jpg', 'files/projekt7/img_0636.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(112, 'picture', 'img_0640.jpg', 'files/projekt7/img_0640.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(113, 'picture', 'img_0641.jpg', 'files/projekt7/img_0641.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(114, 'picture', 'img_0644.jpg', 'files/projekt7/img_0644.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(115, 'picture', 'img_0655.jpg', 'files/projekt7/img_0655.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(116, 'picture', 'img_0671.jpg', 'files/projekt7/img_0671.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(117, 'picture', 'img_0694.jpg', 'files/projekt7/img_0694.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(118, 'picture', 'img_0724.jpg', 'files/projekt7/img_0724.jpg', 'files/projekt7/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(119, 'picture', 'plagat_final.jpg', 'files/projekt8/plagat_final.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(120, 'picture', 'img_20140712_205422.jpg', 'files/projekt8/img_20140712_205422.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(121, 'picture', 'img_31634.jpg', 'files/projekt8/img_31634.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(122, 'picture', 'img_31052.jpg', 'files/projekt8/img_31052.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(123, 'picture', '10525058_849183185109854_1824393584_n.jpg', 'files/projekt8/10525058_849183185109854_1824393584_n.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(124, 'picture', 'img_0582.jpg', 'files/projekt8/img_0582.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(125, 'picture', 'img_0592.jpg', 'files/projekt8/img_0592.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(126, 'picture', 'img_0602_kopia_2.jpg', 'files/projekt8/img_0602_kopia_2.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(127, 'picture', 'img_0793.jpg', 'files/projekt8/img_0793.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(128, 'picture', 'img_0818.jpg', 'files/projekt8/img_0818.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(129, 'picture', 'img_0834.jpg', 'files/projekt8/img_0834.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(130, 'picture', 'img_0881.jpg', 'files/projekt8/img_0881.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(131, 'picture', 'img_1084.jpg', 'files/projekt8/img_1084.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(132, 'picture', 'img_1085.jpg', 'files/projekt8/img_1085.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(133, 'picture', 'img_1091.jpg', 'files/projekt8/img_1091.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(134, 'picture', 'img_1108.jpg', 'files/projekt8/img_1108.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(135, 'picture', 'img_1151.jpg', 'files/projekt8/img_1151.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(136, 'picture', 'img_1197.jpg', 'files/projekt8/img_1197.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(137, 'picture', 'img_1201.jpg', 'files/projekt8/img_1201.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(138, 'picture', 'img_1219.jpg', 'files/projekt8/img_1219.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(139, 'picture', 'img_1220.jpg', 'files/projekt8/img_1220.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(140, 'picture', 'img_1278.jpg', 'files/projekt8/img_1278.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(141, 'picture', 'img_1669.jpg', 'files/projekt8/img_1669.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(142, 'picture', 'img_1691.jpg', 'files/projekt8/img_1691.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(143, 'picture', 'img_1708.jpg', 'files/projekt8/img_1708.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(144, 'picture', 'img_1712.jpg', 'files/projekt8/img_1712.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(145, 'picture', 'img_1721.jpg', 'files/projekt8/img_1721.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(146, 'picture', 'img_1760.jpg', 'files/projekt8/img_1760.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(147, 'picture', 'img_1765.jpg', 'files/projekt8/img_1765.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(148, 'picture', 'img_1792.jpg', 'files/projekt8/img_1792.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(149, 'picture', 'img_1814.jpg', 'files/projekt8/img_1814.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(150, 'picture', 'img_1828.jpg', 'files/projekt8/img_1828.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(151, 'picture', 'img_1986.jpg', 'files/projekt8/img_1986.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(152, 'picture', 'img_1988.jpg', 'files/projekt8/img_1988.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(153, 'picture', 'img_2005.jpg', 'files/projekt8/img_2005.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(154, 'picture', 'img_2010.jpg', 'files/projekt8/img_2010.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(155, 'picture', 'img_2026.jpg', 'files/projekt8/img_2026.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(156, 'picture', 'img_2066.jpg', 'files/projekt8/img_2066.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(157, 'picture', 'img_2078.jpg', 'files/projekt8/img_2078.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(158, 'picture', 'img_2082.jpg', 'files/projekt8/img_2082.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(159, 'picture', 'img_31026.jpg', 'files/projekt8/img_31026.jpg', 'files/projekt8/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(160, 'picture', 'di_001.jpg', 'files/dokumenty/di_001.jpg', 'files/dokumenty/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(161, 'picture', 'i_o_001.jpg', 'files/dokumenty/i_o_001.jpg', 'files/dokumenty/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(162, 'picture', 'stanovy_1.jpg', 'files/dokumenty/stanovy_1.jpg', 'files/dokumenty/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(163, 'picture', 'stanovy_2.jpg', 'files/dokumenty/stanovy_2.jpg', 'files/dokumenty/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(164, 'picture', 'stanovy_3.jpg', 'files/dokumenty/stanovy_3.jpg', 'files/dokumenty/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(165, 'picture', 'stanovy_4.jpg', 'files/dokumenty/stanovy_4.jpg', 'files/dokumenty/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(166, 'picture', '10630635_583191631806632_3223087378212711320_o.jpg', 'files/fotogaleria/10630635_583191631806632_3223087378212711320_o.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(167, 'picture', '10658619_583193428473119_8624156610566178979_o.jpg', 'files/fotogaleria/10658619_583193428473119_8624156610566178979_o.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(168, 'picture', '10695328_735901309781011_905084675_n.jpg', 'files/fotogaleria/10695328_735901309781011_905084675_n.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(169, 'picture', '10708505_583193858473076_4302913211187318751_o.jpg', 'files/fotogaleria/10708505_583193858473076_4302913211187318751_o.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(170, 'picture', '10733475_10203243787521298_790045162_n.jpg', 'files/fotogaleria/10733475_10203243787521298_790045162_n.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(171, 'picture', '10735960_966214573394705_177168398_n.jpg', 'files/fotogaleria/10735960_966214573394705_177168398_n.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(172, 'picture', '10799438_974247719258057_520138024_n.jpg', 'files/fotogaleria/10799438_974247719258057_520138024_n.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(173, 'picture', '10807037_974247825924713_469731237_n.jpg', 'files/fotogaleria/10807037_974247825924713_469731237_n.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(174, 'picture', '20141029_112302_1_1.jpg', 'files/fotogaleria/20141029_112302_1_1.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(175, 'picture', 'iz_kupele.jpg', 'files/fotogaleria/iz_kupele.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(176, 'picture', 'prednaska_farara_ochtina.jpg', 'files/fotogaleria/prednaska_farara_ochtina.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(177, 'picture', 'roadshow_foto1.jpg', 'files/fotogaleria/roadshow_foto1.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(178, 'picture', 'slavosovsky_tunel_okolie_1.jpg', 'files/fotogaleria/slavosovsky_tunel_okolie_1.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(179, 'picture', '1597487_583193015139827_5623730006541991492_o.jpg', 'files/fotogaleria/1597487_583193015139827_5623730006541991492_o.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(180, 'picture', '1921137_10203123803202131_920241475_o.jpg', 'files/fotogaleria/1921137_10203123803202131_920241475_o.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(181, 'picture', '10551577_583193655139763_9222723778477238289_o.jpg', 'files/fotogaleria/10551577_583193655139763_9222723778477238289_o.jpg', 'files/fotogaleria/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(182, 'picture', 'slide1.jpg', 'files/slider/slide1.jpg', 'files/slider/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(183, 'picture', 'slide2.jpg', 'files/slider/slide2.jpg', 'files/slider/', NULL, '', '0000-00-00 00:00:00', NULL, 'm'),
(184, 'picture', 'slide3.jpg', 'files/slider/slide3.jpg', 'files/slider/', NULL, '', '0000-00-00 00:00:00', NULL, 'm');

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
('sk', 4, 'Mingun', 'Alot of young munks live in a monastery next to the Hsinbyume pagoda', 'Alot of young munks live in a monastery next to the Hsinbyume pagoda'),
('sk', 5, 'Mandalay', 'One working day in the historical capital of Burma.', 'One working day in the historical capital of Burma.'),
('sk', 6, 'Monywa, Burma', 'In the mountain of Monywa, more than two thousand caves were built in honor of Budha.', 'In the mountain of Monywa, more than two thousand caves were built in honor of Budha.'),
('sk', 7, 'Monywa wall paints', 'These 17th centruey wall painting are very well preserved because the caves were forgivven for centuries.', 'These 17th centruey wall painting are very well preserved because the caves were forgivven for centuries.');

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
(1, '2015-02-17', 'sitemap_refresh', 'System', 'Sitemap refresh', 'Sitemap needs to be refreshed.<br/> Go to <b>Tools > System Diagnosis > Tools</b> and click on <b>"Refresh Sitemap"</b>.', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `page`
--

INSERT INTO `page` (`id_page`, `id_parent`, `id_menu`, `id_type`, `id_subnav`, `name`, `ordering`, `level`, `online`, `home`, `author`, `updater`, `created`, `publish_on`, `publish_off`, `updated`, `logical_date`, `appears`, `has_url`, `view`, `view_single`, `article_list_view`, `article_view`, `article_order`, `article_order_direction`, `link`, `link_type`, `link_id`, `pagination`, `priority`, `used_by_module`, `deny_code`) VALUES
(1, 0, 2, 0, 0, '404', 0, 0, 1, 0, 'demo', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 12:09:01', '0000-00-00 00:00:00', 0, 1, 'page_normal', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(2, 0, 1, 0, 0, 'welcome', 1, 0, 1, 1, 'demo', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 11:48:20', '0000-00-00 00:00:00', 1, 1, 'page_home', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(3, 0, 1, 0, 0, 'about-ionize-cms', 2, 0, 1, 0, 'demo', 'admin', '2012-11-17 09:42:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-11 13:24:37', '0000-00-00 00:00:00', 1, 1, 'page_normal', '', NULL, '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(4, 0, 1, 0, 0, 'contact', 7, 0, 1, 0, 'demo', 'admin', '2012-11-17 09:42:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 12:23:29', '0000-00-00 00:00:00', 1, 1, 'page_contact', '', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(11, 0, 2, 0, 0, '401', 0, 0, 1, 0, NULL, 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 12:06:55', '0000-00-00 00:00:00', 0, 1, 'page_normal', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(12, 0, 2, 0, 0, '403', 0, 0, 1, 0, NULL, 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 12:07:12', '0000-00-00 00:00:00', 0, 1, 'page_normal', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(13, 0, 2, 0, 0, 'kontakt-oznam', 2, 0, 1, 0, 'admin', NULL, '2015-02-11 13:40:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '0', NULL, NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, NULL, NULL),
(15, 0, 1, 0, 0, 'fotoalbum', 5, 0, 1, 0, 'admin', 'admin', '2015-02-11 14:03:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 12:05:52', '0000-00-00 00:00:00', 1, 1, 'page_fotogallery', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(16, 0, 1, 0, 0, 'aktivity', 3, 0, 1, 0, 'admin', 'admin', '2015-02-12 09:51:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 15:15:39', '0000-00-00 00:00:00', 1, 1, 'page_articles', 'page_single_article', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(19, 0, 1, 0, 0, 'projekty', 4, 0, 1, 0, 'admin', 'admin', '2015-02-12 10:33:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 15:07:56', '0000-00-00 00:00:00', 1, 1, 'page_articles', 'page_single_article', '', '', 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404'),
(20, 0, 1, 0, 0, 'dokumenty', 6, 0, 1, 0, 'admin', 'admin', '2015-02-12 10:34:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-02-16 11:54:37', '0000-00-00 00:00:00', 1, 1, 'page_fotogallery', '', NULL, NULL, 'ordering', 'ASC', '', NULL, '', 0, 5, 0, '404');

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
(2, 34, 1, NULL, 5, 7, '', '', '', 1),
(2, 35, 1, NULL, 6, 7, '', '', '', 1),
(2, 38, 1, NULL, 7, 7, '', '', '', 1),
(2, 54, 1, NULL, 1, 12, '', '', '', 1),
(2, 55, 1, NULL, 2, 12, '', '', '', 1),
(2, 56, 1, NULL, 3, 12, '', '', '', 1),
(3, 37, 1, NULL, 1, NULL, '', '', '', 1),
(4, 65, 1, NULL, 1, NULL, '', '', '', 1),
(11, 32, 1, NULL, 0, NULL, '', '', '', 0),
(12, 33, 1, NULL, 0, NULL, '', '', '', 0),
(13, 46, 1, NULL, 1, NULL, 'page', '4', 'Kontakt', 1),
(15, 47, 1, NULL, 1, NULL, '', '', '', 1),
(16, 57, 1, NULL, 1, NULL, '', '', '', 1),
(16, 58, 1, NULL, 2, NULL, '', '', '', 1),
(16, 59, 1, NULL, 3, NULL, '', '', '', 1),
(19, 49, 1, NULL, 1, 0, '', '', '', 1),
(19, 51, 1, NULL, 2, 0, '', '', '', 1),
(19, 52, 1, NULL, 3, NULL, '', '', '', 1),
(19, 53, 1, NULL, 4, NULL, '', '', '', 1),
(19, 60, 1, NULL, 5, NULL, '', '', '', 1),
(19, 61, 1, NULL, 6, NULL, '', '', '', 1),
(19, 62, 1, NULL, 7, NULL, '', '', '', 1),
(19, 63, 1, NULL, 8, NULL, '', '', '', 1),
(20, 64, 1, NULL, 1, NULL, '', '', '', 1);

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
('sk', 1, '404', '', 'Chyba 404 - Požadovaná stránka nebola nájdená.', 'Can''t find requested page !', '', '', '', '', '', 1),
('sk', 2, 'uvodna-stranka', '', 'Informačný a vzdelávací inštitút', 'Vítame Vás na našich stránkach!', 'Úvodná stránka', '', 'Úvodná stránka | Informačný a vzdelávací inštitút', '', '', 1),
('sk', 3, 'o-nas', '', 'O nás', 'Informačný a vzdelávací inštitút', 'O nás', '', 'O nás | Informačný a vzdelávací inštitút', '', '', 1),
('sk', 4, 'kontakt', '', 'Kontakt', 'Nájdite a kontaktujte nás...', 'Kontakt', '', 'Kontakt | Informačný a vzdelávací inštitút', '', '', 1),
('sk', 11, '401', '', '401', 'Login needed', '', '', '', '', '', 1),
('sk', 12, '403', '', '403', 'Forbidden', '', '', '', '', '', 1),
('sk', 13, 'kontakt-oznam', '', 'Kontakt oznam', '', '', '', '', NULL, NULL, 1),
('sk', 15, 'fotoalbum', '', 'Fotoalbum', '', '', '', 'Fotoalbum | Informačný a vzdelávací inštitút', '', '', 1),
('sk', 16, 'aktivity', '', 'Aktivity', '', '', '', 'Aktivity | Informačný a vzdelávací inštitút', '', '', 1),
('sk', 19, 'projekty', '', 'Projekty', '', '', '', 'Projekty | Informačný a vzdelávací inštitút', '', '', 1),
('sk', 20, 'dokumenty', '', 'Dokumenty', '', '', '', '', '', '', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `setting`
--

INSERT INTO `setting` (`id_setting`, `name`, `content`, `lang`) VALUES
(1, 'ionize_version', '1.0.7', ''),
(2, 'site_email', '', ''),
(3, 'files_path', 'files', ''),
(4, 'theme', 'theme_2', ''),
(5, 'theme_admin', 'admin', ''),
(6, 'google_analytics', '', ''),
(7, 'filemanager', 'mootools-filemanager', ''),
(8, 'show_help_tips', '1', ''),
(9, 'display_connected_label', '1', ''),
(10, 'display_dashboard_shortcuts', '1', ''),
(11, 'display_dashboard_modules', '1', ''),
(12, 'display_dashboard_users', '1', ''),
(13, 'display_dashboard_content', '1', ''),
(14, 'display_front_offline_content', '', ''),
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
(41, 'site_title', 'Ionize CMS Demo', 'en'),
(42, 'site_title', 'My website', 'sk'),
(43, 'last_notification_refresh', '2015-02-17 08:49:42', ''),
(44, 'last_version', '1.0.7', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=1046 DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `url`
--

INSERT INTO `url` (`id_url`, `id_entity`, `type`, `canonical`, `active`, `lang`, `path`, `path_ids`, `full_path_ids`, `creation_date`) VALUES
(740, 3, 'page', 1, 1, 'sk', 'o-nas', '3', '3', '2015-02-11 13:24:37'),
(741, 37, 'article', 1, 1, 'sk', 'o-nas/o-nas', '3/37', '3/37', '2015-02-11 13:24:37'),
(742, 13, 'page', 1, 1, 'sk', 'kontakt-oznam', '13', '13', '2015-02-11 13:40:30'),
(743, 46, 'article', 1, 1, 'sk', 'kontakt-oznam/v-pripade-akchkovek-otazok-nas-nevahajte-kontaktova.', '13/46', '13/46', '2015-02-11 13:41:32'),
(863, 2, 'page', 1, 1, 'sk', 'uvodna-stranka', '2', '2', '2015-02-16 11:48:20'),
(864, 34, 'article', 1, 1, 'sk', 'uvodna-stranka/aktivity-pre-deti', '2/34', '2/34', '2015-02-16 11:48:20'),
(865, 35, 'article', 1, 1, 'sk', 'uvodna-stranka/aktivity-mladych', '2/35', '2/35', '2015-02-16 11:48:20'),
(866, 38, 'article', 1, 1, 'sk', 'uvodna-stranka/rozne', '2/38', '2/38', '2015-02-16 11:48:20'),
(872, 54, 'article', 1, 1, 'sk', 'uvodna-stranka/slide-1', '2/54', '2/54', '2015-02-16 11:48:22'),
(873, 55, 'article', 1, 1, 'sk', 'uvodna-stranka/slide-2', '2/55', '2/55', '2015-02-16 11:48:22'),
(874, 56, 'article', 1, 1, 'sk', 'uvodna-stranka/slide-3', '2/56', '2/56', '2015-02-16 11:48:22'),
(876, 20, 'page', 1, 1, 'sk', 'dokumenty', '20', '20', '2015-02-16 11:54:37'),
(877, 64, 'article', 1, 1, 'sk', 'dokumenty/dokumenty', '20/64', '20/64', '2015-02-16 11:54:38'),
(924, 15, 'page', 1, 1, 'sk', 'fotoalbum', '15', '15', '2015-02-16 12:05:52'),
(925, 47, 'article', 1, 1, 'sk', 'fotoalbum/fotogaleria', '15/47', '15/47', '2015-02-16 12:05:52'),
(930, 11, 'page', 1, 1, 'sk', '401', '11', '11', '2015-02-16 12:06:55'),
(933, 12, 'page', 1, 1, 'sk', '403', '12', '12', '2015-02-16 12:07:12'),
(934, 1, 'page', 1, 1, 'sk', '404', '1', '1', '2015-02-16 12:09:02'),
(935, 1, 'article', 1, 1, 'sk', '404/404', '1/1', '1/1', '2015-02-16 12:09:02'),
(937, 4, 'page', 1, 1, 'sk', 'kontakt', '4', '4', '2015-02-16 12:23:29'),
(938, 65, 'article', 1, 1, 'sk', 'kontakt/kontakt', '4/65', '4/65', '2015-02-16 12:23:29'),
(1027, 19, 'page', 1, 1, 'sk', 'projekty', '19', '19', '2015-02-16 15:07:56'),
(1028, 49, 'article', 1, 1, 'sk', 'projekty/rozvijame-sikovnos-a-tvorivos', '19/49', '19/49', '2015-02-16 15:07:56'),
(1029, 51, 'article', 1, 1, 'sk', 'projekty/robme-veci-spolu', '19/51', '19/51', '2015-02-16 15:07:56'),
(1030, 52, 'article', 1, 1, 'sk', 'projekty/komprax-kompetencie-pre-prax', '19/52', '19/52', '2015-02-16 15:07:56'),
(1031, 53, 'article', 1, 1, 'sk', 'projekty/cestujeme-po-europskej-unii', '19/53', '19/53', '2015-02-16 15:07:57'),
(1032, 60, 'article', 1, 1, 'sk', 'projekty/vitafit', '19/60', '19/60', '2015-02-16 15:07:57'),
(1033, 61, 'article', 1, 1, 'sk', 'projekty/remeselne-dielne', '19/61', '19/61', '2015-02-16 15:07:57'),
(1034, 62, 'article', 1, 1, 'sk', 'projekty/rozvijaj-svoj-talent', '19/62', '19/62', '2015-02-16 15:07:57'),
(1035, 63, 'article', 1, 1, 'sk', 'projekty/spoznavaj-slovensko', '19/63', '19/63', '2015-02-16 15:07:57'),
(1036, 16, 'page', 1, 1, 'sk', 'aktivity', '16', '16', '2015-02-16 15:15:39'),
(1038, 57, 'article', 1, 0, 'sk', 'aktivity/aktivity-pre-deti/aktivity-pre-deti', '16/17/57', '16/17/57', '2015-02-16 15:15:39'),
(1040, 58, 'article', 1, 0, 'sk', 'aktivity/aktivity-mladch/aktivity-mladch', '16/18/58', '16/18/58', '2015-02-16 15:15:39'),
(1042, 59, 'article', 1, 0, 'sk', 'aktivity/rozne/rozne', '16/29/59', '16/29/59', '2015-02-16 15:15:40'),
(1043, 57, 'article', 1, 1, 'sk', 'aktivity/aktivity-pre-deti-1', '16/57', '16/57', '2015-02-17 09:03:36'),
(1044, 58, 'article', 1, 1, 'sk', 'aktivity/aktivity-mladch-1', '16/58', '16/58', '2015-02-17 09:03:41'),
(1045, 59, 'article', 1, 1, 'sk', 'aktivity/rozne-1', '16/59', '16/59', '2015-02-17 09:03:44');

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
(1, 1, '2015-02-05 13:21:53', '2015-02-17 11:28:26', 'admin', 'Marek Boroš', 'Marek', 'Boroš', NULL, NULL, '09fCajwrZ7gewo4W', 'marek.boros@ness.com', '0dd8407c3bb3ef6d');

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
MODIFY `id_article` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `article_comment`
--
ALTER TABLE `article_comment`
MODIFY `id_article_comment` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `article_type`
--
ALTER TABLE `article_type`
MODIFY `id_type` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
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
MODIFY `id_extend_field` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `extend_fields`
--
ALTER TABLE `extend_fields`
MODIFY `id_extend_fields` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id_media` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=185;
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
MODIFY `id_page` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
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
MODIFY `id_url` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1046;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
