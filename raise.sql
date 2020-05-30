set serveroutput ON;
declare
	argument number;
begin
	RAISE_APPLICATION_ERROR(-20001,'xyz');
	exception when others then
		Dbms_output.put_line('blad');
	
end;
/
	