-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2021 at 01:56 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livewire_examples`
--

-- --------------------------------------------------------

--
-- Table structure for table `continents`
--

CREATE TABLE `continents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `continent_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `continents`
--

INSERT INTO `continents` (`id`, `continent_name`, `created_at`, `updated_at`) VALUES
(1, 'North America', NULL, NULL),
(2, 'South America', NULL, NULL),
(3, 'Asia', NULL, NULL),
(4, 'Africa', NULL, NULL),
(5, 'Europe', NULL, NULL),
(6, 'Antarctica', NULL, NULL),
(7, 'Australia/Oceania', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `continent_id` int(11) DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `continent_id`, `country_name`, `capital_city`, `created_at`, `updated_at`) VALUES
(1, 5, 'Aland Islands', 'Mariehamn', NULL, NULL),
(2, 5, 'Albania', 'Tirana', NULL, NULL),
(3, 5, 'Andorra', 'Andorra la Vella', NULL, NULL),
(4, 5, 'Austria', 'Vienna', NULL, NULL),
(5, 5, 'Belarus', 'Minsk', NULL, NULL),
(6, 5, 'Belgium', 'Brussels', NULL, NULL),
(7, 5, 'Bosnia and Herzegovina', 'Sarajevo', NULL, NULL),
(8, 5, 'Bulgaria', 'Sofia', NULL, NULL),
(9, 5, 'Croatia', 'Zagreb', NULL, NULL),
(10, 5, 'Czechia', 'Prague', NULL, NULL),
(11, 5, 'Denmark', 'Copenhagen', NULL, NULL),
(12, 5, 'Estonia', 'Tallinn', NULL, NULL),
(13, 5, 'Faroe Islands', 'Tórshavn', NULL, NULL),
(14, 5, 'Finland', 'Helsinki', NULL, NULL),
(15, 5, 'France', 'Paris', NULL, NULL),
(16, 5, 'Germany', 'Berlin', NULL, NULL),
(17, 5, 'Gibraltar', 'Gibraltar', NULL, NULL),
(18, 5, 'Greece', 'Athens', NULL, NULL),
(19, 5, 'Guernsey', 'Saint Peter Port', NULL, NULL),
(20, 5, 'Hungary', 'Budapest', NULL, NULL),
(21, 5, 'Iceland', 'Reykjavík', NULL, NULL),
(22, 5, 'Ireland', 'Dublin', NULL, NULL),
(23, 5, 'Isle of Man', 'Douglas', NULL, NULL),
(24, 5, 'Italy', 'Rome', NULL, NULL),
(25, 5, 'Jersey', 'Saint Helier', NULL, NULL),
(26, 5, 'Kosovo', 'Pristina', NULL, NULL),
(27, 5, 'Latvia', 'Riga', NULL, NULL),
(28, 5, 'Liechtenstein', 'Vaduz', NULL, NULL),
(29, 5, 'Lithuania', 'Vilnius', NULL, NULL),
(30, 5, 'Luxembourg', 'Luxembourg', NULL, NULL),
(31, 5, 'Malta', 'Valletta', NULL, NULL),
(32, 5, 'Moldova', 'Chisinau', NULL, NULL),
(33, 5, 'Monaco', 'Monaco', NULL, NULL),
(34, 5, 'Montenegro', 'Podgorica', NULL, NULL),
(35, 5, 'Netherlands', 'Amsterdam', NULL, NULL),
(36, 5, 'North Macedonia', 'Skopje', NULL, NULL),
(37, 5, 'Norway', 'Oslo', NULL, NULL),
(38, 5, 'Poland', 'Warsaw', NULL, NULL),
(39, 5, 'Portugal', 'Lisbon', NULL, NULL),
(40, 5, 'Romania', 'Bucharest', NULL, NULL),
(41, 5, 'Russia', 'Moscow', NULL, NULL),
(42, 5, 'San Marino', 'San Marino', NULL, NULL),
(43, 5, 'Serbia', 'Belgrade', NULL, NULL),
(44, 5, 'Slovakia', 'Bratislava', NULL, NULL),
(45, 5, 'Slovenia', 'Ljubljana', NULL, NULL),
(46, 5, 'Spain', 'Madrid', NULL, NULL),
(47, 5, 'Svalbard', 'Longyearbyen', NULL, NULL),
(48, 5, 'Sweden', 'Stockholm', NULL, NULL),
(49, 5, 'Switzerland', 'Bern', NULL, NULL),
(50, 5, 'Ukraine', 'Kiev', NULL, NULL),
(51, 5, 'United Kingdom', 'London', NULL, NULL),
(52, 3, 'Afghanistan', 'Kabul', NULL, NULL),
(53, 3, 'Armenia', 'Yerevan', NULL, NULL),
(54, 3, 'Azerbaijan', 'Baku', NULL, NULL),
(55, 3, 'Bahrain', 'Manama', NULL, NULL),
(56, 3, 'Bangladesh', 'Dhaka', NULL, NULL),
(57, 3, 'Bhutan', 'Thimphu', NULL, NULL),
(58, 3, 'Brunei', 'Bandar Seri Begawan', NULL, NULL),
(59, 3, 'Burma', 'Nay Pyi Taw', NULL, NULL),
(60, 3, 'Cambodia', 'Phnom Penh', NULL, NULL),
(61, 3, 'China', 'Beijing', NULL, NULL),
(62, 3, 'Cyprus', 'Nicosia', NULL, NULL),
(63, 3, 'East Timor', 'Dili', NULL, NULL),
(64, 3, 'Georgia', 'Tbilisi', NULL, NULL),
(65, 3, 'Hong Kong', 'Hong Kong', NULL, NULL),
(66, 3, 'India', 'New Delhi', NULL, NULL),
(67, 3, 'Indonesia', 'Jakarta', NULL, NULL),
(68, 3, 'Iran', 'Tehran', NULL, NULL),
(69, 3, 'Iraq', 'Baghdad', NULL, NULL),
(70, 3, 'Israel', 'Jerusalem', NULL, NULL),
(71, 3, 'Japan', 'Tokyo', NULL, NULL),
(72, 3, 'Jordan', 'Amman', NULL, NULL),
(73, 3, 'Kazakhstan', 'Nursultan', NULL, NULL),
(74, 3, 'Kuwait', 'Kuwait City', NULL, NULL),
(75, 3, 'Kyrgyzstan', 'Bishkek', NULL, NULL),
(76, 3, 'Laos', 'Vientiane', NULL, NULL),
(77, 3, 'Lebanon', 'Beirut', NULL, NULL),
(78, 3, 'Macao', 'Concelho de Macau', NULL, NULL),
(79, 3, 'Malaysia', 'Kuala Lumpur', NULL, NULL),
(80, 3, 'Maldives', 'Malé', NULL, NULL),
(81, 3, 'Mongolia', 'Ulaanbaatar', NULL, NULL),
(82, 3, 'Nepal', 'Kathmandu', NULL, NULL),
(83, 3, 'North Korea', 'Pyongyang', NULL, NULL),
(84, 3, 'Oman', 'Muscat', NULL, NULL),
(85, 3, 'Pakistan', 'Islamabad', NULL, NULL),
(86, 3, 'Palestine', 'Ramallah', NULL, NULL),
(87, 3, 'Philippines', 'Manila', NULL, NULL),
(88, 3, 'Qatar', 'Doha', NULL, NULL),
(89, 3, 'Saudi Arabia', 'Riyadh', NULL, NULL),
(90, 3, 'Singapore', 'Singapore', NULL, NULL),
(91, 3, 'South Korea', 'Seoul', NULL, NULL),
(92, 3, 'Sri Lanka', 'Colombo', NULL, NULL),
(93, 3, 'Syria', 'Damascus', NULL, NULL),
(94, 3, 'Taiwan', 'Taipei', NULL, NULL),
(95, 3, 'Tajikistan', 'Dushanbe', NULL, NULL),
(96, 3, 'Thailand', 'Bangkok', NULL, NULL),
(97, 3, 'Turkey', 'Ankara', NULL, NULL),
(98, 3, 'Turkmenistan', 'Ashgabat', NULL, NULL),
(99, 3, 'United Arab Emirates', 'Abu Dhabi', NULL, NULL),
(100, 3, 'Uzbekistan', 'Tashkent', NULL, NULL),
(101, 3, 'Vietnam', 'Hanoi', NULL, NULL),
(102, 3, 'Yemen', 'Sanaa', NULL, NULL),
(103, 7, 'Australia', 'Canberra', NULL, NULL),
(104, 7, 'Christmas Island', 'Flying Fish Cove', NULL, NULL),
(105, 7, 'Cocos (Keeling) Islands', 'West Island', NULL, NULL),
(106, 7, 'New Zealand', 'Wellington', NULL, NULL),
(107, 7, 'Norfolk Island', 'Kingston', NULL, NULL),
(108, 4, 'Algeria', 'Algiers', NULL, NULL),
(109, 4, 'Angola', 'Luanda', NULL, NULL),
(110, 4, 'Benin', 'Porto-Novo', NULL, NULL),
(111, 4, 'Botswana', 'Gaborone', NULL, NULL),
(112, 4, 'Burkina Faso', 'Ouagadougou', NULL, NULL),
(113, 4, 'Burundi', 'Bujumbura', NULL, NULL),
(114, 4, 'Cameroon', 'Yaoundé', NULL, NULL),
(115, 4, 'Cape Verde', 'Praia', NULL, NULL),
(116, 4, 'Central African Republic', 'Bangui', NULL, NULL),
(117, 4, 'Chad', 'N\'Djamena', NULL, NULL),
(118, 4, 'Comoros', 'Moroni', NULL, NULL),
(119, 4, 'Democratic Republic of the Congo', 'Kinshasa', NULL, NULL),
(120, 4, 'Djibouti', 'Djibouti', NULL, NULL),
(121, 4, 'Egypt', 'Cairo', NULL, NULL),
(122, 4, 'Equatorial Guinea', 'Malabo', NULL, NULL),
(123, 4, 'Eritrea', 'Asmara', NULL, NULL),
(124, 4, 'Eswatini', 'Mbabane', NULL, NULL),
(125, 4, 'Ethiopia', 'Addis Ababa', NULL, NULL),
(126, 4, 'Gabon', 'Libreville', NULL, NULL),
(127, 4, 'Gambia', 'Banjul', NULL, NULL),
(128, 4, 'Ghana', 'Accra', NULL, NULL),
(129, 4, 'Guinea', 'Conakry', NULL, NULL),
(130, 4, 'Guinea-Bissau', 'Bissau', NULL, NULL),
(131, 4, 'Ivory Coast', 'Yamoussoukro', NULL, NULL),
(132, 4, 'Kenya', 'Nairobi', NULL, NULL),
(133, 4, 'Lesotho', 'Maseru', NULL, NULL),
(134, 4, 'Liberia', 'Monrovia', NULL, NULL),
(135, 4, 'Libya', 'Tripoli', NULL, NULL),
(136, 4, 'Madagascar', 'Antananarivo', NULL, NULL),
(137, 4, 'Malawi', 'Lilongwe', NULL, NULL),
(138, 4, 'Mali', 'Bamako', NULL, NULL),
(139, 4, 'Mauritania', 'Nouakchott', NULL, NULL),
(140, 4, 'Mauritius', 'Port Louis', NULL, NULL),
(141, 4, 'Mayotte', 'Mamoudzou', NULL, NULL),
(142, 4, 'Morocco', 'Rabat', NULL, NULL),
(143, 4, 'Mozambique', 'Maputo', NULL, NULL),
(144, 4, 'Namibia', 'Windhoek', NULL, NULL),
(145, 4, 'Niger', 'Niamey', NULL, NULL),
(146, 4, 'Nigeria', 'Abuja', NULL, NULL),
(147, 4, 'Republic of the Congo', 'Brazzaville', NULL, NULL),
(148, 4, 'Reunion', 'Saint-Denis', NULL, NULL),
(149, 4, 'Rwanda', 'Kigali', NULL, NULL),
(150, 4, 'Saint Helena, Ascension and Tristan da Cunha', 'Jamestown', NULL, NULL),
(151, 4, 'Sao Tome and Principe', 'São Tomé', NULL, NULL),
(152, 4, 'Senegal', 'Dakar', NULL, NULL),
(153, 4, 'Seychelles', 'Victoria', NULL, NULL),
(154, 4, 'Sierra Leone', 'Freetown', NULL, NULL),
(155, 4, 'Somalia', 'Mogadishu', NULL, NULL),
(156, 4, 'South Africa', 'Pretoria', NULL, NULL),
(157, 4, 'South Sudan', 'Juba', NULL, NULL),
(158, 4, 'Sudan', 'Khartoum', NULL, NULL),
(159, 4, 'Tanzania', 'Dodoma', NULL, NULL),
(160, 4, 'Togo', 'Lomé', NULL, NULL),
(161, 4, 'Tunisia', 'Tunis', NULL, NULL),
(162, 4, 'Uganda', 'Kampala', NULL, NULL),
(163, 4, 'Western Sahara', 'El Aaiún', NULL, NULL),
(164, 4, 'Zambia', 'Lusaka', NULL, NULL),
(165, 4, 'Zimbabwe', 'Harare', NULL, NULL),
(166, 7, 'American Samoa', 'Pago Pago', NULL, NULL),
(167, 7, 'Cook Islands', 'Avarua', NULL, NULL),
(168, 7, 'Fiji', 'Suva', NULL, NULL),
(169, 7, 'French Polynesia', 'Papeete', NULL, NULL),
(170, 7, 'Guam', 'Hagåtña', NULL, NULL),
(171, 7, 'Kiribati', 'Tarawa', NULL, NULL),
(172, 7, 'Marshall Islands', 'Majuro', NULL, NULL),
(173, 7, 'Nauru', 'Yaren', NULL, NULL),
(174, 7, 'New Caledonia', 'Nouméa', NULL, NULL),
(175, 7, 'Niue', 'Alofi', NULL, NULL),
(176, 7, 'Northern Mariana Islands', 'Saipan', NULL, NULL),
(177, 7, 'Papua New Guinea', 'Port Moresby', NULL, NULL),
(178, 7, 'Pitcairn Islands', 'Adamstown', NULL, NULL),
(179, 7, 'Samoa', 'Apia', NULL, NULL),
(180, 7, 'Solomon Islands', 'Honiara', NULL, NULL),
(181, 7, 'Tonga', 'Nuku‘alofa', NULL, NULL),
(182, 7, 'Tuvalu', 'Funafuti', NULL, NULL),
(183, 7, 'Vanuatu', 'Port-Vila', NULL, NULL),
(184, 7, 'Wallis and Futuna', 'Mata-Utu', NULL, NULL),
(185, 2, 'Brazil', 'Brasília', NULL, NULL),
(186, 2, 'Argentina', 'Buenos Aires', NULL, NULL),
(187, 2, 'Bolivia', 'Sucré', NULL, NULL),
(188, 2, 'Chile', 'Santiago', NULL, NULL),
(189, 2, 'Colombia', 'Bogotá', NULL, NULL),
(190, 2, 'Ecuador', 'Quito', NULL, NULL),
(191, 2, 'Falkland Islands', 'Stanley', NULL, NULL),
(192, 2, 'French Guiana', 'Cayenne', NULL, NULL),
(193, 2, 'Guyana', 'Georgetown', NULL, NULL),
(194, 2, 'Paraguay', 'Asunción', NULL, NULL),
(195, 2, 'Peru', 'Lima', NULL, NULL),
(196, 2, 'South Georgia and South Sandwich Islands', 'King Edward Point', NULL, NULL),
(197, 2, 'Suriname', 'Paramaribo', NULL, NULL),
(198, 2, 'Uruguay', 'Montevideo', NULL, NULL),
(199, 2, 'Venezuela', 'Caracas', NULL, NULL),
(200, 1, 'Canada', 'Ottawa', NULL, NULL),
(201, 1, 'United States of America ', 'Washington, District of Columbia', NULL, NULL),
(202, 1, 'Mexico', 'Mexico City', NULL, NULL),
(203, 1, 'Belize', 'Belmopan', NULL, NULL),
(204, 1, 'Antigua and Barbuda', 'St. John\'s', NULL, NULL),
(205, 1, 'Anguilla', 'The Valley', NULL, NULL),
(206, 1, 'Aruba', 'Oranjestad', NULL, '2021-06-08 06:02:53'),
(207, 1, 'The Bahamas', 'Nassau', NULL, NULL),
(208, 1, 'Barbados', 'Bridgetown', NULL, NULL),
(209, 1, 'Bermuda', 'Hamilton', NULL, NULL),
(210, 1, 'British Virgin Islands', 'Road Town', NULL, NULL),
(211, 1, 'Cayman Islands', 'George Town', NULL, NULL),
(212, 1, 'Costa Rica', 'San José', NULL, NULL),
(213, 1, 'Cuba', 'Havana', NULL, NULL),
(214, 1, 'Curacao', 'Willemstad', NULL, NULL),
(215, 1, 'Dominica', 'Roseau', NULL, NULL),
(216, 1, 'Dominican Republic', 'Santo Domingo', NULL, NULL),
(217, 1, 'El Salvador', 'San Salvador', NULL, NULL),
(218, 1, 'Greenland', 'Nuuk', NULL, NULL),
(219, 1, 'Grenada', 'Saint George\'s', NULL, NULL),
(220, 1, 'Guadeloupe', 'Basse-Terre', NULL, NULL),
(221, 1, 'Guatemala', 'Guatemala City', NULL, NULL),
(222, 1, 'Haiti', 'Port-au-Prince', NULL, NULL),
(223, 1, 'Honduras', 'Tegucigalpa', NULL, NULL),
(224, 1, 'Jamaica', 'Kingston', NULL, NULL),
(225, 1, 'Martinique', 'Fort-de-France', NULL, NULL),
(226, 1, 'Montserrat', 'Brades', NULL, NULL),
(227, 1, 'Nicaragua', 'Managua', NULL, NULL),
(228, 1, 'Panama', 'Panama City', NULL, NULL),
(229, 1, 'Puerto Rico', 'San Juan', NULL, NULL),
(230, 1, 'Saint Barthelemy', 'Gustavia', NULL, NULL),
(231, 1, 'Saint Kitts and Nevis', 'Basseterre', NULL, NULL),
(232, 1, 'Saint Lucia', 'Castries', NULL, NULL),
(233, 1, 'Saint Martin', 'Marigot', NULL, NULL),
(234, 1, 'Saint Pierre and Miquelon', 'Saint-Pierre', NULL, NULL),
(235, 1, 'Saint Vincent and the Grenadines', 'Kingstown', NULL, NULL),
(236, 1, 'Sint Maarten', 'Philipsburg', NULL, NULL),
(237, 1, 'Trinidad and Tobago', 'Port-of-Spain', NULL, NULL),
(238, 1, 'Turks and Caicos Islands', 'Cockburn Town', NULL, NULL),
(239, 1, 'Virgin Islands', 'Charlotte Amalie', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_30_155353_create_countries_table', 1),
(5, '2021_05_30_155445_create_continents_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Indexes for table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `continents`
--
ALTER TABLE `continents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
