-- MySQL Script generated by MySQL Workbench
-- Sat Apr 11 14:33:45 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema blindtest
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema blindtest
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `blindtest` ;
USE `blindtest` ;

-- -----------------------------------------------------
-- Table `blindtest`.`game`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blindtest`.`game` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `blindtest`.`player`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blindtest`.`player` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `blindtest`.`game_has_player`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `blindtest`.`game_has_player` (
  `game_id` INT NOT NULL,
  `player_id` INT NOT NULL,
  PRIMARY KEY (`game_id`, `player_id`),
  INDEX `fk_game_has_player_player1_idx` (`player_id` ASC) VISIBLE,
  INDEX `fk_game_has_player_game_idx` (`game_id` ASC) VISIBLE,
  CONSTRAINT `fk_game_has_player_game`
    FOREIGN KEY (`game_id`)
    REFERENCES `blindtest`.`game` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_game_has_player_player1`
    FOREIGN KEY (`player_id`)
    REFERENCES `blindtest`.`player` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
