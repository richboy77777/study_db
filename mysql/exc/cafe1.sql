use world;

create table cafe1 (
	seq int
	,name varchar(45)
	,ttable int
	,chair int
	,address varchar(45)
	,location int
	,ceoname varchar(45)
);

drop table cafe1;

create table cafe1 (
	seq int
	,name varchar(45)
	,ttable int
	,chair int
	,address varchar(45)
	,location int
	,ceoname varchar(45)
);

drop table cafe1;

CREATE TABLE IF NOT EXISTS `cafe1` (
  `seq` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `ttable` INT NULL,
  `chair` INT NULL,
  `address` VARCHAR(45) NULL,
  `location` INT NULL,
  `ceoname` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
COMMENT = '카페'


select * from cafe1;