create table zoo_member
(
	name varchar2(50) not null,
	job varchar2(50),
	constraint zoo_member_name_pk primary key(name)
);

insert into zoo_member
values('이우철','student');



select *from zoo_member
select *from TBL_CUSTOMER
select *from TBL_order

select * from tbl_board_r

create sequence board_num_seq
	start with 1
	increment by 1
	maxvalue 9999999
	nocycle
	nocache;

INSERT INTO tbl_board_r (re_title, re_content, re_file, re_dt, cust_id, re_likes, re_cnt, re_score) 
VALUES ('re_title 1', 're_content 1', 're_file 1', sysdate, 'smart', 1, 1, 1);



select * from TBL_BOARD_R
order by re_seq
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-IS-BigData2/Zoo.git
