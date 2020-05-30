

CREATE OR REPLACE PACKAGE wzory AS

FUNCTION silnia(k number) RETURN NUMBER;

END wzory;
/


CREATE OR REPLACE PACKAGE BODY wzory AS

function silnia(k number) return number is 
a number; 
begin 
a:=1; 
for i in 1..k loop 
	a:=a*i; 
end loop; 
return a; 

end silnia; 


END wzory;
/



DECLARE
zw NUMBER(6);

Begin 

zw:=wzory.silnia(1);
DBMS_OUTPUT.PUT_LINE(TO_CHAR(zw));
execute silnia(1);
end;
/

