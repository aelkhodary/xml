REM
REM Script: sol_02_01_c.sql
REM
set pagesize 24 trimspool on feedback off echo off verify off
col first_name format a20 temp
col last_name format a20 temp
define outfile="/home/oracle/labs/soln/sol_02_01_c.txt"
spool &outfile
select employee_id, first_name, last_name, salary
from employees
where department_id = 60
/
spool off
prompt 
prompt NOTE: The results have been saved in the file: "&outfile"
prompt
undefine outfile
set feedback on
