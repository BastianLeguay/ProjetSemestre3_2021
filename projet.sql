-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 22 Janvier 2021 à 14:45
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `conference`
--

CREATE TABLE `conference` (
  `idConference` int(100) NOT NULL,
  `nomConf` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `dateC` date NOT NULL,
  `publicC` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nbPlaceC` int(250) NOT NULL,
  `dureeC` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idIntervenant` int(100) NOT NULL,
  `idThemeConf` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `conference`
--

INSERT INTO `conference` (`idConference`, `nomConf`, `dateC`, `publicC`, `nbPlaceC`, `dureeC`, `idIntervenant`, `idThemeConf`) VALUES
(1, 'Open Source Summit', '2021-05-20', 'Debutant', 150, '02h00min', 11, 2),
(2, 'Conférence sur les Tendances de Communication', '2021-10-29', 'Débutant', 125, '01h30min', 12, 14),
(3, 'Conference sur edition livre', '2021-11-11', 'Debutant', 200, '00h30min', 9, 7);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `idCours` int(100) NOT NULL,
  `dateCo` date NOT NULL,
  `publicCo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nbPlaceCo` int(250) NOT NULL,
  `dureeCo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idMatiere` int(100) NOT NULL,
  `idIntervenant` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`idCours`, `dateCo`, `publicCo`, `nbPlaceCo`, `dureeCo`, `idMatiere`, `idIntervenant`) VALUES
