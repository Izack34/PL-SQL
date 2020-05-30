

create or replace function silnia(k out number) return number as
a number;
begin
a:=1;
for i in 1..k loop
	a:=a*i;
end loop;
return a;
end;
/

declare
zw number;
i number;

begin
	i:=6
	zw:=silnia(i);
	dbms_output.put_line(zw);

end;
/

