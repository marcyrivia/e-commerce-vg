-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 12 déc. 2023 à 15:38
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jeuxvideos`
--

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `AVIS_ID` int NOT NULL,
  `AVIS_CLIENTS` varchar(50) DEFAULT NULL,
  `AVIS_NOTE` int DEFAULT NULL,
  `G_ID` int NOT NULL,
  `CLIENT_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `CAT_ID` int NOT NULL,
  `CAT_TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`CAT_ID`, `CAT_TYPE`) VALUES
(1, 'Aventure'),
(2, 'RPG'),
(3, 'Plateforme'),
(4, 'FPS'),
(5, 'MMORPG'),
(6, 'Horreur'),
(7, 'MOBA'),
(8, 'Hack\'n Slash'),
(9, 'Combat'),
(10, 'Sport'),
(11, 'Monde ouvert'),
(12, 'Solo'),
(13, 'Multijoueur'),
(14, 'Solo/Multijoueur');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `CLIENT_ID` int NOT NULL,
  `CLIENT_ADRESSE_FACT` varchar(50) DEFAULT NULL,
  `CLIENT_ADRESSE_LIVR` varchar(50) DEFAULT NULL,
  `CLIENT_LASTNAME` varchar(50) DEFAULT NULL,
  `CLIENT_FIRSTNAME` varchar(50) DEFAULT NULL,
  `CLIENT_MAIL` varchar(50) DEFAULT NULL,
  `CLIENT_ADRESSE` varchar(50) DEFAULT NULL,
  `CLIENT_PHONE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`CLIENT_ID`, `CLIENT_ADRESSE_FACT`, `CLIENT_ADRESSE_LIVR`, `CLIENT_LASTNAME`, `CLIENT_FIRSTNAME`, `CLIENT_MAIL`, `CLIENT_ADRESSE`, `CLIENT_PHONE`) VALUES
(1, '1 Rue Principale', '1 Rue Principale', 'Dupont', 'Alice', 'alice.dupont@email.com', '1 Rue Principale', '06 12 34 56 78'),
(2, '25 Avenue des Fleurs', '25 Avenue des Fleurs', 'Martin', 'Paul', 'paul.martin@email.com', '25 Avenue des Fleurs', '07 98 76 54 32'),
(3, '8 Rue de la Mairie', '8 Rue de la Mairie', 'Lefevre', 'Pierre', 'pierre.lefevre@email.com', '8 Rue de la Mairie', '01 23 45 67 89'),
(4, '10 Place du Marché', '7 Rue des Commerces', 'Dubois', 'Sophie', 'sophie.dubois@email.com', '10 Place du Marché', '06 12 34 56 78'),
(5, '6 Rue Victor Hugo', '15 Avenue Carnot', 'Thomas', 'Isabelle', 'isabelle.thomas@email.com', '6 Rue Victor Hugo', '07 98 76 54 32'),
(6, '14 Rue de la Poste', '22 Boulevard Pasteur', 'Lefevre', 'Charlotte', 'charlotte.lefevre@email.com', '14 Rue de la Poste', '01 23 45 67 89'),
(7, '5 Avenue des Arts', '5 Avenue des Arts', 'Dupuis', 'Luc', 'luc.dupuis@email.com', '5 Avenue des Arts', '06 12 34 56 78'),
(8, '30 Rue des Champs', '30 Rue des Champs', 'Girard', 'Alexandre', 'alexandre.girard@email.com', '30 Rue des Champs', '07 98 76 54 32'),
(9, '12 Rue de la Fontaine', '12 Rue de la Fontaine', 'Lambert', 'Marie', 'marie.lambert@email.com', '12 Rue de la Fontaine', '01 23 45 67 89'),
(10, '3 Place des Étoiles', '3 Place des Étoiles', 'Roux', 'Julie', 'julie.roux@email.com', '3 Place des Étoiles', '06 12 34 56 78'),
(11, '9 Boulevard Saint-Exupéry', '9 Boulevard Saint-Exupéry', 'Morin', 'Étienne', 'etienne.morin@email.com', '9 Boulevard Saint-Exupéry', '07 98 76 54 32'),
(12, '17 Rue de la Libération', '11 Avenue des Roses', 'Bertrand', 'Nicolas', 'nicolas.bertrand@outlook.com', '17 Rue de la Libération', '01 23 45 67 89'),
(13, '22 Avenue de Gaulle', '6 Rue Victor Hugo', 'Legrand', 'Sophie', 'sophie.legrand@gmail.com', '22 Avenue de Gaulle', '06 12 34 56 78'),
(14, '7 Rue du Commerce', '14 Rue des Lilas', 'Fournier', 'Antoine', 'antoine.fournier@outlook.com', '7 Rue du Commerce', '07 98 76 54 32'),
(15, '19 Boulevard Carnot', '8 Rue du Faubourg', 'Rousseau', 'Claire', 'claire.rousseau@gmail.com', '19 Boulevard Carnot', '01 23 45 67 89'),
(16, '13 Avenue Foch', '20 Rue de la Paix', 'Moreau', 'Hélène', 'helene.moreau@outlook.com', '13 Avenue Foch', '06 12 34 56 78');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `COM_ID` int NOT NULL,
  `COM_LIVRAISON` varchar(50) DEFAULT NULL,
  `CLIENT_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `FOUR_ID` int NOT NULL,
  `FOUR_MAIL` varchar(50) DEFAULT NULL,
  `FOUR_ADRESSE` varchar(50) DEFAULT NULL,
  `FOUR_PHONE` varchar(50) DEFAULT NULL,
  `FOUR_ADRESSE_FAC` varchar(50) DEFAULT NULL,
  `FOUR_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`FOUR_ID`, `FOUR_MAIL`, `FOUR_ADRESSE`, `FOUR_PHONE`, `FOUR_ADRESSE_FAC`, `FOUR_NAME`) VALUES
