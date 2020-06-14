use AirplaneCrash;

CREATE TABLE IF NOT EXISTS `AirplaneCrash`.`PASSENGER` (
  `p_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `age` INT NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  `phone_number` NVARCHAR(15) NOT NULL,
  `email_address` NVARCHAR(45) NOT NULL,
  `embarked` VARCHAR(5) NOT NULL,
  `survived` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`p_id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `AirplaneCrash`.`COMPANION` (
  `c_id` INT NOT NULL AUTO_INCREMENT,
  `p_id` INT NOT NULL,
  `companion_type` VARCHAR(15) NOT NULL,
  `special_seat` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`c_id`),
  INDEX `p_id_idx` (`p_id` ASC) VISIBLE,
  CONSTRAINT `p_id`
    FOREIGN KEY (`p_id`)
    REFERENCES `AirplaneCrash`.`PASSENGER` (`p_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `AirplaneCrash`.`TICKET` (
  `t_id` INT NOT NULL AUTO_INCREMENT,
  `p_id` INT NOT NULL UNIQUE,
  `seat_number` NVARCHAR(5) NOT NULL UNIQUE,
  PRIMARY KEY (`t_id`),
  INDEX `p_id_idx` (`p_id` ASC) VISIBLE,
  INDEX `s_id_idx` (`seat_number` ASC) VISIBLE,
  CONSTRAINT `fk_p_id`
    FOREIGN KEY (`p_id`)
    REFERENCES `AirplaneCrash`.`PASSENGER` (`p_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `seat_number`
    FOREIGN KEY (`seat_number`)
    REFERENCES `AirplaneCrash`.`SEAT` (`seat_number`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `AirplaneCrash`.`SEAT` (
  `seat_number` NVARCHAR(5) NOT NULL,
  `zone` VARCHAR(15) NULL,
  `class` VARCHAR(15) NULL,
  PRIMARY KEY (`seat_number`))
ENGINE = InnoDB;
