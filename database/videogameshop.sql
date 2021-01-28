-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 28 jan. 2021 à 23:55
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `videogameshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2021_01_28_142827_create_products_table', 2),
(6, '2021_01_28_051915_add_user_id_to_posts', 3),
(11, '2014_10_12_000000_create_users_table', 4),
(12, '2014_10_12_100000_create_password_resets_table', 4),
(13, '2019_08_19_000000_create_failed_jobs_table', 4),
(14, '2021_01_28_024831_create_posts_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(2, 1, 'Avis sur Cyberpunk 2077', 'le jeu est de mauvaise qualité sur les consoles Sony', '2021-01-28 15:56:26', '2021-01-28 19:25:33'),
(3, 1, 'Avis sur Far Cry 5', 'Ce jeu est incroyable', '2021-01-28 15:56:48', '2021-01-28 19:40:21'),
(4, 1, 'Avis sur Red Dead Redemption 2', 'très bon jeu et il est très attractif pour le fps ainsi que le mode histoire avec les course de chevaux comme à la bonne vieille époque du far west !', '2021-01-28 19:42:33', '2021-01-28 19:42:33'),
(5, 3, 'Avis Les Sims 4', 'ce jeu est très bien pour passer le temps', '2021-01-28 21:41:08', '2021-01-28 21:41:08');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `subtitle`, `description`, `price`, `image`, `note`, `created_at`, `updated_at`) VALUES
(1, 'FIFA 21', 'Jeu de football', 'FIFA 2021 pour PS4 est le 28ème épisode de cette incroyable série. Les développeurs du jeu ont mis des années à atteindre la perfection et, par conséquent, peu de choses viennent gâcher ce classique très apprécié. Comme toujours, c\'est la licence qui attire les acheteurs, et cette édition n\'est pas différente avec un nombre stupéfiant de 17 000 joueurs de 700 clubs jouant au sein de 30 ligues parmi lesquelles choisir, échanger, transférer et changer la donne ! Cela signifie que vous pourriez jouer une saison entière sans avoir à reprendre un joueur, même dans la même équipe, si vous le vouliez !', 2711, 'https://images.coinafrique.com/thumb_2694264_uploaded_image1_1602678391.jpg', 18, '2021-01-28 13:56:54', '2021-01-28 13:56:54'),
(3, 'Among Us', 'Jeu du moment', 'Among Us est un jeu vidéo d\'ambiance multijoueur en ligne développé et édité par le studio InnerSloth, sorti en 2018 sur Android, iOS, Chrome OS puis Windows, en 2020 sur Nintendo Switch et en 2021 sur Xbox One et Xbox Series. Le jeu se déroule dans un univers de science-fiction.', 400, 'https://i.imgflip.com/4/4h9r81.png', 17, '2021-01-28 15:04:55', '2021-01-28 15:04:55'),
(5, 'Grand Theft Auto V', 'Jeu de type FPS/Aventure', 'Grand Theft Auto V est un jeu vidéo d\'action-aventure, développé par Rockstar North et édité par Rockstar Games en 2013. Faisant partie de la série vidéoludique Grand Theft Auto, il est une suite de l\'univers fictif introduit dans Grand Theft Auto IV, sorti en 2008.', 1000, 'https://cdn140.picsart.com/323919160322201.jpg', 20, '2021-01-28 15:11:51', '2021-01-28 15:11:51'),
(6, 'Minecraft (Xbox One)', 'Jeu vidéo type \"bac à sable\"', 'Minecraft pour PC est le jeu vidéo le plus vendu de tous les temps. Rien que cela devrait suffire à vous convaincre, mais voici un peu plus d\'informations sur les raisons pour lesquelles vous devriez commencer à jouer dès maintenant. C\'est un jeu de bac à sable (sandbox) dans lequel les joueurs doivent extraire, construire et fabriquer pour créer leur monde idéal et on peut voir des réalisations fascinantes !', 1949, 'https://www.wblib.org/wb-hub/stuff/images/game/minecraft_xbox_one_game.jpg', 15, '2021-01-28 15:11:51', '2021-01-28 15:11:51'),
(7, 'Cyberpunk 2077 (PS4)', 'Jeu type FPS', 'Cyberpunk 2077 pour PS4 est un jeu de tir à la première personne, mais avec une différence. Dans un État libre dystopique de Californie, les règles de la nation et de l\'État ne s\'appliquent plus. Au lieu de cela, jouant comme un mercenaire nommé V, le joueur doit travailler sur le chemin qu\'il emprunte autour de la ville, atteignant ses buts et se battant contre des ennemis qui apparaissent au fur et à mesure du jeu.', 2749, 'https://games-guides.com/wp-content/uploads/2018/08/cyberpunk-2077-order.jpg', 5, '2021-01-28 17:26:47', '2021-01-28 17:26:47'),
(9, 'Forza Horizon 4', 'Jeu de course de voitures', 'Forza Horizon 4 est un jeu de course international ouvert où les joueurs s\'affrontent contre d\'autres joueurs qui sont en ligne, mais d\'une manière libre qui signifie que vous n\'avez pas à vous engager avec eux si vous vous sentez bien seul. Le jeu peut également être joué hors ligne si nécessaire, si votre connexion est en panne, ou si vous avez envie de faire votre propre chemin pendant un certain temps.\r\nDans une version fictive et tronquée du Royaume-Uni, le jeu est le onzième opus de Forza et le quatrième de la série Forza Horizon.', 2699, 'https://games-guides.com/wp-content/uploads/2018/10/forza_4_cover_us.jpg', 16, '2021-01-28 17:29:17', '2021-01-28 17:29:17'),
(10, 'Les Sims 4', 'Jeu type simulation de vie', 'The Sims 4 (Europe) pour PC est un jeu de simulation de vie. C’est le jeu le plus vendu entre 2014 et 2015. Il a même été à la tête de tous les classements à cette époque. Il existe de nombreux jeux Sims, des jeux principaux comme celui-ci aux nombreux packs d\'extension et add-ons :\r\ntous prouvent la popularité durable de la série.', 699, 'https://i.pinimg.com/originals/92/9c/39/929c399d047d674696157c3f09a57e1f.jpg', 12, '2021-01-28 17:31:18', '2021-01-28 17:31:18'),
(11, 'Call of Duty®: Black Ops Cold War', 'Jeu de type FPS', 'L\'iconique saga Black Ops est de retour avec Call of Duty®: Black Ops Cold War - la suite directe de l\'opus adoré des fans, Call of Duty®: Black Ops.\r\n\r\nBlack Ops Cold War va plonger les fans dans la guerre politique la plus étrange qui soit, au tout début des années 80. Impossible de discerner le vrai du faux dans la campagne solo prenante, où les joueurs vont faire face à des figures historiques et d\'atroces vérités lors de combats de part et d\'autre du monde dans des lieux iconiques comme Berlin-Est, le Vietnam, la Turquie, les quartiers généraux du KGB, et bien d\'autres.\r\n\r\nEn tant qu\'agents d\'élite, vous suivrez la piste d\'un sombre personnage connu sous le nom de Perseus qui a pour mission d\'ébranler l\'équilibre mondial du pouvoir afin de changer le cours de l\'Histoire. Avancez au cœur de cette sordide conspiration aux côtés de personnages emblématiques comme Woods, Mason and Hudson et bien d\'autres agents pour tenter de mettre fin à une conspiration qui tisse sa toile depuis des décennies.\r\n\r\nOutre la Campagne, les joueurs pourront piocher dans un arsenal de la Guerre froide pour combattre dans la toute dernière génération d\'expériences Multijoueur et Zombies.', 5199, 'https://mcubegames.ae/uploads/products/1522/590346_ps5coldwar.webp', 17, '2021-01-28 17:34:13', '2021-01-28 17:34:13'),
(12, 'Far Cry 5', 'Jeu de type FPS/Action/Aventure', 'Far Cry 5 pour PC est un jeu de tir à la première personne amusant dans lequel vous devez être sur vos gardes contre des adversaires bizarres et farfelus. Les animaux et les ennemis tenteront de vous éliminer, tandis que d\'autres animaux et des étrangers pourraient les éliminer au hasard pour vous. Comme son nom l\'indique, tout est loin de la réalité !', 979, 'https://sm.ign.com/t/ign_fr/game/f/far-cry-5/far-cry-5_a51y.200.jpg', 19, '2021-01-28 17:36:45', '2021-01-28 17:36:45'),
(13, 'Red Dead Redemption 2', 'Jeu de type FPS/Action/Aventure', 'Red Dead Redemption 2 pour PC est un jeu d\'action et d\'aventure, open world, dans lequel le joueur peut errer librement et jouer à la troisième personne, tout en revenant à la première personne en mode simulation. Le joueur peut commettre des crimes, mais il doit ensuite être prêt à être traqué par les forces de l\'ordre, prêt à faire peser toute la force de la loi contre le malfaiteur !', 3098, 'https://downloadsgamenowfree.com/wp-content/uploads/2020/10/Red-Dead-Redemption-2-PC-Download-Free-Full-Version-Game.jpg', 19, '2021-01-28 17:39:08', '2021-01-28 17:39:08');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prenom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ddn` date NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `solde` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `prenom`, `name`, `ddn`, `email`, `email_verified_at`, `password`, `solde`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Killian', 'Moutinard', '2001-11-20', 'killian.moutinard@gmail.com', NULL, '$2y$10$5rjKFjpRJXaW/KfW7q6CW.EPTQDQcR4C87fqLXVjYxeQdk22DdAZy', '100', NULL, '2021-01-28 15:34:47', '2021-01-28 15:34:47'),
(2, 'test', 'ynov', '2021-01-28', 'test@ynov.com', NULL, '$2y$10$2k4dGExaloHxuO7BAGCkKudCUjjlQhdgtl99g1VwF/vsUaRU9m2Dm', '2', NULL, '2021-01-28 19:22:39', '2021-01-28 19:22:39'),
(3, 'coucou', 'didier', '2000-03-20', 'coucou.didier@gmail.com', NULL, '$2y$10$8NL0B6t249Y4NTGBcV9nuuW8AnHtftCxvyUKzleBl/AW5DCu48QbK', '2000', NULL, '2021-01-28 21:37:52', '2021-01-28 21:37:52');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
