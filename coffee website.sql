CREATE DATABASE  `coffee_company` ;
use `coffee_company` ;

CREATE TABLE `coffee_company`.`companies` (
  `company id` INT NOT NULL AUTO_INCREMENT,
  `company name` VARCHAR(45) NOT NULL UNIQUE,
  `company phone` INT NULL,
  `company address` VARCHAR(45) NULL,
  `company email` VARCHAR(45) NULL,
  `company contact name` VARCHAR(45) NULL,
  PRIMARY KEY (`company id`));

INSERT INTO `coffee_company`.`companies` ( `company name`, `company phone`, `company address`, `company email`) 
VALUES ('company1', '0937000000', 'taipei', ''),
       ('company2', '0937000000', 'new taipei', ''),
       ('company3', '0937003000', 'taipei', ''),
       ('company4', '0937000200', 'new taipei', ''),
       ('company5', '0937000020', 'taipei', ''),
       ('company6', '0937000002', 'new taipei', ''),
       ('company7', '0937020000', 'taipei', ''),
       ('company8', '0937200000', 'new taipei', ''),
       ('company9', '0937400000', 'taipei', ''),
       ('company10', '0937005000', 'new taipei', '');



CREATE TABLE `coffee_company`.`members` (
  `member id` INT NOT NULL AUTO_INCREMENT,
  `member account` VARCHAR(45) NOT NULL UNIQUE,
  `member password` VARCHAR(45) NOT NULL,
  `member name` VARCHAR(45) NOT NULL,
  `member phone` INT NULL,
  `member address` VARCHAR(45) NULL,
  `member email` VARCHAR(45) NULL UNIQUE,
   PRIMARY KEY (`member id`)
    );
   
   
INSERT INTO `coffee_company`.`members` (`member account`, `member password`, `member name`, `member phone`,`member email`) 
VALUES ('Tom1', 'abc', 'Tom', '0920000000','tom1@tom.com'),
       ('Tom2', 'abc', 'Tom', '0920000000','tom2@tom.com'),
       ('Tom3', 'abc', 'Tom', '0920000000','tom3@tom.com'),
       ('Tom4', 'abc', 'Tom', '0920000000','tom4@tom.com'),
       ('Tom5', 'abc', 'Tom', '0920000000','tom5@tom.com'),
       ('Tom6', 'abc', 'Tom', '0920000000','tom6@tom.com');

    
   
   
   

CREATE TABLE `coffee_company`.`products` (
  `product id` INT NOT NULL AUTO_INCREMENT,
  `product name` VARCHAR(45) NOT NULL,
  `product catogary id` INT NULL,
  `product price` INT NULL,
  `product quantiy` INT  NULL,
   PRIMARY KEY (`product id`));
   
   
   INSERT INTO `coffee_company`.`products` (`product name`, `product catogary id`, `product price`, `product quantiy`)
   VALUES ('coffee bean1', 1,100, 12),
          ('coffee bean2', 1,100, 12),
          ('coffee bean3', 1,100, 12),
          ('coffee bean4', 1,100, 12),
          ('coffee bean5', 1,100, 12),
          ('coffee bean6', 1,100, 12),
          ('coffee bean7', 1,100, 12),
          ('coffee bean8', 1,100, 12),
          ('coffee bean9', 1,100, 12),
          ('coffee bean10', 1,100, 12),
          ('coffee bean11', 1,100, 12),
          ('coffee bean12', 1,100, 12),
          ('coffee bean13', 1,100, 12),
          ('coffee bean14', 1,100, 12),
          ('coffee bean15', 1,100, 12),
          ('coffee bean16', 1,100, 12),
          ('coffee bean17', 1,100, 12),
          ('coffee machine1', 2,7000, 3),
          ('coffee machine2', 2,7000, 3),
          ('coffee machine3', 2,7000, 3),
          ('coffee machine4', 2,7000, 3),
          ('coffee machine5', 2,7000, 3),
          ('coffee machine6', 2,7000, 3),
          ('Moka Maker', 3,500, 3),
          ('coffee Pot1', 4,700, 10),
          ('coffee Pot2', 4,700, 10),
          ('coffee Pot3', 4,700, 10),
          ('coffee Pot4', 4,700, 10),
          ('coffee Pot5', 4,700, 10),
          ('coffee Grinder1', 5,700, 10),
          ('coffee Grinder2', 5,700, 10),
          ('coffee Grinder3', 5,700, 10),
          ('coffee Grinder4', 5,700, 10),
          ('coffee Paper Filter1', 5,70, 100),
          ('coffee Paper Filter2', 5,70, 100),
          ('coffee Paper Filter3', 5,70, 100),
          ('coffee Paper Filter4', 5,70, 100),
          ('coffee Paper Filter5', 5,70, 100),
          ('coffee Paper Filter6', 5,70, 100);
   
   

