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
  `Product ID` INT NOT NULL,
  `Product Name` VARCHAR(45) NOT NULL,
  `Product Category` VARCHAR(45) NOT NULL,
  `Unit Price` INT NOT NULL,
  PRIMARY KEY (`Product ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Emp Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Emp Dimension` (
  `Emp ID` INT NOT NULL,
  `Emp Name` VARCHAR(45) NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `Department` VARCHAR(45) NOT NULL,
  `Region` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Emp ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer Dimension` (
  `Customer ID` INT NOT NULL,
  `Customer Name` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `Zip` INT NOT NULL,
  PRIMARY KEY (`Customer ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Time Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time Dimension` (
  `Order ID` INT NOT NULL,
  `Order Date` INT NOT NULL,
  `Year` INT NOT NULL,
  `Quarter` INT NOT NULL,
  `Month` INT NOT NULL,
  PRIMARY KEY (`Order ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sales` (
  `Product ID` INT NOT NULL,
  `Order ID` INT NOT NULL,
  `Customer ID` INT NOT NULL,
  `Employer ID` INT NOT NULL,
  `Total` INT NOT NULL,
  `Quantity` INT NOT NULL,
  `Discount` INT NULL,
  `Product Dimension_Product ID` INT NOT NULL,
  `Emp Dimension_Emp ID` INT NOT NULL,
  `Product Dimension_Product ID1` INT NOT NULL,
  `Emp Dimension_Emp ID1` INT NOT NULL,
  `Customer Dimension_Customer ID` INT NOT NULL,
  `Time Dimension_Order ID` INT NOT NULL,
  PRIMARY KEY (`Product ID`, `Product Dimension_Product ID`, `Emp Dimension_Emp ID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
