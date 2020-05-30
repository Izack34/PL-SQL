set serveroutput ON;
declare
	x number;
	silnia number;
begin
	x:=1;
	silnia:=1;
	loop
		silnia:=silnia*x;
		x:=x+1;
		Dbms_output.put_line(silnia);
		exit when x >8;
	end loop;
	
end;
/