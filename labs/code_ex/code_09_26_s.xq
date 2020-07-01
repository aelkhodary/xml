for $i in doc("code_09_dept.xml")//department
where $i/department_name = "Administration"
return $i