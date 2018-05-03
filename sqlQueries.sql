CREATE TABLE if not EXISTS `hc`.`queStats` (
    `q_id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `q_name` VARCHAR(100) NULL , 
    `q_maxScore` INT(5) UNSIGNED NULL ,
    `q_successRate` FLOAT(4) UNSIGNED NULL DEFAULT '0' ,
    `q_difficulty` VARCHAR(10) NULL DEFAULT 'Easy' ,
    `q_seen` TINYINT(1) UNSIGNED NULL DEFAULT '0' ,
    PRIMARY KEY (`q_id`)
) ENGINE = INNODB;



CREATE TABLE `hc`.`queDetails` ( 
    `q_queDetailID` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
    `q_id` INT UNSIGNED NOT NULL ,
    `q_question` VARCHAR(1000) NOT NULL ,
    `q_inputFormat` VARCHAR(200) NOT NULL ,
    `q_outputFormat` VARCHAR(200) NOT NULL ,
    `q_constraints` VARCHAR(100) NULL ,
    `q_sampleInput` VARCHAR(100) NOT NULL ,
    `q_sampleOutput` VARCHAR(100) NOT NULL ,
    `q_explanation` VARCHAR(200) NOT NULL ,
    `q_note` VARCHAR(100) NULL ,
    PRIMARY KEY (`q_queDetailID`)
) ENGINE = InnoDB;


ALTER TABLE `queDetails` ADD CONSTRAINT `0_1` FOREIGN KEY (`q_id`) REFERENCES `queStats`(`q_id`) ON DELETE CASCADE ON UPDATE CASCADE;


