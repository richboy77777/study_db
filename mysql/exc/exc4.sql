use world;

CREATE TABLE IF NOT EXISTS `book5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `review5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book5_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book5_no`),
  INDEX `fk_review5_book51_idx` (`book5_no` ASC) VISIBLE,
  CONSTRAINT `fk_review5_book51`
    FOREIGN KEY (`book5_no`)
    REFERENCES `book5` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- 1 이것이자바다 1
-- 2 프로그래밍가이드북
-- 3 안드로이드 3
-- 4 4차산업혁명의미래 4

desc book5;

insert into book5 (
name
) values (
'프로그래밍가이드북'
);

select * from book5;

insert into review5 (
comment
,book5_no
) values (
'우와책재미있습니다'
,2
);

-- Error Code: 1364. Field 'book5_no' doesn't have a default value    book5_no 포린키가 빠져있음
-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`world`.`review5`, CONSTRAINT `fk_review5_book51` FOREIGN KEY (`book5_no`) REFERENCES `book5` (`no`))
-- 위에 오류는 book5 데이터가 4개까지인데 리뷰5에서 넘버 5 넣어서 나오는 오류	

select * from review5;

-- 점선 : nonidentifying : 부모자식관계 개발하기 좀 불편하다
-- 실선 : identifying : 개발용이성 높다

desc review5;

select
a.name
, (select count(no) from review5 where book5_no = a.no) as count
from book5 a
;

select
a.name
,b.comment
from book5 a
-- left join review5 b on b.book5_no = a.no
inner join review5 b on b.book5_no = a.no
;

select
a.comment
,b.name
from review5 a
left join book5 b on b.no = a.book5_no
;

select
b.comment
,a.name
from book5 a
-- left join review5 b on b.book5_no = a.no
inner join review5 b on b.book5_no = a.no
;