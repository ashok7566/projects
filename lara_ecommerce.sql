-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 08:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ELECTRONICS', '1', '2021-04-25 00:58:19', '2021-04-25 00:58:19'),
(2, 1, 'Cameras', '1', '2021-04-25 01:02:08', '2021-04-25 02:44:02'),
(3, 1, 'Hard Disk', '1', '2021-04-25 01:03:16', '2021-05-15 03:20:59'),
(4, NULL, 'CLOTHES', '1', '2021-04-25 01:03:40', '2021-04-25 01:03:40'),
(7, 4, 'Shoes', '1', '2021-05-15 03:18:29', '2021-05-15 03:18:41');

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
(4, '2021_04_23_162019_create_categories_table', 2),
(5, '2021_04_28_154042_create_products_table', 3),
(6, '2021_05_15_080353_create_product_details_table', 4),
(7, '2021_05_16_150457_create_carts_table', 5),
(8, '2021_05_23_062114_create_product_bookings_table', 6);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'camera small type 1', '222', '130520211620921833.jpg', '1', '2021-05-13 10:33:53', '2021-05-15 03:15:54'),
(4, 2, 'camera middle', '234', '150520211621068297.jpg', '1', '2021-05-15 03:09:13', '2021-05-15 03:14:57'),
(5, 2, 'Black camera', '234', '150520211621068404.jpg', '1', '2021-05-15 03:16:44', '2021-05-15 03:16:44'),
(6, 2, 'black small', '200', '150520211621068451.jpg', '1', '2021-05-15 03:17:31', '2021-05-15 03:17:31'),
(7, 7, 'shoe type 1', '500', '150520211621068549.jpg', '1', '2021-05-15 03:19:09', '2021-05-15 03:19:09'),
(8, 7, 'shoe black', '400', '150520211621068575.jpg', '1', '2021-05-15 03:19:35', '2021-05-15 03:19:35'),
(9, 7, 'shoe type 2', '400', '150520211621068602.jpg', '1', '2021-05-15 03:20:02', '2021-05-15 03:20:02'),
(10, 3, 'sanddisk 8 gb', '100', '150520211621068713.jpg', '1', '2021-05-15 03:21:53', '2021-05-15 03:21:53'),
(11, 3, 'sandisk 16gb', '200', '150520211621068749.jpg', '1', '2021-05-15 03:22:29', '2021-05-15 03:22:29'),
(12, 3, 'pandrive', '300', '150520211621068774.jpg', '1', '2021-05-15 03:22:54', '2021-05-15 03:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `product_bookings`
--

CREATE TABLE `product_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_bookings`
--

INSERT INTO `product_bookings` (`id`, `user_id`, `product_id`, `qty`, `payment_status`, `booking_status`, `created_at`, `updated_at`) VALUES
(1, 5, 6, '2', '1', 2, '2021-05-24 16:34:28', '2021-06-05 10:21:25'),
(4, 5, 6, '1', '0', 1, '2021-05-24 16:38:52', '2021-06-05 10:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_items` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `title`, `total_items`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fujifilm FinePix S2950 Digital Camera', '10', '14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen. Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity ISO6400 at reduced resolution. Tracking Auto Focus. Motion Panorama Mode. Face Detection technology with Blink detection and Smile and shoot mode. 4 x AA batteries not included. WxDxH 110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and memory card). Weight 0.437kg (including battery and memory card).', '2021-05-15 02:52:58', '2021-05-15 03:08:38'),
(2, 4, 'Fujifilm FinePix S2950 Digital Camera', '200', '14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen. Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity ISO6400 at reduced resolution. Tracking Auto Focus. Motion Panorama Mode. Face Detection technology with Blink detection and Smile and shoot mode. 4 x AA batteries not included. WxDxH 110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and memory card). Weight 0.437kg (including battery and memory card).', '2021-05-15 03:09:32', '2021-05-15 03:15:37'),
(3, 5, 'Fujifilm FinePix S2950 Digital Camera', '205', '14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen. Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity ISO6400 at reduced resolution. Tracking Auto Focus. Motion Panorama Mode. Face Detection technology with Blink detection and Smile and shoot mode. 4 x AA batteries not included. WxDxH 110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and memory card). Weight 0.437kg (including battery and memory card).', '2021-05-15 03:24:27', '2021-05-15 03:24:27'),
(4, 6, 'Fujifilm  Digital Camera', '140', '14 Megapixels. 18.0 x Optical Zoom. 3.0-inch LCD Screen. Full HD photos and 1280 x 720p HD movie capture. ISO sensitivity ISO6400 at reduced resolution. Tracking Auto Focus. Motion Panorama Mode. Face Detection technology with Blink detection and Smile and shoot mode. 4 x AA batteries not included. WxDxH 110.2 ×81.4x73.4mm. Weight 0.341kg (excluding battery and memory card). Weight 0.437kg (including battery and memory card).', '2021-05-15 03:24:50', '2021-05-15 03:24:50'),
(5, 7, 'Fujifilm FinePix shoe type 1', '200', 'this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.', '2021-05-15 03:26:54', '2021-05-15 03:26:54'),
(6, 8, 'Fujifilm FinePix shoe black', '34', 'this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.', '2021-05-15 03:27:25', '2021-05-15 03:27:25'),
(7, 9, 'Fujifilm FinePix shoe type 2', '34', 'this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.this product is related to cloths and it is shoes.', '2021-05-15 03:28:18', '2021-05-15 03:28:18'),
(8, 10, 'product sanddisk 8 gb', '400', 'this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.', '2021-05-15 03:30:33', '2021-05-15 03:30:33'),
(9, 11, 'product sandisk 16gb', '300', 'this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.', '2021-05-15 03:31:12', '2021-05-15 03:31:12'),
(10, 12, 'This product pandrive', '234', 'this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.this is a storage device of type electronics.', '2021-05-15 03:32:00', '2021-05-15 03:32:00');

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
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$xZI5pHB4Wqc2XUyLezM6XuuUgOXkdxxc1D.TZVrV9BUgwa997bizy', 'admin', NULL, NULL, NULL),
(5, 'Anmol Sharma', 'anmol@gmail.com', NULL, '$2y$10$FZrDI1J35nlQyhmGIAUnc.HnUl3dulRXKEFzlE4M0QozihDOk92iO', 'user', NULL, '2021-05-20 10:06:39', '2021-05-20 10:06:39'),
(6, 'asd sdfg', 'as@as', NULL, '$2y$10$Sn4ZKaU7Va8kjQjmfNrps.jZ8WL37qErLQJ6.209ue7TVq8xR.RCu', 'user', NULL, '2021-05-23 01:38:20', '2021-05-23 01:38:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_category_id_foreign` (`category_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_bookings`
--
ALTER TABLE `product_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_bookings_user_id_foreign` (`user_id`),
  ADD KEY `product_bookings_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_details_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_bookings`
--
ALTER TABLE `product_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_bookings`
--
ALTER TABLE `product_bookings`
  ADD CONSTRAINT `product_bookings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
