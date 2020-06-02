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

-- Volcando estructura para tabla fgbdd.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `CORREO` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `CONTRASENA` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `ROL` varchar(1) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'C',
  PRIMARY KEY (`CORREO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla fgbdd.usuario: ~30 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`CORREO`, `CONTRASENA`, `ROL`) VALUES
	('beto_porras@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'P'),
	('carlos_moon@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'E'),
	('cod_glzhdz@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'A'),
	('fco_camero@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'A'),
	('gabo_pdrz@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'C'),
	('gera_arevalo@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'P'),
	('hugo_hdz@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'E'),
	('isma_glz@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'C'),
	('isra_camero@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'P'),
	('ivan_jrz@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'P'),
	('jose_jose@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'P'),
	('jose_vela@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'E'),
	('juan_jrz@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'P'),
	('juan_soto@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'C'),
	('karla_hurtado@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'E'),
	('lalo_segovia@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'E'),
	('luis_miguel@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'P'),
	('mago_card@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'C'),
	('marohdzg@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'A'),
	('memo_vazquez@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'P'),
	('misa_gtz@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'E'),
	('omar_ortiz@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'C'),
	('Orlando_lpz@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'E'),
	('pedro_garza@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'C'),
	('pepe_wong@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'C'),
	('poncho_glz@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'E'),
	('rick_gmz@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'C'),
	('roberto_landeros@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'C'),
	('tavo@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'P'),
	('tomas_carpedr@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'E'),
	('vieyra_beto@codeux.com', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'P');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
