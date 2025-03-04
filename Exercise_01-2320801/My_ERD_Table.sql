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
-- Table `mydb`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product` (
  `Product ID` INT NOT NULL,
  `Product Name` VARCHAR(45) NULL,
  `Product Category` VARCHAR(45) NULL,
  `Unit Price` VARCHAR(45) NULL,
  PRIMARY KEY (`Product ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CustomerTable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CustomerTable` (
  `Customer ID` INT NOT NULL,
  `Customer Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  PRIMARY KEY (`Customer ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Time Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time Table` (
  `Order ID` INT NOT NULL,
  `Order Date` VARCHAR(45) NULL,
  `Year` VARCHAR(45) NULL,
  `Quater` VARCHAR(45) NULL,
  `Month` VARCHAR(45) NULL,
  PRIMARY KEY (`Order ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Emp Dimension`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Emp Dimension` (
  `Employer ID` INT NOT NULL,
  `Emp Name` VARCHAR(45) NULL,
  `Title` VARCHAR(45) NULL,
  `Department` VARCHAR(45) NULL,
  `Region` VARCHAR(45) NULL,
  PRIMARY KEY (`Employer ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sales` (
  `Product Dimension_Product ID` INT NOT NULL,
  `Time Dimension_Order ID` INT NOT NULL,
  `Customer Dimension_Customer ID` INT NOT NULL,
  `Emp Dimension_Employer ID` INT NOT NULL,
  `Total` INT NULL,
  `Quantity` VARCHAR(45) NULL,
  `Discount` VARCHAR(45) NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
