DECLARE
MID NUMBER(10);
MNAME VARCHAR(200);
PRICE NUMBER(10);
PROCEDURE INSERT_DATA_IN_MENU
AS
BEGIN
MNAME:=:MNAME;
PRICE:=:PRICE;
SELECT COUNT(*) INTO MID FROM MENU;
MID:=MID+1;
INSERT INTO MENU VALUES(MID,MNAME,PRICE);
END;
BEGIN
INSERT_DATA_IN_MENU();
END;
