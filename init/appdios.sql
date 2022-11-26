-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 24 nov. 2022 à 16:09
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `appdios`
--

-- --------------------------------------------------------

--
-- Structure de la table `appdios_annonce`
Use appdios;

CREATE TABLE `appdios_annonce` (
  `id_annonce` int(11) NOT NULL,
  `lib_annonce` longtext NOT NULL,
  `contenu_annonce` varchar(100) NOT NULL,
  `date_annonce` longtext NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `appdios_bannir_customer`
--

CREATE TABLE `appdios_bannir_customer` (
  `id_bannir` int(11) NOT NULL,
  `lib_bannir` varchar(100) NOT NULL,
  `admin` varchar(500) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `appdios_bannir_vendor`
--

CREATE TABLE `appdios_bannir_vendor` (
  `id_bannir` int(11) NOT NULL,
  `lib_bannir` varchar(100) NOT NULL,
  `admin` varchar(500) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `appdios_dios`
--

CREATE TABLE `appdios_dios` (
  `id_dios` int(11) NOT NULL,
  `nom_dios` varchar(100) NOT NULL,
  `email_dios` varchar(100) NOT NULL,
  `logo_dios` varchar(100) NOT NULL,
  `description_dios` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `appdios_role`
--

CREATE TABLE `appdios_role` (
  `id_role` int(11) NOT NULL,
  `role` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `appdios_user`
--

CREATE TABLE `appdios_user` (
  `id_user` int(11) NOT NULL,
  `nom_user` varchar(50) NOT NULL,
  `premon_user` varchar(100) NOT NULL,
  `photo_user` varchar(100) NOT NULL,
  `email_user` varchar(500) NOT NULL,
  `password_user` varchar(500) NOT NULL,
  `dios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add customer', 7, 'add_customer'),
(26, 'Can change customer', 7, 'change_customer'),
(27, 'Can delete customer', 7, 'delete_customer'),
(28, 'Can view customer', 7, 'view_customer'),
(29, 'Can add etat civil', 8, 'add_etatcivil'),
(30, 'Can change etat civil', 8, 'change_etatcivil'),
(31, 'Can delete etat civil', 8, 'delete_etatcivil'),
(32, 'Can view etat civil', 8, 'view_etatcivil'),
(33, 'Can add download image', 9, 'add_downloadimage'),
(34, 'Can change download image', 9, 'change_downloadimage'),
(35, 'Can delete download image', 9, 'delete_downloadimage'),
(36, 'Can view download image', 9, 'view_downloadimage'),
(37, 'Can add vendor', 10, 'add_vendor'),
(38, 'Can change vendor', 10, 'change_vendor'),
(39, 'Can delete vendor', 10, 'delete_vendor'),
(40, 'Can view vendor', 10, 'view_vendor'),
(41, 'Can add produit', 11, 'add_produit'),
(42, 'Can change produit', 11, 'change_produit'),
(43, 'Can delete produit', 11, 'delete_produit'),
(44, 'Can view produit', 11, 'view_produit'),
(45, 'Can add dios', 12, 'add_dios'),
(46, 'Can change dios', 12, 'change_dios'),
(47, 'Can delete dios', 12, 'delete_dios'),
(48, 'Can view dios', 12, 'view_dios'),
(49, 'Can add role', 13, 'add_role'),
(50, 'Can change role', 13, 'change_role'),
(51, 'Can delete role', 13, 'delete_role'),
(52, 'Can view role', 13, 'view_role'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user'),
(57, 'Can add bannir_vendor', 15, 'add_bannir_vendor'),
(58, 'Can change bannir_vendor', 15, 'change_bannir_vendor'),
(59, 'Can delete bannir_vendor', 15, 'delete_bannir_vendor'),
(60, 'Can view bannir_vendor', 15, 'view_bannir_vendor'),
(61, 'Can add bannir_customer', 16, 'add_bannir_customer'),
(62, 'Can change bannir_customer', 16, 'change_bannir_customer'),
(63, 'Can delete bannir_customer', 16, 'delete_bannir_customer'),
(64, 'Can view bannir_customer', 16, 'view_bannir_customer'),
(65, 'Can add annonce', 17, 'add_annonce'),
(66, 'Can change annonce', 17, 'change_annonce'),
(67, 'Can delete annonce', 17, 'delete_annonce'),
(68, 'Can view annonce', 17, 'view_annonce');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `customer_customer`
--

CREATE TABLE `customer_customer` (
  `id_customer` int(11) NOT NULL,
  `nom_customer` varchar(50) NOT NULL,
  `premon_customer` varchar(100) NOT NULL,
  `email_customer` varchar(100) NOT NULL,
  `number_customer` varchar(15) NOT NULL,
  `lieuHabit_customer` varchar(100) NOT NULL,
  `age_customer` varchar(150) NOT NULL,
  `pwd_customer` varchar(500) NOT NULL,
  `status_customer` tinyint(1) NOT NULL,
  `EtatCivil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `customer_downloadimage`
--

CREATE TABLE `customer_downloadimage` (
  `id_downloadImage` int(11) NOT NULL,
  `lib_downloadImage` varchar(500) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `customer_etatcivil`
--

CREATE TABLE `customer_etatcivil` (
  `id_etatCivil` int(11) NOT NULL,
  `lib_etatCivil` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(17, 'appDios', 'annonce'),
(16, 'appDios', 'bannir_customer'),
(15, 'appDios', 'bannir_vendor'),
(12, 'appDios', 'dios'),
(13, 'appDios', 'role'),
(14, 'appDios', 'user'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'customer', 'customer'),
(9, 'customer', 'downloadimage'),
(8, 'customer', 'etatcivil'),
(6, 'sessions', 'session'),
(11, 'vendor', 'produit'),
(10, 'vendor', 'vendor');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-11 23:57:38.988820'),
(2, 'auth', '0001_initial', '2022-11-11 23:57:39.504174'),
(3, 'admin', '0001_initial', '2022-11-11 23:57:39.617257'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-11 23:57:39.625335'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-11 23:57:39.633268'),
(6, 'vendor', '0001_initial', '2022-11-11 23:57:39.726292'),
(7, 'customer', '0001_initial', '2022-11-11 23:57:39.916159'),
(8, 'appDios', '0001_initial', '2022-11-11 23:57:40.228914'),
(9, 'appDios', '0002_rename_email_admin_user_email_user_and_more', '2022-11-11 23:57:40.285481'),
(10, 'contenttypes', '0002_remove_content_type_name', '2022-11-11 23:57:40.342836'),
(11, 'auth', '0002_alter_permission_name_max_length', '2022-11-11 23:57:40.389710'),
(12, 'auth', '0003_alter_user_email_max_length', '2022-11-11 23:57:40.404671'),
(13, 'auth', '0004_alter_user_username_opts', '2022-11-11 23:57:40.412649'),
(14, 'auth', '0005_alter_user_last_login_null', '2022-11-11 23:57:40.454043'),
(15, 'auth', '0006_require_contenttypes_0002', '2022-11-11 23:57:40.459028'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2022-11-11 23:57:40.468740'),
(17, 'auth', '0008_alter_user_username_max_length', '2022-11-11 23:57:40.482526'),
(18, 'auth', '0009_alter_user_last_name_max_length', '2022-11-11 23:57:40.496788'),
(19, 'auth', '0010_alter_group_name_max_length', '2022-11-11 23:57:40.511025'),
(20, 'auth', '0011_update_proxy_permissions', '2022-11-11 23:57:40.523996'),
(21, 'auth', '0012_alter_user_first_name_max_length', '2022-11-11 23:57:40.538266'),
(22, 'sessions', '0001_initial', '2022-11-11 23:57:40.570080');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `vendor_produit`
--

CREATE TABLE `vendor_produit` (
  `id_produit` int(11) NOT NULL,
  `titre_produit` varchar(100) NOT NULL,
  `details_produit` longtext NOT NULL,
  `image_produit` varchar(100) NOT NULL,
  `categorie_produit` longtext NOT NULL,
  `date_produit` varchar(100) NOT NULL,
  `prix_produit` longtext NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `vendor_vendor`
--

CREATE TABLE `vendor_vendor` (
  `id_vendor` int(11) NOT NULL,
  `nom_vendor` varchar(50) NOT NULL,
  `prenom_vendor` varchar(100) NOT NULL,
  `email_vendor` varchar(500) NOT NULL,
  `photo_vendor` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `password_vendor` longtext NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appdios_annonce`
--
ALTER TABLE `appdios_annonce`
  ADD PRIMARY KEY (`id_annonce`),
  ADD KEY `appDios_annonce_admin_id_d043ae8d_fk_appDios_user_id_admin` (`admin_id`);

--
-- Index pour la table `appdios_bannir_customer`
--
ALTER TABLE `appdios_bannir_customer`
  ADD PRIMARY KEY (`id_bannir`),
  ADD KEY `appDios_bannir_custo_customer_id_8494c8c5_fk_customer_` (`customer_id`);

--
-- Index pour la table `appdios_bannir_vendor`
--
ALTER TABLE `appdios_bannir_vendor`
  ADD PRIMARY KEY (`id_bannir`),
  ADD KEY `appDios_bannir_vendo_vendor_id_91f4a023_fk_vendor_ve` (`vendor_id`);

--
-- Index pour la table `appdios_dios`
--
ALTER TABLE `appdios_dios`
  ADD PRIMARY KEY (`id_dios`);

--
-- Index pour la table `appdios_role`
--
ALTER TABLE `appdios_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `appdios_user`
--
ALTER TABLE `appdios_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `appDios_user_dios_id_1952515f_fk_appDios_dios_id_dios` (`dios_id`);

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `customer_customer`
--
ALTER TABLE `customer_customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `customer_customer_EtatCivil_id_768482fe_fk_customer_` (`EtatCivil_id`);

--
-- Index pour la table `customer_downloadimage`
--
ALTER TABLE `customer_downloadimage`
  ADD PRIMARY KEY (`id_downloadImage`),
  ADD KEY `customer_downloadima_customer_id_08cd7117_fk_customer_` (`customer_id`);

--
-- Index pour la table `customer_etatcivil`
--
ALTER TABLE `customer_etatcivil`
  ADD PRIMARY KEY (`id_etatCivil`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `vendor_produit`
--
ALTER TABLE `vendor_produit`
  ADD PRIMARY KEY (`id_produit`),
  ADD KEY `vendor_produit_vendor_id_ae0eafe5_fk_vendor_vendor_id_vendor` (`vendor_id`);

--
-- Index pour la table `vendor_vendor`
--
ALTER TABLE `vendor_vendor`
  ADD PRIMARY KEY (`id_vendor`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `appdios_annonce`
--
ALTER TABLE `appdios_annonce`
  MODIFY `id_annonce` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `appdios_bannir_customer`
--
ALTER TABLE `appdios_bannir_customer`
  MODIFY `id_bannir` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `appdios_bannir_vendor`
--
ALTER TABLE `appdios_bannir_vendor`
  MODIFY `id_bannir` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `appdios_dios`
--
ALTER TABLE `appdios_dios`
  MODIFY `id_dios` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `appdios_role`
--
ALTER TABLE `appdios_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `appdios_user`
--
ALTER TABLE `appdios_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customer_customer`
--
ALTER TABLE `customer_customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customer_downloadimage`
--
ALTER TABLE `customer_downloadimage`
  MODIFY `id_downloadImage` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customer_etatcivil`
--
ALTER TABLE `customer_etatcivil`
  MODIFY `id_etatCivil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `vendor_produit`
--
ALTER TABLE `vendor_produit`
  MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `vendor_vendor`
--
ALTER TABLE `vendor_vendor`
  MODIFY `id_vendor` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appdios_annonce`
--
ALTER TABLE `appdios_annonce`
  ADD CONSTRAINT `appDios_annonce_admin_id_d043ae8d_fk_appDios_user_id_admin` FOREIGN KEY (`admin_id`) REFERENCES `appdios_user` (`id_user`);

--
-- Contraintes pour la table `appdios_bannir_customer`
--
ALTER TABLE `appdios_bannir_customer`
  ADD CONSTRAINT `appDios_bannir_custo_customer_id_8494c8c5_fk_customer_` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id_customer`);

--
-- Contraintes pour la table `appdios_bannir_vendor`
--
ALTER TABLE `appdios_bannir_vendor`
  ADD CONSTRAINT `appDios_bannir_vendo_vendor_id_91f4a023_fk_vendor_ve` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_vendor` (`id_vendor`);

--
-- Contraintes pour la table `appdios_user`
--
ALTER TABLE `appdios_user`
  ADD CONSTRAINT `appDios_user_dios_id_1952515f_fk_appDios_dios_id_dios` FOREIGN KEY (`dios_id`) REFERENCES `appdios_dios` (`id_dios`);

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `customer_customer`
--
ALTER TABLE `customer_customer`
  ADD CONSTRAINT `customer_customer_EtatCivil_id_768482fe_fk_customer_` FOREIGN KEY (`EtatCivil_id`) REFERENCES `customer_etatcivil` (`id_etatCivil`);

--
-- Contraintes pour la table `customer_downloadimage`
--
ALTER TABLE `customer_downloadimage`
  ADD CONSTRAINT `customer_downloadima_customer_id_08cd7117_fk_customer_` FOREIGN KEY (`customer_id`) REFERENCES `customer_customer` (`id_customer`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `vendor_produit`
--
ALTER TABLE `vendor_produit`
  ADD CONSTRAINT `vendor_produit_vendor_id_ae0eafe5_fk_vendor_vendor_id_vendor` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_vendor` (`id_vendor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
