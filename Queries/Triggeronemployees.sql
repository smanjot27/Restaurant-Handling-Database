CREATE OR REPLACE TRIGGER display_salary_changes 
BEFORE UPDATE ON EMPLOYEES 
FOR EACH ROW 
WHEN (NEW.EMP_ID > 0) 
DECLARE 
   sal_diff number; 
BEGIN 
    sal_diff := :NEW.salary  - :OLD.salary; 
   dbms_output.put_line('Old salary: ' || :OLD.salary); 
   dbms_output.put_line('New salary: ' || :NEW.salary); 
   dbms_output.put_line('Salary difference: ' || sal_diff); 
END; 