(1, 'fournisseur1@example.com', '123 Rue Fournisseur 1', '123-456-7890', 'Adresse Facturation 1', 'Fournisseur 1'),
(2, 'fournisseur2@example.com', '456 Rue Fournisseur 2', '234-567-8901', 'Adresse Facturation 2', 'Fournisseur 2'),
(3, 'fournisseur3@example.com', '789 Rue Fournisseur 3', '345-678-9012', 'Adresse Facturation 3', 'Fournisseur 3'),
(4, 'fournisseur4@example.com', '012 Rue Fournisseur 4', '456-789-0123', 'Adresse Facturation 4', 'Fournisseur 4'),
(5, 'fournisseur5@example.com', '345 Rue Fournisseur 5', '567-890-1234', 'Adresse Facturation 5', 'Fournisseur 5'),
(6, 'fournisseur6@example.com', '678 Rue Fournisseur 6', '678-901-2345', 'Adresse Facturation 6', 'Fournisseur 6'),
(7, 'fournisseur7@example.com', '901 Rue Fournisseur 7', '789-012-3456', 'Adresse Facturation 7', 'Fournisseur 7'),
(8, 'fournisseur8@example.com', '234 Rue Fournisseur 8', '890-123-4567', 'Adresse Facturation 8', 'Fournisseur 8');

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

