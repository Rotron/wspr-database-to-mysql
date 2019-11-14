SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wspr
-- ----------------------------
DROP TABLE IF EXISTS `wspr`;
CREATE TABLE `wspr` (
  `spotid` bigint(20) NOT NULL,
  `spot_time` int(11) DEFAULT NULL,
  `reporter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reporters_locator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `snr` int(11) DEFAULT NULL,
  `frequency` double(255,0) DEFAULT NULL,
  `callsign` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tx_locator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_power` double(255,0) DEFAULT NULL,
  `drift` double(255,0) DEFAULT NULL,
  `distance` double DEFAULT NULL,
  `azimuth` double DEFAULT NULL,
  `band` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`spotid`,`callsign`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
