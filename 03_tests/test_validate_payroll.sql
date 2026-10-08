SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Validation for 101: ' || fn_validate_payroll(101));
    DBMS_OUTPUT.PUT_LINE('Validation for 104: ' || fn_validate_payroll(104));
END;
/
