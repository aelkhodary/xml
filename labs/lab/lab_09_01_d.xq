for $i in doc("lab_09_library.xml")/library/book
where $i/price>40
return $i/title