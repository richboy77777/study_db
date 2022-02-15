use bts;

SET FOREIGN_KEY_CHECKS = 1;

select
	a.ifatSeq
    ,(select ifatName from infrAuth where ifatSeq = a.ifatSeq) as ifatName
    ,a.ifmuSeq
    ,(select ifmuName from infrMenu where ifmuSeq = a.ifmuSeq) as ifmuName
    ,a.ifauRoleCd
    ,(select ifcdName from infrCode where ifcdSeq = a.ifauRoleCd) as ifauRoleName
from infrAuthMenu a
	where 1=1
		and a.ifatSeq = 1
;


select * from infrauth;
select * from infrmenu;
select * from infrauthmenu;