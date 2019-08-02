-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 02 août 2019 à 13:09
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `paris_sport`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add landing page', 7, 'add_landingpage'),
(26, 'Can change landing page', 7, 'change_landingpage'),
(27, 'Can delete landing page', 7, 'delete_landingpage'),
(28, 'Can view landing page', 7, 'view_landingpage'),
(29, 'Can add layout', 8, 'add_layout'),
(30, 'Can change layout', 8, 'change_layout'),
(31, 'Can delete layout', 8, 'delete_layout'),
(32, 'Can view layout', 8, 'view_layout'),
(33, 'Can add portfolio part', 9, 'add_portfoliopart'),
(34, 'Can change portfolio part', 9, 'change_portfoliopart'),
(35, 'Can delete portfolio part', 9, 'delete_portfoliopart'),
(36, 'Can view portfolio part', 9, 'view_portfoliopart'),
(37, 'Can add pricing part', 10, 'add_pricingpart'),
(38, 'Can change pricing part', 10, 'change_pricingpart'),
(39, 'Can delete pricing part', 10, 'delete_pricingpart'),
(40, 'Can view pricing part', 10, 'view_pricingpart'),
(41, 'Can add service part', 11, 'add_servicepart'),
(42, 'Can change service part', 11, 'change_servicepart'),
(43, 'Can delete service part', 11, 'delete_servicepart'),
(44, 'Can view service part', 11, 'view_servicepart'),
(45, 'Can add testimonial part', 12, 'add_testimonialpart'),
(46, 'Can change testimonial part', 12, 'change_testimonialpart'),
(47, 'Can delete testimonial part', 12, 'delete_testimonialpart'),
(48, 'Can view testimonial part', 12, 'view_testimonialpart'),
(49, 'Can add kv store', 13, 'add_kvstore'),
(50, 'Can change kv store', 13, 'change_kvstore'),
(51, 'Can delete kv store', 13, 'delete_kvstore'),
(52, 'Can view kv store', 13, 'view_kvstore'),
(53, 'Can add utilisateur', 14, 'add_utilisateur'),
(54, 'Can change utilisateur', 14, 'change_utilisateur'),
(55, 'Can delete utilisateur', 14, 'delete_utilisateur'),
(56, 'Can view utilisateur', 14, 'view_utilisateur'),
(57, 'Can add retrait', 15, 'add_retrait'),
(58, 'Can change retrait', 15, 'change_retrait'),
(59, 'Can delete retrait', 15, 'delete_retrait'),
(60, 'Can view retrait', 15, 'view_retrait'),
(61, 'Can add depot', 16, 'add_depot'),
(62, 'Can change depot', 16, 'change_depot'),
(63, 'Can delete depot', 16, 'delete_depot'),
(64, 'Can view depot', 16, 'view_depot'),
(65, 'Can add historique', 17, 'add_historique'),
(66, 'Can change historique', 17, 'change_historique'),
(67, 'Can delete historique', 17, 'delete_historique'),
(68, 'Can view historique', 17, 'view_historique'),
(69, 'Can add championat', 18, 'add_championat'),
(70, 'Can change championat', 18, 'change_championat'),
(71, 'Can delete championat', 18, 'delete_championat'),
(72, 'Can view championat', 18, 'view_championat'),
(73, 'Can add categorie', 19, 'add_categorie'),
(74, 'Can change categorie', 19, 'change_categorie'),
(75, 'Can delete categorie', 19, 'delete_categorie'),
(76, 'Can view categorie', 19, 'view_categorie'),
(77, 'Can add equipe', 20, 'add_equipe'),
(78, 'Can change equipe', 20, 'change_equipe'),
(79, 'Can delete equipe', 20, 'delete_equipe'),
(80, 'Can view equipe', 20, 'view_equipe'),
(81, 'Can add match', 21, 'add_match'),
(82, 'Can change match', 21, 'change_match'),
(83, 'Can delete match', 21, 'delete_match'),
(84, 'Can view match', 21, 'view_match'),
(85, 'Can add tickets', 22, 'add_tickets'),
(86, 'Can change tickets', 22, 'change_tickets'),
(87, 'Can delete tickets', 22, 'delete_tickets'),
(88, 'Can view tickets', 22, 'view_tickets'),
(89, 'Can add paris', 23, 'add_paris'),
(90, 'Can change paris', 23, 'change_paris'),
(91, 'Can delete paris', 23, 'delete_paris'),
(92, 'Can view paris', 23, 'view_paris'),
(93, 'Can add choix', 24, 'add_choix'),
(94, 'Can change choix', 24, 'change_choix'),
(95, 'Can delete choix', 24, 'delete_choix'),
(96, 'Can view choix', 24, 'view_choix'),
(97, 'Can add choix match', 25, 'add_choixmatch'),
(98, 'Can change choix match', 25, 'change_choixmatch'),
(99, 'Can delete choix match', 25, 'delete_choixmatch'),
(100, 'Can view choix match', 25, 'view_choixmatch');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$wUVbjSP0PHsu$uVHwdq3Lz2vLu+JiOYlhBdWu9YiYKK17t7tdWUz0SX0=', '2019-07-23 09:57:52.000000', 1, 'guindo', 'Guindo', 'Mahamadou', 'mohamedsaros@gmail.com', 1, 1, '2019-07-23 09:56:07.000000'),
(2, 'pbkdf2_sha256$150000$2oe4RuD0qRJI$NPLmXEwDuNapYfoc1HSIC6nVPl3wEAJHcuzKW8W00uU=', '2019-07-25 02:00:33.690429', 1, 'momo', '', '', 'guindo_mohamed@hotmail.com', 1, 1, '2019-07-25 01:41:09.856445');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=218 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-07-23 09:58:46.889648', '1', 'guindo', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 4, 1),
(2, '2019-07-23 15:14:58.400390', '1', 'sport', 1, '[{\"added\": {}}]', 8, 1),
(3, '2019-07-23 15:15:07.227539', '1', 'Landing page for paris-sportifs', 1, '[{\"added\": {}}]', 7, 1),
(4, '2019-07-23 15:24:12.048828', '1', 'Landing page for paris-sportifs', 3, '', 7, 1),
(5, '2019-07-23 15:29:20.141601', '1', 'footbaal', 1, '[{\"added\": {}}]', 11, 1),
(6, '2019-07-23 15:29:31.574218', '2', 'Landing page for sport', 1, '[{\"added\": {}}]', 7, 1),
(7, '2019-07-24 20:02:55.078125', '8', 'mohamedsaros@gmail.com', 3, '', 14, 1),
(8, '2019-07-24 20:02:55.149414', '7', 'mohamedsaros@gmail.com', 3, '', 14, 1),
(9, '2019-07-24 20:02:55.165039', '6', 'mohamedsaros@gmail.com', 3, '', 14, 1),
(10, '2019-07-24 20:02:55.169921', '5', 'ggggfgfg', 3, '', 14, 1),
(11, '2019-07-24 20:02:55.172851', '4', 'ggggfgfg', 3, '', 14, 1),
(12, '2019-07-24 20:02:55.175781', '3', 'ggggfgfg', 3, '', 14, 1),
(13, '2019-07-24 20:02:55.178710', '2', 'test@test.ci', 3, '', 14, 1),
(14, '2019-07-24 20:16:13.746093', '9', '', 3, '', 14, 1),
(15, '2019-07-24 20:22:45.552734', '11', '', 3, '', 14, 1),
(16, '2019-07-24 20:22:45.555664', '10', '', 3, '', 14, 1),
(17, '2019-07-24 20:34:45.327148', '14', '', 3, '', 14, 1),
(18, '2019-07-24 20:34:45.330078', '13', 'mohamedsaros@gmail.com', 3, '', 14, 1),
(19, '2019-07-24 20:34:45.333984', '12', '', 3, '', 14, 1),
(20, '2019-07-25 08:56:48.604492', '16', 'yasmine@hoymail.com', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 14, 2),
(21, '2019-07-25 10:08:05.190429', '18', ',k,kf,fk,', 3, '', 14, 2),
(22, '2019-07-25 10:08:05.230468', '17', ',k,kf,fk,', 3, '', 14, 2),
(23, '2019-07-25 10:30:59.178710', '15', 'test@test.ci', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 14, 2),
(24, '2019-07-26 04:04:58.575195', '15', 'test@test.ci', 2, '[{\"changed\": {\"fields\": [\"nom\", \"prenoms\"]}}]', 14, 2),
(25, '2019-07-26 13:20:03.141601', '19', 'Saros94', 2, '[{\"changed\": {\"fields\": [\"solde\"]}}]', 14, 2),
(26, '2019-07-29 01:53:15.323968', '1', 'Football', 1, '[{\"added\": {}}]', 19, 2),
(27, '2019-07-29 01:53:31.805414', '2', 'Basket', 1, '[{\"added\": {}}]', 19, 2),
(28, '2019-07-29 01:54:04.656000', '3', 'Hockey', 1, '[{\"added\": {}}]', 19, 2),
(29, '2019-07-29 11:58:17.532226', '1', 'Ligue 1', 1, '[{\"added\": {}}]', 18, 2),
(30, '2019-07-29 11:58:44.520507', '2', 'Premier League', 1, '[{\"added\": {}}]', 18, 2),
(31, '2019-07-29 11:59:21.977539', '3', 'Liga', 1, '[{\"added\": {}}]', 18, 2),
(32, '2019-07-29 11:59:22.295898', '4', 'Liga', 1, '[{\"added\": {}}]', 18, 2),
(33, '2019-07-29 11:59:37.011718', '4', 'Liga', 3, '', 18, 2),
(34, '2019-07-29 11:59:49.382812', '5', 'Serie A', 1, '[{\"added\": {}}]', 18, 2),
(35, '2019-07-29 12:00:25.387695', '6', 'Bundesliga', 1, '[{\"added\": {}}]', 18, 2),
(36, '2019-07-29 12:01:19.276367', '7', 'Jupiler League.', 1, '[{\"added\": {}}]', 18, 2),
(37, '2019-07-29 12:09:14.142578', '8', 'NBA', 1, '[{\"added\": {}}]', 18, 2),
(38, '2019-07-29 12:10:32.831054', '9', 'MLB', 1, '[{\"added\": {}}]', 18, 2),
(39, '2019-07-29 12:13:23.231445', '10', 'LNH', 1, '[{\"added\": {}}]', 18, 2),
(40, '2019-07-29 12:16:12.088867', '11', 'Nationale 1', 1, '[{\"added\": {}}]', 18, 2),
(41, '2019-07-29 12:18:26.624023', '12', 'EuroBasket U18', 1, '[{\"added\": {}}]', 18, 2),
(42, '2019-07-29 12:19:42.335937', '13', 'SHL', 1, '[{\"added\": {}}]', 18, 2),
(43, '2019-07-29 12:21:38.129882', '2', 'Fc barcelone', 1, '[{\"added\": {}}]', 20, 2),
(44, '2019-07-29 12:21:58.411132', '2', 'Fc barcelone', 3, '', 20, 2),
(45, '2019-07-29 12:23:44.316406', '3', 'Real Madrid', 1, '[{\"added\": {}}]', 20, 2),
(46, '2019-07-29 12:24:14.282226', '4', 'Fc seville', 1, '[{\"added\": {}}]', 20, 2),
(47, '2019-07-29 12:24:30.493164', '5', 'Valence', 1, '[{\"added\": {}}]', 20, 2),
(48, '2019-07-29 12:26:11.782226', '6', 'Ath. Bilbao', 1, '[{\"added\": {}}]', 20, 2),
(49, '2019-07-29 12:26:33.390625', '7', 'Atl. Madrid', 1, '[{\"added\": {}}]', 20, 2),
(50, '2019-07-29 12:26:57.343750', '8', 'Celta Vigo', 1, '[{\"added\": {}}]', 20, 2),
(51, '2019-07-29 12:29:29.603515', '9', 'Leganes', 1, '[{\"added\": {}}]', 20, 2),
(52, '2019-07-29 12:29:52.246093', '10', 'Levante', 1, '[{\"added\": {}}]', 20, 2),
(53, '2019-07-29 12:30:44.303710', '11', 'Mallorca', 1, '[{\"added\": {}}]', 20, 2),
(54, '2019-07-29 12:31:27.369140', '12', 'Osasuna', 1, '[{\"added\": {}}]', 20, 2),
(55, '2019-07-29 13:28:52.684570', '16', 'Villarreal', 1, '[{\"added\": {}}]', 20, 2),
(56, '2019-07-29 13:29:11.124023', '16', 'Villarreal', 3, '', 20, 2),
(57, '2019-07-29 13:29:11.125976', '15', 'Villarreal', 3, '', 20, 2),
(58, '2019-07-29 13:29:11.129882', '14', 'Villarreal', 3, '', 20, 2),
(59, '2019-07-29 13:30:31.054687', '17', 'Arsenal', 1, '[{\"added\": {}}]', 20, 2),
(60, '2019-07-29 13:30:54.170898', '18', 'Aston Villa', 1, '[{\"added\": {}}]', 20, 2),
(61, '2019-07-29 13:31:48.898437', '19', 'Bournemouth', 1, '[{\"added\": {}}]', 20, 2),
(62, '2019-07-29 13:32:13.767578', '20', 'Brighton', 1, '[{\"added\": {}}]', 20, 2),
(63, '2019-07-29 13:32:34.238281', '21', 'Chelsea', 1, '[{\"added\": {}}]', 20, 2),
(64, '2019-07-29 13:33:05.274414', '22', 'Crystal Palace', 1, '[{\"added\": {}}]', 20, 2),
(65, '2019-07-29 13:33:45.810546', '23', 'Everton', 1, '[{\"added\": {}}]', 20, 2),
(66, '2019-07-29 13:34:29.139648', '24', 'Leicester', 1, '[{\"added\": {}}]', 20, 2),
(67, '2019-07-29 13:36:23.513671', '25', 'Liverpool', 1, '[{\"added\": {}}]', 20, 2),
(68, '2019-07-29 13:37:02.446289', '26', 'Manchester City', 1, '[{\"added\": {}}]', 20, 2),
(69, '2019-07-29 13:38:03.264648', '27', 'Tottenham', 1, '[{\"added\": {}}]', 20, 2),
(70, '2019-07-29 13:39:07.387695', '28', 'Newcastle', 1, '[{\"added\": {}}]', 20, 2),
(71, '2019-07-29 13:40:05.029296', '29', 'Norwich', 1, '[{\"added\": {}}]', 20, 2),
(72, '2019-07-29 13:40:05.103515', '30', 'Norwich', 1, '[{\"added\": {}}]', 20, 2),
(73, '2019-07-29 13:40:32.805664', '31', 'Manchester Utd', 1, '[{\"added\": {}}]', 20, 2),
(74, '2019-07-29 13:41:48.749023', '32', 'Augsburg', 1, '[{\"added\": {}}]', 20, 2),
(75, '2019-07-29 13:42:13.082031', '33', 'Bayern', 1, '[{\"added\": {}}]', 20, 2),
(76, '2019-07-29 13:42:34.139648', '34', 'Dortmund', 1, '[{\"added\": {}}]', 20, 2),
(77, '2019-07-29 13:42:50.765625', '35', 'Dusseldorf', 1, '[{\"added\": {}}]', 20, 2),
(78, '2019-07-29 13:43:10.839843', '36', 'FC Koln', 1, '[{\"added\": {}}]', 20, 2),
(79, '2019-07-29 13:43:31.159179', '37', 'Hoffenheim', 1, '[{\"added\": {}}]', 20, 2),
(80, '2019-07-29 13:43:53.430664', '38', 'Freiburg', 1, '[{\"added\": {}}]', 20, 2),
(81, '2019-07-29 13:44:11.560546', '39', 'Hertha', 1, '[{\"added\": {}}]', 20, 2),
(82, '2019-07-29 13:44:28.090820', '40', 'Mainz', 1, '[{\"added\": {}}]', 20, 2),
(83, '2019-07-29 13:44:49.075195', '41', 'Monchengladbach', 1, '[{\"added\": {}}]', 20, 2),
(84, '2019-07-29 13:45:12.914062', '42', 'Paderborn', 1, '[{\"added\": {}}]', 20, 2),
(85, '2019-07-29 13:48:56.380859', '43', 'RB Leipzig', 1, '[{\"added\": {}}]', 20, 2),
(86, '2019-07-29 13:50:16.348632', '44', 'Schalke 04', 1, '[{\"added\": {}}]', 20, 2),
(87, '2019-07-29 13:52:41.232421', '45', 'Amiens', 1, '[{\"added\": {}}]', 20, 2),
(88, '2019-07-29 13:53:17.177734', '46', 'Angers', 1, '[{\"added\": {}}]', 20, 2),
(89, '2019-07-29 13:54:07.358398', '47', 'Bordeaux', 1, '[{\"added\": {}}]', 20, 2),
(90, '2019-07-29 13:54:44.461914', '48', 'Brest', 1, '[{\"added\": {}}]', 20, 2),
(91, '2019-07-29 13:55:15.555664', '49', 'Dijon', 1, '[{\"added\": {}}]', 20, 2),
(92, '2019-07-29 13:55:31.756835', '50', 'Lille', 1, '[{\"added\": {}}]', 20, 2),
(93, '2019-07-29 13:56:29.463867', '51', 'Lyon', 1, '[{\"added\": {}}]', 20, 2),
(94, '2019-07-29 13:56:51.670898', '52', 'Marseille', 1, '[{\"added\": {}}]', 20, 2),
(95, '2019-07-29 13:57:10.692382', '53', 'Metz', 1, '[{\"added\": {}}]', 20, 2),
(96, '2019-07-29 13:57:28.282226', '54', 'Monaco', 1, '[{\"added\": {}}]', 20, 2),
(97, '2019-07-29 13:57:51.889648', '55', 'Montpellier', 1, '[{\"added\": {}}]', 20, 2),
(98, '2019-07-29 13:58:05.713867', '56', 'Nantes', 1, '[{\"added\": {}}]', 20, 2),
(99, '2019-07-29 13:58:25.125000', '57', 'Nice', 1, '[{\"added\": {}}]', 20, 2),
(100, '2019-07-29 13:58:45.969726', '58', 'Nîmes', 1, '[{\"added\": {}}]', 20, 2),
(101, '2019-07-29 13:59:39.608398', '59', 'PSG', 1, '[{\"added\": {}}]', 20, 2),
(102, '2019-07-29 14:00:28.676757', '60', 'PSG', 1, '[{\"added\": {}}]', 20, 2),
(103, '2019-07-29 14:01:18.812500', '61', 'Saint-Etienne', 1, '[{\"added\": {}}]', 20, 2),
(104, '2019-07-29 14:02:30.299804', '62', 'AC Milan', 1, '[{\"added\": {}}]', 20, 2),
(105, '2019-07-29 14:02:49.598632', '63', 'AS Rome', 1, '[{\"added\": {}}]', 20, 2),
(106, '2019-07-29 14:03:40.778320', '64', 'Atalanta', 1, '[{\"added\": {}}]', 20, 2),
(107, '2019-07-29 14:04:01.250000', '65', 'Bologne', 1, '[{\"added\": {}}]', 20, 2),
(108, '2019-07-29 14:04:32.779296', '66', 'Chievo', 1, '[{\"added\": {}}]', 20, 2),
(109, '2019-07-29 14:04:49.011718', '67', 'Empoli', 1, '[{\"added\": {}}]', 20, 2),
(110, '2019-07-29 14:05:07.396484', '68', 'Fiorentina', 1, '[{\"added\": {}}]', 20, 2),
(111, '2019-07-29 14:05:28.155273', '69', 'Frosinone', 1, '[{\"added\": {}}]', 20, 2),
(112, '2019-07-29 14:05:47.714843', '70', 'Genoa', 1, '[{\"added\": {}}]', 20, 2),
(113, '2019-07-29 14:06:04.363281', '71', 'Inter', 1, '[{\"added\": {}}]', 20, 2),
(114, '2019-07-29 14:06:25.477539', '72', 'Juventus', 1, '[{\"added\": {}}]', 20, 2),
(115, '2019-07-29 14:06:25.711914', '73', 'Juventus', 1, '[{\"added\": {}}]', 20, 2),
(116, '2019-07-29 14:06:42.348632', '74', 'Lazio', 1, '[{\"added\": {}}]', 20, 2),
(117, '2019-07-29 14:06:59.178710', '75', 'Naples', 1, '[{\"added\": {}}]', 20, 2),
(118, '2019-07-29 14:07:14.874023', '76', 'Parme', 1, '[{\"added\": {}}]', 20, 2),
(119, '2019-07-29 14:08:13.617187', '77', 'Sampdoria', 1, '[{\"added\": {}}]', 20, 2),
(120, '2019-07-29 14:08:31.219726', '78', 'Sassuolo', 1, '[{\"added\": {}}]', 20, 2),
(121, '2019-07-29 14:08:31.221679', '79', 'Sassuolo', 1, '[{\"added\": {}}]', 20, 2),
(122, '2019-07-29 14:08:31.512695', '80', 'Sassuolo', 1, '[{\"added\": {}}]', 20, 2),
(123, '2019-07-29 14:09:07.738281', '81', 'Torino', 1, '[{\"added\": {}}]', 20, 2),
(124, '2019-07-29 14:09:31.916992', '80', 'Sassuolo', 3, '', 20, 2),
(125, '2019-07-29 14:09:31.919921', '79', 'Sassuolo', 3, '', 20, 2),
(126, '2019-07-29 14:09:31.922851', '78', 'Sassuolo', 3, '', 20, 2),
(127, '2019-07-29 14:09:31.925781', '73', 'Juventus', 3, '', 20, 2),
(128, '2019-07-29 14:17:08.346679', '69', 'Frosinone', 2, '[{\"changed\": {\"fields\": [\"Championat\"]}}]', 20, 2),
(129, '2019-07-29 14:57:52.371093', '82', 'Anderlecht', 1, '[{\"added\": {}}]', 20, 2),
(130, '2019-07-29 14:58:10.900390', '83', 'Antwerp', 1, '[{\"added\": {}}]', 20, 2),
(131, '2019-07-29 14:58:24.780273', '84', 'Cercle Bruges', 1, '[{\"added\": {}}]', 20, 2),
(132, '2019-07-29 14:58:45.074218', '85', 'Courtrai', 1, '[{\"added\": {}}]', 20, 2),
(133, '2019-07-29 14:59:03.196289', '86', 'Eupen', 1, '[{\"added\": {}}]', 20, 2),
(134, '2019-07-29 14:59:27.786132', '87', 'Genk', 1, '[{\"added\": {}}]', 20, 2),
(135, '2019-07-29 14:59:43.540039', '88', 'La Gantoise', 1, '[{\"added\": {}}]', 20, 2),
(136, '2019-07-29 14:59:58.348632', '89', 'Malines', 1, '[{\"added\": {}}]', 20, 2),
(137, '2019-07-29 15:00:35.821289', '90', 'Malines', 1, '[{\"added\": {}}]', 20, 2),
(138, '2019-07-29 15:00:55.190429', '91', 'Mouscron', 1, '[{\"added\": {}}]', 20, 2),
(139, '2019-07-29 15:01:07.281250', '92', 'Ostende', 1, '[{\"added\": {}}]', 20, 2),
(140, '2019-07-29 15:01:36.709960', '93', 'Standard Liège', 1, '[{\"added\": {}}]', 20, 2),
(141, '2019-07-29 15:02:05.941406', '94', 'Waasland-Beveren', 1, '[{\"added\": {}}]', 20, 2),
(142, '2019-07-29 15:02:34.385742', '95', 'Waasland-Beveren', 1, '[{\"added\": {}}]', 20, 2),
(143, '2019-07-29 15:02:54.583984', '96', 'Zulte-Waregem', 1, '[{\"added\": {}}]', 20, 2),
(144, '2019-07-29 15:03:40.145507', '97', 'Anaheim Ducks', 1, '[{\"added\": {}}]', 20, 2),
(145, '2019-07-29 15:03:55.108398', '98', 'Arizona Coyotes', 1, '[{\"added\": {}}]', 20, 2),
(146, '2019-07-29 15:04:06.522460', '99', 'Boston Bruins', 1, '[{\"added\": {}}]', 20, 2),
(147, '2019-07-29 15:04:51.323242', '100', 'Columbus Blue Jacket', 1, '[{\"added\": {}}]', 20, 2),
(148, '2019-07-29 15:05:09.088867', '101', 'Dallas Stars', 1, '[{\"added\": {}}]', 20, 2),
(149, '2019-07-29 15:05:09.576171', '102', 'Dallas Stars', 1, '[{\"added\": {}}]', 20, 2),
(150, '2019-07-29 15:05:52.541992', '103', 'Florida Panthers', 1, '[{\"added\": {}}]', 20, 2),
(151, '2019-07-29 15:06:10.320312', '104', 'Los Angeles Kings', 1, '[{\"added\": {}}]', 20, 2),
(152, '2019-07-29 15:07:09.654296', '105', 'Brynäs', 1, '[{\"added\": {}}]', 20, 2),
(153, '2019-07-29 15:07:26.807617', '106', 'Djurgardens', 1, '[{\"added\": {}}]', 20, 2),
(154, '2019-07-29 15:07:46.090820', '107', 'HV 71', 1, '[{\"added\": {}}]', 20, 2),
(155, '2019-07-29 15:08:18.032226', '108', 'Leksands', 1, '[{\"added\": {}}]', 20, 2),
(156, '2019-07-29 15:08:39.199218', '109', 'Linkopings', 1, '[{\"added\": {}}]', 20, 2),
(157, '2019-07-29 15:09:07.039062', '110', 'Oskarshamn', 1, '[{\"added\": {}}]', 20, 2),
(158, '2019-07-29 15:29:17.880859', '101', 'Dallas Stars', 3, '', 20, 2),
(159, '2019-07-29 15:31:51.718750', '111', 'Brooklyn Nets', 1, '[{\"added\": {}}]', 20, 2),
(160, '2019-07-29 15:32:27.191406', '112', 'Franca', 1, '[{\"added\": {}}]', 20, 2),
(161, '2019-07-29 15:33:17.441406', '113', 'Golden State Warrior', 1, '[{\"added\": {}}]', 20, 2),
(162, '2019-07-29 15:33:39.289062', '114', 'Los Angeles Lakers', 1, '[{\"added\": {}}]', 20, 2),
(163, '2019-07-29 15:33:39.398437', '115', 'Los Angeles Lakers', 1, '[{\"added\": {}}]', 20, 2),
(164, '2019-07-29 15:33:39.587890', '116', 'Los Angeles Lakers', 1, '[{\"added\": {}}]', 20, 2),
(165, '2019-07-29 15:34:30.011718', '117', 'Atlanta Hawks', 1, '[{\"added\": {}}]', 20, 2),
(166, '2019-07-29 15:35:27.881835', '118', 'Orlando Magic', 1, '[{\"added\": {}}]', 20, 2),
(167, '2019-07-29 15:35:54.405273', '115', 'Los Angeles Lakers', 3, '', 20, 2),
(168, '2019-07-29 15:35:54.409179', '114', 'Los Angeles Lakers', 3, '', 20, 2),
(169, '2019-07-29 15:40:50.721679', '119', 'Chicago Bulls', 1, '[{\"added\": {}}]', 20, 2),
(170, '2019-07-29 15:42:00.737304', '120', 'Milwaukee Bucks', 1, '[{\"added\": {}}]', 20, 2),
(171, '2019-07-30 00:10:27.044921', '1', 'Match object (1)', 1, '[{\"added\": {}}]', 21, 2),
(172, '2019-07-30 00:11:18.955078', '2', 'Match object (2)', 1, '[{\"added\": {}}]', 21, 2),
(173, '2019-07-30 00:18:47.435546', '4', 'Crystal Palace vs Chelsea', 1, '[{\"added\": {}}]', 21, 2),
(174, '2019-07-30 00:26:35.883789', '23', 'Premier League-Everton', 2, '[{\"changed\": {\"fields\": [\"Championat\"]}}]', 20, 2),
(175, '2019-07-30 00:27:07.536132', '18', 'Premier League-Aston Villa', 2, '[{\"changed\": {\"fields\": [\"Championat\"]}}]', 20, 2),
(176, '2019-07-30 00:27:47.680664', '19', 'Premier League-Bournemouth', 2, '[{\"changed\": {\"fields\": [\"Championat\"]}}]', 20, 2),
(177, '2019-07-30 00:28:01.695312', '21', 'Premier League-Chelsea', 2, '[{\"changed\": {\"fields\": [\"Championat\"]}}]', 20, 2),
(178, '2019-07-30 00:28:05.307617', '21', 'Premier League-Chelsea', 2, '[]', 20, 2),
(179, '2019-07-30 17:36:57.911132', '5', 'Chelsea vs Everton', 1, '[{\"added\": {}}]', 21, 2),
(180, '2019-07-30 17:50:07.583007', '1', 'Fc Barcelone', 2, '[{\"changed\": {\"fields\": [\"nom_Equipe\"]}}]', 20, 2),
(181, '2019-07-30 18:22:15.672851', '6', 'Bournemouth vs Arsenal', 1, '[{\"added\": {}}]', 21, 2),
(182, '2019-07-30 22:20:49.882812', '7', 'NBA-Golden State Warrior vs NBA-Franca', 1, '[{\"added\": {}}]', 21, 2),
(183, '2019-07-30 22:22:22.511718', '8', 'SHL-Djurgardens vs SHL-Leksands', 1, '[{\"added\": {}}]', 21, 2),
(184, '2019-08-01 18:03:55.799804', '1', 'Liga-Fc Barcelone vs Liga-Valence', 1, '[{\"added\": {}}]', 21, 2),
(185, '2019-08-01 18:05:06.884765', '2', 'Premier League-Bournemouth vs Premier League-Chelsea', 1, '[{\"added\": {}}]', 21, 2),
(186, '2019-08-01 18:06:35.327148', '3', 'NBA-Golden State Warrior vs NBA-Atlanta Hawks', 1, '[{\"added\": {}}]', 21, 2),
(187, '2019-08-01 18:09:29.039062', '4', 'Djurgardens vs Franca', 1, '[{\"added\": {}}]', 21, 2),
(188, '2019-08-01 21:36:47.369140', '1', 'choixMatch object (1)', 3, '', 25, 2),
(189, '2019-08-01 23:07:23.761718', '1', 'Paris object (1)', 1, '[{\"added\": {}}]', 23, 2),
(190, '2019-08-01 23:08:51.144531', '1', 'Paris object (1)', 3, '', 23, 2),
(191, '2019-08-01 23:09:12.506835', '4', 'Djurgardens VS Franca', 3, '', 25, 2),
(192, '2019-08-01 23:09:12.509765', '3', 'Bournemouth VS Chelsea', 3, '', 25, 2),
(193, '2019-08-01 23:09:12.512695', '2', 'Bournemouth VS Chelsea', 3, '', 25, 2),
(194, '2019-08-02 00:43:25.406250', '8', 'Fc Barcelone VS Valence', 3, '', 25, 2),
(195, '2019-08-02 00:43:25.495117', '7', 'Fc Barcelone VS Valence', 3, '', 25, 2),
(196, '2019-08-02 00:43:25.498046', '6', 'Bournemouth VS Chelsea', 3, '', 25, 2),
(197, '2019-08-02 00:43:25.500000', '5', 'Fc Barcelone VS Valence', 3, '', 25, 2),
(198, '2019-08-02 06:02:26.809570', '5', 'Atl. Madrid vs Real Madrid', 1, '[{\"added\": {}}]', 21, 2),
(199, '2019-08-02 06:04:04.499023', '6', 'Bordeaux vs Monaco', 1, '[{\"added\": {}}]', 21, 2),
(200, '2019-08-02 06:05:23.092773', '7', 'Mallorca vs Villarreal', 1, '[{\"added\": {}}]', 21, 2),
(201, '2019-08-02 06:06:27.749023', '8', 'Boston Bruins vs HV 71', 1, '[{\"added\": {}}]', 21, 2),
(202, '2019-08-02 06:07:59.500000', '9', 'Chicago Bulls vs Los Angeles Lakers', 1, '[{\"added\": {}}]', 21, 2),
(203, '2019-08-02 06:10:30.446289', '10', 'Linkopings vs Arizona Coyotes', 1, '[{\"added\": {}}]', 21, 2),
(204, '2019-08-02 06:26:46.903320', '12', 'Djurgardens VS Franca', 3, '', 25, 2),
(205, '2019-08-02 08:34:15.042968', '11', 'Leganes vs Ath. Bilbao', 1, '[{\"added\": {}}]', 21, 2),
(206, '2019-08-02 09:30:39.400390', '23', 'Djurgardens VS Franca', 3, '', 25, 2),
(207, '2019-08-02 09:30:39.579101', '22', 'Chicago Bulls VS Los Angeles Lakers', 3, '', 25, 2),
(208, '2019-08-02 09:30:39.582031', '21', 'Bordeaux VS Monaco', 3, '', 25, 2),
(209, '2019-08-02 09:30:39.583984', '20', 'Djurgardens VS Franca', 3, '', 25, 2),
(210, '2019-08-02 09:30:39.585937', '19', 'Golden State Warrior VS Atlanta Hawks', 3, '', 25, 2),
(211, '2019-08-02 09:30:39.586914', '18', 'Bordeaux VS Monaco', 3, '', 25, 2),
(212, '2019-08-02 09:30:39.588867', '17', 'Golden State Warrior VS Atlanta Hawks', 3, '', 25, 2),
(213, '2019-08-02 09:30:39.590820', '16', 'Bordeaux VS Monaco', 3, '', 25, 2),
(214, '2019-08-02 11:41:29.408203', '26', 'Djurgardens VS Franca', 3, '', 25, 2),
(215, '2019-08-02 11:41:29.466796', '25', 'Leganes VS Ath. Bilbao', 3, '', 25, 2),
(216, '2019-08-02 11:41:29.468750', '24', 'Bordeaux VS Monaco', 3, '', 25, 2),
(217, '2019-08-02 12:56:27.993164', '12', 'Villarreal vs Mallorca', 1, '[{\"added\": {}}]', 21, 2);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'landing_page', 'landingpage'),
(8, 'landing_page', 'layout'),
(9, 'landing_page', 'portfoliopart'),
(10, 'landing_page', 'pricingpart'),
(11, 'landing_page', 'servicepart'),
(12, 'landing_page', 'testimonialpart'),
(13, 'thumbnail', 'kvstore'),
(14, 'inscription', 'utilisateur'),
(15, 'inscription', 'retrait'),
(16, 'inscription', 'depot'),
(17, 'inscription', 'historique'),
(18, 'inscription', 'championat'),
(19, 'inscription', 'categorie'),
(20, 'inscription', 'equipe'),
(21, 'inscription', 'match'),
(22, 'inscription', 'tickets'),
(23, 'inscription', 'paris'),
(24, 'inscription', 'choix'),
(25, 'inscription', 'choixmatch');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-07-23 09:53:52.231445'),
(2, 'auth', '0001_initial', '2019-07-23 09:53:52.872070'),
(3, 'admin', '0001_initial', '2019-07-23 09:53:54.652343'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-07-23 09:53:55.017578'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-07-23 09:53:55.047851'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-07-23 09:53:55.246093'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-07-23 09:53:55.326171'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-07-23 09:53:55.421875'),
(9, 'auth', '0004_alter_user_username_opts', '2019-07-23 09:53:55.456054'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-07-23 09:53:55.567382'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-07-23 09:53:55.573242'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-07-23 09:53:55.600586'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-07-23 09:53:55.712890'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-07-23 09:53:55.812500'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-07-23 09:53:55.906250'),
(16, 'auth', '0011_update_proxy_permissions', '2019-07-23 09:53:55.934570'),
(17, 'sessions', '0001_initial', '2019-07-23 09:53:56.009765'),
(18, 'landing_page', '0001_initial', '2019-07-23 15:08:15.215820'),
(19, 'landing_page', '0002_auto_20181003_1933', '2019-07-23 15:08:20.658203'),
(20, 'thumbnail', '0001_initial', '2019-07-23 15:08:20.805664'),
(21, 'inscription', '0001_initial', '2019-07-24 01:50:39.430664'),
(22, 'inscription', '0002_depot_retrait', '2019-07-26 09:25:39.768554'),
(23, 'inscription', '0003_auto_20190726_1031', '2019-07-26 09:31:34.764648'),
(24, 'inscription', '0004_auto_20190726_1033', '2019-07-26 09:33:41.770507'),
(25, 'inscription', '0005_utilisateur_username', '2019-07-26 12:29:17.314453'),
(26, 'inscription', '0006_historique', '2019-07-28 12:33:56.114961'),
(27, 'inscription', '0007_auto_20190728_1349', '2019-07-28 12:50:07.940156'),
(28, 'inscription', '0008_categorie_championat_equipe', '2019-07-29 01:48:59.970453'),
(29, 'inscription', '0009_match', '2019-07-30 00:07:50.263671'),
(30, 'inscription', '0010_tickets', '2019-08-01 02:24:18.950195'),
(31, 'inscription', '0011_paris', '2019-08-01 02:41:47.190429'),
(32, 'inscription', '0012_match_slug', '2019-08-01 04:50:00.046875'),
(33, 'inscription', '0013_remove_match_slug', '2019-08-01 04:50:00.291015'),
(34, 'inscription', '0014_auto_20190801_0646', '2019-08-01 05:46:15.299804'),
(35, 'inscription', '0015_choix_paris', '2019-08-01 06:28:15.372070'),
(36, 'inscription', '0010_choixmatch_paris', '2019-08-01 13:05:31.024414'),
(37, 'inscription', '0011_auto_20190801_1816', '2019-08-01 17:16:30.114257'),
(38, 'inscription', '0009_auto_20190801_1902', '2019-08-01 18:02:18.755859'),
(39, 'inscription', '0010_remove_choixmatch_matchid', '2019-08-01 21:34:24.021484');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('r4g3so99qppiwdbxuvja3fkeysbhz3pe', 'ZGY1MzJiMjY2NjQ2MTYyNzNiZTk3YzliZDYwNjViNTI4ODkxMjg0NDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZjkyMjYxMmYzNDMxMjA3OGUzOWMyN2Y0MzI5NDQ4YTQzM2NmMzc1IiwicHNldWRvIjoiZGphbmdvIHB5dGhvbiIsImlkIjoyNCwidXNlcm5hbWUiOiJweXRob24iLCJ1c2Vyc29sZGUiOjEsInVzZXJwcmVub20iOiJkamFuZ28ifQ==', '2019-08-16 12:49:02.923828');

-- --------------------------------------------------------

--
-- Structure de la table `inscription_categorie`
--

DROP TABLE IF EXISTS `inscription_categorie`;
CREATE TABLE IF NOT EXISTS `inscription_categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cate` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inscription_categorie`
--

INSERT INTO `inscription_categorie` (`id`, `nom_cate`) VALUES
(1, 'Football'),
(2, 'Basket'),
(3, 'Hockey');

-- --------------------------------------------------------

--
-- Structure de la table `inscription_championat`
--

DROP TABLE IF EXISTS `inscription_championat`;
CREATE TABLE IF NOT EXISTS `inscription_championat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cha` varchar(20) NOT NULL,
  `Categorie_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inscription_championat_Categorie_id_519a3670` (`Categorie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inscription_championat`
--

INSERT INTO `inscription_championat` (`id`, `nom_cha`, `Categorie_id`) VALUES
(1, 'Ligue 1', 1),
(2, 'Premier League', 1),
(3, 'Liga', 1),
(5, 'Serie A', 1),
(6, 'Bundesliga', 1),
(7, 'Jupiler League.', 1),
(8, 'NBA', 2),
(9, 'MLB', 2),
(10, 'LNH', 3),
(11, 'Nationale 1', 2),
(12, 'EuroBasket U18', 2),
(13, 'SHL', 3);

-- --------------------------------------------------------

--
-- Structure de la table `inscription_choixmatch`
--

DROP TABLE IF EXISTS `inscription_choixmatch`;
CREATE TABLE IF NOT EXISTS `inscription_choixmatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `match` varchar(60) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `equipe` varchar(20) NOT NULL,
  `cote` decimal(10,2) NOT NULL,
  `Utilisateur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inscription_choixmatch_Utilisateur_id_fb209900` (`Utilisateur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inscription_choixmatch`
--

INSERT INTO `inscription_choixmatch` (`id`, `match`, `ordered`, `equipe`, `cote`, `Utilisateur_id`) VALUES
(31, 'Bournemouth VS Chelsea', 0, 'V2', '2.05', 24),
(32, 'Golden State Warrior VS Atlanta Hawks', 0, 'V1', '1.45', 24),
(30, 'Bordeaux VS Monaco', 0, 'V1', '2.40', 24),
(29, 'Djurgardens VS Franca', 0, 'V2', '4.50', 23),
(28, 'Golden State Warrior VS Atlanta Hawks', 0, 'V2', '1.90', 23),
(27, 'Bordeaux VS Monaco', 0, 'V1', '2.40', 23),
(33, 'Linkopings VS Arizona Coyotes', 0, 'X', '5.20', 24),
(34, 'Fc Barcelone VS Valence', 0, 'V1', '1.70', 24);

-- --------------------------------------------------------

--
-- Structure de la table `inscription_depot`
--

DROP TABLE IF EXISTS `inscription_depot`;
CREATE TABLE IF NOT EXISTS `inscription_depot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operateur` varchar(20) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `depot_date` datetime(6) NOT NULL,
  `Montant_depot` decimal(10,2) NOT NULL,
  `Utilisateur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inscription_depot_Utilisateur_id_675287e2` (`Utilisateur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inscription_depot`
--

INSERT INTO `inscription_depot` (`id`, `operateur`, `numero`, `depot_date`, `Montant_depot`, `Utilisateur_id`) VALUES
(1, 'Mtn Money', '59301619', '2019-07-28 12:53:13.517304', '5500.00', 1),
(2, 'Orange Money', '6595665', '2019-07-28 17:40:23.819062', '2250.00', 1),
(3, 'Flooz Money', '412669585', '2019-08-02 08:13:03.250000', '5000.00', 15),
(4, 'Flooz Money', '02596840', '2019-08-02 08:28:48.830078', '5000.00', 23),
(5, 'Orange Money', '10000', '2019-08-02 12:26:56.432617', '500000.00', 23),
(6, 'Mtn Money', '6595665', '2019-08-02 12:49:53.628906', '5000.00', 24);

-- --------------------------------------------------------

--
-- Structure de la table `inscription_equipe`
--

DROP TABLE IF EXISTS `inscription_equipe`;
CREATE TABLE IF NOT EXISTS `inscription_equipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom_Equipe` varchar(20) NOT NULL,
  `Championat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inscription_equipe_Championat_id_69dc5d97` (`Championat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inscription_equipe`
--

INSERT INTO `inscription_equipe` (`id`, `nom_Equipe`, `Championat_id`) VALUES
(1, 'Fc Barcelone', 3),
(3, 'Real Madrid', 3),
(4, 'Fc seville', 3),
(5, 'Valence', 3),
(6, 'Ath. Bilbao', 3),
(7, 'Atl. Madrid', 3),
(8, 'Celta Vigo', 3),
(9, 'Leganes', 3),
(10, 'Levante', 3),
(11, 'Mallorca', 3),
(12, 'Osasuna', 3),
(13, 'Villarreal', 3),
(19, 'Bournemouth', 2),
(18, 'Aston Villa', 2),
(17, 'Arsenal', 2),
(20, 'Brighton', 2),
(21, 'Chelsea', 2),
(22, 'Crystal Palace', 2),
(23, 'Everton', 2),
(24, 'Leicester', 2),
(25, 'Liverpool', 2),
(26, 'Manchester City', 2),
(27, 'Tottenham', 2),
(28, 'Newcastle', 2),
(29, 'Norwich', 2),
(30, 'Norwich', 2),
(31, 'Manchester Utd', 2),
(32, 'Augsburg', 6),
(33, 'Bayern', 6),
(34, 'Dortmund', 6),
(35, 'Dusseldorf', 6),
(36, 'FC Koln', 6),
(37, 'Hoffenheim', 6),
(38, 'Freiburg', 6),
(39, 'Hertha', 6),
(40, 'Mainz', 6),
(41, 'Monchengladbach', 6),
(42, 'Paderborn', 6),
(43, 'RB Leipzig', 6),
(44, 'Schalke 04', 6),
(45, 'Amiens', 1),
(46, 'Angers', 1),
(47, 'Bordeaux', 1),
(48, 'Brest', 1),
(49, 'Dijon', 1),
(50, 'Lille', 1),
(51, 'Lyon', 1),
(52, 'Marseille', 1),
(53, 'Metz', 1),
(54, 'Monaco', 1),
(55, 'Montpellier', 1),
(56, 'Nantes', 1),
(57, 'Nice', 1),
(58, 'Nîmes', 1),
(59, 'PSG', 1),
(60, 'PSG', 1),
(61, 'Saint-Etienne', 1),
(62, 'AC Milan', 5),
(63, 'AS Rome', 5),
(64, 'Atalanta', 5),
(65, 'Bologne', 5),
(66, 'Chievo', 5),
(67, 'Empoli', 5),
(68, 'Fiorentina', 5),
(69, 'Frosinone', 5),
(70, 'Genoa', 5),
(71, 'Inter', 5),
(72, 'Juventus', 5),
(74, 'Lazio', 5),
(75, 'Naples', 5),
(76, 'Parme', 5),
(77, 'Sampdoria', 5),
(84, 'Cercle Bruges', 7),
(83, 'Antwerp', 7),
(82, 'Anderlecht', 7),
(81, 'Torino', 5),
(85, 'Courtrai', 7),
(86, 'Eupen', 7),
(87, 'Genk', 7),
(88, 'La Gantoise', 7),
(89, 'Malines', 7),
(90, 'Malines', 7),
(91, 'Mouscron', 7),
(92, 'Ostende', 7),
(93, 'Standard Liège', 7),
(94, 'Waasland-Beveren', 7),
(95, 'Waasland-Beveren', 7),
(96, 'Zulte-Waregem', 7),
(97, 'Anaheim Ducks', 10),
(98, 'Arizona Coyotes', 10),
(99, 'Boston Bruins', 10),
(100, 'Columbus Blue Jacket', 10),
(111, 'Brooklyn Nets', 8),
(102, 'Dallas Stars', 10),
(103, 'Florida Panthers', 10),
(104, 'Los Angeles Kings', 10),
(105, 'Brynäs', 13),
(106, 'Djurgardens', 13),
(107, 'HV 71', 13),
(108, 'Leksands', 13),
(109, 'Linkopings', 13),
(110, 'Oskarshamn', 13),
(112, 'Franca', 8),
(113, 'Golden State Warrior', 8),
(120, 'Milwaukee Bucks', 8),
(119, 'Chicago Bulls', 8),
(116, 'Los Angeles Lakers', 8),
(117, 'Atlanta Hawks', 8),
(118, 'Orlando Magic', 8);

-- --------------------------------------------------------

--
-- Structure de la table `inscription_historique`
--

DROP TABLE IF EXISTS `inscription_historique`;
CREATE TABLE IF NOT EXISTS `inscription_historique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Transaction` varchar(20) NOT NULL,
  `date` datetime(6) NOT NULL,
  `Montant` decimal(10,2) NOT NULL,
  `operateur` varchar(20) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `Utilisateur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inscription_historique_Utilisateur_id_8e3a36a4` (`Utilisateur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inscription_historique`
--

INSERT INTO `inscription_historique` (`id`, `Transaction`, `date`, `Montant`, `operateur`, `numero`, `Utilisateur_id`) VALUES
(1, 'depôt', '2019-07-28 12:53:13.521211', '5500.00', 'Mtn Money', '59301619', 1),
(2, 'Retrait', '2019-07-28 12:56:12.202851', '10000.00', 'Flooz Money', '41266716', 1),
(3, 'depôt', '2019-07-28 17:40:23.898164', '2250.00', 'Orange Money', '6595665', 1),
(4, 'depôt', '2019-08-02 08:13:03.416015', '5000.00', 'Flooz Money', '412669585', 15),
(5, 'depôt', '2019-08-02 08:28:48.842773', '5000.00', 'Flooz Money', '02596840', 23),
(6, 'Retrait', '2019-08-02 08:32:31.300781', '500.00', 'Orange Money', '59301619', 23),
(7, 'depôt', '2019-08-02 12:26:56.561523', '500000.00', 'Orange Money', '10000', 23),
(8, 'depôt', '2019-08-02 12:49:53.714843', '5000.00', 'Mtn Money', '6595665', 24),
(9, 'Retrait', '2019-08-02 12:54:09.586914', '2000.00', 'Flooz Money', '59301619', 24);

-- --------------------------------------------------------

--
-- Structure de la table `inscription_match`
--

DROP TABLE IF EXISTS `inscription_match`;
CREATE TABLE IF NOT EXISTS `inscription_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `heure` time(6) NOT NULL,
  `v1` decimal(10,2) NOT NULL,
  `v2` decimal(10,2) NOT NULL,
  `x` decimal(10,2) NOT NULL,
  `Categorie_id` int(11) NOT NULL,
  `Championat_id` int(11) NOT NULL,
  `equipe_1_id` int(11) NOT NULL,
  `equipe_2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inscription_match_Categorie_id_008fb585` (`Categorie_id`),
  KEY `inscription_match_Championat_id_12814784` (`Championat_id`),
  KEY `inscription_match_equipe_1_id_9ec63132` (`equipe_1_id`),
  KEY `inscription_match_equipe_2_id_d0afbaf5` (`equipe_2_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inscription_match`
--

INSERT INTO `inscription_match` (`id`, `date`, `heure`, `v1`, `v2`, `x`, `Categorie_id`, `Championat_id`, `equipe_1_id`, `equipe_2_id`) VALUES
(1, '2019-08-03', '18:30:00.000000', '1.70', '2.45', '3.90', 1, 3, 1, 5),
(2, '2019-08-03', '16:00:00.000000', '5.75', '2.05', '3.50', 1, 2, 19, 21),
(3, '2019-08-04', '00:00:00.000000', '1.45', '1.90', '2.10', 2, 8, 113, 117),
(4, '2019-08-04', '00:00:00.000000', '2.92', '4.50', '16.00', 3, 13, 106, 112),
(5, '2019-08-04', '18:30:00.000000', '1.32', '4.75', '3.50', 1, 3, 7, 3),
(6, '2019-08-02', '14:30:00.000000', '2.40', '2.60', '5.00', 1, 1, 47, 54),
(7, '2019-08-02', '11:30:00.000000', '3.40', '1.72', '3.90', 1, 3, 11, 13),
(8, '2019-08-03', '23:00:00.000000', '1.60', '2.40', '3.40', 3, 13, 99, 107),
(9, '2019-08-13', '18:00:00.000000', '2.10', '3.20', '2.00', 2, 8, 119, 116),
(10, '2019-08-03', '18:30:00.000000', '1.30', '2.65', '5.20', 3, 13, 109, 98),
(11, '2019-08-02', '18:00:00.000000', '1.50', '2.30', '4.00', 1, 3, 9, 6),
(12, '2019-08-13', '18:30:00.000000', '2.30', '4.65', '5.00', 1, 3, 13, 11);

-- --------------------------------------------------------

--
-- Structure de la table `inscription_paris`
--

DROP TABLE IF EXISTS `inscription_paris`;
CREATE TABLE IF NOT EXISTS `inscription_paris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_code` varchar(20) DEFAULT NULL,
  `coteTotal` decimal(10,2) NOT NULL,
  `Mise` decimal(10,2) NOT NULL,
  `Gain` decimal(10,2) NOT NULL,
  `statut` varchar(20) NOT NULL,
  `Utilisateur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inscription_paris_Utilisateur_id_e1ae7576` (`Utilisateur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `inscription_paris_selection`
--

DROP TABLE IF EXISTS `inscription_paris_selection`;
CREATE TABLE IF NOT EXISTS `inscription_paris_selection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paris_id` int(11) NOT NULL,
  `choixmatch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inscription_paris_selection_paris_id_choixmatch_id_e824cda1_uniq` (`paris_id`,`choixmatch_id`),
  KEY `inscription_paris_selection_paris_id_391ca2ec` (`paris_id`),
  KEY `inscription_paris_selection_choixmatch_id_d40eec72` (`choixmatch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `inscription_retrait`
--

DROP TABLE IF EXISTS `inscription_retrait`;
CREATE TABLE IF NOT EXISTS `inscription_retrait` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operateur` varchar(20) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `retrait_date` datetime(6) NOT NULL,
  `Montant_retrait` decimal(10,2) NOT NULL,
  `Utilisateur_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inscription_retrait_Utilisateur_id_f7cde5c6` (`Utilisateur_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inscription_retrait`
--

INSERT INTO `inscription_retrait` (`id`, `operateur`, `numero`, `retrait_date`, `Montant_retrait`, `Utilisateur_id`) VALUES
(1, 'Flooz Money', '41266716', '2019-07-28 12:56:12.199922', '10000.00', 1),
(2, 'Orange Money', '59301619', '2019-08-02 08:32:31.160156', '500.00', 23),
(3, 'Flooz Money', '59301619', '2019-08-02 12:54:09.489257', '2000.00', 24);

-- --------------------------------------------------------

--
-- Structure de la table `inscription_utilisateur`
--

DROP TABLE IF EXISTS `inscription_utilisateur`;
CREATE TABLE IF NOT EXISTS `inscription_utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) NOT NULL,
  `prenoms` varchar(60) NOT NULL,
  `date_naissance` date NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `pays` varchar(60) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `solde` decimal(10,2) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inscription_utilisateur`
--

INSERT INTO `inscription_utilisateur` (`id`, `nom`, `prenoms`, `date_naissance`, `sexe`, `email`, `pays`, `ville`, `solde`, `numero`, `password`, `username`) VALUES
(1, 'mohamed', 'saros', '1994-11-17', 'msaculin', 'mohamedsaros@gmail.com', 'mali', 'bko', '-3849.00', '6595665', 'mokoi', 'user'),
(16, 'bonjour', 'bonsoir', '1994-11-17', 'bisou', 'yasmine@hoymail.com', 'mpl', ';dkjnbdh', '1.00', 'njnjfbfk,', 'azerty', 'user'),
(15, 'Guindo', 'Mahamadou', '4528-09-19', 'msaculin', 'test@test.ci', 'mali', 'bko', '2501.00', '6595665', 'azerty', 'user'),
(19, 'kady', 'baradji', '1994-11-17', 'Feminin', 'mohamedsaros@gmail.com', 'Côte d\'ivoire', 'Abidjan', '4000.00', '59301619', 'azerty', 'Saros94'),
(20, 'test', 'test', '1944-11-17', 'test', 'test@test.ci', 'mali', 'bko', '1.00', '0102290217', 'azerty', 'Saros10'),
(21, 'test', 'python', '2000-01-22', 'masculin', 'test@test.ci', 'Côte d\'ivoire', 'Daloa', '1.00', '111111414', 'azerty', 'test24'),
(22, 'test', 'saros', '2000-11-17', 'masaculin', 'test@test.ci', 'Côte d\'ivoire', 'paris', '1.00', '6595665', 'azerty', 'Saros10'),
(23, 'nan', 'python', '2011-01-01', 'masculin', 'python@nan.ci', 'Côte d\'ivoire', 'abidjan', '480001.00', '02050804', 'azerty', 'nan'),
(24, 'python', 'django', '2012-11-17', 'masculin', 'django.python@nan.ci', 'Côte d\'ivoire', 'paris', '501.00', '6595665', 'azerty', 'django python');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
