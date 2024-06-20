select * from employee;
select * from position;
select * from employee_position;

select e.name, e.surname
from employee e
join employee_position ep on e.id = ep.emp_id
join position p on ep.pos_id = p.id
where p.name = 'Developer';

select e.name, e.surname
from employee e
join employee_position ep on e.id = ep.emp_id
join position p on ep.pos_id = p.id
where p.name = 'Manager';

select e.name, e.surname
from employee e
join employee_position ep on e.id = ep.emp_id
join position p on ep.pos_id = p.id
where p.name = 'Tester';