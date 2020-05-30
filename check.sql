create or replace procedure spr(d char) as
c_name user_tab_cols.column_name%type;
c_type user_tab_cols.data_type%type;
cursor c is SELECT column_name,data_type FROM user_tab_cols WHERE table_name =upper(d);
begin
dbms_output.put_line('create table '|| d ||' ('); 
open c;
LOOP 
	FETCH c into c_name,c_type;
	EXIT WHEN c%notfound; 
	dbms_output.put_line(c_name||' '||c_type); 
	--dbms_output.put_line(c%ROWCOUNT);
	
END LOOP; 
close c;
dbms_output.put_line(')');
end;
/

begin


spr('tabi');

spr('TABE');

spr('TABN');

end;
/