-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 Eyl 2018, 08:40:19
-- Sunucu sürümü: 10.1.30-MariaDB
-- PHP Sürümü: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bacas_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `cities`
--

INSERT INTO `cities` (`id`, `name`, `slug`, `created_at`, `updated_at`, `number`) VALUES
(1, 'Adana', 'adana', NULL, NULL, NULL),
(2, 'Adıyaman', 'adiyaman', NULL, NULL, NULL),
(3, 'Afyonkarahisar', 'afyonkarahisar', NULL, NULL, NULL),
(4, 'Ağrı', 'agri', NULL, NULL, NULL),
(5, 'Amasya', 'amasya', NULL, NULL, NULL),
(6, 'Ankara', 'ankara', NULL, NULL, NULL),
(7, 'Antalya', 'antalya', NULL, NULL, NULL),
(8, 'Artvin', 'artvin', NULL, NULL, NULL),
(9, 'Aydın', 'aydin', NULL, NULL, NULL),
(10, 'Balıkesir', 'balikesir', NULL, NULL, NULL),
(11, 'Bilecik', 'bilecik', NULL, NULL, NULL),
(12, 'Bingöl', 'bingol', NULL, NULL, NULL),
(13, 'Bitlis', 'bitlis', NULL, NULL, NULL),
(14, 'Bolu', 'bolu', NULL, NULL, NULL),
(15, 'Burdur', 'burdur', NULL, NULL, NULL),
(16, 'Bursa', 'bursa', NULL, NULL, NULL),
(17, 'Çanakkale', 'canakkale', NULL, NULL, NULL),
(18, 'Çankırı', 'cankiri', NULL, NULL, NULL),
(19, 'Çorum', 'corum', NULL, NULL, NULL),
(20, 'Denizli', 'denizli', NULL, NULL, NULL),
(21, 'Diyarbakır', 'diyarbakir', NULL, NULL, NULL),
(22, 'Edirne', 'edirne', NULL, NULL, NULL),
(23, 'Elazığ', 'elazig', NULL, NULL, NULL),
(24, 'Erzincan', 'erzincan', NULL, NULL, NULL),
(25, 'Erzurum', 'erzurum', NULL, NULL, NULL),
(26, 'Eskişehir', 'eskisehir', NULL, NULL, NULL),
(27, 'Gaziantep', 'gaziantep', NULL, NULL, NULL),
(28, 'Giresun', 'giresun', NULL, NULL, NULL),
(29, 'Gümüşhane', 'gumushane', NULL, NULL, NULL),
(30, 'Hakkari', 'hakkari', NULL, NULL, NULL),
(31, 'Hatay', 'hatay', NULL, NULL, NULL),
(32, 'Isparta', 'isparta', NULL, NULL, NULL),
(33, 'Mersin', 'mersin', NULL, NULL, NULL),
(34, 'İstanbul', 'istanbul', NULL, NULL, NULL),
(35, 'İzmir', 'izmir', NULL, NULL, NULL),
(36, 'Kars', 'kars', NULL, NULL, NULL),
(37, 'Kastamonu', 'kastamonu', NULL, NULL, NULL),
(38, 'Kayseri', 'kayseri', NULL, NULL, NULL),
(39, 'Kırklareli', 'kirklareli', NULL, NULL, NULL),
(40, 'Kırşehir', 'kirsehir', NULL, NULL, NULL),
(41, 'Kocaeli', 'kocaeli', NULL, NULL, NULL),
(42, 'Konya', 'konya', NULL, NULL, NULL),
(43, 'Kütahya', 'kutahya', NULL, NULL, NULL),
(44, 'Malatya', 'malatya', NULL, NULL, NULL),
(45, 'Manisa', 'manisa', NULL, NULL, NULL),
(46, 'Kahramanmaraş', 'kahramanmaras', NULL, NULL, NULL),
(47, 'Mardin', 'mardin', NULL, NULL, NULL),
(48, 'Muğla', 'mugla', NULL, NULL, NULL),
(49, 'Muş', 'mus', NULL, NULL, NULL),
(50, 'Nevşehir', 'nevsehir', NULL, NULL, NULL),
(51, 'Niğde', 'nigde', NULL, NULL, NULL),
(52, 'Ordu', 'ordu', NULL, NULL, NULL),
(53, 'Rize', 'rize', NULL, NULL, NULL),
(54, 'Sakarya', 'sakarya', NULL, NULL, NULL),
(55, 'Samsun', 'samsun', NULL, NULL, NULL),
(56, 'Siirt', 'siirt', NULL, NULL, NULL),
(57, 'Sinop', 'sinop', NULL, NULL, NULL),
(58, 'Sivas', 'sivas', NULL, NULL, NULL),
(59, 'Tekirdağ', 'tekirdag', NULL, NULL, NULL),
(60, 'Tokat', 'tokat', NULL, NULL, NULL),
(61, 'Trabzon', 'trabzon', NULL, NULL, NULL),
(62, 'Tunceli', 'tunceli', NULL, NULL, NULL),
(63, 'Şanlıurfa', 'sanliurfa', NULL, NULL, NULL),
(64, 'Uşak', 'usak', NULL, NULL, NULL),
(65, 'Van', 'van', NULL, NULL, NULL),
(66, 'Yozgat', 'yozgat', NULL, NULL, NULL),
(67, 'Zonguldak', 'zonguldak', NULL, NULL, NULL),
(68, 'Aksaray', 'aksaray', NULL, NULL, NULL),
(69, 'Bayburt', 'bayburt', NULL, NULL, NULL),
(70, 'Karaman', 'karaman', NULL, NULL, NULL),
(71, 'Kırıkkale', 'kirikkale', NULL, NULL, NULL),
(72, 'Batman', 'batman', NULL, NULL, NULL),
(73, 'Şırnak', 'sirnak', NULL, NULL, NULL),
(74, 'Bartın', 'bartin', NULL, NULL, NULL),
(75, 'Ardahan', 'ardahan', NULL, NULL, NULL),
(76, 'Iğdır', 'igdir', NULL, NULL, NULL),
(77, 'Yalova', 'yalova', NULL, NULL, NULL),
(78, 'Karabük', 'karabuk', NULL, NULL, NULL),
(79, 'Kilis', 'kilis', NULL, NULL, NULL),
(80, 'Osmaniye', 'osmaniye', NULL, NULL, NULL),
(81, 'Düzce', 'duzce', NULL, NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
