set pagesize 0 trimspool on feedback off echo off verify off
spool /home/oracle/labs/demo/demo_02_employees.txt
select '  <employee>'||chr(10)||
       '    <employee_id>'||employee_id||'</employee_id>'||chr(10)||
       '    <first_name>'||first_name||'</first_name>'||chr(10)||
       '    <last_name>'||last_name||'</last_name>'||chr(10)||
       '    <salary>'||salary||'</salary>'||chr(10)||
       '  </employee>' elements
from employees
where department_id = 60
/
spool off
set pagesize 24 feedback on
exit
