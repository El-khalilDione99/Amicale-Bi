-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 09 fév. 2025 à 19:24
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ucab_amical`
--

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id_contact` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `emeil` varchar(255) NOT NULL,
  `objet` varchar(30) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id_contact`, `nom`, `emeil`, `objet`, `message`) VALUES
(10, 'Ibra', 'dione@gmail.com', 'demande', 'je suis ibrahima'),
(11, 'elkhalii', 'dionee99@gmail.com', 'mon meesage', 'je voulais vous faire connaissance'),
(14, 'dione', 'ppppppppppppp@jjhh', 'ffffffffffffff', 'dddddddddddddd'),
(16, 'dione', 'mohamed@g.com', 'objets', 'mon permmsqsqw'),
(19, 'BambaMbacke', 'fall@pp', 'ggggggggggggg', 'hhhhhhhhhhhhhhhhhhhhhhjjjjjjjjjjjjjj'),
(20, 'hjhjrfh', 'jjkjkjkd@gfgfgfed', 'hjhjd', 'hjbbecfjcjjiffef');

-- --------------------------------------------------------

--
-- Structure de la table `evenments`
--

CREATE TABLE `evenments` (
  `id_evenment` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `evenments`
--

INSERT INTO `evenments` (`id_evenment`, `nom`, `description`, `photo`, `etat`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'igL3', 'les informaticiens', 'Mawaclas.jpeg', 1, '2024-11-22 00:00:00', NULL, NULL, 2, NULL, NULL),
(2, 'FOOTBOLL', 'INTERCLASSE', '198fc573666248b6907e89c897d59a94.jpg', 1, '2024-11-25 00:00:00', '2024-11-25 00:00:00', NULL, 2, 2, NULL),
(3, 'igL3jj', 'les informaticienshhh', 'bouquet.webp', 0, '2025-01-25 00:00:00', '2025-01-25 00:00:00', NULL, 2, 2, NULL),
(4, 'FOOTBOLLlll', 'INTERCLASSE', 'bouquet.webp', 1, '2025-01-25 00:00:00', NULL, NULL, 2, NULL, NULL),
(5, 'FOOTBALLKK', 'INTERCLASSEDD', 'bouquet.webp', 1, '2025-01-25 00:00:00', '2025-01-28 00:00:00', NULL, 2, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `faqs`
--

CREATE TABLE `faqs` (
  `id_faq` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `etat` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `faqs`
--

INSERT INTO `faqs` (`id_faq`, `nom`, `description`, `etat`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Vous êtes qui monsieur?', 'suis laAAAAAAAAAAAAAAAAA', 1, '2024-11-22 00:00:00', '2025-01-06 00:00:00', NULL, 2, 2, NULL),
(2, 'c quoi votre entite de ', 'nous somme structure.....................', 1, '2024-11-25 00:00:00', '2025-01-06 00:00:00', NULL, 2, 2, NULL),
(3, 'Quelles sont les filières de l\'UCAB', 'En l\'UCAB on se trouve 3 filières différents informatique de gestion, électromécanique et administration! ', 1, '2025-01-06 00:00:00', '2025-01-28 00:00:00', NULL, 2, 2, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `galeries`
--

CREATE TABLE `galeries` (
  `id_galerie` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `etat` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `galeries`
--

INSERT INTO `galeries` (`id_galerie`, `nom`, `photo`, `description`, `etat`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'dione', 'ucab2.jpeg', 'ucabtof', 0, '2024-11-02 00:00:00', '2024-11-02 00:00:00', NULL, 1, 1, NULL),
(2, 'Vous êtes qui monsieur?', 'ucab3.jpeg', 'ucabtof\"', 0, '2024-11-02 00:00:00', '2024-11-02 00:00:00', NULL, 1, 1, NULL),
(3, 'Diaw Fdm Pro', 'ucab5.jpeg', 'Diaw', 0, '2024-11-02 00:00:00', '2024-11-02 00:00:00', NULL, 1, 1, NULL),
(4, 'my tof', 'UCABamicale.png', 'toftof', 0, '2024-11-02 00:00:00', '2024-11-02 00:00:00', NULL, 1, 1, NULL),
(5, 'photooo', 'logoUcab-removebg-preview.png', 'foto', 0, '2024-11-02 00:00:00', '2024-11-02 00:00:00', NULL, 1, 1, NULL),
(6, 'comment tu veux faire?', 'WhatsApp Image 2024-10-17 at 19.53.52.jpeg', 'v', 0, '2024-11-02 00:00:00', '2024-11-02 00:00:00', NULL, 1, 1, NULL),
(7, 'Vous êtes qui monsieur?', 'ucab1.jpeg', 'tof ucab', 0, '2024-11-02 00:00:00', '2024-11-02 00:00:00', NULL, 1, 1, NULL),
(8, 'gvhbj', 'ucab5.jpeg', 'jbhhjhj', 0, '2024-11-02 00:00:00', '2024-11-02 00:00:00', NULL, 1, 1, NULL),
(9, 'dione', 'ucab2.jpeg', 'qsdfghjkl', 1, '2024-11-02 00:00:00', NULL, NULL, 1, NULL, NULL),
(10, 'Confirenciés', 'invite.jpeg', 'les invite', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(11, 'serigne saliou&Ndoye', 'bayezal.jpeg', 'les cadres de ucab', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(12, 'jeuwrinne', 'jeuwrinn.jpeg', 'jeuwrinne de lucab', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(13, 'dione', 'dione.jpeg', 'nouss', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(14, 'dg', 'dg.jpeg', 'directeur', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(15, 'D mbaye', 'mMbaye.jpeg', 'notre chère docteur', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(16, 'm bokoum', 'bokoum.jpeg', 'm bokoum', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(17, 'invite', 'groupinvite.jpeg', 'les conférenciers', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(18, 'ElM', 'elm.jpeg', 'Atelier électromécanique', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(19, 'elm', 'Ellm.jpeg', 'eclectromeqanique', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(20, 'Ig', 'ig.jpeg', 'les infomaticiéns', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(21, 'Ad', 'ap.jpeg', 'Les administrations', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(22, 'ig', 'ig (2).jpeg', 'ig', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(23, 'tem', 'groupp.jpeg', 'tem', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(24, 'ig', 'Mawaclas.jpeg', 'ig', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(25, 'ig', 'Mawaclas.jpeg', 'ig', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(26, 'ig', 'igggg.jpeg', 'ig', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(27, 'reponsable', '7b13cf1954294c79879d213027996809.jpg', 'reposable', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(28, 'etudiant', '0710cce8568844f384e73c8823c10c4a.jpg', 'etudiants', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(29, 'M.Niang & M.Sakh', '426406807d3c4f018e46fdadf542d85c.jpg', 'dirigeants', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(30, 'mGaye', 'a181cd8bbcfe4c18bcbd98d5164b46b6.jpg', 'monsieur gaye', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(31, 'etudiants', '8776355978c3411987f469951fffc9b4.jpg', 'etudiants', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(32, 'mr', 'ac169f8afe6f4f648be44d4d6a26228d.jpg', 'mr', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(33, 'étudiants', 'IMG-20220415-WA0024.jpg', 'étudiants', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(34, 'étudiants', 'IMG-20220415-WA0025.jpg', 'étudiants', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(35, 'étudiants', 'IMG-20220415-WA0026.jpg', 'étudiants', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(36, 'étudiants', 'IMG-20220415-WA0030.jpg', 'étudiants', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(37, 'étudiants', 'IMG-20221214-WA0117.jpg', 'étudiants', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(17) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_user`, `nom`, `prenom`, `photo`, `email`, `telephone`, `adresse`, `role`, `password`, `etat`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Seck', 'Mourtada', 'test.png', 'exemple@gmail.com', '770000000', 'parcelles', 'admin', 'passer123', 1, '0000-00-00 00:00:00', '2025-01-06 00:00:00', NULL, NULL, 1, NULL),
(2, 'dione', 'ibrahima', 'dione.jpeg', 'ibradione255@gmail.com', '77507000', 'Dakar', 'admin', 'test123', 1, '2024-11-03 00:00:00', NULL, NULL, 1, NULL, NULL),
(3, 'dione', 'ibrahima', 'dione.jpeg', 'ibradione255@gmail.com', '775070000', 'Dakar', 'admin', 'seeeeeeeee', 0, '2024-11-03 00:00:00', '2025-01-09 00:00:00', NULL, 1, 1, NULL),
(4, 'sokhna', 'fall', '75ee969a257947de861620e530fc8d56.jpg', 'sokhna@gmail.com', '770098765', 'thiaroye', 'passer123', 'admin', 1, '2024-11-24 00:00:00', '2024-11-25 00:00:00', NULL, NULL, 1, NULL),
(5, 'njjkkk', 'hujjj', '8776355978c3411987f469951fffc9b4.jpg', 'hjuhh@hhhh', '556789990', 'thiaroye', 'ghhhjh', 'admin', 0, '2025-01-09 00:00:00', '2025-01-09 00:00:00', NULL, NULL, 1, NULL),
(6, 'dione', 'delete * from evenments where 1', 'bouquet.webp', 'sokhna@gmail.com', '77507000', 'thiaroye', 'password', 'admin', 0, '2025-01-25 00:00:00', '2025-01-25 00:00:00', NULL, NULL, 1, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id_contact`);

--
-- Index pour la table `evenments`
--
ALTER TABLE `evenments`
  ADD PRIMARY KEY (`id_evenment`),
  ADD KEY `created_by` (`created_by`,`updated_by`,`deleted_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Index pour la table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id_faq`),
  ADD KEY `created_by` (`created_by`,`updated_by`,`deleted_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Index pour la table `galeries`
--
ALTER TABLE `galeries`
  ADD PRIMARY KEY (`id_galerie`),
  ADD KEY `created_by` (`created_by`,`updated_by`,`deleted_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `created_by` (`created_by`,`updated_by`,`deleted_by`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `evenments`
--
ALTER TABLE `evenments`
  MODIFY `id_evenment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id_faq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `galeries`
--
ALTER TABLE `galeries`
  MODIFY `id_galerie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `evenments`
--
ALTER TABLE `evenments`
  ADD CONSTRAINT `evenments_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `evenments_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `evenments_ibfk_3` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id_user`);

--
-- Contraintes pour la table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `faqs_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `faqs_ibfk_3` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id_user`);

--
-- Contraintes pour la table `galeries`
--
ALTER TABLE `galeries`
  ADD CONSTRAINT `galeries_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `galeries_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `galeries_ibfk_3` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
