--Simple select queries
--Que1
select first_name, last_name, salary from employees where salary NOT BETWEEN 10000 AND 15000;

--Que2
select first_name, last_name, department_id from employees where department_id IN (3, 10) order by  department_id  asc;

--Que3
select first_name, last_name, salary, department_id from employees where salary not between 10000 and 15000  and department_id in (3, 10);

--Que4
select first_name, last_name from employees where hire_date is null;

--Que5
select first_name from employees where first_name like '%b%' and first_name like '%c%';

--Que6
select last_name, job_id, salary from employees where job_id in ('IT_PROG', 'SH_CLERK') and salary not in (4500,10000, 15000);

--Que7
select  top 5 * from employees order by salary desc;

--Que 8
select distinct job_id  from employees;

--Que 9
select first_name, last_name, salary, salary*.15 PF from employees;

--Que 10
select * from employees where last_name in ('BLAKE','SCOTT','KING','FORD');

select * from employees;