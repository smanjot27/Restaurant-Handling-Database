DECLARE
OID NUMBER(10);
D NUMBER(10);
PRICE NUMBER(10);
ODATE DATE;
HANDLES NUMBER(10);
PROCEDURE INSERT_DATA_IN_ORDER_TABLE
AS
BEGIN
D:=:D;
PRICE:=:PRICE;
ODATE:=:ODATE;
HANDLES:=:HANDLES;
SELECT COUNT(*) INTO OID FROM ORDER_TABLE;
OID:=3000+OID+1;
INSERT INTO ORDER_TABLE VALUES(OID,D,PRICE,ODATE,HANDLES);
END;
BEGIN
INSERT_DATA_IN_ORDER_TABLE();
END;
