for $i in 
doc("lab_09_emp.xml")//employee
where $i/employee_id > 3
return
<Incremented_Salary>
{
$i/full_name
}
{if ($i/salary > 3000)
then ($i/salary)+500
else ($i/salary)+1000}
</Incremented_Salary>                  
 