create table apr23_student(
	s_name varchar2(10 char) primary key,
	s_kor number(3) not null,
	s_eng number(3) not null,
	s_mat number(3) not null
);

insert into apr23_student values('박길동',70,80,90);

select * from apr23_student;


-- 테이블
create table apr20_menu(
	m_name varchar2(10 char) primary key,
	m_price number(5) not null
);

-- 자료 넣고
insert into apr20_menu values('참치볶음밥',6000);

-- 확인
select * from apr20_menu;

-- 자바빈

