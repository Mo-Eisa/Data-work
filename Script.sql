-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Hw4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Hw4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Hw4` DEFAULT CHARACTER SET utf8 ;
USE `Hw4` ;

-- -----------------------------------------------------
-- Table `Hw4`.`Owner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hw4`.`Owner` (
  `OwnerID` INT NULL,
  `OwnerName` VARCHAR(45) NOT NULL,
  `OwnerPhone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`OwnerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hw4`.`Pet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hw4`.`Pet` (
  `PetId` INT NOT NULL,
  `PetName` VARCHAR(45) NOT NULL,
  `PetBreed` VARCHAR(45) NOT NULL,
  `ColorMarkings` VARCHAR(45) NOT NULL,
  `DateOfBirth` VARCHAR(45) NOT NULL,
  `Gender` VARCHAR(45) NOT NULL,
  `NeutueredSpayed` VARCHAR(45) NOT NULL,
  `OwnerId` INT NOT NULL,
  `Owner_OwnerID` INT NOT NULL,
  PRIMARY KEY (`PetId`),
  INDEX `fk_Pet_Owner_idx` (`Owner_OwnerID` ASC) VISIBLE,
  CONSTRAINT `fk_Pet_Owner`
    FOREIGN KEY (`Owner_OwnerID`)
    REFERENCES `Hw4`.`Owner` (`OwnerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hw4`.`Basic Skills`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hw4`.`Basic Skills` (
  `idBasic Skills` INT NOT NULL,
  `Amount of Dogs` INT NOT NULL,
  `Date Available` DATE NOT NULL,
  `Pet_PetId` INT NOT NULL,
  PRIMARY KEY (`idBasic Skills`),
  INDEX `fk_Basic Skills_Pet1_idx` (`Pet_PetId` ASC) VISIBLE,
  CONSTRAINT `fk_Basic Skills_Pet1`
    FOREIGN KEY (`Pet_PetId`)
    REFERENCES `Hw4`.`Pet` (`PetId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hw4`.`Walk-Train-Play`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hw4`.`Walk-Train-Play` (
  `idWalk-Train-Play` INT NOT NULL,
  `Date Available` DATE NOT NULL,
  `Pet_PetId` INT NOT NULL,
  PRIMARY KEY (`idWalk-Train-Play`),
  INDEX `fk_Walk-Train-Play_Pet1_idx` (`Pet_PetId` ASC) VISIBLE,
  CONSTRAINT `fk_Walk-Train-Play_Pet1`
    FOREIGN KEY (`Pet_PetId`)
    REFERENCES `Hw4`.`Pet` (`PetId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hw4`.`Off Leash Operation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hw4`.`Off Leash Operation` (
  `idOff Leash Operation` INT NOT NULL,
  `Amount of Dogs` INT NOT NULL,
  `Date Available` DATE NOT NULL,
  `Pet_PetId` INT NOT NULL,
  PRIMARY KEY (`idOff Leash Operation`),
  INDEX `fk_Off Leash Operation_Pet1_idx` (`Pet_PetId` ASC) VISIBLE,
  CONSTRAINT `fk_Off Leash Operation_Pet1`
    FOREIGN KEY (`Pet_PetId`)
    REFERENCES `Hw4`.`Pet` (`PetId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
