-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 19 2019 г., 20:22
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
-- База данных: `blogz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_short` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_show` tinyint(1) DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `viewed` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `description_short`, `description`, `image`, `image_show`, `meta_title`, `meta_description`, `meta_keyword`, `published`, `viewed`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(10, 'kdjsfaaaaa', 'kdjsf-1802190908', '<p>kdjsf</p>', '<p>kdjsfkdjsfkdjsfkdjsf</p>', NULL, NULL, 'kdjsf', 'kdjsf', 'kdjsf', 0, NULL, 1, 1, '2019-02-18 07:08:38', '2019-02-18 07:22:15'),
(11, 'category', 'category-1902191534', '<p>category</p>', '<p>categorycategorycategoryv</p>', NULL, NULL, 'category', 'category', 'category', 1, NULL, 1, 1, '2019-02-19 13:34:18', '2019-02-19 15:12:57'),
(12, 'Top', 'top-1902191656', '<p>Top</p>', '<p>TopTopTopTopTop</p>', NULL, NULL, 'Top', 'Top', 'Top', 1, NULL, 1, NULL, '2019-02-19 14:56:44', '2019-02-19 14:56:44'),
(13, 'Задача организации', 'zadacha-organizatsii-1902191706', '<p>Задача организации, в особенности же постоянное информационно-пропагандистское обеспечение нашей деятельности в значительной степени обуславливает создание системы обучения кадров, соответствует насущным потребностям. С другой стороны начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет выполнять важные задания по разработке форм развития. Значимость этих проблем настолько очевидна, что реализация намеченных плановых заданий позволяет оценить значение модели развития. Разнообразный и богатый опыт новая модель организационной деятельности позволяет выполнять важные задания по разработке дальнейших направлений развития. Равным образом консультация с широким активом требуют определения и уточнения соответствующий условий активизации.</p>', '<p>Задача организации, в особенности же постоянное информационно-пропагандистское обеспечение нашей деятельности в значительной степени обуславливает создание системы обучения кадров, соответствует насущным потребностям. С другой стороны начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки существенных финансовых и административных условий. Товарищи! рамки и место обучения кадров позволяет выполнять важные задания по разработке форм развития. Значимость этих проблем настолько очевидна, что реализация намеченных плановых заданий позволяет оценить значение модели развития. Разнообразный и богатый опыт новая модель организационной деятельности позволяет выполнять важные задания по разработке дальнейших направлений развития. Равным образом консультация с широким активом требуют определения и уточнения соответствующий условий активизации.</p>\r\n\r\n<p>Значимость этих проблем настолько очевидна, что укрепление и развитие структуры позволяет оценить значение соответствующий условий активизации. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности играет важную роль в формировании новых предложений.</p>\r\n\r\n<p>Задача организации, в особенности же постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития. С другой стороны новая модель организационной деятельности в значительной степени обуславливает создание соответствующий условий активизации. Повседневная практика показывает, что рамки и место обучения кадров требуют определения и уточнения систем массового участия. Идейные соображения высшего порядка, а также реализация намеченных плановых заданий требуют от нас анализа форм развития. Не следует, однако забывать, что начало повседневной работы по формированию позиции позволяет выполнять важные задания по разработке новых предложений. Разнообразный и богатый опыт укрепление и развитие структуры требуют от нас анализа соответствующий условий активизации.</p>\r\n\r\n<p>С другой стороны начало повседневной работы по формированию позиции позволяет выполнять важные задания по разработке позиций, занимаемых участниками в отношении поставленных задач. Задача организации, в особенности же дальнейшее развитие различных форм деятельности обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач.</p>\r\n\r\n<p>Повседневная практика показывает, что реализация намеченных плановых заданий в значительной степени обуславливает создание соответствующий условий активизации. Значимость этих проблем настолько очевидна, что реализация намеченных плановых заданий способствует подготовки и реализации направлений прогрессивного развития.</p>', NULL, NULL, 'Задача', 'Задача', 'Задача', 1, NULL, 1, 1, '2019-02-19 15:06:14', '2019-02-19 15:18:14');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `parent_id`, `published`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'First', 'first-1702191532', 0, 1, NULL, NULL, '2019-02-17 13:32:34', '2019-02-17 13:59:12'),
(2, 'Second', 'second-1902191533', 0, 0, NULL, NULL, '2019-02-19 13:33:37', '2019-02-19 13:33:37'),
(3, 'nnn', 'nnn-1902191543', 1, 0, NULL, NULL, '2019-02-19 13:43:09', '2019-02-19 13:43:09'),
(4, 'Third', 'third-1902191628', 1, 1, NULL, NULL, '2019-02-19 14:28:39', '2019-02-19 14:28:39'),
(6, 'Dummy', 'dummy-1902191629', 0, 1, NULL, NULL, '2019-02-19 14:29:12', '2019-02-19 14:29:12');

-- --------------------------------------------------------

--
-- Структура таблицы `categoryables`
--

CREATE TABLE `categoryables` (
  `category_id` int(11) NOT NULL,
  `categoryable_id` int(11) NOT NULL,
  `categoryable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categoryables`
--

INSERT INTO `categoryables` (`category_id`, `categoryable_id`, `categoryable_type`) VALUES
(6, 12, 'App\\Article'),
(3, 11, 'App\\Article'),
(4, 10, 'App\\Article'),
(6, 13, 'App\\Article');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_17_095102_create_password_reset_table', 1),
(4, '2019_02_17_104655_create_categories_table', 2),
(5, '2019_02_17_163308_create_articles_table', 3),
(7, '2019_02_18_070601_create_categoryable_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '123', '123@123.com', NULL, '$2y$10$soiLpFzAHwHWgTjEW0tnTOjBdEyDsx.ThSm4lqfO3wiaiTOlzZ832', NULL, '2019-02-17 08:10:56', '2019-02-17 08:10:56');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
