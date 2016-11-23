-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.27 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for db_block
CREATE DATABASE IF NOT EXISTS `db_block` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_block`;


-- Dumping structure for table db_block.artikel
CREATE TABLE IF NOT EXISTS `artikel` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) DEFAULT '0',
  `tanggal` varchar(255) DEFAULT '0',
  `judul` varchar(255) DEFAULT '0',
  `kategori` int(255) DEFAULT '0',
  `isi` varchar(255) DEFAULT '0',
  `keterangan` varchar(255) DEFAULT '0',
  `autor` int(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table db_block.artikel: ~3 rows (approximately)
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
REPLACE INTO `artikel` (`id`, `gambar`, `tanggal`, `judul`, `kategori`, `isi`, `keterangan`, `autor`) VALUES
	(1, 'cartoons-war_00363364.jpg', '2016-10-11', 'gambar monyet', 1, 'menyediakan informasi tentang monyet dan sekitarnya', 'agar pembaca dapat memahami karakteristik monyet', 1),
	(2, 'T6SCDevilJinAzazel005.png', '2016-10-11', 'gambar naga', 2, 'menyediakan informasi tentang naga dan anak2nya', 'agar pembaca dapat memahami karakteristik naga dll', 2),
	(3, 'Ekor 7.jpg', '2016-10-11', 'gambar kucing', 3, 'menyediakan informasi tentang kucing dan jenisnya', 'agar pembaca dapat memahami karakteristik kucing dll', 1);
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;


-- Dumping structure for table db_block.autor
CREATE TABLE IF NOT EXISTS `autor` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `audit` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table db_block.autor: ~2 rows (approximately)
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
REPLACE INTO `autor` (`id`, `audit`) VALUES
	(1, 'mukidi.net'),
	(2, 'wawan.net');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;


-- Dumping structure for table db_block.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table db_block.kategori: ~3 rows (approximately)
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
REPLACE INTO `kategori` (`id`, `kategori`) VALUES
	(1, 'anak-anak'),
	(2, 'sedang'),
	(3, 'dewasa');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
