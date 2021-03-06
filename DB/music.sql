-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema music
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `music` ;

-- -----------------------------------------------------
-- Schema music
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `music` DEFAULT CHARACTER SET utf8 ;
USE `music` ;

-- -----------------------------------------------------
-- Table `song`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `song` ;

CREATE TABLE IF NOT EXISTS `song` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `length` FLOAT NULL,
  `album_art` VARCHAR(5000) NULL,
  `genre` VARCHAR(255) NULL,
  `album` VARCHAR(255) NULL,
  `artist` VARCHAR(255) NULL,
  `rating` VARCHAR(45) NULL,
  `user_id` INT NULL,
  `youtube` VARCHAR(5000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `user_name_UNIQUE` (`user_name` ASC))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS joshmusic@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'joshmusic'@'localhost' IDENTIFIED BY 'Potato21.';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'joshmusic'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `song`
-- -----------------------------------------------------
START TRANSACTION;
USE `music`;
INSERT INTO `song` (`id`, `title`, `length`, `album_art`, `genre`, `album`, `artist`, `rating`, `user_id`, `youtube`) VALUES (1, 'Them Changes', 3.08, 'https://upload.wikimedia.org/wikipedia/en/9/99/DrunkThundercat.jpg', 'Jazz Fusion', 'Drunk', 'Thundercat', '5', 1, NULL);
INSERT INTO `song` (`id`, `title`, `length`, `album_art`, `genre`, `album`, `artist`, `rating`, `user_id`, `youtube`) VALUES (2, 'Slumlord', 5.15, 'https://upload.wikimedia.org/wikipedia/en/6/6f/Neon-Indian-VINS.png', 'Disco/Vaporwave', 'Vega Intl. Night School', 'Neon Indian', '5', 1, NULL);
INSERT INTO `song` (`id`, `title`, `length`, `album_art`, `genre`, `album`, `artist`, `rating`, `user_id`, `youtube`) VALUES (3, 'Other People', 4.24, 'https://upload.wikimedia.org/wikipedia/en/a/a2/Beach_House_-_Bloom.png', 'Dream pop', 'Bloom', 'Beach House', '5', 1, NULL);
INSERT INTO `song` (`id`, `title`, `length`, `album_art`, `genre`, `album`, `artist`, `rating`, `user_id`, `youtube`) VALUES (4, 'Tailwhip', 3.45, 'https://www.discogs.com/Men-I-Trust-Tailwhip-EP/release/10997505#images/30781017', 'Electronic', 'Tailwhip', 'Men I Trust', '5', 1, NULL);
INSERT INTO `song` (`id`, `title`, `length`, `album_art`, `genre`, `album`, `artist`, `rating`, `user_id`, `youtube`) VALUES (5, 'Cop Killer', 2.41, 'https://upload.wikimedia.org/wikipedia/en/d/dc/We_Must_Become_the_Pitiless_Censors_of_Ourselves_%28Front_Cover%29.png', 'Lo-fi', 'We Must Become the Pitiless Censors of Ourselves', 'John Maus', '4', 1, NULL);
INSERT INTO `song` (`id`, `title`, `length`, `album_art`, `genre`, `album`, `artist`, `rating`, `user_id`, `youtube`) VALUES (6, 'Cave', 3.52, 'https://upload.wikimedia.org/wikipedia/en/1/18/Future_islands_the_far_field.jpg', 'Synth-pop', 'The Far Field', 'Future Islands', '5', 1, '\"https://www.youtube.com/embed/RGrhubD8VDg\"');
INSERT INTO `song` (`id`, `title`, `length`, `album_art`, `genre`, `album`, `artist`, `rating`, `user_id`, `youtube`) VALUES (7, 'The Reeling', 4.48, 'https://upload.wikimedia.org/wikipedia/en/8/87/Passion_Pit_Manners_Extended.jpg', 'Electro Indie', 'Manners', 'Passion Pit', '4', 1, NULL);
INSERT INTO `song` (`id`, `title`, `length`, `album_art`, `genre`, `album`, `artist`, `rating`, `user_id`, `youtube`) VALUES (8, 'Feels Like We Only Go Backwards', 2.56, 'https://upload.wikimedia.org/wikipedia/en/9/9b/Tame_Impala_-_Currents.png', 'Psychedelic pop', 'Currents', 'Tame Impala', '5', 1, NULL);
INSERT INTO `song` (`id`, `title`, `length`, `album_art`, `genre`, `album`, `artist`, `rating`, `user_id`, `youtube`) VALUES (9, 'Casio', 3.54, 'https://upload.wikimedia.org/wikipedia/en/9/93/For_Ever_Jungle.jpg', 'Disco', 'For Ever', 'Jungle', '4', 1, NULL);
INSERT INTO `song` (`id`, `title`, `length`, `album_art`, `genre`, `album`, `artist`, `rating`, `user_id`, `youtube`) VALUES (10, 'Day Glow Fire', 3.49, 'https://upload.wikimedia.org/wikipedia/en/1/18/Future_islands_the_far_field.jpg', 'Synth-pop', 'The Far Field', 'Future Islands', '5', 1, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `user`
-- -----------------------------------------------------
START TRANSACTION;
USE `music`;
INSERT INTO `user` (`id`, `user_name`, `password`) VALUES (1, 'josh', 'josh');
INSERT INTO `user` (`id`, `user_name`, `password`) VALUES (2, 'a', 'a');
INSERT INTO `user` (`id`, `user_name`, `password`) VALUES (3, 'tinihollopeter', 'Audrey2015');
INSERT INTO `user` (`id`, `user_name`, `password`) VALUES (4, 'user name', 'password');
INSERT INTO `user` (`id`, `user_name`, `password`) VALUES (5, '  f ', 'f');
INSERT INTO `user` (`id`, `user_name`, `password`) VALUES (7, ' Aldavis17', 'alh071989');
INSERT INTO `user` (`id`, `user_name`, `password`) VALUES (8, ' greend', '5Krunner');
INSERT INTO `user` (`id`, `user_name`, `password`) VALUES (9, 'daubie65', 'joseywales1');
INSERT INTO `user` (`id`, `user_name`, `password`) VALUES (10, 'test123', 'hellojosh');
INSERT INTO `user` (`id`, `user_name`, `password`) VALUES (6, 'test', 'test');

COMMIT;

