/*
Navicat MySQL Data Transfer

Source Server         : DoAn
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : examonline

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2016-12-13 11:03:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cauhoi
-- ----------------------------
DROP TABLE IF EXISTS `cauhoi`;
CREATE TABLE `cauhoi` (
  `MaCH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhuongAnA` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhuongAnB` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhuongAnC` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhuongAnD` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DapAn` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaMH` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaND` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaCH`),
  KEY `MaMH` (`MaMH`),
  KEY `MaND` (`MaND`),
  CONSTRAINT `cauhoi_ibfk_1` FOREIGN KEY (`MaMH`) REFERENCES `monhoc` (`MaMH`),
  CONSTRAINT `cauhoi_ibfk_2` FOREIGN KEY (`MaND`) REFERENCES `noidungthi` (`MaND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cauhoi
-- ----------------------------
INSERT INTO `cauhoi` VALUES ('CH002', 'Wondershare Filmora', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'JSP');
INSERT INTO `cauhoi` VALUES ('CH003', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'JSP');
INSERT INTO `cauhoi` VALUES ('CH004', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'JSP');
INSERT INTO `cauhoi` VALUES ('CH005', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'Servlet');
INSERT INTO `cauhoi` VALUES ('CH006', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'JSP');
INSERT INTO `cauhoi` VALUES ('CH007', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'JSP');
INSERT INTO `cauhoi` VALUES ('CH008', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'JSP');
INSERT INTO `cauhoi` VALUES ('CH009', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'JSP');
INSERT INTO `cauhoi` VALUES ('CH010', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'JSP');
INSERT INTO `cauhoi` VALUES ('CH011', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'JSP');
INSERT INTO `cauhoi` VALUES ('CH012', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'JSP');
INSERT INTO `cauhoi` VALUES ('CH013', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'Servlet');
INSERT INTO `cauhoi` VALUES ('CH014', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'A', 'LTW', 'Servlet');
INSERT INTO `cauhoi` VALUES ('CH020', 'aaaaaa', 'aaaa', 'bbbb', 'cccc', 'dddd', 'D', 'LTW', 'JSP');

-- ----------------------------
-- Table structure for ctdethi
-- ----------------------------
DROP TABLE IF EXISTS `ctdethi`;
CREATE TABLE `ctdethi` (
  `MaDe` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaCH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaDe`,`MaCH`),
  KEY `MaCH` (`MaCH`),
  CONSTRAINT `ctdethi_ibfk_1` FOREIGN KEY (`MaDe`) REFERENCES `dethi` (`MaDe`),
  CONSTRAINT `ctdethi_ibfk_2` FOREIGN KEY (`MaCH`) REFERENCES `cauhoi` (`MaCH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ctdethi
-- ----------------------------
INSERT INTO `ctdethi` VALUES ('DE001', 'CH002');
INSERT INTO `ctdethi` VALUES ('DE001', 'CH003');
INSERT INTO `ctdethi` VALUES ('DE001', 'CH004');
INSERT INTO `ctdethi` VALUES ('DE001', 'CH006');
INSERT INTO `ctdethi` VALUES ('DE001', 'CH007');
INSERT INTO `ctdethi` VALUES ('DE001', 'CH008');
INSERT INTO `ctdethi` VALUES ('DE001', 'CH009');
INSERT INTO `ctdethi` VALUES ('DE001', 'CH010');
INSERT INTO `ctdethi` VALUES ('DE001', 'CH011');
INSERT INTO `ctdethi` VALUES ('DE001', 'CH012');
INSERT INTO `ctdethi` VALUES ('DE001', 'CH013');

-- ----------------------------
-- Table structure for ctthi
-- ----------------------------
DROP TABLE IF EXISTS `ctthi`;
CREATE TABLE `ctthi` (
  `MaDe` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `UserName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Diem` double(2,1) DEFAULT NULL,
  PRIMARY KEY (`MaDe`,`UserName`),
  KEY `UserName` (`UserName`),
  CONSTRAINT `ctthi_ibfk_1` FOREIGN KEY (`UserName`) REFERENCES `thi` (`UserName`),
  CONSTRAINT `ctthi_ibfk_2` FOREIGN KEY (`MaDe`) REFERENCES `thi` (`MaDe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ctthi
-- ----------------------------
INSERT INTO `ctthi` VALUES ('DE001', 'sv1', '6.3');

-- ----------------------------
-- Table structure for dethi
-- ----------------------------
DROP TABLE IF EXISTS `dethi`;
CREATE TABLE `dethi` (
  `MaDe` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenDe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiGian` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaDe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dethi
-- ----------------------------
INSERT INTO `dethi` VALUES ('DE001', 'Giữa kỳ lập trình web', '10');

-- ----------------------------
-- Table structure for kythi
-- ----------------------------
DROP TABLE IF EXISTS `kythi`;
CREATE TABLE `kythi` (
  `MaDe` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaLop` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` time DEFAULT NULL,
  `NgayThi` date DEFAULT NULL,
  `PhongThi` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaDe`,`MaLop`),
  KEY `MaLop` (`MaLop`),
  CONSTRAINT `kythi_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `users` (`MaLop`),
  CONSTRAINT `kythi_ibfk_2` FOREIGN KEY (`MaDe`) REFERENCES `dethi` (`MaDe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of kythi
-- ----------------------------
INSERT INTO `kythi` VALUES ('DE001', '141101', '10:48:00', '2016-12-13', 'A5-302');

-- ----------------------------
-- Table structure for monhoc
-- ----------------------------
DROP TABLE IF EXISTS `monhoc`;
CREATE TABLE `monhoc` (
  `MaMH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenMH` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of monhoc
-- ----------------------------
INSERT INTO `monhoc` VALUES ('LTW', 'Lập trình web');

-- ----------------------------
-- Table structure for noidungthi
-- ----------------------------
DROP TABLE IF EXISTS `noidungthi`;
CREATE TABLE `noidungthi` (
  `MaND` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenND` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaMH` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaND`),
  KEY `MaMH` (`MaMH`),
  CONSTRAINT `noidungthi_ibfk_1` FOREIGN KEY (`MaMH`) REFERENCES `monhoc` (`MaMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of noidungthi
-- ----------------------------
INSERT INTO `noidungthi` VALUES ('JSP', 'Lập trình JSP', 'LTW');
INSERT INTO `noidungthi` VALUES ('Servlet', 'Servlet', 'LTW');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `RoleID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `RoleName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('Admin', 'Admin');
INSERT INTO `role` VALUES ('QLD', 'Quản lý đề thi');
INSERT INTO `role` VALUES ('QLKT', 'Quản lý kỳ thi');
INSERT INTO `role` VALUES ('QLNHCH', 'Quản trị ngân hàng câu hỏi');
INSERT INTO `role` VALUES ('SV', 'Sinh viên');

-- ----------------------------
-- Table structure for thi
-- ----------------------------
DROP TABLE IF EXISTS `thi`;
CREATE TABLE `thi` (
  `UserName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MaDe` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaCH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DAUser` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Diem` int(2) DEFAULT NULL,
  PRIMARY KEY (`UserName`,`MaDe`,`MaCH`),
  KEY `MaDe` (`MaDe`),
  KEY `MaCH` (`MaCH`),
  KEY `UserName` (`UserName`),
  CONSTRAINT `thi_ibfk_1` FOREIGN KEY (`UserName`) REFERENCES `users` (`UserName`),
  CONSTRAINT `thi_ibfk_2` FOREIGN KEY (`MaDe`) REFERENCES `dethi` (`MaDe`),
  CONSTRAINT `thi_ibfk_3` FOREIGN KEY (`MaCH`) REFERENCES `cauhoi` (`MaCH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of thi
-- ----------------------------
INSERT INTO `thi` VALUES ('sv1', 'DE001', 'CH002', 'A', '1');
INSERT INTO `thi` VALUES ('sv1', 'DE001', 'CH003', 'B', '0');
INSERT INTO `thi` VALUES ('sv1', 'DE001', 'CH004', 'A', '1');
INSERT INTO `thi` VALUES ('sv1', 'DE001', 'CH006', 'B', '0');
INSERT INTO `thi` VALUES ('sv1', 'DE001', 'CH007', 'A', '1');
INSERT INTO `thi` VALUES ('sv1', 'DE001', 'CH008', 'A', '1');
INSERT INTO `thi` VALUES ('sv1', 'DE001', 'CH009', 'A', '1');
INSERT INTO `thi` VALUES ('sv1', 'DE001', 'CH010', 'A', '1');
INSERT INTO `thi` VALUES ('sv1', 'DE001', 'CH011', 'A', '1');
INSERT INTO `thi` VALUES ('sv1', 'DE001', 'CH012', 'B', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `UserName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `NumberPhone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaLop` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RoleID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`UserName`),
  KEY `RoleID` (`RoleID`),
  KEY `MaLop` (`MaLop`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('Admin', '12345678', 'Phong', 'male', '1996-08-15', '01675946414', 'Thu Duc', 'admin@gmail.com', '', 'Admin');
INSERT INTO `users` VALUES ('qlch', '123456', 'Uy', 'male', '2016-12-23', '0784734343', null, 'phongtttt@gmail.com', '', 'QLNHCH');
INSERT INTO `users` VALUES ('qld', '123456', 'Quang', null, null, '0167584332', null, 'qld@gmail.com', '', 'QLD');
INSERT INTO `users` VALUES ('qlkt', '123456', 'Thanh', null, null, '0156775454', null, 'abc@gmail.com', '', 'QLKT');
INSERT INTO `users` VALUES ('sv1', '123456', 'Phong', 'male', '2016-12-22', '01675946536', 'Thu Duc', 'phongt@gmail.com', '141101', 'SV');
INSERT INTO `users` VALUES ('sv2', '123456', 'Trang', '', '2016-12-28', '3232344545', null, 'phongtsd@gmail.com', '141101', 'SV');
