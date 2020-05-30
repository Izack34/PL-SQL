declare
c_name emp.ename%type;
cursor c is select ename from emp where deptno = 20;
begin
open c;
LOOP 
	FETCH c into c_name;
	EXIT WHEN c%notfound; 
	dbms_output.put_line(c_name); 
	dbms_output.put_line(c%ROWCOUNT);
END LOOP; 

close c;
end;
/
