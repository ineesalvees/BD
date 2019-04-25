-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema trabalho
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema trabalho
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `trabalho` DEFAULT CHARACTER SET utf8 ;
USE `trabalho` ;


-- -----------------------------------------------------
-- Table `trabalho`.`Publicador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Publicador` (
  `idPublicador` INT UNSIGNED NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Descrição` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idPublicador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Categoria` (
  `idCategoria` INT UNSIGNED NOT NULL,
  `Designação` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Produto` (
  `idProduto` INT UNSIGNED NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Tamanho` INT UNSIGNED NOT NULL,
  `Descrição` VARCHAR(45) NOT NULL,
  `Preço` INT UNSIGNED NOT NULL,
  `Classificação` INT UNSIGNED NOT NULL,
  `Publicador_idPublicador` INT UNSIGNED NOT NULL,
  `Categoria_idCategoria` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idProduto`),
  INDEX `fk_Produto_Publicador1_idx` (`Publicador_idPublicador` ASC) VISIBLE,
  INDEX `fk_Produto_Categoria1_idx` (`Categoria_idCategoria` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_Publicador1`
    FOREIGN KEY (`Publicador_idPublicador`)
    REFERENCES `trabalho`.`Publicador` (`idPublicador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produto_Categoria1`
    FOREIGN KEY (`Categoria_idCategoria`)
    REFERENCES `trabalho`.`Categoria` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Morada`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Morada` (
  `idMorada` INT UNSIGNED NOT NULL,
  `Rua` VARCHAR(100) NOT NULL,
  `Localidade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMorada`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Utilizador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Utilizador` (
  `idUtilizador` INT UNSIGNED NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Data_Nascimento` DATE NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `Morada_idMorada` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idUtilizador`),
  INDEX `fk_Utilizador_Morada1_idx` (`Morada_idMorada` ASC) VISIBLE,
  CONSTRAINT `fk_Utilizador_Morada1`
    FOREIGN KEY (`Morada_idMorada`)
    REFERENCES `trabalho`.`Morada` (`idMorada`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Comentário`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Comentário` (
  `Utilizador_idUtilizador` INT UNSIGNED NOT NULL,
  `Produto_idProduto` INT UNSIGNED NOT NULL,
  `Conteúdo` VARCHAR(200) NOT NULL,
  `Data` DATE NOT NULL,
  PRIMARY KEY (`Utilizador_idUtilizador`, `Produto_idProduto`),
  INDEX `fk_Utilizador_has_Produto_Produto1_idx` (`Produto_idProduto` ASC) VISIBLE,
  INDEX `fk_Utilizador_has_Produto_Utilizador1_idx` (`Utilizador_idUtilizador` ASC) VISIBLE,
  CONSTRAINT `fk_Utilizador_has_Produto_Utilizador1`
    FOREIGN KEY (`Utilizador_idUtilizador`)
    REFERENCES `trabalho`.`Utilizador` (`idUtilizador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Utilizador_has_Produto_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `trabalho`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Transferência`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Transferência` (
  `Utilizador_idUtilizador` INT UNSIGNED NOT NULL,
  `Produto_idProduto` INT UNSIGNED NOT NULL,
  `Data` DATE NOT NULL,
  PRIMARY KEY (`Utilizador_idUtilizador`, `Produto_idProduto`),
  INDEX `fk_Utilizador_has_Produto1_Produto1_idx` (`Produto_idProduto` ASC) VISIBLE,
  INDEX `fk_Utilizador_has_Produto1_Utilizador1_idx` (`Utilizador_idUtilizador` ASC) VISIBLE,
  CONSTRAINT `fk_Utilizador_has_Produto1_Utilizador1`
    FOREIGN KEY (`Utilizador_idUtilizador`)
    REFERENCES `trabalho`.`Utilizador` (`idUtilizador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Utilizador_has_Produto1_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `trabalho`.`Produto` (`idProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
