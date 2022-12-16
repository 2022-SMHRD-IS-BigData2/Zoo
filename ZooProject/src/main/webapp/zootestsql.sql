create table zoo_member
(
	name varchar2(50) not null,
	job varchar2(50),
	constraint zoo_member_name_pk primary key(name)
);

insert into zoo_member
values('이우철','student');



select *from zoo_member