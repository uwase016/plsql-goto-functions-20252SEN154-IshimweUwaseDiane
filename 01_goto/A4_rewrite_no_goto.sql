-- Rewrite of A2 without GOTO
SET SERVEROUTPUT ON;
DECLARE
    v_emp_id NUMBER := 102;
    v_salary NUMBER;
BEGIN
    SELECT salary INTO v_salary FROM employees WHERE emp_id = v_emp_id;

    IF v_salary < 300000 THEN
        DBMS_OUTPUT.PUT_LINE('Employee ' || v_emp_id || ' needs a salary review. Current salary: ' || v_salary || ' RWF');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee ' || v_emp_id || ' salary is approved. Current salary: ' || v_salary || ' RWF');
    END IF;
END;
/
