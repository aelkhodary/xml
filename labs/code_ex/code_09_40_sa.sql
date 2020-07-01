SELECT XMLQUERY('(1,2+3, "a")'
RETURNING CONTENT)as output FROM dual;

