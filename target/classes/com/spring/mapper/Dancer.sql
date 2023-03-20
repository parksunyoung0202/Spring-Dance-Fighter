create table dancer (
	id varchar(20),
	pw varchar(20) not null,
	name varchar(20) not null,
	nick varchar(20) not null,
 	primary key(id)
)

create table sabbing (
	writer varchar(30) not null,
	content varchar(1000) not null
)

create table sabbingranking (
	rank varchar(30) not null,
	rankid varchar(30) not null,
	score varchar(1000) not null
)

create table zerotworanking (
	rank varchar(30) not null,
	rankid varchar(30) not null,
	score varchar(1000) not null
)

insert into sabbingranking values ("1","DanceMaster","78");
insert into sabbingranking values ("2","숭어싸만코","76");
insert into sabbingranking values ("3","뇌BOX","75");
insert into sabbingranking values ("4","저스트절크","74");
insert into sabbingranking values ("5","정말긍정적인사람","66");
insert into sabbingranking values ("6","갱플랭크3성","64");
insert into sabbingranking values ("7","준위김철수","54");

update sabbingranking set score="91" where rankid='DanceMaster'


insert into zerotworanking values ("1","BJ매생이","84");
insert into zerotworanking values ("2","채원짱짱","83");
insert into zerotworanking values ("3","호두아빠","80");
insert into zerotworanking values ("4","병장 신진욱","76");
insert into zerotworanking values ("5","원딜왕자내로","75");
insert into zerotworanking values ("6","숭어싸만코","66");
insert into zerotworanking values ("7","갱플랭크3성","57");

delete from zerotworanking;
commit

delete from sabbing where writer='DanceMaster';
commit;

insert into sabbing values ("숭어싸만코","새삥 너무 어려운듯");
insert into sabbing values ("뇌BOX","쉬운데?");


select * from sabbingranking
select * from dancer
select * from sabbing