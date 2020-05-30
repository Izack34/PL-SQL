SET SERVEROUTPUT ON
declare
f1 number;
f2 number;
f3 number;
x number;
begin
	f1:=0;
	f2:=1;
	select A1 into x from argumenty where A1 like 10;
	x:=x-1;
	for i in 1..x loop
		f3:=f2+f1;
		f1:=f2;
		f2:=f3;
	end loop;
		
	dbms_output.put_line(f3);
end;
/