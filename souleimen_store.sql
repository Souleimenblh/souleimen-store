-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 14 déc. 2023 à 00:24
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `souleimen_store`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'laptop'),
(2, 'phones'),
(3, 'accesoirs');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qte` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` int(11) NOT NULL,
  `done_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `fullname`, `product`, `qte`, `price`, `total`, `done_at`) VALUES
(3, 'test', 'Asus  ROG Strix GL10', 1, 3500, 3500, '2023-12-02 23:12:14');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `old_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `short_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `old_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`) VALUES
(1, 'Asus  ROG Strix GL10', 1, 3500, 4300, 15, 'Le PC Gamer ASUS ROG Strix G10CE intègre un processeur Intel Core i7-11700 ainsi qu\'une carte graphique NVIDIA GeForce RTX 3060. Ce GPU met à votre disposition les performances graphiques révolutionnaires de l\'architecture NVIDIA Ampère. Ce PC Gamer est également équipé d\'un SSD PCIe M.', 'Intègre un processeur Intel Core i7-11700 ainsi qu\'une carte graphique NVIDIA GeForce RTX 3060.', 'rog-1702161326.png'),
(4, 'PC DE BUREAU MSI GAMING AEGIS X3', 1, 2300, 2800, 5, 'Processeur Intel® Core™ I5-11400F Hexa-core(2.60GHz Up To 4.40GHz, 12MB Intel® Smart Cache),Mémoire RAM 16Go DDR4,Disque Dur 512Go SSD,Carte graphique Nvidia Geforce GTX1660 6Go ,Wi-Fi,Bluetooth.', 'Processeur Intel® Core™ I5-11400F Hexa-core,Mémoire RAM 16Go DDR4,Disque Dur 512Go SSD,Carte graphique Nvidia Geforce GTX1660 6Go ,Wi-Fi,Bluetooth', 'msi-1702161346.png'),
(6, 'Iphone 14', 2, 4000, 4500, 23, 'iphone 14 with best price ', 'iphone 14 with best price ', 'apple-iphone-14-3-1702122068.png'),
(8, 'Montre', 3, 500, 700, 2, 'montre', 'montre ', 'cat-img-3-1702370694.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `username`, `email`, `password`, `admin`) VALUES
(3, 'souleimen belhadj', 'souleimen', 'souleimen.belhadj@iset.tn', '$2y$12$HpzCzPH/tbW5r5EaoVBOb.Juu8H9bTe5zTyMKzniZKKm.66N8i2se', 1),
(4, 'test', 'test', 'test@gmail.com', '$2y$12$t5HpUKlgH2I29cXom1VyeO89NGtKz4uTEhtDJoGFdq.ZijF5lOfYO', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
