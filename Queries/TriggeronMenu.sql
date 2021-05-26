CREATE OR REPLACE TRIGGER display_PRICE_INCREASE 
BEFORE UPDATE ON MENU 
FOR EACH ROW 
WHEN (NEW.MENU_ID > 0) 
DECLARE 
   PRICE_diff number; 
BEGIN 
    PRICE_diff := :NEW.PRICE  - :OLD.PRICE; 
   dbms_output.put_line('Old PRICE: ' || :OLD.PRICE); 
   dbms_output.put_line('New PRICE: ' || :NEW.PRICE); 
   dbms_output.put_line('PRICE INCREASE: ' || PRICE_diff); 
END; 
