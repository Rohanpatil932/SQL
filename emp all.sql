CREATE TABLE `trv11`.`emp` (
  `empno` INT NOT NULL,
  `ename` VARCHAR(10) NOT NULL,
  `job` VARCHAR(20) NOT NULL,
  `mgr` INT NOT NULL,
  `hiredate` DATE NOT NULL,
  `sal` DECIMAL NOT NULL,
  `comm` DECIMAL(10,4) NULL,
  `deptno` INT NOT NULL,
  PRIMARY KEY (`empno`));
  
 INSERT INTO `trv11`.`emp` (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) VALUES 
 ('7000', 'JHON', 'manager', '7698', '2020-06-18', '2500', NULL, '50'),
('7082', 'SHAN', 'MANAGER', '7698', '2020-06-18', '2500', NULL, '50');

INSERT INTO trv11.emp (`empno`, `ename`, `job`, `mgr`, `hiredate`, `sal`, `comm`, `deptno`) values
('7084', 'RAVI', 'clerk', '7782', '2020-12-12', '500', NULL, '50'),
('7369', 'SMITH', 'CLERK', '7902', '1993-06-13', '500', 0.00, '20'),
('7499', 'ALLEN', 'SALESMAN', '7698', '1998-08-15', '1680', 300.00, '30'),
('7521', 'WARD', 'SALESMAN', '7698', '1993-03-26', '1250', 500.00, '30'),
('7566', 'JONES', 'MANAGER', '7839', '1995-10-31', '2975', NULL, '20'),
('7654', 'MARTIN', 'SALESMAN', '7698', '1998-12-05', '1250', 1400, '30'),
('7698', 'BLAKE', 'MANAGER', '7839', '1992-06-11', '2850', NULL, '30'),
('7782', 'CLARK', 'MANAGER', '7839', '1993-05-14', '2450', NULL, '10'),
('7788', 'SCOTT', 'ANALYST', '7566', '1996-03-05', '3000', NULL, '20'),
('7839', 'KING', 'PRESIDENT', NULL, '1990-06-09', '5000', 0.00, '10'),
('7844', 'TURNER', 'SALESMAN', '7698', '1995-06-04', '1500', 0.00, '30'),
('7876', 'ADAMS', 'CLERK', '7768', '1999-06-23', '1100', NULL, '30'),
('7900', 'JAMES', 'CLERK', '769', '2000=06-23', '950', NULL, '30'),
('7902', 'FORD', 'ANALYST', '7566', '1997-12-05', '3000', NULL, '20'),
('7934', 'MILLER', 'CLERK', '7782', '2000-01-21', '1300', NULL, '10');

select * from trv11.emp where job="clerk" and deptno="30" and sal<1500;

select * from trv11.emp where ename like'k%' or ename like 'a%';

select * from trv11.emp where not job="salesman" and not job="manager";

select * from trv11.emp where not ename like 's%';

select * from trv11.emp where job in ('clerk', 'manager','salesman');

select * from trv11.emp where ename like 'k%' or ename like's%';

select * from trv11.emp where ename like '____';

select * from trv11.emp where ename like '%e_';

select * from trv11.emp where sal between 1000 and 1500;

select * from trv11.emp where comm between 100 AND 500;

select * from trv11.emp where empno between 7200 and 7600;

select * from trv11.emp where mgr is null;

select * from trv11.emp where comm is null;

select max(sal), min(sal), avg(sal), count(sal) from trv11.emp;

select max(deptno), min(deptno), avg(deptno), count(deptno) from trv11.emp;

select max(sal) from trv11.emp where job="salesman";

select count(sal) from trv11.emp where job="manager";

select count(*) from trv11.emp where job="manager" and deptno="20";

select deptno , sum(sal) from trv11.emp group by deptno;

select job , count(sal) from trv11.emp group by sal;
  
  select * from trv11.emp
  