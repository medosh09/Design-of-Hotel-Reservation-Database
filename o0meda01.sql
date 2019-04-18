DROP DATABASE IF EXISTS `o0meda01CECS535Project`;


CREATE DATABASE `o0meda01CECS535Project`;

-- -----------------------------------------------------
-- Table `o0meda01CECS535Project`.`hotel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `o0meda01CECS535Project`.`HOTEL` (
  `hotelid` INT(11) NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(45) NULL DEFAULT NULL,
  `street` VARCHAR(45) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `zip` INT(11) NULL DEFAULT NULL,
  `manager-name` VARCHAR(45) NULL DEFAULT NULL,
  `number-rooms` VARCHAR(45) NULL DEFAULT NULL,
  `has-pool` BOOLEAN NULL DEFAULT NULL,
  `has-bar` BOOLEAN NULL DEFAULT NULL,
  `has-restaurant` BOOLEAN NULL DEFAULT NULL,
  PRIMARY KEY (`hotelid`));

   -- -----------------------------------------------------
-- INsertion  for HOTEL
-- -----------------------------------------------------
INSERT INTO `o0meda01CECS535Project`.`HOTEL` (`hotelid`, `number`, `street`, `city`, `zip`, `manager-name`, `number-rooms`, `has-pool`, `has-bar`, `has-restaurant`) VALUES ('1', '100', 'Merger', 'Kingsville', '30260', 'Mark', '10', '1', '1', '1');
INSERT INTO `o0meda01CECS535Project`.`HOTEL` (`hotelid`, `number`, `street`, `city`, `zip`, `manager-name`, `number-rooms`, `has-pool`, `has-bar`, `has-restaurant`) VALUES ('2', '200', 'Province', 'Louisville', '40208', 'John', '20', '1', '1', '1');
INSERT INTO `o0meda01CECS535Project`.`HOTEL` (`hotelid`, `number`, `street`, `city`, `zip`, `manager-name`, `number-rooms`, `has-pool`, `has-bar`, `has-restaurant`) VALUES ('3', '100', 'Bellamy', 'Kingsville', '30267', 'Matthew', '30', '1', '1', '1');
INSERT INTO `o0meda01CECS535Project`.`HOTEL` (`hotelid`, `number`, `street`, `city`, `zip`, `manager-name`, `number-rooms`, `has-pool`, `has-bar`, `has-restaurant`) VALUES ('4', '100', 'Hughes', 'Lexigton', '60098', 'John', '40', '1', '1', '1');
INSERT INTO `o0meda01CECS535Project`.`HOTEL` (`hotelid`, `number`, `street`, `city`, `zip`, `manager-name`, `number-rooms`, `has-pool`, `has-bar`, `has-restaurant`) VALUES ('5', '56', 'Bashtown', 'Louisville', '40218', 'Paul', '50', '1', '1', '1');


  -- -----------------------------------------------------
-- Table `o0meda01CECS535Project`.`ROOM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `o0meda01CECS535Project`.`ROOM` (
  `type` ENUM('regular', 'extra', 'suite', 'business', 'luxury', 'family') NOT NULL,
  `occupancy` ENUM('1', '2', '3', '4', '5') NOT NULL,
  `number-beds` ENUM('1', '2', '3') NOT NULL,
  `type-beds` ENUM('queen', 'king', 'full') NOT NULL,
  `price` DOUBLE UNSIGNED NOT NULL,
  PRIMARY KEY (`type`));

 -- -----------------------------------------------------
-- INsertion  for room
-- -----------------------------------------------------
INSERT INTO `o0meda01CECS535Project`.`ROOM` (`type`, `occupancy`, `number-beds`, `type-beds`, `price`) VALUES ('regular', '1', '1', 'queen', '10');
INSERT INTO `o0meda01CECS535Project`.`ROOM` (`type`, `occupancy`, `number-beds`, `type-beds`, `price`) VALUES ('extra', '2', '1', 'king', '20');
INSERT INTO `o0meda01CECS535Project`.`ROOM` (`type`, `occupancy`, `number-beds`, `type-beds`, `price`) VALUES ('business', '3', '2', 'king', '30');
INSERT INTO `o0meda01CECS535Project`.`ROOM` (`type`, `occupancy`, `number-beds`, `type-beds`, `price`) VALUES ('luxury', '4', '3', 'full', '40');
INSERT INTO `o0meda01CECS535Project`.`ROOM` (`type`, `occupancy`, `number-beds`, `type-beds`, `price`) VALUES ('family', '5', '3', 'full', '50');


   -- -----------------------------------------------------
