set serveroutput ON;
declare
	x number;
	argument number;
begin
	--select empno into argument from emp ;
	
	--insert into wyniki (w1) values (argument);
	
	--select empno into argument from emp where ename like 'awubd';
	x:=0;
	x:=x/x;
	exception 
	when TOO_MANY_ROWS then 
		Dbms_output.put_line('error');
		
	when NO_DATA_FOUND then 
		Dbms_output.put_line('brak danych');
		
	when ZERO_DIVIDE then 
		Dbms_output.put_line('dzielenie przez zero');
end;
/