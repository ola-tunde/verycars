-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 01 jan. 2022 à 21:00
-- Version du serveur :  8.0.27-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `verycars`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int NOT NULL,
  `utilisateur` varchar(250) NOT NULL,
  `voiture` varchar(250) NOT NULL,
  `quantite` int NOT NULL,
  `prix` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `description` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nom` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `utilisateur`, `voiture`, `quantite`, `prix`, `description`, `image`, `nom`) VALUES
(20, 'Bottier', 'Honda Civic Type R', 1, '41 690 ', '5 portes<br>306ch<br>Traction<br>Boîte manuelle<br>Essence', 'img/honda-civic-type-r.jpg', NULL),
(21, 'Bottier', 'Toyota Yaris 4', 2, '19 590', '<br>Nombre de portes : 5<br>Puissance dynamique : 100ch<br>Boîte automatique<br>Traction<br>Hybride', 'img/toyota-yaris-hybrid-357.jpeg', NULL),
(22, 'Bottier', 'Alfa Romeo Stelvio', 1, '28 890', '<br>nb de portes : 5<br>boîte automatique<br>puissance dynamique : 210ch<br>essence<br>Consommation : 4.4L/100km', 'img/Alfa_Romeo_Stelvio.jpg', NULL),
(15, 'Bottier', 'Renault Clio 5', 3, '22 350', '<br>Nombre de portes : 5 <br>Boîte manuelle<br>Puissance dynamique : 100ch<br>Traction<br>Essence<br>                            Consommation : 4.4L /100km', 'img/RenaultClio.jpg', NULL),
(19, 'Bottier', 'BMW M2 Compétition', 6, '110 000 ', '<br>3 portes <br>410ch <br>Pack M performance<br>  Boîte manuelle<br>Propulsion<br>Toit carbone<br>Essence', 'img/bmw-m2-competition.jpg', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utlilisateur` int NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `mail` varchar(250) DEFAULT NULL,
  `mdp` varchar(30) DEFAULT NULL,
  `pays` varchar(20) DEFAULT NULL,
  `ville` varchar(30) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `code_postal` int DEFAULT NULL,
  `date_dn` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utlilisateur`, `nom`, `prenom`, `mail`, `mdp`, `pays`, `ville`, `adresse`, `code_postal`, `date_dn`) VALUES
(1, 'rochette', 'julien', 'abc@abc', 'abc', 'france', 'cergy', '10 villa des elfes', 95800, '1999-02-08'),
(2, 'Bottier', 'Vincent', 'cba@cba', 'abc', 'FRANCE', 'Conflans', 'rue de la bonne note', 78700, '1999-08-06');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE `voiture` (
  `id_voiture` int NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prix` varchar(15) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `stock` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`id_voiture`, `type`, `image`, `nom`, `prix`, `description`, `stock`) VALUES
