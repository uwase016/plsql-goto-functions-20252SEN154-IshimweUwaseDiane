-- Illegal GOTO jumps into an IF statement, then the fixed version.
SET SERVEROUTPUT ON;

/* 
-- ILLEGAL VERSION (Will not compile):
DECLARE
    v_test NUMBER := 10;
BEGIN
    GOTO inside_if; -- Illegal jump into an IF block
    
    IF v_test = 10 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Inside IF block');
    END IF;
END;
/
*/

-- FIXED VERSION:
DECLARE
    v_test NUMBER := 10;
BEGIN
    IF v_test = 10 THEN
        GOTO inside_if;
    END IF;
    GOTO end_block;
    
    <<inside_if>>
    DBMS_OUTPUT.PUT_LINE('Valid jump out of or within expected flow, avoiding jumping into conditional blocks from outside.');

    <<end_block>>
    NULL;
END;
/
