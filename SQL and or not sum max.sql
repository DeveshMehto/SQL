select first_name,salary from employees;

select* from employees where salary <15000 and department_id=10;

select*from employees where salary <15000 or department_id=11;

select*from employees where department_id=10 or department_id=15 or department_id=12;

select*from employees where department_id in (5,9,7);

select*from employees where department_id not in(4,8,5,7);

select*from employees where salary>=15000 and salary<=20000;

select*from employees where salary between 10000 and 20000;

select distinct department_id from employees;
select*from employees;

select*from employees where phone_number is not null and manager_id is not null;

select first_name,salary,salary+3000'increment',45 from employees;
--like operators
--wild character %(zero or more)
select*from employees where first_name like 'D%';
select*from employees where first_name like 's%n';
select*from employees where first_name like 'D_____';
select*from employees where first_name like '__a__';

select*from employees order by salary,first_name;
select*from employees order by salary,first_name desc;
select*from employees where department_id=10 order by salary;
select*from employees order by salary desc,first_name;

select distinct department_id from employees;
select distinct department_id,job_id from employees;

select min(salary)from employees;
select max(salary)from employees;
select sum(salary)from employees;
select avg(salary)from employees;
select count(phone_number)from employees;
select count(*)from employees;

select*from employees;
select department_id, max(salary) from employees group by department_id;
select department_id, count(*) from employees group by department_id;

select department_id,sum(salary) as salary from employees group by department_id having sum(salary)>=50000;

select department_id,count(*)'emp count' from employees group by department_id having count(*)>=5;

--subquery
select*from employees where department_id=(select department_id from departments where department_name='IT');

select*from employees where job_id=(select job_id from jobs where job_title='programmer');

--homework
