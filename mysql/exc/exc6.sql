use world;

CREATE TABLE IF NOT EXISTS `codeGroup` (
  `seq` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `code` (
  `code` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NULL,
  `codeGroup_seq` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codeGroup_seq`, `code`),
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into codeGroup (
seq
, name
) values (
'infra002'
,'통신사'
);

select * from codeGroup;
select * from code;

insert into code (
code
,name
,codeGroup_seq
) values (
'3'
,'LGU+'
,'infra002'
);

select
a.seq
,a.name
,b.code
,b.name
from codeGroup a
left join code b on b.codeGroup_seq = a.seq
;