-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.11-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para fgbdd
CREATE DATABASE IF NOT EXISTS `fgbdd` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `fgbdd`;

-- Volcando estructura para tabla fgbdd.proveedor
CREATE TABLE IF NOT EXISTS `proveedor` (
  `CLAVEPROV` smallint(6) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `APELLIDOP` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `APELLIDOM` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NUMTEL` bigint(20) DEFAULT NULL,
  `CORREO` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `ROL` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`CLAVEPROV`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla fgbdd.proveedor: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` (`CLAVEPROV`, `NOMBRE`, `APELLIDOP`, `APELLIDOM`, `NUMTEL`, `CORREO`, `ROL`) VALUES
	(2, 'Roberto', 'Vieyra', 'López', 86793020, 'vieyra_beto@codeux.com', 'P'),
	(3, 'Gustavo', 'Martínez', 'Lopez', 811399200, 'tavo@codeux.com', 'P'),
	(4, 'Gerardo', 'Ríos', 'Arevalo', 812399920, 'gera_arevalo@codeux.com', 'P'),
	(5, 'Israel', 'González', 'Camero', 812939203, 'isra_camero@codeux.com', 'P'),
	(6, 'Guillermo', 'Vázquez', 'Gallardo', 833849390, 'memo_vazquez@codeux.com', 'P'),
	(7, 'Luis', 'Gallego', 'Basteri', 8881929300, 'comodishe@codeux.com', 'P'),
	(8, 'José', 'Sosa', 'Ortíz', 8729039200, 'jose_jose@codeux.com', 'P'),
	(9, 'Juan', 'Baltazar', 'Juarez', 8729039200, 'juan_jrz@codeux.com', 'P'),
	(10, 'Iván', 'Alfaro', 'Juarez', 872300290, 'ivan_jrz@codeux.com', 'P');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
