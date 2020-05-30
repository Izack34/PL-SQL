set serveroutput ON;
declare
	x number;
	silnia number;
begin
	select empno into x from emp where ename like 'scott';
	silnia:=1;
	for i in 1..x loop
		silnia:=silnia*i;
		Dbms_output.put_line(silnia);
	end loop;
	insert into wyniki (w1) values (silnia);
end;
/