CREATE TABLE `games` (
  `G_ID` int NOT NULL,
  `G_TITLE` varchar(50) NOT NULL,
  `G_PRICES` varchar(50) DEFAULT NULL,
  `G_DESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `G_QUANTITE` int DEFAULT NULL,
  `G_IMAGE` varchar(150) DEFAULT NULL,
  `FOUR_ID` int NOT NULL,
  `G_published_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `games`
--

INSERT INTO `games` (`G_ID`, `G_TITLE`, `G_PRICES`, `G_DESCRIPTION`, `G_QUANTITE`, `G_IMAGE`, `FOUR_ID`, `G_published_at`) VALUES
(2, 'League Of Legends', '0€', 'League of Legends est un jeu en ligne compétitif et rapide qui allie la vitesse et l\'intensité d\'un RTS avec des éléments de RPG. Deux équipes de puissants champions s\'affrontent sur plusieurs champs de bataille et modes de jeu.', 100, 'LeagueOfLegends.jpg', 1, '2009-10-27'),
(3, 'Dark Souls Remaster', '40€', 'Un action-RPG et une suite spirituelle de Demon\'s Souls dans lequel le joueur incarne le Chosen Undead, chargé d\'accomplir une ancienne prophétie en sonnant les cloches de l\'éveil', 1300, 'DarkSouls.jpg', 2, '2018-05-23'),
(4, 'BloodBorne', '19.99€', 'Un RPG d\'action dans lequel le joueur incarne un Chasseur qui, après avoir reçu le sang mystérieux local de la ville de Yharnam, se lance dans une \'nuit de la Chasse\'', 1300, 'Bloodborne.jpg', 2, '2015-03-24'),
(5, 'Red Dead Redemption 2', '19.99€', 'Red Dead Redemption 2 est l\'histoire épique du hors-la-loi Arthur Morgan et du tristement célèbre gang Van der Linde, en fuite à travers l\'Amérique à l\'aube de l\'ère moderne.', 1300, 'RedDeadRedemption.jpg', 3, '2018-10-26'),
(6, 'Grand Theft Auto V', '29.99€', 'Grand Theft Auto V met en scène trois criminels interconnectés qui effectuent des braquages audacieux à Los Santos, une vaste métropole fictive inspirée de Los Angeles.', 1300, 'GTAV.jpg', 3, '2013-09-17'),
(7, 'The Evil Within 1', '24.99€', 'The Evil Within est un survival horror à la troisième personne dans lequel le détective Sebastian Castellanos enquête sur une série de meurtres mystérieux et se retrouve piégé dans un monde cauchemardesque.', 1000, 'TheEvilWithin.jpg', 4, '2014-10-14'),
(8, 'Hi-Fi Rush', '14.99€', 'Hi-Fi Rush est un jeu de course effréné avec une bande-son énergique. Les joueurs peuvent personnaliser leurs véhicules et affronter d\'autres pilotes dans des courses palpitantes à travers des environnements variés.', 800, 'HiFiRush.jpg', 4, '2021-06-25'),
(9, 'The Last of Us 1', '34.99€', 'The Last of Us est un jeu d\'action-aventure se déroulant dans un monde post-apocalyptique. Il suit Joel et Ellie, deux survivants, alors qu\'ils voyagent à travers des environnements dangereux et affrontent des menaces hostiles.', 1200, 'TheLastOfUs.jpg', 5, '2013-06-14'),
(10, 'Uncharted 4', '39.99€', 'Uncharted 4: A Thief\'s End suit Nathan Drake, le chasseur de trésors, dans sa dernière aventure épique à travers le monde. Le jeu combine l\'action, l\'exploration et le récit cinématographique propre à la série Uncharted.', 1000, 'Uncharted4.jpg', 5, '2016-05-10'),
(11, 'Cyberpunk 2077', '49.99€', 'Cyberpunk 2077 est un jeu de rôle en monde ouvert se déroulant dans la ville futuriste de Night City. Les joueurs incarnent V, un mercenaire en quête d\'immortalité, et explorent un monde riche en intrigue et en danger.', 800, 'Cyberpunk2077.jpg', 6, '2020-12-10'),
(12, 'The Witcher III', '29.99€', 'The Witcher III: Wild Hunt est un RPG d\'action épique dans lequel Geralt de Riv, le chasseur de monstres, poursuit sa quête pour retrouver sa fille adoptive, Ciri, tout en affrontant des créatures mythiques et des ennemis redoutables.', 1200, 'TheWitcherIII.jpg', 6, '2015-05-19'),
(13, 'The Legend of Zelda: Twilight Princess', '39.99€', 'The Legend of Zelda: Twilight Princess est un jeu d\'action-aventure où Link se transforme en loup-garou pour sauver le royaume du crépuscule. Il explore des donjons, résout des énigmes et combat des ennemis dans une quête épique.', 1000, 'ZeldaTwilightPrincess.jpg', 7, '2006-11-19'),
(14, 'Super Mario Bros. Wii', '19.99€', 'Super Mario Bros. Wii propose une aventure de plateforme classique où Mario et ses amis doivent sauver la princesse Peach du méchant Bowser. Les joueurs peuvent jouer en solo ou en multijoueur avec jusqu\'à quatre joueurs.', 7, 'SuperMarioBrosWii.jpg', 8, '2009-11-15'),
(95, 'Halo Infinite', '59.99€', 'Halo Infinite est un jeu de tir à la première personne de la franchise Halo. Les joueurs incarnent le Master Chief dans une nouvelle aventure épique contre les forces du Covenant et découvrent de nouveaux mondes.', 1300, 'HaloInfinite.jpg', 8, '2021-12-08'),
(96, 'Halo: The Master Chief Collection', '49.99€', 'Halo: The Master Chief Collection propose une compilation des principaux titres de la série Halo remasterisés pour les nouvelles plateformes. Les joueurs peuvent revivre les moments clés de l\'histoire du Master Chief.', 1300, 'HaloMCC.jpg', 8, '2014-11-11'),
(97, 'Minecraft', '26.99€', 'Minecraft est un jeu de construction et d\'aventure où les joueurs explorent un monde ouvert, récoltent des ressources et construisent des structures. Le jeu offre une créativité infinie et la possibilité de jouer en mode survie ou créatif.', 1300, 'Minecraft.jpg', 7, '2011-11-18'),
(98, 'Minecraft Dungeons', '19.99€', 'Minecraft Dungeons est un jeu d\'action-aventure inspiré de l\'univers Minecraft. Les joueurs explorent des donjons générés de manière aléatoire, combattent des monstres et collectent des trésors dans un style coopératif.', 1300, 'MinecraftDungeons.jpg', 7, '2020-05-26'),
(99, 'The Elder Scrolls V: Skyrim', '39.99€', 'The Elder Scrolls V: Skyrim est un RPG en monde ouvert épique. Les joueurs explorent la province de Skyrim, accomplissent des quêtes, maîtrisent des compétences et se lancent dans des aventures épiques.', 1300, 'Skyrim.jpg', 3, '2011-11-11'),
(100, 'Fallout 4', '29.99€', 'Fallout 4 est un RPG post-apocalyptique où les joueurs explorent les terres désolées de Boston. Avec une histoire captivante, des choix moraux et la possibilité de construire des colonies, le jeu offre une expérience immersive.', 1300, 'Fallout4.jpg', 3, '2015-11-10'),
(101, 'Call of Duty: Warzone', '0.00€', 'Warzone est un jeu de tir battle royale gratuit. Les joueurs s\'affrontent dans une carte immense.', 1300, 'Warzone.jpg', 2, '2020-03-10'),
(102, 'World of Warcraft', '14.99€', 'World of Warcraft est un MMORPG où les joueurs explorent le monde d\'Azeroth, accomplissent des quêtes, combattent des monstres et interagissent avec d\'autres joueurs. Avec des extensions régulières, le jeu offre une expérience persistante.', 1300, 'WoW.jpg', 2, '2004-11-23'),
(103, 'Assassin\'s Creed Valhalla', '49.99€', 'Assassin\'s Creed Valhalla transporte les joueurs dans l\'âge des Vikings. Ils incarnent Eivor, un guerrier viking, explorant l\'Angleterre, construisant des colonies et participant à des combats épiques.', 1300, 'ACValhalla.jpg', 1, '2020-11-10'),
(104, 'Far Cry 6', '59.99€', 'Far Cry 6 plonge les joueurs dans une île tropicale sous le joug d\'un dictateur. En tant que résistant, ils doivent utiliser des tactiques guérilla, recruter des alliés et libérer la nation de l\'oppression.', 1300, 'FarCry6.jpg', 1, '2021-10-07'),
(105, 'BioShock Infinite', '29.99€', 'BioShock Infinite est un FPS immersif où les joueurs explorent la ville flottante de Columbia. Avec une histoire complexe, des pouvoirs surnaturels et des choix moraux, le jeu offre une expérience narrative captivante.', 1300, 'BioShockInfinite.jpg', 4, '2013-03-26'),
(106, 'System Shock', '19.99€', 'System Shock est un classique de la science-fiction qui a inspiré de nombreux jeux modernes. Les joueurs se battent contre une intelligence artificielle défaillante à bord d\'une station spatiale cyberpunk, résolvant des énigmes et améliorant leurs compétences.', 1300, 'SystemShock.jpg', 4, '1994-09-23'),
(107, 'Dishonored 2', '39.99€', 'Dishonored 2 offre une expérience d\'infiltration dans un monde steampunk. Les joueurs peuvent choisir entre deux personnages avec des pouvoirs surnaturels, tandis qu\'ils se vengent dans une ville dystopique.', 1300, 'Dishonored2.jpg', 5, '2016-11-11'),
(108, 'Prey', '29.99€', 'Prey plonge les joueurs dans un thriller de science-fiction où la station spatiale Talos I est envahie par des extraterrestres. Avec des pouvoirs et des armes, ils doivent survivre et résoudre les mystères de l\'invasion extraterrestre.', 1300, 'Prey2017.jpg', 5, '2017-05-05'),
(109, 'Monster Hunter: World', '39.99€', 'Monster Hunter: World invite les joueurs à chasser des monstres épiques dans des environnements ouverts. Avec des armes variées, une personnalisation poussée et un multijoueur coopératif, le jeu offre une expérience de chasse captivante.', 1300, 'MonsterHunterWorld.jpg', 6, '2018-01-26'),
(110, 'Resident Evil Village', '49.99€', 'Resident Evil Village est un survival horror où les joueurs incarnent Ethan Winters explorant un village mystérieux. Avec des horreurs surnaturelles, des énigmes et des combats intenses, le jeu offre une expérience terrifiante.', 1300, 'ResidentEvilVillage.jpg', 6, '2021-05-07'),
(111, 'A Way Out', '29.99€', 'A Way Out est un jeu d\'action-aventure en coopération où deux joueurs s\'échappent d\'une prison et se lancent dans une aventure palpitante. Les joueurs doivent coopérer étroitement pour surmonter les obstacles et atteindre la liberté.', 1300, 'AWayOut.jpg', 3, '2018-03-23'),
(112, 'It Takes Two', '39.99€', 'It Takes Two est un jeu d\'aventure coopératif qui suit les aventures de deux poupées vivantes, Cody et May. Avec des énigmes créatives et des environnements uniques, le jeu offre une expérience coopérative unique.', 1300, 'ItTakesTwo.jpg', 3, '2021-03-26'),
(113, 'Valorant', '0€', 'Valorant est un jeu de tir tactique 5v5 basé sur des personnages et se déroulant sur la scène mondiale. Déjouez, surpassez et éclipsez vos concurrents grâce à des capacités tactiques, un jeu de tir précis et un travail d\'équipe adaptatif.', 1300, 'Valorant.jpg', 1, '2020-02-06'),
(114, 'Divinity: Original Sin 2', '39.99€', 'Divinity: Original Sin 2 est un RPG isométrique à monde ouvert avec un système de combat tactique au tour par tour. Les joueurs explorent un monde riche en histoires, prennent des décisions cruciales et forment des alliances.', 1000, 'DivinityOriginalSin2.jpg', 8, '2017-09-14'),
(115, 'Baldur\'s Gate III', '49.99€', 'Baldur\'s Gate III est un jeu de rôle basé sur Donjons et Dragons. Les joueurs se lancent dans une aventure épique, rencontrent des créatures fantastiques et découvrent des mystères dans le monde de Dungeons & Dragons.', 1000, 'BaldursGateIII.jpg', 8, '2020-10-06');

-- --------------------------------------------------------

--
-- Structure de la table `plateformes`
--

CREATE TABLE `plateformes` (
  `P_ID` int NOT NULL,
  `P_NAME` varchar(50) DEFAULT NULL,
  `G_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `studios`
--

CREATE TABLE `studios` (
  `S_ID` int NOT NULL,
  `S_NAME` varchar(50) DEFAULT NULL,
  `S_NATIONALITY` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `studios`
--

INSERT INTO `studios` (`S_ID`, `S_NAME`, `S_NATIONALITY`) VALUES
(1, 'Riot Games', 'Etats-Unis'),
(2, 'From Software', 'Japon'),
(3, 'Rockstar Games', 'Etats-Unis'),
(4, 'Tango Gameworks', 'Japon'),
(5, 'Hazelight Studios', 'Suède'),
(6, 'Larian Studios', 'Belgique'),
(7, 'CD Projekt Red', 'Pologne'),
(8, 'Valve', 'Etats-Unis'),
(9, 'Nintendo', 'Japon'),
(10, 'Capcom', 'Japon'),
(11, 'Konami', 'Japon'),
(12, 'Arkane', 'France'),
(13, 'Irrationial Games', 'Etats-Unis'),
(14, 'Ubisoft', 'France'),
(15, 'ActivisionBlizzard', 'Etats-Unis'),
(16, 'Bethesda', 'Etats-Unis'),
(17, 'Mojang Studios', 'Suède'),
(18, 'Square Enix', 'Japon'),
(19, '343 Industries', 'Etats-Unis'),
(20, 'Naughty Dog', 'Etats-Unis');

-- --------------------------------------------------------

--
-- Structure de la table `un_jeu_a_une_categorie`
--

CREATE TABLE `un_jeu_a_une_categorie` (
  `G_ID` int NOT NULL,
  `CAT_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `un_jeu_a_une_categorie`
--

INSERT INTO `un_jeu_a_une_categorie` (`G_ID`, `CAT_ID`) VALUES
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(8, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(103, 1),
(104, 1),
(105, 1),
(109, 1),
(111, 1),
(112, 1),
(115, 1),
(3, 2),
(4, 2),
(13, 2),
(99, 2),
(107, 2),
(108, 2),
(109, 2),
(114, 2),
(115, 2),
(14, 3),
(11, 4),
(95, 4),
(96, 4),
(100, 4),
(101, 4),
(104, 4),
(105, 4),
(106, 4),
(107, 4),
(108, 4),
(110, 4),
(113, 4),
(102, 5),
(7, 6),
(9, 6),
(110, 6),
(2, 7),
(5, 11),
(6, 11),
(9, 12),
(11, 12),
(12, 12),
(99, 12),
(100, 12),
(103, 12),
(14, 13),
(98, 13),
(101, 13),
(111, 13),
(112, 13),
(113, 13),
(95, 14),
(96, 14),
(97, 14),
(115, 14);

-- --------------------------------------------------------

--
-- Structure de la table `un_jeu_a_une_commande`
--

CREATE TABLE `un_jeu_a_une_commande` (
  `G_ID` int NOT NULL,
  `COM_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `un_jeu_a_un_studio`
--

CREATE TABLE `un_jeu_a_un_studio` (
  `G_ID` int NOT NULL,
  `S_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `un_jeu_a_un_studio`
--

INSERT INTO `un_jeu_a_un_studio` (`G_ID`, `S_ID`) VALUES
(2, 1),
(113, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(111, 5),
(112, 5),
(114, 6),
(115, 6),
(11, 7),
(12, 7),
(13, 9),
(14, 9),
(109, 10),
(110, 10),
(107, 12),
(108, 12),
(105, 13),
(106, 13),
(103, 14),
(104, 14),
(101, 15),
(102, 15),
(99, 16),
(100, 16),
(97, 17),
(98, 17),
(95, 19),
(96, 19),
(9, 20),
(10, 20);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`AVIS_ID`),
  ADD KEY `G_ID` (`G_ID`),
  ADD KEY `CLIENT_ID` (`CLIENT_ID`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`CAT_ID`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`CLIENT_ID`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`COM_ID`),
  ADD KEY `CLIENT_ID` (`CLIENT_ID`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`FOUR_ID`);

--
-- Index pour la table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`G_ID`),
  ADD KEY `FOUR_ID` (`FOUR_ID`);

--
-- Index pour la table `plateformes`
--
ALTER TABLE `plateformes`
  ADD PRIMARY KEY (`P_ID`),
  ADD KEY `G_ID` (`G_ID`);

--
-- Index pour la table `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`S_ID`);

--
-- Index pour la table `un_jeu_a_une_categorie`
--
ALTER TABLE `un_jeu_a_une_categorie`
  ADD PRIMARY KEY (`G_ID`,`CAT_ID`),
  ADD KEY `CAT_ID` (`CAT_ID`);

--
-- Index pour la table `un_jeu_a_une_commande`
--
ALTER TABLE `un_jeu_a_une_commande`
  ADD PRIMARY KEY (`G_ID`,`COM_ID`),
  ADD KEY `COM_ID` (`COM_ID`);

--
-- Index pour la table `un_jeu_a_un_studio`
--
ALTER TABLE `un_jeu_a_un_studio`
  ADD PRIMARY KEY (`G_ID`,`S_ID`),
  ADD KEY `S_ID` (`S_ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `AVIS_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `CAT_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `CLIENT_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `COM_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `FOUR_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `games`
--
ALTER TABLE `games`
  MODIFY `G_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT pour la table `plateformes`
--
ALTER TABLE `plateformes`
  MODIFY `P_ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `studios`
--
ALTER TABLE `studios`
  MODIFY `S_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `avis_ibfk_1` FOREIGN KEY (`G_ID`) REFERENCES `games` (`G_ID`),
  ADD CONSTRAINT `avis_ibfk_2` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`CLIENT_ID`);

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`CLIENT_ID`);

--
-- Contraintes pour la table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`FOUR_ID`) REFERENCES `fournisseur` (`FOUR_ID`);

