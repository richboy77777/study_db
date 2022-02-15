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
'인스타그램',
1,
2,
0,
now(),
now(),
now(),
now(),
11
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
order by a.ifcgSeq, b.ifcdOrder;

