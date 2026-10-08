SELECT 
    emp_id, 
    first_name, 
    last_name, 
    salary,
    fn_annual_salary(emp_id) AS annual_salary,
    fn_calculate_tax(salary) AS monthly_tax,
    fn_years_of_service(emp_id) AS years_of_service,
    fn_dept_name(dept_id) AS department
FROM employees;
