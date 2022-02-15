create database bts;

use bts;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `bts`.`infrcodegroup`
(
`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`ifcgDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`
)
VALUES
(
'회원보안질문.구분',
1,
14,
0,
now(),
now(),
now(),
now()
);

select * from infrcodegroup;


INSERT INTO `bts`.`infrcode`
(
`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifcgSeq`
)
VALUES
(
'나의 좌우명은?',
1,
3,
0,
now(),
now(),
now(),
now(),
14
);

truncate infrcode;

select * from infrCode;

select
a.ifcgSeq
, a.ifcgName
, b.ifcdSeq
, b.ifcdName
, b.ifcdOrder
from infrcodegroup a
	left join infrCode b on b.ifcgseq = a.ifcgSeq
order by a.ifcgSeq, 
		b.ifcdOrder;

update infrCode set
	ifcdName = 'gmail.com'
where 1=1
	and ifcdSeq = 20;


alter table infrmemberemail modify ifmeTypeCd bigint;

