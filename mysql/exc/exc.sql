use world;

show tables;

-- 주석

-- 테이블 생성

create table member (
    seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);

create table member2 (
    seq int,
    name varchar(100),
    id varchar(100),
    regdate datetime
);

-- 테이블 삭제

drop table member2;
drop table member;

-- 테이블 추가

insert into cafe1 ( 
seq
,name
,ttable
,chair
,address
,location
,ceoname
) values (
6
,'별다방'
,1
,2
,'대전시'
,5
,'장동건'
);

-- varchar 은 ' 또는 "로 감싼다.
-- int은 사용하지 않아도 된다.
-- 컴마는 앞쪽을 선호: 이건 허불호가 갈니다.

-- 테이블 조회

select * from cafe1;

select * from cafe1 where seq = 3;

select * from cafe1 where location = 5;

select * from cafe1 where name = '별다방' and ttable = 1 and chair = 2;

select * from cafe1 where name = '탐앤탐스' or ceoname = '장동건';

select * from cafe1 where location > 5;
select * from cafe1 where location < 5;
select * from cafe1 where location >= 5;
select * from cafe1 where location <= 5;
select * from cafe1 where location <> 5;

select * from cafe1 where name like '%다%';
select * from cafe1 where name like '%다';
select * from cafe1 where name like '다%';

-- primary key : 유일한 데이터