-- Table `o0meda01CECS535Project`.`ROOMHOTEL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `o0meda01CECS535Project`.`ROOMHOTEL` (
  `hotelid` INT(11) NOT NULL,
  `room-type` ENUM('regular', 'extra', 'suite', 'business', 'luxury', 'family') NOT NULL,
  `number` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`hotelid`, `room-type`),
  CONSTRAINT `hotelid1`
    FOREIGN KEY (`hotelid`)
    REFERENCES `o0meda01CECS535Project`.`HOTEL` (`hotelid`),
  CONSTRAINT `type1`
    FOREIGN KEY (`room-type`)
    REFERENCES `o0meda01CECS535Project`.`ROOM` (`type`));

-- -----------------------------------------------------
-- INsertion  for ROOMHOTEL
-- -----------------------------------------------------
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('1', 'regular', '2');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('1', 'extra', '2');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('1', 'business', '2');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('1', 'luxury', '2');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('1', 'family', '2');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('2', 'regular', '4');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('2', 'extra', '4');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('2', 'business', '4');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('2', 'luxury', '4');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('2', 'family', '4');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('3', 'regular', '6');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('3', 'extra', '6');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('3', 'business', '6');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('3', 'luxury', '6');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('3', 'family', '6');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('4', 'regular', '8');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('4', 'extra', '8');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('4', 'business', '8');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('4', 'luxury', '8');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('4', 'family', '8');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('5', 'regular', '10');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('5', 'extra', '10');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('5', 'business', '10');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('5', 'luxury', '10');
INSERT INTO `o0meda01CECS535Project`.`ROOMHOTEL` (`hotelid`, `room-type`, `number`) VALUES ('5', 'family', '10');


-- -----------------------------------------------------
-- Table `o0meda01CECS535Project`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `o0meda01CECS535Project`.`CUSTOMER` (
  `cust-id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `number` VARCHAR(45) NOT NULL,
  `street` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `zip` VARCHAR(45) NOT NULL,
  `status` ENUM('gold', 'silver', 'business') NOT NULL,
  PRIMARY KEY (`cust-id`));
-- -----------------------------------------------------
-- INsertion  for CUSTOMER
-- -----------------------------------------------------
INSERT INTO `o0meda01CECS535Project`.`CUSTOMER` (`cust-id`, `name`, `number`, `street`, `city`, `zip`, `status`) VALUES ('1', 'Siji', '10', '24th', 'New York', '20989', 'gold');
INSERT INTO `o0meda01CECS535Project`.`CUSTOMER` (`cust-id`, `name`, `number`, `street`, `city`, `zip`, `status`) VALUES ('2', 'Tobi', '20', 'St John', 'Durham', '39980', 'silver');
INSERT INTO `o0meda01CECS535Project`.`CUSTOMER` (`cust-id`, `name`, `number`, `street`, `city`, `zip`, `status`) VALUES ('3', 'Toni', '30', 'St Matthew', 'Louisville', '40299', 'business');
INSERT INTO `o0meda01CECS535Project`.`CUSTOMER` (`cust-id`, `name`, `number`, `street`, `city`, `zip`, `status`) VALUES ('4', 'Sola', '40', 'Holdup', 'St Louis', '67890', 'gold');
INSERT INTO `o0meda01CECS535Project`.`CUSTOMER` (`cust-id`, `name`, `number`, `street`, `city`, `zip`, `status`) VALUES ('5', 'Iyanu', '50', 'Damn', 'Dayton', '45673', 'silver');
INSERT INTO `o0meda01CECS535Project`.`CUSTOMER` (`cust-id`, `name`, `number`, `street`, `city`, `zip`, `status`) VALUES ('6', 'Fiyin', '60', 'Shutup', 'Pikeville', '78364', 'business');

 -- -----------------------------------------------------
