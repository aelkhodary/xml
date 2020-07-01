for $i in doc("code_09_dept.xml")//department
let $j := 20
where $i/department_id>$j
order by $i/department_name
return $i/department_name/text()