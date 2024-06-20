
drop table if exists employee_position;
drop table if exists employee;
drop table if exists position;

create table employee(
	id int identity(1,1) primary key,
	name nvarchar(32),
	surname nvarchar(32),
	insurance_company nvarchar(64),
	city nvarchar(64)
);

create table position(
	id int identity(1,1) primary key,
	name nvarchar(64)
);

create table employee_position(
	emp_id int not null,
	pos_id int not null,
	primary key (emp_id, pos_id),
	foreign key (emp_id) references employee(id),
	foreign key (pos_id) references position(id),
);
