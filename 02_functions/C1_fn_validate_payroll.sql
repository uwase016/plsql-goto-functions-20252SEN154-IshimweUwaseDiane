CREATE OR REPLACE FUNCTION fn_validate_payroll(p_emp_id NUMBER)
RETURN VARCHAR2 IS
    v_salary NUMBER;
    v_years NUMBER;
    v_msg VARCHAR2(200);
BEGIN
    SELECT salary INTO v_salary FROM employees WHERE emp_id = p_emp_id;
    v_years := fn_years_of_service(p_emp_id);
    
    IF v_years > 5 AND v_salary < 250000 THEN
        v_msg := 'Review Needed: High experience, low salary.';
    ELSE
        v_msg := 'Payroll Validated.';
    END IF;
    RETURN v_msg;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Employee Not Found.';
END fn_validate_payroll;
/
