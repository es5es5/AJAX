create table apr23_student(
	s_name varchar2(10 char) primary key,
	s_kor number(3) not null,
	s_eng number(3) not null,
	s_mat number(3) not null
);

insert into apr23_student values('�ڱ浿',70,80,90);

select * from apr23_student;


-- ���̺�
create table apr20_menu(
	m_name varchar2(10 char) primary key,
	m_price number(5) not null
);

-- �ڷ� �ְ�
insert into apr20_menu values('��ġ������',6000);

-- Ȯ��
select * from apr20_menu;

-- �ڹٺ�

