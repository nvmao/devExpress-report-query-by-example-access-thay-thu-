create database programmers_test;
use programmers_test;

drop table programmers;
drop table companies;

create table companies(
	id int primary key identity(1,1),
	name varchar(100),
	description varchar(200)
)

create table programmers(
	id int primary key identity(1,1),
	name varchar(50),
	salary int,
	programming_language varchar(50),
	company_id int,
	FOREIGN KEY (company_id) REFERENCES companies(id)
);

insert into companies(name,description) values('Google','Google LLC is an American multinational technology company that specializes in Internet-related services and products.');
insert into companies(name,description) values('Microsoft','Microsoft Corporation is an American multinational technology company with headquarters in Redmond.');

insert into programmers(name,salary,programming_language,company_id) values('mao',1000,'Java',1);
insert into programmers(name,salary,programming_language,company_id) values('David',1200,'C++',1),('Duy Ghe',9000,'PHP',1),('Tom Thomas',500,'C++',2),('cuc cu cu',10,'JavaScript',2);

select * from companies;
select * from programmers;