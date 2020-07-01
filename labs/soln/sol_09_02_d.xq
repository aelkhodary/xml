for $i in doc("lab_09_emp.xml")/employees/employee
where $i/manager="Nancy"
return <Database>{$i/full_name/text()}
                             </Database>