/*
MySQL Backup
Source Server Version: 5.7.13
Source Database: examonline
Date: 11/8/2016 15:25:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `cauhoi`
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
  `Diem` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaMH` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaND` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaCH`),
  KEY `MaMH` (`MaMH`),
  KEY `MaND` (`MaND`),
  CONSTRAINT `cauhoi_ibfk_1` FOREIGN KEY (`MaMH`) REFERENCES `monhoc` (`MaMH`),
  CONSTRAINT `cauhoi_ibfk_2` FOREIGN KEY (`MaND`) REFERENCES `noidung` (`MaND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `dethi`
-- ----------------------------
DROP TABLE IF EXISTS `dethi`;
CREATE TABLE `dethi` (
  `MaDe` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaCH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaDe`,`MaCH`),
  KEY `MaCH` (`MaCH`),
  CONSTRAINT `dethi_ibfk_1` FOREIGN KEY (`MaCH`) REFERENCES `cauhoi` (`MaCH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `kythi`
-- ----------------------------
DROP TABLE IF EXISTS `kythi`;
CREATE TABLE `kythi` (
  `MaDe` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` time DEFAULT NULL,
  `NgayThi` datetime DEFAULT NULL,
  `Phong` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaLop` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaDe`),
  KEY `MaLop` (`MaLop`),
  CONSTRAINT `kythi_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `lop`
-- ----------------------------
DROP TABLE IF EXISTS `lop`;
CREATE TABLE `lop` (
  `MaLop` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenLop` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaLop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `monhoc`
-- ----------------------------
DROP TABLE IF EXISTS `monhoc`;
CREATE TABLE `monhoc` (
  `MaMH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenMH` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `noidung`
-- ----------------------------
DROP TABLE IF EXISTS `noidung`;
CREATE TABLE `noidung` (
  `MaND` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenND` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaMH` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaND`),
  KEY `MaMH` (`MaMH`),
  CONSTRAINT `noidung_ibfk_1` FOREIGN KEY (`MaMH`) REFERENCES `monhoc` (`MaMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `RoleID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `RoleName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `thi`
-- ----------------------------
DROP TABLE IF EXISTS `thi`;
CREATE TABLE `thi` (
  `UserName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MaDe` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Diem` float DEFAULT NULL,
  PRIMARY KEY (`UserName`,`MaDe`),
  KEY `MaDe` (`MaDe`),
  CONSTRAINT `thi_ibfk_1` FOREIGN KEY (`UserName`) REFERENCES `users` (`UserName`),
  CONSTRAINT `thi_ibfk_2` FOREIGN KEY (`MaDe`) REFERENCES `dethi` (`MaDe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `UserName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Birthday` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NumberPhone` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RoleID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`UserName`),
  KEY `RoleID` (`RoleID`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `cauhoi` VALUES ('CH1','aaa','aa','bb','cc','dd','A','1','1','1');
INSERT INTO `monhoc` VALUES ('1','www'), ('2','asassa'), ('3','eresreres'), ('4','1111'), ('5','222');
INSERT INTO `noidung` VALUES ('1','1','1');
INSERT INTO `role` VALUES ('Admin','Người quản trị'), ('QLD','Người quản trị đề thi'), ('QLKT','Người quản trị kỳ thi'), ('QLNHCH','Người quản trị ngân hàng câu hỏi'), ('SV','Sinh viên');
INSERT INTO `users` VALUES ('Admin','123456','Trần Thiên Anh','female','1996-12-09','0167595632','Thủ Đức','admin.examonline@gmail.com','Admin'), ('phong','123456','trrrr','female','','01675946416','null','phongtt@gmail.com','QLNHCH'), ('thanhphong','123456','fjkdfdk','male','','01675946414','null',NULL,'QLNHCH');
