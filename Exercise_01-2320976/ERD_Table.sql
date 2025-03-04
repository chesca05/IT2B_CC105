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
-- Table `mydb`.`Employee Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employee Table` (
  `Employee ID` INT NOT NULL AUTO_INCREMENT,
  `Emp Name` VARCHAR(45) NULL,
  `Title` VARCHAR(45) NULL,
  `Department` VARCHAR(45) NULL,
  `Region` VARCHAR(45) NULL,
  PRIMARY KEY (`Employee ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Time table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Time table` (
  `Order ID` INT NOT NULL AUTO_INCREMENT,
  `Order Date` VARCHAR(45) NULL,
  `Year` VARCHAR(45) NULL,
  `Qaurter` VARCHAR(45) NULL,
  `Month` VARCHAR(45) NULL,
  PRIMARY KEY (`Order ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Product Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product Table` (
  `Product ID` INT NOT NULL AUTO_INCREMENT,
  `Product Name` VARCHAR(45) NOT NULL,
  `Product Category` VARCHAR(45) NOT NULL,
  `Unit Price` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Product ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer Table` (
  `Customer ID` INT NOT NULL AUTO_INCREMENT,
  `Customer Name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Zip` VARCHAR(45) NULL,
  PRIMARY KEY (`Customer ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sales` (
  `Total` VARCHAR(45) NOT NULL,
  `Quantity` VARCHAR(45) NOT NULL,
  `Discount` VARCHAR(45) NOT NULL,
  `Employee Table_Employee ID` INT NOT NULL,
  `Product Table_Product ID` INT NOT NULL,
  `Time table_Order ID` INT NOT NULL,
  `Customer Table_Customer ID` INT NOT NULL,
  `Employee Table_Employee ID1` INT NOT NULL,
  `Product Table_Product ID1` INT NOT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
