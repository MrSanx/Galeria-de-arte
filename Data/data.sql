CREATE TABLE `User` (
	`usermame` TEXT(10) NOT NULL,
	`fullname` varchar(255) NOT NULL,
	`mail` varchar(255) NOT NULL UNIQUE,
	`password` varchar(14) NOT NULL,
	`documentType` INT(1) NOT NULL,
	`document` varchar(15) NOT NULL,
	`birthday` TIMESTAMP NOT NULL,
	PRIMARY KEY (`usermame`)
);

CREATE TABLE `Artist` (
	`id-artist` INT(10) NOT NULL AUTO_INCREMENT,
	`fullname` varchar(255) NOT NULL,
	`nationality` varchar(15) NOT NULL,
	`birthday` TIMESTAMP NOT NULL,
	`status` INT(1) NOT NULL,
	`bibliography` TEXT,
	PRIMARY KEY (`id-artist`)
);

CREATE TABLE `Art` (
	`id-art` INT(10) NOT NULL AUTO_INCREMENT,
	`id-artist` INT(10) NOT NULL,
	`name` TEXT(10) NOT NULL,
	`description` varchar(50) NOT NULL,
	`size` varchar(255),
	`price` FLOAT(10),
	PRIMARY KEY (`id-art`)
);

CREATE TABLE `Cart` (
	`id-cart` INT(10) NOT NULL AUTO_INCREMENT,
	`username` TEXT(10) NOT NULL UNIQUE,
	`id-art` INT(10) NOT NULL,
	PRIMARY KEY (`id-cart`,`username`,`id-art`)
);

CREATE TABLE `Style-Art` (
	`id-art` INT(10) NOT NULL,
	`id-style` INT(2) NOT NULL,
	PRIMARY KEY (`id-art`,`id-style`)
);

CREATE TABLE `Subject-Art` (
	`id-art` INT(10) NOT NULL,
	`id-subject` INT(2) NOT NULL,
	PRIMARY KEY (`id-art`,`id-subject`)
);

CREATE TABLE `Medium-Art` (
	`id-art` INT(10) NOT NULL,
	`id-medium` INT(2) NOT NULL,
	PRIMARY KEY (`id-art`,`id-medium`)
);

CREATE TABLE `Style` (
	`id-style` INT(2) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`id-style`)
);

CREATE TABLE `Subject` (
	`id-subject` INT(2) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`id-subject`)
);

CREATE TABLE `Medium` (
	`id-medium` INT(2) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL UNIQUE,
	PRIMARY KEY (`id-medium`)
);

ALTER TABLE `Art` ADD CONSTRAINT `Art_fk0` FOREIGN KEY (`id-artist`) REFERENCES `Artist`(`id-artist`);

ALTER TABLE `Cart` ADD CONSTRAINT `Cart_fk0` FOREIGN KEY (`username`) REFERENCES `User`(`usermame`);

ALTER TABLE `Cart` ADD CONSTRAINT `Cart_fk1` FOREIGN KEY (`id-art`) REFERENCES `Art`(`id-art`);

ALTER TABLE `Style-Art` ADD CONSTRAINT `Style-Art_fk0` FOREIGN KEY (`id-art`) REFERENCES `Art`(`id-art`);

ALTER TABLE `Style-Art` ADD CONSTRAINT `Style-Art_fk1` FOREIGN KEY (`id-style`) REFERENCES `Style`(`id-style`);

ALTER TABLE `Subject-Art` ADD CONSTRAINT `Subject-Art_fk0` FOREIGN KEY (`id-art`) REFERENCES `Art`(`id-art`);

ALTER TABLE `Subject-Art` ADD CONSTRAINT `Subject-Art_fk1` FOREIGN KEY (`id-subject`) REFERENCES `Subject`(`id-subject`);

ALTER TABLE `Medium-Art` ADD CONSTRAINT `Medium-Art_fk0` FOREIGN KEY (`id-art`) REFERENCES `Art`(`id-art`);

ALTER TABLE `Medium-Art` ADD CONSTRAINT `Medium-Art_fk1` FOREIGN KEY (`id-medium`) REFERENCES `Medium`(`id-medium`);

