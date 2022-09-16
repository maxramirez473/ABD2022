-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema datos_accidentes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `datos_accidentes` ;
USE `datos_accidentes` ;

-- -----------------------------------------------------
-- Table `datos_accidentes`.`Comunidad_Autonoma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datos_accidentes`.`Comunidad_Autonoma` (
  `id_ccaa` INT NOT NULL,
  `ccaa` VARCHAR(45) NULL,
  PRIMARY KEY (`id_ccaa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `datos_accidentes`.`Provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datos_accidentes`.`Provincia` (
  `id_provincia` INT NOT NULL,
  `provincia` VARCHAR(45) NULL,
  `Comunidad_Autonoma_id_ccaa` INT NOT NULL,
  PRIMARY KEY (`id_provincia`, `Comunidad_Autonoma_id_ccaa`),
  INDEX `fk_Provincia_Comunidad_Autonoma1_idx` (`Comunidad_Autonoma_id_ccaa` ASC) VISIBLE,
  CONSTRAINT `fk_Provincia_Comunidad_Autonoma1`
    FOREIGN KEY (`Comunidad_Autonoma_id_ccaa`)
    REFERENCES `datos_accidentes`.`Comunidad_Autonoma` (`id_ccaa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `datos_accidentes`.`Anio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datos_accidentes`.`Anio` (
  `id_anio` INT NOT NULL,
  PRIMARY KEY (`id_anio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `datos_accidentes`.`Tipo_Via`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datos_accidentes`.`Tipo_Via` (
  `id_tipo_via` VARCHAR(1) NOT NULL,
  `tipo_via` VARCHAR(100) NULL,
  PRIMARY KEY (`id_tipo_via`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `datos_accidentes`.`Info_Accidente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `datos_accidentes`.`Info_Accidente` (
  `fallecidos` INT UNSIGNED NULL,
  `heridos_hospitalizados` INT UNSIGNED NULL,
  `heridos_no_hospitalizados` INT NULL,
  `accidentes_mortales_30_dias` INT UNSIGNED NULL,
  `accidentes_con_victimas` VARCHAR(45) NULL,
  `Info_Accidentecol` VARCHAR(45) NULL,
  `Anio_id_anio` INT NOT NULL,
  `Provincia_id_provincia` INT NOT NULL,
  `Tipo_Via_id_tipo_via` INT NOT NULL,
  PRIMARY KEY (`Anio_id_anio`, `Provincia_id_provincia`, `Tipo_Via_id_tipo_via`),
  INDEX `fk_Info_Accidente_Provincia1_idx` (`Provincia_id_provincia` ASC) VISIBLE,
  INDEX `fk_Info_Accidente_Tipo_Via1_idx` (`Tipo_Via_id_tipo_via` ASC) VISIBLE,
  CONSTRAINT `fk_Info_Accidente_Anio`
    FOREIGN KEY (`Anio_id_anio`)
    REFERENCES `datos_accidentes`.`Anio` (`id_anio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Info_Accidente_Provincia1`
    FOREIGN KEY (`Provincia_id_provincia`)
    REFERENCES `datos_accidentes`.`Provincia` (`id_provincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Info_Accidente_Tipo_Via1`
    FOREIGN KEY (`Tipo_Via_id_tipo_via`)
    REFERENCES `datos_accidentes`.`Tipo_Via` (`id_tipo_via`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
