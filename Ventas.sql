-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.21-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para ventas
CREATE DATABASE IF NOT EXISTS `ventas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `ventas`;

-- Volcando estructura para tabla ventas.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla ventas.categoria: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`idCategoria`, `categoria`) VALUES
	(1, 'ELECTRODOMESTICOS'),
	(2, 'HERRAMIENTAS'),
	(3, 'MEDICAMENTOS');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;

-- Volcando estructura para tabla ventas.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `NIT` varchar(45) DEFAULT NULL,
  `NRC` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla ventas.cliente: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`idCliente`, `nombre`, `direccion`, `email`, `telefono`, `NIT`, `NRC`) VALUES
	(1, 'JUAN ANTOIO', 'SOSONATE', 'USER1@GMAIL.COM', '24526352', '417896-125-4', '4789'),
	(2, 'JAIME ENRIQUE AREVALO', 'SAN SALVADOR', 'JAIMESA@GMAIL.COM', '22215478', '2525-789652-104-5', '7458'),
	(3, 'SOFIA AYALA', 'SANTA ANA', 'SOA@GMAIL.COM', '6528974', '2136-414152-021-5', '1126');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla ventas.compra
CREATE TABLE IF NOT EXISTS `compra` (
  `idCompra` int(11) NOT NULL AUTO_INCREMENT,
  `idProveedor` int(11) NOT NULL,
  `nComprobante` varchar(20) NOT NULL,
  `fecha` datetime NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) NOT NULL,
  `iva` decimal(10,2) NOT NULL,
  `totalPago` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idCompra`),
  KEY `idx_proveedor1` (`idProveedor`),
  CONSTRAINT `fk_proveedor1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla ventas.compra: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;

-- Volcando estructura para tabla ventas.compra_detalle
CREATE TABLE IF NOT EXISTS `compra_detalle` (
  `idDetalleCompra` int(11) NOT NULL AUTO_INCREMENT,
  `idCompra` int(11) NOT NULL,
  `idProducto` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `subTotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idDetalleCompra`),
  KEY `idx_producto2` (`idProducto`),
  KEY `idx_compra1` (`idCompra`),
  CONSTRAINT `fk_compra1` FOREIGN KEY (`idCompra`) REFERENCES `compra` (`idCompra`) ON UPDATE CASCADE,
  CONSTRAINT `fk_producto2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla ventas.compra_detalle: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `compra_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_detalle` ENABLE KEYS */;

-- Volcando estructura para tabla ventas.marca
CREATE TABLE IF NOT EXISTS `marca` (
  `idMarca` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla ventas.marca: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` (`idMarca`, `marca`) VALUES
	(1, 'SONY'),
	(2, 'PANASONIC'),
	(3, 'LG'),
	(4, 'MABE'),
	(5, 'CETRON');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;

-- Volcando estructura para tabla ventas.presentacion
CREATE TABLE IF NOT EXISTS `presentacion` (
  `idPresentacion` int(11) NOT NULL AUTO_INCREMENT,
  `presentacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPresentacion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla ventas.presentacion: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `presentacion` DISABLE KEYS */;
INSERT INTO `presentacion` (`idPresentacion`, `presentacion`) VALUES
	(1, 'UNIDAD'),
	(2, 'CAJA'),
	(3, 'LITRO');
/*!40000 ALTER TABLE `presentacion` ENABLE KEYS */;

-- Volcando estructura para tabla ventas.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `idCategoria` int(11) DEFAULT NULL,
  `idPresentacion` int(11) DEFAULT NULL,
  `idMarca` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `costo` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `idx_categoria1` (`idCategoria`),
  KEY `idx_presentacion2` (`idPresentacion`),
  KEY `idx_marca1` (`idMarca`),
  CONSTRAINT `fk_categoria1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`),
  CONSTRAINT `fk_marca1` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`),
  CONSTRAINT `fk_presentacion2` FOREIGN KEY (`idPresentacion`) REFERENCES `presentacion` (`idPresentacion`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla ventas.producto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

-- Volcando estructura para tabla ventas.proveedor
CREATE TABLE IF NOT EXISTS `proveedor` (
  `idProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) NOT NULL,
  `direccion` varchar(70) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `NIT` varchar(45) NOT NULL,
  `NRC` varchar(25) NOT NULL,
  `contacto` varchar(45) NOT NULL,
  PRIMARY KEY (`idProveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla ventas.proveedor: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` (`idProveedor`, `nombre`, `direccion`, `email`, `telefono`, `NIT`, `NRC`, `contacto`) VALUES
	(1, 'MAXIDESPENSA', 'SAN SALVADOR', 'MAXI@GAMIL.COM', '2451414', '0425-541525-101-4', '4525', 'OSCAR VALLE'),
	(2, 'WALMART', 'SANTA ANA', 'WSA@GMAIL.COM', '45254547', '4152-415263-458-7', '4445', 'MIGUEL GOMEZ');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;

-- Volcando estructura para tabla ventas.venta
CREATE TABLE IF NOT EXISTS `venta` (
  `idVenta` int(11) NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `iva` decimal(10,2) NOT NULL,
  `totalPago` decimal(10,2) NOT NULL,
  `nFactura` varchar(15) NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `idx_cliente1` (`idCliente`),
  CONSTRAINT `fk_cliente1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla ventas.venta: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;

-- Volcando estructura para tabla ventas.venta_detalle
CREATE TABLE IF NOT EXISTS `venta_detalle` (
  `idDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `idVenta` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `subTotal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idDetalle`),
  KEY `idx_producto4` (`idProducto`),
  KEY `idx_venta1` (`idVenta`),
  CONSTRAINT `fk_producto4` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `fk_venta1` FOREIGN KEY (`idVenta`) REFERENCES `venta` (`idVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla ventas.venta_detalle: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `venta_detalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta_detalle` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