--
-- Contraintes pour la table `plateformes`
--
ALTER TABLE `plateformes`
  ADD CONSTRAINT `plateformes_ibfk_1` FOREIGN KEY (`G_ID`) REFERENCES `games` (`G_ID`);

--
-- Contraintes pour la table `un_jeu_a_une_categorie`
--
ALTER TABLE `un_jeu_a_une_categorie`
  ADD CONSTRAINT `un_jeu_a_une_categorie_ibfk_1` FOREIGN KEY (`G_ID`) REFERENCES `games` (`G_ID`),
  ADD CONSTRAINT `un_jeu_a_une_categorie_ibfk_2` FOREIGN KEY (`CAT_ID`) REFERENCES `categorie` (`CAT_ID`);

--
-- Contraintes pour la table `un_jeu_a_une_commande`
--
ALTER TABLE `un_jeu_a_une_commande`
  ADD CONSTRAINT `un_jeu_a_une_commande_ibfk_1` FOREIGN KEY (`G_ID`) REFERENCES `games` (`G_ID`),
  ADD CONSTRAINT `un_jeu_a_une_commande_ibfk_2` FOREIGN KEY (`COM_ID`) REFERENCES `commandes` (`COM_ID`);

--
-- Contraintes pour la table `un_jeu_a_un_studio`
--
ALTER TABLE `un_jeu_a_un_studio`
  ADD CONSTRAINT `un_jeu_a_un_studio_ibfk_1` FOREIGN KEY (`G_ID`) REFERENCES `games` (`G_ID`),
  ADD CONSTRAINT `un_jeu_a_un_studio_ibfk_2` FOREIGN KEY (`S_ID`) REFERENCES `studios` (`S_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
