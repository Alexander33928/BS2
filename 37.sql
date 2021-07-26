SELECT * FROM psdb.employees
    AS emp WHERE emp.emp_no in ('494831', '479832', '599833', '499832')
    AND emp.gender in ('M', 'F');