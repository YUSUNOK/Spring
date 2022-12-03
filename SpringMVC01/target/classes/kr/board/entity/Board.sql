create table board(
	idx int not null auto_increment,
	title varchar(1000) not null,
	content varchar(3000) not null,
	writer varchar(1000) not null,
	indate datetime not null default now(),
	count int not null default 0,
	primary key(idx)
);

select * from board;

insert into board(title, content, writer) value("스프링강의 오늘 다 듣는다", "들을 때까지 안잔다","유선옥");