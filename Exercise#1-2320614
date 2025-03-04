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
-- Table `mydb`.`Product Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product Dimension` (
  `Product Id` INT NOT NULL AUTO_INCREMENT,
  `Product Name` INT NOT NULL,
  `Product Category` INT NOT NULL,
  `Unit Price` INT NOT NULL,
  PRIMARY KEY (`Product Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Emp Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Emp Dimension` (
  `Emp ID` INT NOT NULL AUTO_INCREMENT,
  `Emp Name` INT NOT NULL,
  `Title` INT NOT NULL,
  `Department` INT NOT NULL,
  PRIMARY KEY (`Emp ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sales` (
  `Product ID` INT NOT NULL AUTO_INCREMENT,
  `Order ID` INT NOT NULL,
  `Customer ID` INT NOT NULL,
  `Employer ID` INT NOT NULL,
  `Total` INT NOT NULL,
  `Quantity` INT NOT NULL,
  `Discount` INT NOT NULL,
  `Emp Dimension_Emp ID` INT NOT NULL,
  `Product Dimension_Product Id` INT NOT NULL,
  PRIMARY KEY (`Product ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Time Dimnesion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time Dimnesion` (
  `Order ID` INT NOT NULL AUTO_INCREMENT,
  `Order Date` INT NOT NULL,
  `Year` INT NOT NULL,
  `Quarter` INT NOT NULL,
  `Month` INT NOT NULL,
  `Sales_Product ID` INT NOT NULL,
  PRIMARY KEY (`Order ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer Dimension` (
  `Customer ID` INT NOT NULL AUTO_INCREMENT,
  `Customer Name` INT NOT NULL,
  `Address` INT NOT NULL,
  `Zip` INT NOT NULL,
  `Sales_Product ID` INT NOT NULL,
  PRIMARY KEY (`Customer ID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
