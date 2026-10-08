-- Classify product stock as High, Medium, or Low using GOTO
SET SERVEROUTPUT ON;
DECLARE
    v_stock NUMBER := 50;
BEGIN
    IF v_stock > 80 THEN
        GOTO high_stock;
    ELSIF v_stock > 30 THEN
        GOTO medium_stock;
    ELSE
        GOTO low_stock;
    END IF;

    <<high_stock>>
    DBMS_OUTPUT.PUT_LINE('Stock is High.');
    GOTO end_block;

    <<medium_stock>>
    DBMS_OUTPUT.PUT_LINE('Stock is Medium.');
    GOTO end_block;

    <<low_stock>>
    DBMS_OUTPUT.PUT_LINE('Stock is Low.');
    GOTO end_block;

    <<end_block>>
    NULL;
END;
/
