SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Annual Salary of 101: ' || fn_annual_salary(101) || ' RWF');
    DBMS_OUTPUT.PUT_LINE('Years of service of 101: ' || fn_years_of_service(101));
    DBMS_OUTPUT.PUT_LINE('Tax for 300000 RWF: ' || fn_calculate_tax(300000) || ' RWF');
    DBMS_OUTPUT.PUT_LINE('Dept name for 10: ' || fn_dept_name(10));
END;
/