(1, '2020-02-25', 'Confirmé', 35, '00h45min', 6, 2),
(2, '2021-03-22', 'Expert', 45, '01h30min', 21, 4),
(3, '2020-08-11', 'Expert', 50, '00h30min', 2, 1),
(4, '2021-12-16', 'Expert', 25, '02h00min', 21, 10),
(5, '2020-10-20', 'Confirmé', 45, '01h45min', 19, 11),
(6, '2021-05-26', 'Intermediaire', 25, '01h00', 17, 11),
(7, '2020-12-29', 'Intermediaire', 30, '00h45min', 9, 2),
(8, '2021-12-20', 'Debutant', 20, '02h00min', 19, 5),
(9, '2021-12-18', 'Expert', 45, '01h45min', 13, 10),
(10, '2021-03-14', 'Expert', 10, '00h30min', 20, 11),
(11, '2021-02-28', 'Intermediaire', 30, '00h45min', 8, 3),
(12, '2020-04-20', 'Debutant', 30, '01h00', 9, 1),
(13, '2020-11-27', 'Expert', 50, '01h15min', 11, 6),
(14, '2020-07-07', 'Expert', 35, '01h30min', 10, 5),
(15, '2021-12-23', 'Debutant', 30, '00h45min', 24, 6),
(16, '2021-03-22', 'Intermediaire', 45, '01h00', 3, 5),
(17, '2021-02-15', 'Intermediaire', 20, '01h00', 20, 1),
(18, '2021-11-12', 'Confirmé', 50, '02h00min', 7, 2),
(19, '2020-09-14', 'Debutant', 30, '01h15min', 19, 7),
(20, '2020-04-02', 'Confirmé', 40, '01h15min', 3, 2),
(21, '2021-10-11', 'Debutant', 30, '01h20min', 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `departementdeformation`
--

CREATE TABLE `departementdeformation` (
  `idDeptFormation` int(100) NOT NULL,
  `nomDeptF` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adresseDeptF` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mailDeptF` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numTelephoneDeptF` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `departementdeformation`
--

INSERT INTO `departementdeformation` (`idDeptFormation`, `nomDeptF`, `adresseDeptF`, `mailDeptF`, `numTelephoneDeptF`) VALUES
(1, 'Nec LLP', '337-2719 Elit. St.', 'dui.Cum.sociis@magnisdis.co.uk', '01 98 66 62 57'),
(2, 'Sed Orci Lobortis Associates', 'P.O. Box 934, 1817 At, Street', 'non.lobortis.quis@aliquetmetusurna.net', '07 27 56 35 73'),
(3, 'Mus LLC', '8616 Ligula Road', 'sit.amet.nulla@Cum.com', '09 34 31 87 19'),
(4, 'Scelerisque LLP', '4148 Duis Ave', 'lectus@accumsansed.net', '04 66 69 73 89'),
(5, 'Curae; Phasellus Ltd', '5826 Vel St.', 'scelerisque.neque.sed@utdolor.com', '06 53 07 57 78'),
(6, 'Sem Incorporated', 'Ap #924-1228 Et St.', 'luctus.et.ultrices@elit.net', '01 18 85 41 58'),
(7, 'Luctus Vulputate Nisi Company', '831-7234 Erat Rd.', 'pharetra.sed@arcuvelquam.com', '06 12 89 91 41'),
(8, 'Tellus Id Nunc Ltd', 'P.O. Box 543, 9371 Tempor Avenue', 'eu.metus.In@turpisnecmauris.co.uk', '06 33 85 48 65'),
(9, 'Odio LLC', 'P.O. Box 605, 3851 Nec St.', 'non.cursus@bibendumfermentummetus.edu', '02 21 03 20 79'),
(10, 'Praesent Incorporated', '794-6960 Aliquet Rd.', 'fermentum@eumetusIn.co.uk', '02 40 54 89 04');

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `idEmploye` int(100) NOT NULL,
  `nomE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `prenomE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mailE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numTelephoneE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pseudoLinkdin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `AncienEtudiant` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `idEntreprise` int(100) NOT NULL,
  `idCours` int(100) NOT NULL,
  `idConference` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`idEmploye`, `nomE`, `prenomE`, `mailE`, `numTelephoneE`, `pseudoLinkdin`, `AncienEtudiant`, `idEntreprise`, `idCours`, `idConference`) VALUES
(1, 'Mckee', 'Hollee', 'Aliquam.rutrum.lorem@ornare.com', '09 07 51 61 25', 'www.linkedin.com/in.', 'True', 14, 2, 1),
(2, 'Bright', 'Tiger', 'Maecenas.mi.felis@diameudolor.edu', '02 86 39 85 18', 'www.linkedin.com/in.', 'True', 18, 2, 1),
(3, 'White', 'Denton', 'lobortis.Class.aptent@VivamusrhoncusDonec.ca', '06 74 13 22 89', 'www.linkedin.com/in.', 'False', 1, 17, 1),
(4, 'Mathis', 'Melyssa', 'elit@fringilla.com', '05 25 05 84 40', 'www.linkedin.com/in.', 'False', 10, 11, 1),
(5, 'Todd', 'Zelda', 'tincidunt.tempus@orci.co.uk', '02 94 46 01 28', 'www.linkedin.com/in.', 'False', 14, 15, 1),
(6, 'Barrera', 'Ivor', 'rutrum.Fusce@ridiculusmusDonec.edu', '05 16 64 08 81', 'www.linkedin.com/in.', 'False', 18, 20, 2),
(7, 'Casey', 'Kirk', 'tempor@consectetueradipiscing.org', '04 10 90 01 70', 'www.linkedin.com/in.', 'False', 4, 7, 2),
(8, 'Velazquez', 'Phyllis', 'purus.sapien@loremfringilla.net', '07 95 88 20 07', 'www.linkedin.com/in.', 'False', 9, 15, 1),
(9, 'Durham', 'Cailin', 'vel.faucibus@infaucibus.org', '03 95 58 82 71', 'www.linkedin.com/in.', 'True', 9, 5, 1),
(10, 'Underwood', 'Kamal', 'eu.accumsan@felisegetvarius.edu', '06 09 45 78 86', 'www.linkedin.com/in.', 'False', 13, 5, 1),
(22, 'Leguay', 'Bastian', 'azd@gmail.com', '07 91 91 91 91', 'www.linkdin', 'True', 21, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `idEntreprise` int(100) NOT NULL,
  `nomET` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `denomination` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `adresseEt` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numTelephoneEt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `secteurActivite` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idDeptFormation` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `entreprise`
--

INSERT INTO `entreprise` (`idEntreprise`, `nomET`, `denomination`, `adresseEt`, `numTelephoneEt`, `secteurActivite`, `idDeptFormation`) VALUES
(1, 'Nulla Integer Vulputate Incorporated', 'SAS', 'Appartement 287-1908 Proin Ave', '03 94 75 20 04', 'Recherche et Développement', 7),
(2, 'Libero Corporation', 'SAS', '4295 Sodales Ave', '08 71 90 98 42', 'Comptables', 10),
(3, 'Nec Orci Donec Corp.', 'SA', '123-3152 Pharetra Avenue', '02 82 98 23 26', 'Comptables', 2),
(4, 'Et Pede Inc.', 'SARL', '541-2879 Ut Rd.', '02 37 99 58 16', 'Relations publiques', 2),
(5, 'Sed Dolor Associates', 'SNC ', 'CP 577, 9282 Natoque Rd.', '08 45 78 99 54', 'Assurance qualité', 2),
(6, 'Et Company', 'SA', '4726 Ultrices. Rue', '09 04 41 65 15', 'Juridique', 9),
(7, 'Tellus Consulting', 'SA', 'CP 478, 4675 Eget Rd.', '03 03 24 18 94', 'Paie', 6),
(8, 'Suscipit Est Ac PC', 'SA', 'CP 504, 1808 Id Rd.', '06 53 36 80 19', 'Recherche et Développement', 3),
(9, 'Pellentesque Sed Corporation', 'SAS', 'CP 927, 2690 Mauris Rue', '08 40 57 27 61', 'Finances', 1),
(10, 'Quis Tristique Ac PC', 'SA', '7901 Ac Ave', '05 33 80 04 57', 'Relations clientèle', 7),
(11, 'Ultrices Sit Company', 'SNC ', 'Appartement 468-193 Nunc Ave', '06 64 69 41 16', 'Juridique', 5),
(12, 'Mi Pede Nonummy Consulting', 'SA', '999-7111 Ante. Av.', '05 04 50 73 84', 'Ventes et marketing', 8),
(13, 'Lacus Corp.', 'SAS', '7737 Lorem Rd.', '05 23 43 39 93', 'Support technique', 9),
(14, 'Semper Egestas Associates', 'EURL', '214-1895 Ullamcorper Av.', '06 11 16 45 55', 'Relations publiques', 2),
(15, 'Massa LLP', 'EURL', 'CP 234, 7716 Nunc. Ave', '09 02 11 33 37', 'Assurance qualité', 9),
(16, 'Parturient Montes Nascetur Inc.', 'SAS', '788-5328 Tortor Ave', '04 96 26 13 92', 'Juridique', 3),
(17, 'Quisque Ornare Tortor Limited', 'EURL', '949-7421 Velit. Rue', '03 05 21 20 81', 'Relations publiques', 4),
(18, 'Suspendisse Consulting', 'SA', 'CP 760, 5510 Nec Rd.', '08 91 91 06 32', 'Relations clientèle', 1),
(19, 'Nunc Mauris Morbi Corp.', 'SNC ', '958-5022 Rhoncus. Impasse', '07 63 05 29 70', 'Relations presse', 10),
(20, 'Aliquam Erat Volutpat PC', 'SAS', '866 Eget Rd.', '02 76 40 58 72', 'Ressources Humaines', 1),
(21, 'Bonjour', 'SAS', '6 rue', '06 66 66 66 66', 'Boulangerie', 1),
(22, 'BonneNuit', 'ZZZ', 'Oreillee', '06 60 60 60 60', 'Lit', 1),
(23, 'Commetuveuxvasytkt', 'SA', 'Vendome', '06 07 08 09 10', 'Rien', 2),
(24, 'Azerty', 'SAS', 'Tours', '06 06 06 06 06', 'Etude', 1);

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `idEvenement` int(100) NOT NULL,
  `dateEv` date NOT NULL,
  `lieu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idDeptFormation` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `evenement`
--

INSERT INTO `evenement` (`idEvenement`, `dateEv`, `lieu`, `type`, `idDeptFormation`) VALUES
(1, '2020-07-15', '9985 Nam Chemin', 'Porte ouverte', 9),
(2, '2020-08-02', 'CP 303, 106 Adipiscing Avenue', 'Séminaire', 9),
(3, '2021-04-15', '982-5807 Non, Impasse', 'Le lancement de produit', 2),
(4, '2020-05-26', '6461 Et Rue', 'Porte ouverte', 1),
(5, '2020-06-30', '980-1171 Faucibus Chemin', 'Conférence et congrès', 6),
(6, '2020-06-12', 'CP 870, 5043 Vehicula. Rue', 'Séminaire', 10),
(7, '2021-01-23', 'Appartement 277-6053 Velit Avenue', 'Conférence et congrès', 7),
(8, '2020-11-10', 'Appartement 345-2003 Lorem Avenue', 'Porte ouverte', 9),
(9, '2021-12-07', '445-2269 Facilisis Avenue', ' Journée d’étude', 8),
(10, '2020-04-28', '847-8478 Eget Ave', 'Salon et exposition', 3);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `idFiliere` int(100) NOT NULL,
  `nomFiliere` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idDeptFormation` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `filiere`
--

INSERT INTO `filiere` (`idFiliere`, `nomFiliere`, `idDeptFormation`) VALUES
(1, 'Les langues', 2),
(2, 'Théologie', 6),
(3, 'Économie-gestion', 3),
(4, 'Sciences de l\'ingénieur', 8),
(5, 'Hôtellerie et Restauration', 3),
(6, 'Médecine', 10),
(7, 'Sciences humaines et sociales', 10),
(8, 'Sciences', 4),
(9, 'Droit', 8),
(10, 'Mathématiques', 1),
(11, 'Droit et sciences politiques', 8),
(12, 'Économie', 4),
(13, 'Gestion', 6);

-- --------------------------------------------------------

--
-- Structure de la table `intervenant`
--

CREATE TABLE `intervenant` (
  `idIntervenant` int(100) NOT NULL,
  `nomI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `prenomI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `qualification` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idDeptFormation` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `intervenant`
--

INSERT INTO `intervenant` (`idIntervenant`, `nomI`, `prenomI`, `qualification`, `idDeptFormation`) VALUES
(1, 'Ross', 'Martena', 'Asset Management', 7),
(2, 'Fitzgerald', 'Ross', 'Relations publiques', 4),
(3, 'Cross', 'Joseph', 'Relations clientèle', 6),
(4, 'Riggs', 'Quinn', 'Recherche et Développement', 3),
(5, 'Marks', 'Hilel', 'Publicité', 9),
(6, 'Kirkland', 'Melissa', 'Relations clientèle', 3),
(7, 'Grimes', 'Troy', 'Ventes et marketing', 3),
(8, 'Battle', 'Nayda', 'Relations publiques', 9),
(9, 'Golden', 'Fitzgerald', 'Service clientèle', 4),
(10, 'Mullen', 'MacKenzie', 'Relations presse', 8),
(11, 'Smith', 'Axel', 'Linux', 3),
(12, 'Charpentier', 'Dorian', 'Communication', 10),
(13, 'Leguay', 'Bastian', 'Java', 3);

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `idMatiere` int(100) NOT NULL,
  `nomMatiere` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `anneeM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idFiliere` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `matiere`
--

INSERT INTO `matiere` (`idMatiere`, `nomMatiere`, `anneeM`, `idFiliere`) VALUES
(1, 'Anglais', '1', 1),
(2, 'génie culinaire', '1', 5),
(3, 'algèbre', '1', 10),
(4, 'calcul différentiel et intégral', '2', 10),
(5, 'Electronique-Energie électrique et Automatique', '1', 4),
(6, 'Espagnol', '1', 1),
(7, 'Mercatique', '3', 11),
(8, 'Japonais', '1', 1),
(9, 'finance appliquée', '5', 12),
(10, 'gestion hôtelière', '1', 5),
(11, 'Ingénierie et Maintenance des Systèmes pour l\'Aéronautique et les Transports', '3', 4),
(12, 'droit pénal', '1', 9),
(13, 'Droit des régimes matrimoniaux', '4', 9),
(14, 'Macroéconomie', '3', 3),
(15, 'Chimie et biochimie', '1', 6),
(16, 'Art culinaire', '2', 5),
(17, 'Statistiques', '2', 10),
(18, 'Anatomie', '1', 6),
(19, 'Ressources humaines', '1', 13),
(20, 'microéconomique', '4', 12),
(21, 'Anglais', '1', 1),
(22, 'génie culinaire', '1', 5),
(23, 'algèbre', '1', 10),
(24, 'calcul différentiel et intégral', '2', 10),
(25, 'Electronique-Energie électrique et Automatique', '1', 4),
(26, 'Espagnol', '1', 1),
(27, 'Mercatique', '3', 11),
(28, 'Japonais', '1', 1),
(29, 'finance appliquée', '5', 12),
(30, 'gestion hôtelière', '1', 5),
(31, 'Ingénierie et Maintenance des Systèmes pour l\'Aéronautique et les Transports', '3', 4),
(32, 'droit pénal', '1', 9),
(33, 'Droit des régimes matrimoniaux', '4', 9),
(34, 'Macroéconomie', '3', 3),
(35, 'Chimie et biochimie', '1', 6),
(36, 'Art culinaire', '2', 5),
(37, 'Statistiques', '2', 10),
(38, 'Anatomie', '1', 6),
(39, 'Ressources humaines', '1', 13),
(40, 'microéconomique', '4', 12);

-- --------------------------------------------------------

--
-- Structure de la table `participer`
--

CREATE TABLE `participer` (
  `idEvenement` int(100) NOT NULL,
  `idEntreprise` int(100) NOT NULL,
  `estPresent` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `participer`
--

INSERT INTO `participer` (`idEvenement`, `idEntreprise`, `estPresent`) VALUES
(4, 14, 'True'),
(6, 16, 'True'),
(5, 3, 'True'),
(2, 14, 'False'),
(2, 1, 'True'),
(5, 2, 'True'),
(7, 1, 'False'),
(2, 13, 'False'),
(3, 4, 'True'),
(2, 1, 'False');

-- --------------------------------------------------------

--
-- Structure de la table `siteweb`
--

CREATE TABLE `siteweb` (
  `idSite` int(100) NOT NULL,
  `LienSite` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idEntreprise` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `siteweb`
--

INSERT INTO `siteweb` (`idSite`, `LienSite`, `idEntreprise`) VALUES
(1, 'https://jacksonpollock.org', 12),
(2, 'https://smashthewalls.com', 5),
(3, 'http://www.koalastothemax.com', 1);

-- --------------------------------------------------------

--
-- Structure de la table `stagiaire`
--

CREATE TABLE `stagiaire` (
  `idStagiaire` int(11) NOT NULL,
  `nomS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `prenomS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `niveauEtudeS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `duree` time NOT NULL,
  `typeMission` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mailS` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telephoneS` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `parcoursUniversitaireS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idEntreprise` int(100) NOT NULL,
  `idCours` int(100) NOT NULL,
  `idConference` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `stagiaire`
--

INSERT INTO `stagiaire` (`idStagiaire`, `nomS`, `prenomS`, `niveauEtudeS`, `duree`, `typeMission`, `mailS`, `telephoneS`, `parcoursUniversitaireS`, `idEntreprise`, `idCours`, `idConference`) VALUES
(11, 'Bradford', 'Destiny', 'D3', '00:00:02', 'Formation', 'senectus@eratinconsectetuer.com', '01 19 96 94 42', 'a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus', 2, 17, 1),
(12, 'Snyder', 'Ali', 'D1', '00:00:05', 'Formation', 'Sed.malesuada@temporarcuVestibulum.org', '09 82 65 83 57', 'nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut', 7, 19, 2),
(13, 'Pate', 'Yolanda', 'M2', '00:00:20', 'Formation', 'gravida.sagittis@quismassaMauris.co.uk', '04 52 20 66 89', 'parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.', 8, 10, 2),
(14, 'Osborn', 'Leilani', 'D1', '00:00:50', 'Stage Universitaire', 'lacus@tellus.edu', '08 54 84 34 60', 'lectus convallis est, vitae sodales nisi magna sed dui. Fusce', 10, 16, 1),
(15, 'Logan', 'Hilel', 'L3', '00:00:30', 'Formation', 'enim.consequat@risusNullaeget.ca', '09 03 51 99 34', 'euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur', 8, 4, 1),
(16, 'Padilla', 'Tatum', 'D3', '00:00:10', 'Formation', 'dapibus.gravida.Aliquam@lorem.co.uk', '01 83 09 64 55', 'ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit', 2, 2, 2),
(17, 'Eaton', 'Juliet', 'D3', '00:00:04', 'Stage Universitaire', 'metus@velarcu.edu', '01 97 28 14 46', 'sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 8, 10, 1),
(18, 'Burt', 'Dolan', 'D2', '00:00:50', 'Formation', 'senectus.et@Sedeu.edu', '01 80 71 05 38', 'mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.', 10, 14, 1),
(19, 'Mcdonald', 'Rahim', 'D1', '00:00:20', 'Stage Universitaire', 'erat.eget@libero.edu', '05 80 68 50 90', 'auctor, nunc nulla vulputate dui, nec tempus mauris erat eget', 10, 20, 2),
(20, 'Pope', 'Lydia', 'M1', '00:00:04', 'Recherche', 'molestie@ullamcorper.edu', '09 84 34 00 47', 'magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor', 10, 7, 2),
(21, 'Berry', 'Hanna', 'L2', '00:00:04', 'Stage Universitaire', 'sem.elit@adipiscing.edu', '01 39 79 55 74', 'amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus.', 3, 17, 2),
(22, 'Vaughn', 'Brady', 'L2', '00:00:05', 'Formation', 'Suspendisse.ac.metus@arcuVivamussit.edu', '03 29 10 12 14', 'pharetra, felis eget varius ultrices, mauris ipsum porta elit, a', 7, 1, 1),
(23, 'Fisher', 'Ginger', 'L3', '00:00:20', 'Recherche', 'varius.Nam.porttitor@cursusNunc.net', '06 01 84 57 82', 'lorem eu metus. In lorem. Donec elementum, lorem ut aliquam', 1, 13, 1),
(24, 'Long', 'Cade', 'L1', '00:00:02', 'Stage Universitaire', 'lobortis.ultrices@sociisnatoquepenatibus.co.uk', '05 58 21 48 31', 'pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus', 2, 2, 2),
(25, 'Doyle', 'Acton', 'L3', '00:00:02', 'Recherche', 'vel@turpisnon.edu', '05 65 44 05 55', 'imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit,', 7, 17, 2),
(26, 'Powers', 'Hanna', 'L3', '00:00:01', 'Stage Universitaire', 'aliquam@neccursusa.com', '08 66 72 70 33', 'senectus et netus et malesuada fames ac turpis egestas. Fusce', 6, 2, 2),
(27, 'Bowers', 'Barbara', 'D2', '00:00:05', 'Recherche', 'Cras.eget@lectusquismassa.org', '08 65 13 40 56', 'non justo. Proin non massa non ante bibendum ullamcorper. Duis', 6, 17, 1),
(28, 'Dyer', 'Noah', 'D3', '00:00:10', 'Stage Universitaire', 'quis.diam@risusvarius.com', '02 92 45 37 14', 'aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque', 3, 8, 2),
(29, 'Cain', 'Nell', 'M1', '00:00:01', 'Recherche', 'nunc.In@nuncsedlibero.com', '08 26 39 59 58', 'diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est', 2, 6, 2),
(30, 'Sweet', 'Ruth', 'M1', '00:00:04', 'Recherche', 'est.ac.mattis@mollisnon.org', '03 79 49 58 77', 'mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie', 10, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `taxeapprentissage`
--

CREATE TABLE `taxeapprentissage` (
  `numFacture` int(250) NOT NULL,
  `dateT` date NOT NULL,
  `somme` int(250) NOT NULL,
  `idDeptFormation` int(100) NOT NULL,
  `idEntreprise` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `taxeapprentissage`
--

INSERT INTO `taxeapprentissage` (`numFacture`, `dateT`, `somme`, `idDeptFormation`, `idEntreprise`) VALUES
(1, '2020-04-25', 286, 7, 2),
(2, '2020-07-25', 465, 8, 10),
(3, '2020-11-28', 672, 7, 5),
(4, '2021-02-14', 725, 1, 15),
(5, '2020-04-29', 184, 5, 3),
(6, '2021-05-14', 116, 6, 20),
(7, '2021-06-28', 574, 6, 17),
(8, '2021-10-22', 496, 10, 18),
(9, '2020-05-22', 597, 1, 18),
(10, '2020-05-06', 990, 8, 20);

-- --------------------------------------------------------

--
-- Structure de la table `themeconference`
--

CREATE TABLE `themeconference` (
  `idThemeConf` int(100) NOT NULL,
  `nomTheme` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `themeconference`
--

INSERT INTO `themeconference` (`idThemeConf`, `nomTheme`) VALUES
(1, 'Génie Logiciel'),
(2, 'Système D\'Exploitation'),
(5, 'Telecom'),
(6, 'Débuter en programmtion'),
(7, 'Cyber Sécurité'),
(8, 'Communication'),
(9, 'BigData'),
(10, 'Robotique'),
(11, 'Développement durable'),
(12, 'La transformation digitale'),
(13, 'L’intelligence artificielle'),
(14, 'Communication'),
(15, 'Diversité et Handicap'),
(16, 'L’esprit d’équipe'),
(17, 'La gestion du stress'),
(18, 'La performance');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `conference`
--
ALTER TABLE `conference`
  ADD PRIMARY KEY (`idConference`),
  ADD KEY `idIntervenant` (`idIntervenant`,`idThemeConf`),
  ADD KEY `idThemeConf` (`idThemeConf`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`idCours`),
  ADD KEY `idMatiere` (`idMatiere`,`idIntervenant`),
  ADD KEY `idIntervenant` (`idIntervenant`);

--
-- Index pour la table `departementdeformation`
--
ALTER TABLE `departementdeformation`
  ADD PRIMARY KEY (`idDeptFormation`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`idEmploye`),
  ADD KEY `idEntreprise` (`idEntreprise`),
  ADD KEY `idCours` (`idCours`),
  ADD KEY `idConference` (`idConference`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`idEntreprise`),
  ADD KEY `idDeptFormation` (`idDeptFormation`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`idEvenement`),
  ADD KEY `idDeptFormation` (`idDeptFormation`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`idFiliere`),
  ADD KEY `idDeptFormation` (`idDeptFormation`);

--
-- Index pour la table `intervenant`
--
ALTER TABLE `intervenant`
  ADD PRIMARY KEY (`idIntervenant`),
  ADD KEY `idDeptFormation` (`idDeptFormation`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`idMatiere`),
  ADD KEY `idFiliere` (`idFiliere`);

--
-- Index pour la table `participer`
--
ALTER TABLE `participer`
  ADD KEY `idEvenement` (`idEvenement`,`idEntreprise`),
  ADD KEY `idEntreprise` (`idEntreprise`);

--
-- Index pour la table `siteweb`
--
ALTER TABLE `siteweb`
  ADD PRIMARY KEY (`idSite`),
  ADD KEY `idEntreprise` (`idEntreprise`);

--
-- Index pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  ADD PRIMARY KEY (`idStagiaire`),
  ADD KEY `idConference` (`idConference`),
  ADD KEY `idCours` (`idCours`),
  ADD KEY `idEntreprise` (`idEntreprise`);

--
-- Index pour la table `taxeapprentissage`
--
ALTER TABLE `taxeapprentissage`
  ADD PRIMARY KEY (`numFacture`),
  ADD KEY `idDeptFormation` (`idDeptFormation`,`idEntreprise`),
  ADD KEY `idEntreprise` (`idEntreprise`);

--
-- Index pour la table `themeconference`
--
ALTER TABLE `themeconference`
  ADD PRIMARY KEY (`idThemeConf`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `conference`
--
ALTER TABLE `conference`
  MODIFY `idConference` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `idCours` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `departementdeformation`
--
ALTER TABLE `departementdeformation`
  MODIFY `idDeptFormation` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `idEmploye` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `idEntreprise` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `idEvenement` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `idFiliere` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `intervenant`
--
ALTER TABLE `intervenant`
  MODIFY `idIntervenant` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `idMatiere` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `siteweb`
--
ALTER TABLE `siteweb`
  MODIFY `idSite` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  MODIFY `idStagiaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `taxeapprentissage`
--
ALTER TABLE `taxeapprentissage`
  MODIFY `numFacture` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `themeconference`
--
ALTER TABLE `themeconference`
  MODIFY `idThemeConf` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `conference`
--
ALTER TABLE `conference`
  ADD CONSTRAINT `Clé6` FOREIGN KEY (`idIntervenant`) REFERENCES `intervenant` (`idIntervenant`),
  ADD CONSTRAINT `Clé7` FOREIGN KEY (`idThemeConf`) REFERENCES `themeconference` (`idThemeConf`);

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `Clé4` FOREIGN KEY (`idMatiere`) REFERENCES `matiere` (`idMatiere`),
  ADD CONSTRAINT `Clé5` FOREIGN KEY (`idIntervenant`) REFERENCES `intervenant` (`idIntervenant`);

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`idEntreprise`) REFERENCES `entreprise` (`idEntreprise`),
  ADD CONSTRAINT `employe_ibfk_2` FOREIGN KEY (`idCours`) REFERENCES `cours` (`idCours`),
  ADD CONSTRAINT `employe_ibfk_3` FOREIGN KEY (`idConference`) REFERENCES `conference` (`idConference`);

--
-- Contraintes pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD CONSTRAINT `Clé9` FOREIGN KEY (`idDeptFormation`) REFERENCES `departementdeformation` (`idDeptFormation`);

--
-- Contraintes pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD CONSTRAINT `Clé8` FOREIGN KEY (`idDeptFormation`) REFERENCES `departementdeformation` (`idDeptFormation`);

--
-- Contraintes pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD CONSTRAINT `Clé2` FOREIGN KEY (`idDeptFormation`) REFERENCES `departementdeformation` (`idDeptFormation`);

--
-- Contraintes pour la table `intervenant`
--
ALTER TABLE `intervenant`
  ADD CONSTRAINT `Clé1` FOREIGN KEY (`idDeptFormation`) REFERENCES `departementdeformation` (`idDeptFormation`);

--
-- Contraintes pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD CONSTRAINT `Clé3` FOREIGN KEY (`idFiliere`) REFERENCES `filiere` (`idFiliere`);

--
-- Contraintes pour la table `participer`
--
ALTER TABLE `participer`
  ADD CONSTRAINT `Clé12` FOREIGN KEY (`idEvenement`) REFERENCES `evenement` (`idEvenement`),
  ADD CONSTRAINT `Clé13` FOREIGN KEY (`idEntreprise`) REFERENCES `entreprise` (`idEntreprise`);

--
-- Contraintes pour la table `siteweb`
--
ALTER TABLE `siteweb`
  ADD CONSTRAINT `Clé14` FOREIGN KEY (`idEntreprise`) REFERENCES `entreprise` (`idEntreprise`);

--
-- Contraintes pour la table `stagiaire`
--
ALTER TABLE `stagiaire`
  ADD CONSTRAINT `Clé15` FOREIGN KEY (`idEntreprise`) REFERENCES `entreprise` (`idEntreprise`),
  ADD CONSTRAINT `Clé16` FOREIGN KEY (`idCours`) REFERENCES `cours` (`idCours`),
  ADD CONSTRAINT `Clé17` FOREIGN KEY (`idConference`) REFERENCES `conference` (`idConference`);

--
-- Contraintes pour la table `taxeapprentissage`
--
ALTER TABLE `taxeapprentissage`
  ADD CONSTRAINT `Clé10` FOREIGN KEY (`idDeptFormation`) REFERENCES `departementdeformation` (`idDeptFormation`),
  ADD CONSTRAINT `Clé11` FOREIGN KEY (`idEntreprise`) REFERENCES `entreprise` (`idEntreprise`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
