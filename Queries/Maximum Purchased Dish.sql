DECLARE
DATES DATE;
NUM NUMBER(3);
MAXMUN NUMBER(2):=0;
N VARCHAR2(100);
CURSOR DISHES IS SELECT MENU_ID FROM MENU;
DSH MENU.MENU_ID%TYPE;
BEGIN
DATES:=:DATES;
OPEN DISHES;
LOOP
FETCH DISHES INTO DSH;
EXIT WHEN DISHES%NOTFOUND;
SELECT COUNT(*) INTO NUM FROM ORDER_TABLE WHERE DISH=DSH;
IF NUM>MAXMUN THEN 
MAXMUN:=NUM;
END IF;
END LOOP;
CLOSE DISHES;
SELECT NAME INTO N FROM MENU WHERE MENU_ID=MAXMUN;
DBMS_OUTPUT.PUT_LINE('MAXIMUM PURCHASED DISH ON '||DATES||'  IS '||N);
END;
