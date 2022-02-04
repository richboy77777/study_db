use world;

SET FOREIGN_KEY_CHECKS = 1;

insert into oslomember ( 
seq
, image
, name
, id
, password
, genderCd
, dob
, nationalityCd
, maritalstatus
, weddinganniversary
, havingchildren
, aboutmyself
, nickname
, favoritecolor
, recommenderseq
, periodnumber
) values (
1
, 'tomtom'
, '이상원'
, 'tom'
, 'moivestar'
, 1
, '1992-01-18'
, 1
, 1
, '2020-01-01'
, 2
, '안녕하세요이상원입니다'
, '프로그래머'
, '민트색'
, 1
, 1
);

select * from oslomember;

insert into oslomemberaddress (
seq
, defaultNy
, typeCd
, useCd
, zipcode
, address1
, address2
, oslomember_seq
) values (
1
, 1
, 1
, 1
, 2
, '경기도수원시'
, '영통구망포동'
, 1
);

select * from oslomemberaddress;

insert into oslomemberemail ( 
seq
, defaultNy
, typeCd
, domaincd
, emailfull
, oslomember_seq
) values (
1
, 1
, 1
, 1
, 'www.naver.com/tom'
, 1
);

select * from oslomemberemail;

insert into consenttoreceive ( 
 seq
 , defaultNy
 , typeCd
 , selectCd
 , oslomember_seq
) values (
1
, 1
, 1
, 1
, 1
);

select * from consenttoreceive;

insert into oslomemberphone (
seq
, defaultNy
, deviceCd
, typeCd 
, tcompanyCd
, phonenumber
, oslomember_seq
) values (
1
, 1
, 1
, 1
, 1
, '010-0000-0000'
, 1
);

select * from oslomemberphone;

insert into smshomepage (
  seq
  , defaultNy
  , divisionCd
  , typeCd
  , url
  , oslomember_seq
) values (
1
, 1
, 1
, 1
, 'www.naver.com/tom'
, 1
);

select * from smshomepage;

insert into hobby ( 
 seq
, hobbyCd
, oslomember_seq
) values (
1
, 1
, 1
);

select * from hobby;

insert into desiredjob (
seq
, jobCd
, oslomember_seq
) values (
1
, 1
, 1
);

select * from desiredjob;

insert into memberqna ( 
seq
, questionCd
, answer
, oslomember_seq
) values (
1
, 1
, '바지락칼국수'
,1
);

select * from memberqna;

CREATE TABLE IF NOT EXISTS `codegroupaa` (
  `gseq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `gname` VARCHAR(100) NULL,
  PRIMARY KEY (`gseq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `codeaa` (
  `dseq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `dname` VARCHAR(100) NULL,
  `codegroup_gseq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`dseq`, `codegroup_gseq`),
  INDEX `fk_codeaa_codegroup1_idx` (`codegroup_gseq` ASC) VISIBLE,
  CONSTRAINT `fk_codeaa_codegroup1`
    FOREIGN KEY (`codegroup_gseq`)
    REFERENCES `codegroupaa` (`gseq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

insert into codegroupaa (
gseq
, gname
) values (
19
,'희망직업'
);

select * from codegroupaa;

insert into codeaa ( 
dseq
, dname
, codegroup_gseq
) values (
1
, ''
, 1
);

select * from codeaa;










