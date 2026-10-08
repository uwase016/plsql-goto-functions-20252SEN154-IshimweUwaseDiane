CREATE OR REPLACE FUNCTION fn_annual_salary(p_emp_id NUMBER) 
RETURN NUMBER IS
    v_monthly_salary NUMBER;
BEGIN
    SELECT salary INTO v_monthly_salary FROM employees WHERE emp_id = p_emp_id;
    RETURN v_monthly_salary * 12;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END fn_annual_salary;
/
