create or replace procedure stworz(x number,d char) as
c_name schemat.nazwa%type;
c_type schemat.typ%type;
cursor c is select nazwa,typ from schemat where id = x;
begin
execute immediate 'create table '|| d ||' (id int)';
open c;
LOOP 
	FETCH c into c_name,c_type;
	EXIT WHEN c%notfound; 
	--dbms_output.put_line(c_name); 
	--dbms_output.put_line(c_type); 
	--dbms_output.put_line(c%ROWCOUNT);
	execute immediate 'ALTER TABLE '|| d ||' ADD '||c_name||' '||c_type;
END LOOP; 

close c;

end;
/

declare

begin

stworz(3,'tabi');

stworz(2,'tabe');

stworz(1,'tabn');

end;
/