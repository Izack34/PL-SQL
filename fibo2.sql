declare
zw number;
zw1 number;
zw2 number;
zw3 number;


function FIB(x number) return number as
f1 number;
f2 number;
f3 number;
begin
	f1:=0;
	f2:=1;
	for i in 1..x loop
		f3:=f2+f1;
		f1:=f2;
		f2:=f3;
	end loop;
	return f3;
end;

/*
function FIBR(n number) return number as
begin
if n = 1 then
return 1;
elsif n = 2 then
return 1;
else
return FIB(n - 1) + FIB(n - 2);
end if;
end;



function silnia(k number) return number as
a number;
begin
a:=1;
for i in 1..k loop
	a:=a*i;
end loop;
return a;
end;




function newton(n1 number,k1 number) return number as
begin
return silnia(n1)/(silnia(k1)*silnia(n1-k1)); 
end;



function newtonr(n2 number,k2 number) return number as
begin
if k2 = 0 then
	return 1;
elsif k2 = n2 then
	return 1;
else
	return newton(n2-1,k2-1)+newton(n2-1,k2);
end if;
end;*/




begin
	zw:=FIB(10);
	dbms_output.put_line(zw);
	zw1:=FIBR(10);
	dbms_output.put_line(zw1);
	zw2:=newtonr(10,5);
	dbms_output.put_line(zw2);
	zw3:=newton(10,5);
	dbms_output.put_line(zw3);
end;
/