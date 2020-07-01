for $i in doc("code_09_dept.xml")//department
where $i/department_id<30
return <Result>
<department_id> {$i/department_id/text()}
                 </department_id>
		<department> { if ($i/@num = 1)
		then "Applicable"
		else "NA" }
		</department>
		</Result>
