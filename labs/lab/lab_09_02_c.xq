for $i in doc("lab_09_emp.xml")/employees/employee
where $i/employee_id>3
return 
<Result>
<full_name>{$i/full_name/text()}</full_name>
<email>{$i/email_id/text()}</email>
</Result>