-- Table `o0meda01CECS535Project`.`reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `o0meda01CECS535Project`.`RESERVATION` (
  `hotelid` INT(11) NOT NULL,
  `cust-id` INT(11) NOT NULL,
  `room-type` ENUM('regular', 'extra', 'suite', 'business', 'luxury', 'family') NOT NULL,
  `begin-date` DATE NOT NULL,
  `end-date` DATE NOT NULL,
  `credit-card-number` BIGINT(30) NULL DEFAULT NULL,
  `exp-date` DATE NULL DEFAULT NULL,
   INDEX `hotelid2_idx` (`hotelid` ASC) ,
  INDEX `room-type2_idx` (`room-type` ASC),
  PRIMARY KEY (`cust-id`, `begin-date`),
  CONSTRAINT `cust-id`
    FOREIGN KEY (`cust-id`)
    REFERENCES `o0meda01CECS535Project`.`CUSTOMER` (`cust-id`),
  CONSTRAINT `hotelid2`
    FOREIGN KEY (`hotelid`)
    REFERENCES `o0meda01CECS535Project`.`HOTEL` (`hotelid`),
  CONSTRAINT `room-type`
    FOREIGN KEY (`room-type`)
    REFERENCES `o0meda01CECS535Project`.`ROOM` (`type`));

-- -----------------------------------------------------
-- INsertion  for RESERVATION
-- -----------------------------------------------------

INSERT INTO `o0meda01CECS535Project`.`RESERVATION` (`hotelid`, `cust-id`, `room-type`, `begin-date`, `end-date`, `credit-card-number`, `exp-date`) VALUES ('1', '1', 'extra', '2018-01-01', '2018-01-15', '123456789000', '2021-10-10');
INSERT INTO `o0meda01CECS535Project`.`RESERVATION` (`hotelid`, `cust-id`, `room-type`, `begin-date`, `end-date`, `credit-card-number`, `exp-date`) VALUES ('1', '2', 'family', '2018-02-05', '2018-02-15', '123456789111', '2020-1-1');
INSERT INTO `o0meda01CECS535Project`.`RESERVATION` (`hotelid`, `cust-id`, `room-type`, `begin-date`, `end-date`, `credit-card-number`, `exp-date`) VALUES ('2', '3', 'regular', '2018-03-03', '2018-03-30', '123456789222', '2020-02-02');
INSERT INTO `o0meda01CECS535Project`.`RESERVATION` (`hotelid`, `cust-id`, `room-type`, `begin-date`, `end-date`, `credit-card-number`, `exp-date`) VALUES ('2', '5', 'extra', '2018-05-15', '2018-06-30', '123456789333', '2022-09-09');
INSERT INTO `o0meda01CECS535Project`.`RESERVATION` (`hotelid`, `cust-id`, `room-type`, `begin-date`, `end-date`, `credit-card-number`, `exp-date`) VALUES ('2', '4', 'extra', '2018-05-21', '2018-05-25', '123456789444', '2030-08-01');

-- -----------------------------------------------------
-- Table custprofile to obtain data from RESERVATION
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `o0meda01CECS535Project`.`CUSTPROFILE` (
  `cust-id` INT NOT NULL,
  `latest-stay` DATE NOT NULL,
  `total` DOUBLE NOT NULL);

-- -----------------------------------------------------
-- INsertion  for CUSTPROFILE
-- -----------------------------------------------------
insert into `o0meda01CECS535Project`.`CUSTPROFILE`(`cust-id`,`latest-stay`,`total`) select `cust-id`, max(`begin-date`), sum(datediff(`end-date`,`begin-date`) * `price`)  from `o0meda01CECS535Project`.`RESERVATION`,`o0meda01CECS535Project`.`ROOM` where `o0meda01CECS535Project`.`RESERVATION`.`room-type`=`o0meda01CECS535Project`.`ROOM`.`type` group by `cust-id`;


 -- -----------------------------------------------------
-- Trigger for ROOM
-- -----------------------------------------------------
DELIMITER $$
CREATE
TRIGGER `o0meda01CECS535Project`.`ROOM_BEFORE_INSERT`
BEFORE INSERT ON `o0meda01CECS535Project`.`ROOM`
FOR EACH ROW
BEGIN
IF NEW.`type`  NOT IN ('regular', 'extra','suite', 'business', 'luxury', 'family') THEN
		SET NEW.`type`=0;
	END IF;

     IF NEW.`occupancy`  NOT IN ('1', '2', '3', '4', '5') THEN
		SET NEW.`occupancy`=0;
	END IF;

	IF NEW.`number-beds`  NOT IN ('1', '2', '3') 	THEN
		SET NEW.`number-beds`=0;
	END IF;

	IF NEW.`type-beds`  NOT IN ('queen', 'king','full') THEN
		SET NEW.`type-beds`=0;
	END IF;

END$$









-- -----------------------------------------------------
-- Trigger for insertion on RESERVATION
-- -----------------------------------------------------

DELIMITER $$
CREATE
TRIGGER `o0meda01CECS535Project`.`RESERVATION_AFTER_INSERT`
AFTER INSERT ON `o0meda01CECS535Project`.`RESERVATION`
FOR EACH ROW
BEGIN

SET @roomtype := NEW.`room-type`;
SET @price := (select `price`  from ROOM where `type` = @roomtype);
SET @total:=(datediff(NEW.`end-date`, NEW.`begin-date`) * @price);
SET @custid := (select count(`cust-id`) from CUSTPROFILE where `cust-id` = NEW.`cust-id`);

	IF (@custid < 1) THEN

            insert into CUSTPROFILE (`cust-id`,`latest-stay`,`total`) values(NEW.`cust-id`, NEW.`begin-date`,@total);
	ELSEIF (@custid >= 1) THEN
			SET @old_total := (select `total` from CUSTPROFILE where `cust-id` = NEW.`cust-id`);
            SET @currentdate :=(SELECT `latest-stay` FROM CUSTPROFILE where `cust-id` = NEW.`cust-id`);
            update CUSTPROFILE
            set `latest-stay`= CASE
									WHEN NEW.`begin-date`< @currentdate THEN @currentdate
									ELSE NEW.`begin-date`
								END,
            `total` = @old_total + (datediff(NEW.`end-date`, NEW.`begin-date`) * @price)
            where `cust-id` = NEW.`cust-id`;
	END IF;
END$$

-- -----------------------------------------------------
-- Trigger for update on RESERVATION
-- -----------------------------------------------------

DELIMITER $$
CREATE
TRIGGER `o0meda01CECS535Project`.`RESERVATION_AFTER_UPDATE`
AFTER UPDATE ON `o0meda01CECS535Project`.`RESERVATION`
FOR EACH ROW
BEGIN
SET @roomtype := NEW.`room-type`;
SET @price := (select `price`  from ROOM where `type` = @roomtype);
SET @total:=(datediff(NEW.`end-date`, NEW.`begin-date`) * @price);
SET @newtotal :=  (select sum(datediff(`end-date`,`begin-date`) * @price) from RESERVATION where `cust-id`=new.`cust-id` Group by new.`cust-id`);
SET @custid := (select count(`cust-id`) from CUSTPROFILE where `cust-id` = NEW.`cust-id`);

	IF (@custid < 1) THEN

            insert into CUSTPROFILE (`cust-id`,`latest-stay`,`total`) values(NEW.`cust-id`, NEW.`begin-date`,@total);
	ELSEIF (@custid >= 1) THEN
			SET @old_total := (select `total` from CUSTPROFILE where `cust-id` = NEW.`cust-id`);
            SET @currentdate :=(SELECT `latest-stay` FROM CUSTPROFILE where `cust-id` = NEW.`cust-id`);
            update CUSTPROFILE
            set `latest-stay`= CASE
									WHEN NEW.`begin-date`< @currentdate THEN @currentdate
									ELSE NEW.`begin-date`
								END,
            `total` =  @newtotal
            where `cust-id` = NEW.`cust-id`;
            END IF;
END$$

-- -----------------------------------------------------
-- View Favorite
-- -----------------------------------------------------
CREATE VIEW `o0meda01CECS535Project`.`FAVORITE` AS SELECT V2.`cust-id`,V2.`hotel-id` FROM
(SELECT
        V1.`cust-id`, V1.`hotelid` AS `hotel-id`, MAX(V1.spent_days)
    FROM
        (SELECT `cust-id`,`hotelid`,SUM(DATEDIFF(`RESERVATION`.`end-date`, `RESERVATION`.`begin-date`)) AS spent_days
		  FROM `o0meda01CECS535Project`.`RESERVATION`
		  GROUP BY `cust-id` , `hotelid`) AS V1
    GROUP BY V1.`cust-id` , V1.`hotelid`) AS V2;
