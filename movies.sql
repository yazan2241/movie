-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30 أغسطس 2022 الساعة 11:51
-- إصدار الخادم: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_08_22_101137_create_telegraph_bots_table', 1),
(11, '2022_08_22_101138_create_telegraph_chats_table', 1),
(12, '2022_08_23_175830_create_movies_table', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `watch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xxlarge` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xlarge` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `large` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `medium` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `low` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `movies`
--

INSERT INTO `movies` (`id`, `title`, `story`, `language`, `category`, `type`, `rate`, `duration`, `quality`, `watch`, `xxlarge`, `xlarge`, `large`, `medium`, `low`, `created_at`, `updated_at`) VALUES
(1, 'House of dragon', '', 'English', 'اكشن', 'اكشن', '4', '1:25', '240', '98%', 'https://udds65250fjflyapm6gy.vs7000.pics/watch/b88d842ca20070fcZ9GdfXmkRc8kjSdcb.d9rqlQNMxhjQev1F8nbfzQ__.Qldka1c3T2NQaGFXcDk4WlV3OXJiNExoamh6b2FGVzlxSnZEZUYySXNiWGpsVFJVTUxQWjYxYmxmSFlTdTYwaC9xbTBmMkFiT3hGengwK0VQdDFtQVU2Nlh2RS9UMHladkFUQUpZWkFCRnQ0Y3VIOW55RVJYanhuOHFxQnN3NFZJbEl4S2Qza2MyUklZdGZHK2xWeEpwd2VXN3Q3SElGcFBOUFJ3TldGYUFGNE5lOXdjdE9hZXZlNWE4UG9UQVdVdVQ2RUJjYUJ5YWorVks1NGZQMkRyb3gwcjN1S1c0NUNEcHZiTUVpcTlIVnRZdHhMSjVoRm4wMWxjMmN5VS93NnpXZjdBK05GaFcvMDdyRWlPandwYU0vRGEwdmRRakV5VWdIZmZkc3kveEdKTzBrbThNL1puSll6VmNqekVqcHhVTDZCVTRtS0Rrb0pVTTFwQkxBWCtIdjRKcmE4dmk5OFpIK24xNisrMnhuRHZqZzBhMEZxV3hsZXpVbG5rdmdaTHg2ZC83YkxLV2o1Rmo2Z1BaOG5Ddm5TWkJOamo2OUhTR0hDZStsN3Z5MWJZVGpqTytlT2dFTkxBcUtTbjhXZnlqTUgwOWZKRVRVL3JzdnJPNlhoOEUyb1pSNmo_', '', '', '', '', '2022-08-23 16:35:55', '2022-08-23 16:35:55'),
(2, 'test', '', '', '', '', '', '', '', '', 'https://xbciz3vfgvc2srl84cff.vs7000.pics/watch/c25770f6f0c39bb5mVEjawlci54l44o9L.8m2CBEgI5rExYBZDnzrkHg__.NzM1aXJOUzQ4M3JSdkZ4SVFoUDExc2hSOE44a1FLNjdhOVJncWtpaTFOQVpwdElYdXFJV09tRlRUNW1lRjgzOTJ2M3dJdlNjck0ySjRnWHNYbjB4UHJRMzFlU2IwSEtvMTFJZ1EyOGpoME12VXhkM1hDd0I1OWNTOTJLRjdOZ1EyVGRxMDFuYU96MDZhUGhzS2hHUW1aN0hYalNqRW9jQ1g1T05zY0FPc2VuUHIxbFg1R3JmdTRoRmJSemFjUStXYWlaemVXWU5ibVFhckMyNS8zQ21QM0Z2ME9nbTBUZ09zUTlITDlGb3FXYTA4RzZLa29tNXVaMnJZU0N3dkQzdHpoQm5EdGZlUWFvQ09EaFJyUWJIQk01STd0dnV3dWpJQTdZeWMySTFCcC9HOGZITm55ZXRNR1E2K3pYbHRmU0JrRkFYcm9Ra095RGNWamxCQTl4WFBvZFdhSCtFMlU1VDNiREZhTGdPN3JNOE94Y0dMaG9sbU56MTNLWkNNc3BWUzFnRU5xUXN2akNqVC9qUkdGRThJbGFTekJ2U0sxR2toMzNjSjlzPQ__', '', '', '', '', NULL, NULL),
(3, 'test', '', '', '', '', '', '', '', '', 'https://upbam.org/3d3esm8qj27o/House.of.the.Dragon.S01E02.240p.WEBRip.MyCima.world.mp4.html?Key=FVRyzO1q9rip1U6xePC54w&Expires=1661708900', '', '', '', '', NULL, NULL),
(4, 'الحلقة الثانية الموسم الاول مسلسل House of the Dragon\r\n', '', '', '', '', '4', '51:35', '', '', 'https://olojsm3um8ta4aaqgxng.vs7000.pics/watch/c2c35e4214e53a02Eg1|hrkFJYeCxLuXl.ZhRaIn4HHLpny1XP3uSnaA__.aGJBMllKUjBPeXZORHIwWGxUY3ZWMnlPVW1hc2l0TTRMOHR4YjhNMDJscURuZDRCTEhpeFgyKzc4b2VQUWRqekdVTk1KV2tvb2ZFOWRGTm1jbjRXNENqcTFScU01UVh5T1hualM4UkpvaGVJYzhxWjBVWElhTkZjZ3lodmRHRnJCbUdoT3o4b1BjZ1Z6eFh4SkpXZU1DTk41aUJXdnF6MWYxMmo2bVhkNUVnc0hONldEd3pMQVVod2p1TTZhQ1pLM0QxcUxHZk9ReHlOUjVOT0g3eW42YnZLMVJ0bjBrUVp3QTJlMHU0T2kvdjZTK252UGVYN1J3YUozNnBrcnRtY052UFY0QWRKcVNvRUFmWlV2azhENERpbjB5OVY5TDhHcEZ5Nk5wM3A1ajRSMG1vMVlFM1NtUmcweGN6K0ZzVCt0MWFLajFITGhNTXN5NVAyQVY0NWFNcHZuNmJ2dnVhM2dYSmZBSFdOalgwbTZhbngrRVo1ZmJrQ05HYWtnVm1uSzh0ZkREdGF5aml3UllOclVzVStTVTJXNFhDZWl5SzBFM2ZOR0drbA__', 'https://kdklm8x9iveexns0jxxv.vs7000.pics/watch/9db97b51314241eey6ELfz8l8g2VfT7wo.QGaDA1yN0hwVBTOqo1cJRw__.WlljTDlZVWZkNFVRSXEyM2tyVHJoZXZ1bnYveUFremN0Y3hVMStpbko0bGNRMkRLQkpyS1dSTGdDOHl1NXZuUGhLMC83bmk1T0JoL0tFdXRkT2pyQVpoeDBhV2VyNGd1Nk1sdnBmTmd1NnNJeUZGS0pXQXp4RkNOek1iTmhrYTZVQlNwLzdiN3IrdVNGN2hiV2VyRy9iUGZkL0d6NC9XV284MTl1cUplQW5Fc1g0K2ZmSkM0VGdCSkNmUlJwR1ZaNytYbjhKeE1WL3AzRmZ2dExoQU9jc0xFSks3WWEwK1hyWWNJVEU4TzdJUFdyWjA5b3pvZlpJQnk5WDhqbUxTNHc5WkdXNWZQU1QzMDFDemllek41VHp4T2R5eXhMckUyelZSOFZQZlZlMHRXOTJkYlhLT05pSUJoeEwyOWxQNFRmQ1k1Y21POWxzOThNdUVSZGVyT0VrQ09Rb1diejJVZTFmSTJzbXZMd0R4UWJzU1NYN3FQQmNBQjBweGlqUVE1allBZ3dHTFkvWFNHWWI0YjN6cTN3MUF6aHJZYmxucGNXU3JKdC9vUA__', 'https://6xgnc0t4axp8zt5qbn8y.vs7000.pics/watch/0698f179b20362b6LzsZC1yJzLWDQhggd.pCKnKdyLlXCBycTv|V35eA__.QVlDOXNydkZuaEpDWFkxRlhDQTBZSTMvUVczUTFNSzVBM0lNREw0aWR0VmExMmUyYUxFZkN6Z1ZvcCtQRGY3MXVHazFSd0N2SGs2NkFZWVZDeUdkNkMyR1FpeWlhbFRac1NJejM0Rm5HbTJLZllLY3BLdndXUGI5eFNYc2N3bXBjekNUZlhHWjlxdFVuZVRhQmdqa29tZTBMRS8ramxnU2szZ01jUU9idllaM2pDQVF4VlduYWsyVGZyZTlXbWJKRVB3S0dDK2NId2lobGM0c014ajFvTmI3dGFFaHF2YVl4amYxVTlEMkRTM25TTVZUbTVtWm83VUc0Z1dXWCtsa1V3a3Z3Vnlya1JMUi9nTUtRY3FKWmFVdktmSjE1V3dkL0ZRVjRleGFEUUoyMVdUQStWZUEvMlVNdmNwNURIUFlkSmVodlNGNWxIODQyc25QUXZRVm1CM0RWT0E5cGdmQ1U3bHJxbWZsaFF6M01PUkF3WlF5YVJyQWh4TTk5bGl2TzZadUNmU3NNM2tBY1pFN0JHK2pFOXl4dmMxUHdiVlU3djBLYUM3bA__', 'https://9qj7u6whvlxyiimx5fht.vs7000.pics/watch/ef96d25eb0ae4687xUet7J5Cbw3UR8O2B.xqo8HjxILRT001qpoRfNLw__.TmpKTGcrLy8yQU1pL28yb2xUb1ViYWZheVczTE1GRno3eDlNTzJuSFVoRTduVmxSQ1RVUFVBQzJob1YwVEtHK2NuNkpCc29JVTJGMUtlYlVOK004bG84VXV3ZzFnWEtnc1JRckp0dzFLZzdzYnRaRGw0NGdlTjJEbW5QSnpsR0tLTDU4M1NNb3JlcEQ1YWR0Qnd4MHgxbzVVdnkzWDBZKzFtbG1kaE1KbHl0cEZKa2NkcmJPem9VTDQ0bEZMdXAwR0RwYytoNjMwTzVHVFd3ck1SU1pSU3JPMk5uL0p3MGZHSXlYUFk1YXRWN0JKelIxZEFFNzNzL05PMTg4VlBvUU1KQm5UN1JpNjErVWM1R2JwdU5hTVFxRXJ1OExuNXdTVnZMRDhPOW41ekFUNWh4eGRMVzBpQ1NQMGRtWWF1VUV1OXZkMVJrUmx1RGlqa0MrOU9LQWFwOUZDaU1ibWY2RjlUbDBFYklKUGZ4NDJOUjVVL00rMzIzS0F5cE5NalRTRmkzQklIL0ZZS0I0ZmE0NGJGbXZHNUFIdVV2L1ovaWs3YkczbnRzPQ__', '', NULL, NULL),
(5, 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL),
(6, 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL),
(7, 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL),
(8, 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL),
(9, 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL),
(10, 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL),
(11, 'test', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `telegraph_bots`
--

CREATE TABLE `telegraph_bots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `telegraph_bots`
--

INSERT INTO `telegraph_bots` (`id`, `token`, `name`, `created_at`, `updated_at`) VALUES
(1, '5730405563:AAHn8RN3OKZ3WTio9-hDoldNUPUNBoRWFts', 'syrmov_bot', '2022-08-22 08:27:07', '2022-08-22 08:27:07');

-- --------------------------------------------------------

--
-- بنية الجدول `telegraph_chats`
--

CREATE TABLE `telegraph_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telegraph_bot_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `telegraph_chats`
--

INSERT INTO `telegraph_chats` (`id`, `chat_id`, `name`, `telegraph_bot_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'movies', 1, '2022-08-22 08:28:45', '2022-08-22 08:28:45');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `telegraph_bots`
--
ALTER TABLE `telegraph_bots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `telegraph_bots_token_unique` (`token`);

--
-- Indexes for table `telegraph_chats`
--
ALTER TABLE `telegraph_chats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `telegraph_chats_chat_id_telegraph_bot_id_unique` (`chat_id`,`telegraph_bot_id`),
  ADD KEY `telegraph_chats_telegraph_bot_id_foreign` (`telegraph_bot_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telegraph_bots`
--
ALTER TABLE `telegraph_bots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `telegraph_chats`
--
ALTER TABLE `telegraph_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `telegraph_chats`
--
ALTER TABLE `telegraph_chats`
  ADD CONSTRAINT `telegraph_chats_telegraph_bot_id_foreign` FOREIGN KEY (`telegraph_bot_id`) REFERENCES `telegraph_bots` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
