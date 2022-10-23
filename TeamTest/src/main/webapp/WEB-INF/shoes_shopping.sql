-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema shoes_shoppingMall
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema shoes_shoppingMall
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `shoes_shoppingMall` DEFAULT CHARACTER SET utf8 ;
USE `shoes_shoppingMall` ;

-- -----------------------------------------------------
-- Table `shoes_shoppingMall`.`deliver_address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shoppingMall`.`deliver_address` (
  `member_code` INT NOT NULL COMMENT 'foreign key\n',
  `address1` VARCHAR(20) NOT NULL,
  `address2` VARCHAR(50) NOT NULL,
  `address3` VARCHAR(20) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shoes_shoppingMall`.`memberTBL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shoppingMall`.`memberTBL` (
  `member_code` INT NOT NULL,
  `member_id` NVARCHAR(12) NOT NULL,
  `member_pwd` NVARCHAR(12) NULL,
  `member_name` NVARCHAR(4) NULL,
  `member_birth` DATE NULL,
  `member_phone` VARCHAR(45) NULL,
  `member_email` VARCHAR(45) NULL,
  `member_gender` VARCHAR(45) NULL,
  PRIMARY KEY (`member_code`, `member_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shoes_shoppingMall`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shoppingMall`.`product_category` (
  `category_code` VARCHAR(30) NOT NULL,
  `category_name` VARCHAR(45) NULL,
  PRIMARY KEY (`category_code`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shoes_shoppingMall`.`productTBL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shoppingMall`.`productTBL` (
  `product_no` INT NOT NULL,
  `category_code` VARCHAR(30) NOT NULL COMMENT '카테고리 나눔 기준은 메이커(나이키, 아디다스, 기타)',
  `product_name` VARCHAR(50) NOT NULL,
  `product_size` INT NOT NULL,
  `product_price` INT NOT NULL,
  `product_amount` INT NOT NULL DEFAULT 0,
  `product_decs` TEXT NOT NULL,
  `product_date` DATE NOT NULL,
  `product_hits` INT NULL DEFAULT 0,
  `product_image` VARCHAR(300) NULL,
  PRIMARY KEY (`product_no`),
  INDEX `fk_product_product_category1_idx` (`category_code` ASC) VISIBLE,
  CONSTRAINT `fk_product_product_category1`
    FOREIGN KEY (`category_code`)
    REFERENCES `shoes_shoppingMall`.`product_category` (`category_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shoes_shoppingMall`.`managerTBL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shoppingMall`.`managerTBL` (
  `manager_id` NVARCHAR(12) NOT NULL,
  `manger_pwd` NVARCHAR(12) NOT NULL,
  `manger_email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`manager_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shoes_shoppingMall`.`user_board`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shoppingMall`.`user_board` (
  `post_no` INT NOT NULL,
  `member_code` INT NULL,
  `post_date` DATE NULL,
  `post_pwd` NVARCHAR(12) NULL,
  `post_subject` NVARCHAR(50) NULL,
  `post_text` TEXT NULL,
  `post_file` VARCHAR(300) NULL,
  PRIMARY KEY (`post_no`),
  INDEX `fk_user_board_memberTBL1_idx` (`member_code` ASC) VISIBLE,
  CONSTRAINT `fk_user_board_memberTBL1`
    FOREIGN KEY (`member_code`)
    REFERENCES `shoes_shoppingMall`.`memberTBL` (`member_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shoes_shoppingMall`.`cartTBL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shoppingMall`.`cartTBL` (
  `cart_id` INT NOT NULL,
  `member_code` INT NOT NULL,
  `product_no` INT NULL,
  `product_amount` INT NULL,
  PRIMARY KEY (`cart_id`),
  INDEX `fk_cart_product1_idx` (`product_no` ASC) VISIBLE,
  INDEX `fk_cartTBL_memberTBL1_idx` (`member_code` ASC) VISIBLE,
  CONSTRAINT `fk_cart_product1`
    FOREIGN KEY (`product_no`)
    REFERENCES `shoes_shoppingMall`.`productTBL` (`product_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cartTBL_memberTBL1`
    FOREIGN KEY (`member_code`)
    REFERENCES `shoes_shoppingMall`.`memberTBL` (`member_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shoes_shoppingMall`.`orderTBL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shoppingMall`.`orderTBL` (
  `order_id` INT NOT NULL,
  `member_code` INT NULL,
  `order_date` DATE NULL,
  `order_status` VARCHAR(3) NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_orderTBL_memberTBL1_idx` (`member_code` ASC) VISIBLE,
  CONSTRAINT `fk_orderTBL_memberTBL1`
    FOREIGN KEY (`member_code`)
    REFERENCES `shoes_shoppingMall`.`memberTBL` (`member_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = '	';


-- -----------------------------------------------------
-- Table `shoes_shoppingMall`.`order_detail`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shoppingMall`.`order_detail` (
  `order_detail_id` INT NOT NULL,
  `order_id` INT NULL,
  `product_no` INT NULL,
  `order_amount` INT NULL,
  `order_price` INT NULL,
  PRIMARY KEY (`order_detail_id`),
  INDEX `fk_order_detail_order1_idx` (`order_id` ASC) VISIBLE,
  INDEX `fk_order_detail_product1_idx` (`product_no` ASC) VISIBLE,
  CONSTRAINT `fk_order_detail_order1`
    FOREIGN KEY (`order_id`)
    REFERENCES `shoes_shoppingMall`.`orderTBL` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_detail_product1`
    FOREIGN KEY (`product_no`)
    REFERENCES `shoes_shoppingMall`.`productTBL` (`product_no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


/**************************************************************************************************/
select * from managerTbl;
insert into managerTBL values ('admin123', 'admin123' ,'metalwing53@gmail.com');