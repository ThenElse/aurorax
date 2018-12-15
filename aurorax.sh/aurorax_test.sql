-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 15 Ara 2018, 04:02:06
-- Sunucu sürümü: 5.7.24-0ubuntu0.16.04.1
-- PHP Sürümü: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `aurorax_test`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `all_today`
--

CREATE TABLE `all_today` (
  `id` int(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `tarih` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `today`
--

CREATE TABLE `today` (
  `id` int(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `tarih` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `all_today`
--
ALTER TABLE `all_today`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `today`
--
ALTER TABLE `today`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `all_today`
--
ALTER TABLE `all_today`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- Tablo için AUTO_INCREMENT değeri `today`
--
ALTER TABLE `today`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
