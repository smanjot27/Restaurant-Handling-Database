CREATE OR REPLACE TRIGGER display_QUANTITY_changes 
BEFORE UPDATE ON INGREDIENTS
FOR EACH ROW 
WHEN (NEW.ING_ID > 0) 
DECLARE 
   QTY_diff number; 
BEGIN 
    QTY_diff := :OLD.QUANTITY - :NEW.QUANTITY; 
   dbms_output.put_line('Old QUANTITY: ' || :OLD.QUANTITY); 
   dbms_output.put_line('New QUANTITY: ' || :NEW.QUANTITY); 
   dbms_output.put_line('QUANTITY difference: ' || QTY_diff); 

END; 
