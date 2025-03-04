-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Product Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product Table` (
  `Product ID` INT NOT NULL AUTO_INCREMENT,
  `Product Name` VARCHAR(45) NOT NULL,
  `Product Category` VARCHAR(45) NOT NULL,
  `Unit Price` INT NOT NULL,
  PRIMARY KEY (`Product ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Emp Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Emp Dimension` (
  `idEmp Dimension` INT NOT NULL AUTO_INCREMENT,
  `Emp ID` VARCHAR(45) NOT NULL,
  `Emp Name` VARCHAR(45) NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `Department` VARCHAR(45) NOT NULL,
  `Region` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEmp Dimension`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Time Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time Dimension` (
  `idTime Dimension` INT NOT NULL AUTO_INCREMENT,
  `Order ID` VARCHAR(45) NOT NULL,
  `Order Date` INT NOT NULL,
  `Year` INT NOT NULL,
  `Quarter` VARCHAR(45) NOT NULL,
  `Month` INT NOT NULL,
  PRIMARY KEY (`idTime Dimension`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Costomer Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Costomer Dimension` (
  `idCostomer Dimension` INT NOT NULL AUTO_INCREMENT,
  `Costomer ID` INT NOT NULL,
  `Costomer Name` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `Zip` INT NOT NULL,
  PRIMARY KEY (`idCostomer Dimension`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sale`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sale` (
  `idSale` INT NOT NULL AUTO_INCREMENT,
  `Total` INT NOT NULL,
  `Quantity` INT NOT NULL,
  `Discount` INT NOT NULL,
  `Emp Dimension_idEmp Dimension` INT NOT NULL,
  `Time Dimension_idTime Dimension` INT NOT NULL,
  `Costomer Dimension_idCostomer Dimension` INT NOT NULL,
  `Product Table_Product ID` INT NOT NULL,
  PRIMARY KEY (`idSale`, `Product Table_Product ID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
