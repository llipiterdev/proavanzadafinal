-- MySQL Script generated by MySQL Workbench
-- 09/02/17 17:32:10
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema proavanzada
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `proavanzada` ;

-- -----------------------------------------------------
-- Schema proavanzada
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proavanzada` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci ;
SHOW WARNINGS;
USE `proavanzada` ;

-- -----------------------------------------------------
-- Table `proavanzada`.`tipo_estudiante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proavanzada`.`tipo_estudiante` (
  `id_tipo_estudiante` INT NOT NULL AUTO_INCREMENT,
  `tipo_estudiante` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_tipo_estudiante`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `proavanzada`.`estudiante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proavanzada`.`estudiante` (
  `id_estudiante` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `documento` VARCHAR(45) NOT NULL,
  `id_tipo_estudiante` INT NOT NULL,
  PRIMARY KEY (`id_estudiante`),
  INDEX `fk_tipo_estudiante_idx` (`id_tipo_estudiante` ASC),
  CONSTRAINT `fk_tipo_estudiante`
    FOREIGN KEY (`id_tipo_estudiante`)
    REFERENCES `proavanzada`.`tipo_estudiante` (`id_tipo_estudiante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `proavanzada`.`tipo_materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proavanzada`.`tipo_materia` (
  `id_tipo_materia` INT NOT NULL,
  `tipo_materia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_tipo_materia`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `proavanzada`.`horario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proavanzada`.`horario` (
  `id_horario` INT NOT NULL,
  `dia` VARCHAR(10) NOT NULL,
  `hora_inicio` TIME NOT NULL,
  `hora_fin` TIME NOT NULL,
  PRIMARY KEY (`id_horario`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `proavanzada`.`materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proavanzada`.`materia` (
  `id_materia` INT NOT NULL AUTO_INCREMENT,
  `nombre_materia` VARCHAR(45) NOT NULL,
  `salon` VARCHAR(4) NOT NULL,
  `modulo` VARCHAR(2) NOT NULL,
  `cupos` INT NOT NULL,
  `id_tipo_materia` INT NOT NULL,
  `id_horario` INT NOT NULL,
  PRIMARY KEY (`id_materia`),
  INDEX `fk_tipo_materia_idx` (`id_tipo_materia` ASC),
  INDEX `fk_horario_idx` (`id_horario` ASC),
  CONSTRAINT `fk_tipo_materia`
    FOREIGN KEY (`id_tipo_materia`)
    REFERENCES `proavanzada`.`tipo_materia` (`id_tipo_materia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_horario`
    FOREIGN KEY (`id_horario`)
    REFERENCES `proavanzada`.`horario` (`id_horario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `proavanzada`.`tipo_profesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proavanzada`.`tipo_profesor` (
  `id_tipo_profesor` INT NOT NULL AUTO_INCREMENT,
  `tipo_profesor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_tipo_profesor`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `proavanzada`.`profesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proavanzada`.`profesor` (
  `id_profesor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `documento` VARCHAR(45) NOT NULL,
  `id_tipo_profesor` INT NOT NULL,
  PRIMARY KEY (`id_profesor`),
  INDEX `fk_tipo_profesor_idx` (`id_tipo_profesor` ASC),
  CONSTRAINT `fk_tipo_profesor`
    FOREIGN KEY (`id_tipo_profesor`)
    REFERENCES `proavanzada`.`tipo_profesor` (`id_tipo_profesor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `proavanzada`.`estudiante_materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proavanzada`.`estudiante_materia` (
  `id_estudiante` INT NOT NULL,
  `id_materia` INT NOT NULL,
  PRIMARY KEY (`id_estudiante`, `id_materia`),
  INDEX `fk_estudiante_has_materia_materia1_idx` (`id_materia` ASC),
  INDEX `fk_estudiante_has_materia_estudiante1_idx` (`id_estudiante` ASC),
  CONSTRAINT `fk_estudiante_has_materia_estudiante1`
    FOREIGN KEY (`id_estudiante`)
    REFERENCES `proavanzada`.`estudiante` (`id_estudiante`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudiante_has_materia_materia1`
    FOREIGN KEY (`id_materia`)
    REFERENCES `proavanzada`.`materia` (`id_materia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `proavanzada`.`profesor_materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proavanzada`.`profesor_materia` (
  `id_profesor` INT NOT NULL,
  `id_materia` INT NOT NULL,
  PRIMARY KEY (`id_profesor`, `id_materia`),
  INDEX `fk_profesor_has_materia_materia1_idx` (`id_materia` ASC),
  INDEX `fk_profesor_has_materia_profesor1_idx` (`id_profesor` ASC),
  CONSTRAINT `fk_profesor_has_materia_profesor1`
    FOREIGN KEY (`id_profesor`)
    REFERENCES `proavanzada`.`profesor` (`id_profesor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_profesor_has_materia_materia1`
    FOREIGN KEY (`id_materia`)
    REFERENCES `proavanzada`.`materia` (`id_materia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
