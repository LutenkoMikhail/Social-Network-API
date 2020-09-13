-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 13 2020 г., 17:37
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hygge-api`
--

-- --------------------------------------------------------

--
-- Структура таблицы `API____failed_jobs`
--

CREATE TABLE `API____failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `API____friends`
--

CREATE TABLE `API____friends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `API____friends`
--

INSERT INTO `API____friends` (`id`, `user_id`, `friend_id`, `accepted`, `created_at`, `updated_at`) VALUES
(6, 2, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `API____migrations`
--

CREATE TABLE `API____migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `API____migrations`
--

INSERT INTO `API____migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_09_07_144319_create_users_table', 1),
(9, '2020_09_08_073354_create_friends_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `API____oauth_access_tokens`
--

CREATE TABLE `API____oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `API____oauth_access_tokens`
--

INSERT INTO `API____oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0b614f9aa444bc15cfbfbd4beafd6452df2d8a2d0fc0cad03e7dcb3170bdc70a138bb74b1e62bbba', 2, 1, 'MyApp', '[]', 0, '2020-09-13 08:32:02', '2020-09-13 08:32:02', '2021-09-13 11:32:02'),
('1456fdef3839ec1d99adc782cb3b37192d31c94a9775636c48d0a80ffff6223c5029700a2c01b885', 1, 1, 'MyApp', '[]', 0, '2020-09-13 08:28:12', '2020-09-13 08:28:12', '2021-09-13 11:28:12'),
('b58ba18d0431be0236d560b629d87ca3f2b5c58655238f2537a4683e6ed462e199106600e0d83323', 1, 2, NULL, '[\"*\"]', 0, '2020-09-13 09:14:42', '2020-09-13 09:14:42', '2021-09-13 12:14:42');

-- --------------------------------------------------------

--
-- Структура таблицы `API____oauth_auth_codes`
--

CREATE TABLE `API____oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `API____oauth_clients`
--

CREATE TABLE `API____oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `API____oauth_clients`
--

INSERT INTO `API____oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'rTMqqQ8otVQlyqIvrB3AxrImKkg4q1LfLQklEpQO', NULL, 'http://localhost', 1, 0, 0, '2020-09-13 07:58:22', '2020-09-13 07:58:22'),
(2, NULL, 'Laravel Password Grant Client', 'F4sEHT1aXnVA37DDOiuKT9hr1csOCkAIO1aaw0Tp', 'users', 'http://localhost', 0, 1, 0, '2020-09-13 07:58:22', '2020-09-13 07:58:22');

-- --------------------------------------------------------

--
-- Структура таблицы `API____oauth_personal_access_clients`
--

CREATE TABLE `API____oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `API____oauth_personal_access_clients`
--

INSERT INTO `API____oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-09-13 07:58:22', '2020-09-13 07:58:22');

-- --------------------------------------------------------

--
-- Структура таблицы `API____oauth_refresh_tokens`
--

CREATE TABLE `API____oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `API____oauth_refresh_tokens`
--

INSERT INTO `API____oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('50be526d9f5ff2fcfaa22a4a57744aa3bb121629799a4318167393a5b6cdb6615691b4cf383cd54f', 'b58ba18d0431be0236d560b629d87ca3f2b5c58655238f2537a4683e6ed462e199106600e0d83323', 0, '2021-09-13 12:14:42');

-- --------------------------------------------------------

--
-- Структура таблицы `API____password_resets`
--

CREATE TABLE `API____password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `API____users`
--

CREATE TABLE `API____users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `API____users`
--

INSERT INTO `API____users` (`id`, `email`, `email_verified_at`, `avatar`, `username`, `password`, `first_name`, `last_name`, `gender`, `location`, `verify`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1@1', NULL, NULL, '123456789', '$2y$10$E7c23sAzKMCjZr1cAE2NI.QAEjp21ED8uZSsyU/VXraD8xoLqoP/m', NULL, NULL, 'm', NULL, 0, NULL, '2020-09-13 08:28:12', '2020-09-13 08:28:12'),
(2, '2@2', NULL, NULL, '123456789', '$2y$10$KwQe6gzK2HBJe3rAJfuwy.sOBdBWngIc86NKcuBFcuTIOod4YiizS', NULL, NULL, 'm', NULL, 0, NULL, '2020-09-13 08:32:02', '2020-09-13 08:32:02');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `API____failed_jobs`
--
ALTER TABLE `API____failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `API____friends`
--
ALTER TABLE `API____friends`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `API____migrations`
--
ALTER TABLE `API____migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `API____oauth_access_tokens`
--
ALTER TABLE `API____oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api____oauth_access_tokens_user_id_index` (`user_id`);

--
-- Индексы таблицы `API____oauth_auth_codes`
--
ALTER TABLE `API____oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api____oauth_auth_codes_user_id_index` (`user_id`);

--
-- Индексы таблицы `API____oauth_clients`
--
ALTER TABLE `API____oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api____oauth_clients_user_id_index` (`user_id`);

--
-- Индексы таблицы `API____oauth_personal_access_clients`
--
ALTER TABLE `API____oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `API____oauth_refresh_tokens`
--
ALTER TABLE `API____oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api____oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Индексы таблицы `API____password_resets`
--
ALTER TABLE `API____password_resets`
  ADD KEY `api____password_resets_email_index` (`email`);

--
-- Индексы таблицы `API____users`
--
ALTER TABLE `API____users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `API____failed_jobs`
--
ALTER TABLE `API____failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `API____friends`
--
ALTER TABLE `API____friends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `API____migrations`
--
ALTER TABLE `API____migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `API____oauth_clients`
--
ALTER TABLE `API____oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `API____oauth_personal_access_clients`
--
ALTER TABLE `API____oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `API____users`
--
ALTER TABLE `API____users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
