CREATE SCHEMA IF NOT EXISTS `knowledgetracker` DEFAULT CHARACTER SET utf8;
CREATE TABLE IF NOT EXISTS `knowledgetracker`.`main_topic` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `knowledgetracker`.`subtopic` (
  `id` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `complete_percentage` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `knowledgetracker`.`topic` (
  `id` INT NOT NULL,
  `title` VARCHAR(45) NULL,
  `total_complete` INT NULL,
  `main_topic_id` INT NOT NULL,
  PRIMARY KEY (`id`, `main_topic_id`),
  INDEX `fk_topic_main_topic1_idx` (`main_topic_id` ASC),
  CONSTRAINT `fk_topic_main_topic1`
    FOREIGN KEY (`main_topic_id`)
    REFERENCES `knowledgetracker`.`main_topic` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `knowledgetracker`.`topic_has_subtopic` (
  `topic_id` INT NOT NULL,
  `subtopic_id` INT NOT NULL,
  PRIMARY KEY (`topic_id`, `subtopic_id`),
  INDEX `fk_topic_has_subtopic_subtopic1_idx` (`subtopic_id` ASC),
  INDEX `fk_topic_has_subtopic_topic_idx` (`topic_id` ASC),
  CONSTRAINT `fk_topic_has_subtopic_topic`
    FOREIGN KEY (`topic_id`)
    REFERENCES `knowledgetracker`.`topic` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_topic_has_subtopic_subtopic1`
    FOREIGN KEY (`subtopic_id`)
    REFERENCES `knowledgetracker`.`subtopic` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;