(1, 'sportives', 'img/bmw-m2-competition.jpg', 'BMW M2 Compétition', '110 000 ', '<br>3 portes <br>410ch <br>Pack M performance<br>  Boîte manuelle<br>Propulsion<br>Toit carbone<br>Essence', 0),
(2, 'sportives', 'img/nissan-skyline-r34.jpg', 'Nissan Skyline R34 GTR', '100 000 ', '3 portes<br>Volant côté droit<br>Boîte manuelle<br>280ch<br>Propulsion<br>Essence<br>Iconique ', 6),
(3, 'sportives', 'img/golf-7r.png', 'Golf VII R', '40 700 ', '3 portes<br>Boîte automatique<br>300ch<br>4 roues motrice<br>Essence', 6),
(4, 'sportives', 'img/honda-civic-type-r.jpg', 'Honda Civic Type R', '41 690 ', '5 portes<br>306ch<br>Traction<br>Boîte manuelle<br>Essence', 8),
(5, 'sportives', 'img/Toyota-Supra-A90.jpg', 'Toyota Supra mk5', '67 900 ', '3 portes<br>Boîte automatique<br>Propulsion<br>340ch<br>Essence', 8),
(6, 'citadines', 'img/toyota-yaris-hybrid-357.jpeg', 'Toyota Yaris 4', '19 590', '<br>Nombre de portes : 5<br>Puissance dynamique : 100ch<br>Boîte automatique<br>Traction<br>Hybride', 3),
(7, 'citadines', 'img/RenaultClio.jpg', 'Renault Clio 5', '22 350', '<br>Nombre de portes : 5 <br>Boîte manuelle<br>Puissance dynamique : 100ch<br>Traction<br>Essence<br>                            Consommation : 4.4L /100km', 9),
(8, 'citadines', 'img/peugeot-208-2020.jpg', 'Peugeot 208 (2020)', '19 220', '<br>Nombre de portes : 5<br>Boîte manuelle<br>Puissance dynamique : 75ch<br>Traction<br>Essence<br>Consommation : 4.1L/100km', 9),
(9, 'citadines', 'img/Volkswagen_20Polo_20VI.jpg', 'Volkswagen Polo VI', '23 990', '<br>Nomnre de portes : 5<br>Boîte automatique<br>Coffre : 351L<br>Puissance dynamique : 95ch<br>Essence', 8),
(10, 'citadines', 'img/Ford_20fiesta.jpg', 'Ford fiesta', '10 490', '<br>Nombre de portes : 5<br>Puissance dynamique : 100ch<br>Traction<br>Consommation : 4.3L/100km<br>Boîte manuelle<br>Essence<br>Capacité coffre : 290L', 6),
(11, 'berlines', 'img/peugeot-508.jpg', 'Peugeot 508', '38 200', '<br>Nombre de portes : 5<br>Puissance dynamique : 180ch<br>4 places<br>Boîte manuelle<br>i-Cockpit <br>Essence', 0),
(12, 'berlines', 'img/mercedes-classe-e.jpg', 'Mercedes classe e (w213)', '45 303', '<br>Nombre de portes : 5<br>Boîte automatique<br>Puissance dynamique : 184ch<br>Propulsion<br>Essence<br>Sièges chauffants', 9),
(13, 'berlines', 'img/audi-a6.jpg', 'Audi A6', '55 150', '<br>Nombre de portes : 5<br>Boîte automatique<br>Puissance dynamique : 265ch<br>Traction<br>Essence<br>Voiture intelligente', 9),
(14, 'berlines', 'img/BMW_20745_20Le.jpg', 'BMW 745 Le', '112 000', '<br>Nombre de portes : 5<br>Boîte automatique<br>Propulsion<br>Puissance dynamique : 394ch<br>Hybride rechargeable', 9),
(15, 'berlines', 'img/Porsche_20Panamera_204S.jpg', 'Porsche Panamera 4S', '115 967', '<br>Nombre de portes : 5<br>Puissance dynamique : 550ch<br>Propulsion<br>Ligne sportive inspirÃ© 911<br>BoÃ®te manuelle<br>Essence', 9),
(16, 'suv', 'img/Toyota-C-HR.jpg', 'Toyota C-HR Hybride', '29 800', '<br>Nombre de portes : 5.<br>Puissance dynamique : 122ch<br>Boîte automatique<br>4 roues motrices <br>Hybride', 9),
(17, 'suv', 'img/mercedes-benz-glc.jpg', 'Mercedes GLC 220d', '37 490', '<br>Nombre de portes : 5<br>Boîte automatique<br>Puissance dynamique : 160ch<br>4 roues motrices<br>Diesel', 6),
(18, 'suv', 'img/Alfa_Romeo_Stelvio.jpg', 'Alfa Romeo Stelvio', '28 890', '<br>nb de portes : 5<br>boîte automatique<br>puissance dynamique : 210ch<br>essence<br>Consommation : 4.4L/100km', 9),
(19, 'suv', 'img/Mazda_20CX-5_20II.jpg', 'Mazda CX-5 II', '112 000', ' <br>Nombre de portes : 5<br>Boîte manuelle<br>Puissance dynamique : 150ch<br>Diesel<br>Volume coffre : 494L<br>Consommation : 5.9L/100km', 9),
(20, 'suv', 'img/BMW_20X6_20F16.jpg', 'BMW X6 F16', '53 990', '<br>Nombre de portes : 5<br>Puissance dynamique : 449ch<br>4 roues motrices<br>Boîte automatique<br>Essence<br>Consommation : 8.6L/100km<br>Pack M sport<br>Volume coffre : 580L', 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `voiture` (`voiture`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utlilisateur`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`id_voiture`),
  ADD KEY `nom` (`nom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utlilisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `voiture`
--
ALTER TABLE `voiture`
  MODIFY `id_voiture` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1461;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
