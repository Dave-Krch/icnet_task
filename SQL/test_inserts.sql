insert into employee values('Petr', 'Novak', 'Best Insurance', 'Praha');
insert into employee values('Jana', 'Pavlova', 'Even Better Insurance', 'Brno');

insert into position values('Manager');
insert into position values('Developer');
insert into position values('Tester');

insert into employee_position values(1,1);
insert into employee_position values(1,2);
insert into employee_position values(2,2);
insert into employee_position values(2,3);

-- dalsi inserty vyvolaji chybu
insert into employee (name, surname) values ('test', 'test');
insert into employee_position values(1,1);
insert into employee_position values(4,1);
