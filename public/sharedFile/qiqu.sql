-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema qiqu
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema qiqu
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `qiqu` DEFAULT CHARACTER SET utf8 ;
USE `qiqu` ;

-- -----------------------------------------------------
-- Table `qiqu`.`myInfo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`myInfo` (
  `mId` INT NOT NULL AUTO_INCREMENT,
  `mName` VARCHAR(45) NULL,
  `mSex` INT NULL,
  `mCity` VARCHAR(45) NULL,
  `mAge` BIT(1) NULL,
  `mHeight` INT NULL,
  `mWigth` INT NULL,
  `mPassword` VARCHAR(32) NULL,
  `mImg` VARCHAR(20) NULL,
  `mPlace` BIT(1) NULL,
  `mGxqm` VARCHAR(45) NULL,
  PRIMARY KEY (`mId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`information`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`information` (
  `zId` INT NOT NULL AUTO_INCREMENT,
  `zTitle` VARCHAR(45) NULL,
  `zImg` VARCHAR(45) NULL,
  `zContent` VARCHAR(45) NULL,
  `zTime` DATE NULL,
  `zFrom` VARCHAR(45) NULL,
  `zType` VARCHAR(45) NULL,
  `zCheck` INT NULL,
  `sTime` DATE NULL,
  `zdContent` VARCHAR(255) NULL,
  PRIMARY KEY (`zId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`cardInfo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`cardInfo` (
  `cId` INT NOT NULL AUTO_INCREMENT,
  `cContent` VARCHAR(180) NULL,
  `cTime` DATE NULL,
  `cCheck` INT NULL,
  `cCollection` VARCHAR(1) NULL,
  `myId` INT NOT NULL,
  PRIMARY KEY (`cId`),
  INDEX `fk_cardInfo_myInfo1_idx` (`myId` ASC),
  CONSTRAINT `fk_cardInfo_myInfo1`
    FOREIGN KEY (`myId`)
    REFERENCES `qiqu`.`myInfo` (`mId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`comment` (
  `pId` INT NOT NULL,
  `mypId` INT NOT NULL,
  `pcId` INT NOT NULL,
  `pTime` DATE NULL,
  `pContent` VARCHAR(150) NULL,
  PRIMARY KEY (`pId`),
  INDEX `fk_comment_cardInfo1_idx` (`pcId` ASC),
  INDEX `fk_comment_myInfo1_idx` (`mypId` ASC),
  CONSTRAINT `fk_comment_cardInfo1`
    FOREIGN KEY (`pcId`)
    REFERENCES `qiqu`.`cardInfo` (`cId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_myInfo1`
    FOREIGN KEY (`mypId`)
    REFERENCES `qiqu`.`myInfo` (`mId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`content`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`content` (
  `pId` INT NOT NULL AUTO_INCREMENT,
  `mypId` INT NOT NULL,
  `mcId` INT NOT NULL,
  `mContent` VARCHAR(150) NULL,
  `mTime` DATE NULL,
  PRIMARY KEY (`pId`),
  INDEX `fk_content_myInfo1_idx` (`mcId` ASC),
  INDEX `fk_content_comment1_idx` (`mypId` ASC),
  CONSTRAINT `fk_content_myInfo1`
    FOREIGN KEY (`mcId`)
    REFERENCES `qiqu`.`myInfo` (`mId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_content_comment1`
    FOREIGN KEY (`mypId`)
    REFERENCES `qiqu`.`comment` (`pId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`check`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`check` (
  `chId` INT NOT NULL AUTO_INCREMENT,
  `cId` INT NOT NULL,
  `cdId` INT NOT NULL,
  PRIMARY KEY (`chId`),
  INDEX `fk_check_cardInfo1_idx` (`cId` ASC),
  INDEX `fk_check_myInfo1_idx` (`cdId` ASC),
  CONSTRAINT `fk_check_cardInfo1`
    FOREIGN KEY (`cId`)
    REFERENCES `qiqu`.`cardInfo` (`cId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_check_myInfo1`
    FOREIGN KEY (`cdId`)
    REFERENCES `qiqu`.`myInfo` (`mId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`follow`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`follow` (
  `gId` INT NOT NULL AUTO_INCREMENT,
  `myId` INT NOT NULL,
  `cId` INT NOT NULL,
  PRIMARY KEY (`gId`),
  INDEX `fk_follow_myInfo1_idx` (`myId` ASC),
  INDEX `fk_follow_myInfo2_idx` (`cId` ASC),
  CONSTRAINT `fk_follow_myInfo1`
    FOREIGN KEY (`myId`)
    REFERENCES `qiqu`.`myInfo` (`mId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_follow_myInfo2`
    FOREIGN KEY (`cId`)
    REFERENCES `qiqu`.`myInfo` (`mId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`strategy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`strategy` (
  `sId` INT NOT NULL AUTO_INCREMENT,
  `sTitle` VARCHAR(45) NULL,
  `sImg` VARCHAR(45) NULL,
  `sIntro` VARCHAR(45) NULL,
  `sTime` DATE NULL,
  `sFrom` VARCHAR(45) NULL,
  `sType` VARCHAR(45) NULL,
  `smCheck` INT NULL,
  `smIntro` VARCHAR(255) NULL,
  PRIMARY KEY (`sId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`bikeIndex`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`bikeIndex` (
  `cNo` INT NOT NULL AUTO_INCREMENT,
  `rContent` VARCHAR(50) NULL,
  `rClassify` VARCHAR(40) NULL,
  PRIMARY KEY (`cNo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`bikeDetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`bikeDetails` (
  `cNo` INT NOT NULL AUTO_INCREMENT,
  `crId` INT NOT NULL,
  `cName` VARCHAR(100) NULL,
  `cPrice` INT NULL,
  `cNumber` INT NULL,
  `cBigimg` VARCHAR(45) NULL,
  `cSmallimg` VARCHAR(45) NULL,
  `cDetail` VARCHAR(100) NULL,
  `cEvaluate` VARCHAR(50) NULL,
  `cImg` VARCHAR(45) NULL,
  `cIntr` VARCHAR(50) NULL,
  `cPconfig` VARCHAR(20) NULL,
  `cPname` VARCHAR(20) NULL,
  `cPfeatures` VARCHAR(20) NULL,
  `cPmodel` VARCHAR(20) NULL,
  `cPmaxweight` VARCHAR(20) NULL,
  `cPsize` VARCHAR(20) NULL,
  `cPspace` VARCHAR(20) NULL,
  `rpayNumber` INT NULL,
  PRIMARY KEY (`cNo`),
  INDEX `fk_zm_table_z_table1_idx` (`crId` ASC),
  CONSTRAINT `fk_zm_table_z_table1`
    FOREIGN KEY (`crId`)
    REFERENCES `qiqu`.`bikeIndex` (`cNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`bikeEvaluate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`bikeEvaluate` (
  `eNo` INT NOT NULL AUTO_INCREMENT,
  `bmNo` INT NOT NULL,
  `cbNo` INT NOT NULL,
  `eContent` VARCHAR(50) NULL,
  PRIMARY KEY (`eNo`),
  INDEX `fk_md_table_myInfo1_idx` (`bmNo` ASC),
  INDEX `fk_bikeEvaluate_bikeDetails1_idx` (`cbNo` ASC),
  CONSTRAINT `fk_md_table_myInfo1`
    FOREIGN KEY (`bmNo`)
    REFERENCES `qiqu`.`myInfo` (`mId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_bikeEvaluate_bikeDetails1`
    FOREIGN KEY (`cbNo`)
    REFERENCES `qiqu`.`bikeDetails` (`cNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`Collection`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`Collection` (
  `scId` INT NOT NULL AUTO_INCREMENT,
  `cId` INT NOT NULL,
  `scdId` INT NOT NULL,
  PRIMARY KEY (`scId`),
  INDEX `fk_check_cardInfo1_idx` (`cId` ASC),
  INDEX `fk_Collection_myInfo1_idx` (`scdId` ASC),
  CONSTRAINT `fk_check_cardInfo10`
    FOREIGN KEY (`cId`)
    REFERENCES `qiqu`.`cardInfo` (`cId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Collection_myInfo1`
    FOREIGN KEY (`scdId`)
    REFERENCES `qiqu`.`myInfo` (`mId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`order` (
  `oNo` INT NOT NULL AUTO_INCREMENT,
  `sId` INT NOT NULL,
  `sAddress` VARCHAR(50) NULL,
  `sWay` VARCHAR(20) NULL,
  `sExpress` VARCHAR(40) NULL,
  `sMessage` VARCHAR(40) NULL,
  `sTotal` VARCHAR(20) NULL,
  `oWaitDeliver` VARCHAR(50) NULL,
  `oWaitReceive` VARCHAR(50) NULL,
  `oWaitPay` VARCHAR(50) NULL,
  `oFinished` VARCHAR(50) NULL,
  PRIMARY KEY (`oNo`),
  INDEX `fk_orderDetails_myInfo1_idx` (`sId` ASC),
  CONSTRAINT `fk_orderDetails_myInfo1`
    FOREIGN KEY (`sId`)
    REFERENCES `qiqu`.`myInfo` (`mId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `qiqu`.`orderDetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `qiqu`.`orderDetails` (
  `pNo` INT NOT NULL AUTO_INCREMENT,
  `sNo` INT NOT NULL,
  `oId` INT NOT NULL,
  `oNum` INT NULL,
  PRIMARY KEY (`pNo`),
  INDEX `fk_order_order1_idx` (`sNo` ASC),
  INDEX `fk_order_bikeDetails1_idx` (`oId` ASC),
  CONSTRAINT `fk_order_order1`
    FOREIGN KEY (`sNo`)
    REFERENCES `qiqu`.`order` (`oNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_bikeDetails1`
    FOREIGN KEY (`oId`)
    REFERENCES `qiqu`.`bikeDetails` (`cNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
