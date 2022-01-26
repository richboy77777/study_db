use world;

CREATE TABLE IF NOT EXISTS `book3` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `publisher_cd` INT NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `publisher` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

desc book3;
desc publisher;

insert into book3 (
name
,publisher_cd
) values (
'4차산업혁명의미래'
,4
);

insert into publisher (
name
) values (
'아이콕스'
);

select * from book3;
select * from publisher;

-- 전체 데이터삭제
truncate book3;
truncate publisher;

select
a.no
,a.name
,a.publisher_cd
,b.no
,b.name
from book3 as a
-- left join publisher as b on b.no = a.publisher_cd;
inner join publisher as b on b.no = a.publisher_cd;

select
	a.no
    ,a.name
    ,a.publisher_cd
    ,(select name from publisher where no = a.publisher_cd)
from book3 as a;

select
	a.no
    ,a.name
    ,a.publisher_cd
    ,(select name from publisher where no = a.publisher_cd) as publisher_name
from book3 as a;

select
	a.no
    ,a.name
    ,a.publisher_cd
    ,getPublisherName   -- 함수, function
from book3 as a;

-- 테이블 조인을 해야 되면 테이블 이름에 알리아스를 넣는다. (alias=as)