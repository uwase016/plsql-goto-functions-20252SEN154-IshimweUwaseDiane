CREATE OR REPLACE FUNCTION fn_years_of_service(p_emp_id NUMBER) 
RETURN NUMBER IS
    v_hire_date DATE;
    v_years NUMBER;
BEGIN
    SELECT hire_date INTO v_hire_date FROM employees WHERE emp_id = p_emp_id;
    v_years := TRUNC(MONTHS_BETWEEN(SYSDATE, v_hire_date) / 12);
    RETURN v_years;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END fn_years_of_service;
/
