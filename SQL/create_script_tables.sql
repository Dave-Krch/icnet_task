
-- v postgresql jsem se naucil drop table cascade, tady my ssms vygenerovalo tohle, pri provozu databaze se tak casto tabulky nedropuji, ale na testovani mensich databazi se mi to hodi, takze je to prvni vec co hledam v kazde nove odnozi sql, ke ktere se dostanu :)
USE [company]
GO
/****** Object:  Table [dbo].[employee_position]    Script Date: 20.06.2024 21:15:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[employee_position]') AND type in (N'U'))
DROP TABLE [dbo].[employee_position]
GO

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
