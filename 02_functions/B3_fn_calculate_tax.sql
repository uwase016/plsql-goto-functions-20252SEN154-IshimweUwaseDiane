CREATE OR REPLACE FUNCTION fn_calculate_tax(p_salary NUMBER) 
RETURN NUMBER IS
    v_tax_rate NUMBER;
BEGIN
    IF p_salary < 250000 THEN
        v_tax_rate := 0.10;
    ELSIF p_salary < 400000 THEN
        v_tax_rate := 0.15;
    ELSE
        v_tax_rate := 0.20;
    END IF;
    RETURN p_salary * v_tax_rate;
END fn_calculate_tax;
/
