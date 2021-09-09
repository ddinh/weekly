create table employees(
    worker_id serial primary key,
    first_name varchar(128),
    last_name varchar(128),
    salary decimal,
    joining_date date,
    department varchar(128)
);

insert into employees (first_name, last_name, salary, joining_date, department) values ('Rick', 'Smith', 100000.0, '2021-02-20 09:00:00', 'HR');
insert into employees (first_name, last_name, salary, joining_date, department) values ('Sam', 'Williams', 80000.0, '2021-06-11 09:00:00', 'Admin');
insert into employees (first_name, last_name, salary, joining_date, department) values ('John', 'Brown', 300000.0, '2021-02-20 09:00:00', 'HR');
insert into employees (first_name, last_name, salary, joining_date, department) values ('Amy', 'Jones', 500000.0, '2021-02-20 09:00:00', 'Admin');
insert into employees (first_name, last_name, salary, joining_date, department) values ('Sean', 'Garcia', 500000.0, '2021-06-11 09:00:00', 'Admin');
insert into employees (first_name, last_name, salary, joining_date, department) values ('Ryan', 'Miller', 200000.0, '2021-01-20 09:00:00', 'Account');
insert into employees (first_name, last_name, salary, joining_date, department) values ('Patty', 'Davis', 75000.0, '2021-01-20 09:00:00', 'Account');
insert into employees (first_name, last_name, salary, joining_date, department) values ('Monica', 'Rodriguez', 90000.0, '2021-04-11 09:00:00', 'Admin');

-- a) Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000

select first_name, last_name from employees where salary >= 50000 and salary <= 100000;

-- b) Write an SQL query to fetch the no. of workers for each department in the descending order.

select count(*), department from employees group by department order by count(*) desc;

-- c) Write an SQL query to fetch intersecting records of two tables.

select worker_id from employees intersect select  worker_id from employees;

-- d) Write an SQL query to determine the 5th highest salary without using TOP or limit method.

select salary from (select ROW_NUMBER () OVER (ORDER BY salary desc) as row_num, salary from employees) as sq where row_num = 5;