CREATE TABLE `coffee_company`.`product catogaries` (
  `product catogary id` INT NOT NULL AUTO_INCREMENT,
  `product catogary id name` VARCHAR(45) NOT NULL,
   PRIMARY KEY ( `product catogary id`));
   
   
   INSERT INTO `coffee_company`.`product catogaries` (`product catogary id name`)
   VALUES ('coffee bean'),
          ('coffee machine'),
          ('Moka Maker'),
		  ('coffee Pot'),
		  ('coffee Grinder'),
          ('coffee Paper Filter');

   
   
CREATE TABLE `coffee_company`.`orders` (
  `order id` INT NOT NULL AUTO_INCREMENT,
  `member id`  INT NOT NULL,
  `company id`  INT NOT NULL,
  `order date` DATE NULL,
  `required date` DATE NULL,
  `shipped Date` DATE NULL,
  `Freight`  INT NOT NULL,
  `shipping address` VARCHAR(45) NOT NULL,
   PRIMARY KEY (`order id`));
   
   INSERT INTO `coffee_company`.`orders` (`member id`, `company id`, `order date`, `required date`, `shipped Date`, `Freight`,`shipping address`) 
   VALUES (2, 3, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 1, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 3, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (1, 3, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (1, 2, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 1, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (1, 1, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 3, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (1, 3, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 1, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (1, 1, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (1, 1, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (1, 1, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (1, 1, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (2, 1, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (1, 1, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 1, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (2, 1, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 4, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 3, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 5, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (1, 4, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 4, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 4, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (4, 4, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 4, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 3, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 7, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 8, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (3, 2, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei'),
          (1, 4, "2022-2-23", "2022-2-24", "2022-2-25", 50,'taipei');


   
  CREATE TABLE `coffee_company`.`order details` (
  `order id` INT NOT NULL,
  `product id`  INT NOT NULL,
  `unite price`  INT NOT NULL,
  `quantity`  INT NOT NULL,
  `dicount` FLOAT NULL
  );
   
   INSERT INTO `coffee_company`.`order details` (`order id`, `product id`, `unite price`, `quantity`, `dicount`) 
   VALUES (1, 3, 15, 1, 0),
          (1, 3, 15, 1, 0),
          (1, 5, 15, 1, 0),
          (1, 6, 15, 1, 0),
          (1, 7, 35, 1, 0),
          (1, 2, 15, 3, 0),
          (1, 1, 15, 2, 0),
          (2, 3, 15, 1, 0),
          (2, 3, 15, 1, 0),
          (2, 3, 5, 2, 0),
          (1, 3, 150, 3, 0),
          (2, 2, 3, 1, 0),
          (1, 3, 15, 1, 0),
          (2, 4, 15, 1, 0),
          (1, 3, 20, 1, 0),
          (1, 2, 22, 1, 0),
          (2, 3, 15, 1, 0),
          (3, 3, 15, 1, 0),
          (3, 3, 15, 1, 0),
          (3, 3, 15, 1, 0),
          (3, 3, 15, 1, 0),
          (4, 3, 15, 1, 0),
          (5, 3, 15, 1, 0),
          (6, 3, 15, 1, 0),
          (7, 3, 15, 1, 0),
          (7, 3, 15, 1, 0),
          (8, 3, 15, 1, 0),
          (8, 3, 15, 1, 0),
          (8, 3, 15, 1, 0),
          (9, 3, 15, 1, 0),
          (9, 3, 15, 1, 0),
          (9, 3, 15, 1, 0),
          (9, 3, 15, 1, 0),
          (9, 3, 15, 1, 0),
          (10, 3, 15, 1, 0),
          (10, 3, 15, 1, 0),
          (10, 3, 15, 1, 0),
          (10, 3, 15, 1, 0),
          (10, 3, 15, 1, 0),
          (10, 3, 15, 1, 0),
          (10, 3, 15, 1, 0),
          (10, 3, 15, 1, 0),
          (11, 3, 15, 1, 0),
          (11, 3, 15, 1, 0),
          (11, 3, 15, 1, 0),
          (11, 3, 15, 1, 0),
          (11, 3, 15, 1, 0);
           
   
   
   