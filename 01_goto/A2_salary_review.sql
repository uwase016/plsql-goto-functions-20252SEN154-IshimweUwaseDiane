-- Review salary and jump to salary approval using GOTO
SET SERVEROUTPUT ON;
DECLARE
    v_emp_id NUMBER := 102;
    v_salary NUMBER;
BEGIN
    SELECT salary INTO v_salary FROM employees WHERE emp_id = v_emp_id;

    IF v_salary < 300000 THEN
        GOTO review_salary;
    ELSE
        GOTO approve_salary;
    END IF;

    <<review_salary>>
    DBMS_OUTPUT.PUT_LINE('Employee ' || v_emp_id || ' needs a salary review. Current salary: ' || v_salary || ' RWF');
    GOTO end_process;

    <<approve_salary>>
    DBMS_OUTPUT.PUT_LINE('Employee ' || v_emp_id || ' salary is approved. Current salary: ' || v_salary || ' RWF');
    GOTO end_process;

    <<end_process>>
    NULL;
END;
/
