--Que 1
select count(distinct job_id) from employees;

--Que 2
select sum(salary) from employees;

--Que 3
select min(salary) from employees;

--Que 4
select max(salary) from employees where job_id = (select job_id from jobs where job_title='programmer');

--Que 5
select avg(salary), count(*) from employees where department_id=9;

--Que 6
select max(salary) as 'Max Salary', min(salary) as 'Min Salary', avg(salary) as 'Avg Salary', sum(salary) as 'Sum Salary' from employees;

--Que 7
select job_id, count(*) as 'Number of Employees' from employees group by job_id;

--Que 8
select max(salary) - min(salary) difference from employees;

--Que 9
select manager_id, min(salary) from employees where manager_id is not null group by manager_id order by min(salary) desc;

--Que 10
select department_id, sum(salary) from employees group by department_id;

--Que 11
select job_id, avg(salary) from employees where job_id in (select job_id from jobs where job_title not in ('programmer')) group by job_id;

--Que 12
select job_id, sum(salary), avg(salary), max(salary), min(salary) from employees where department_id = '9' group by job_id;

--Que 13
select job_id, max(salary) from employees group by job_id having max(salary) >=4000;

--Que 14
select department_id, avg(salary), count(*) from employees group by department_id having count(*) > 1;

select * from jobs;
select * from employees;