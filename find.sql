declare
x number;
zw number;
function find(name char) return number as
x number;
begin
select empno into x from emp where ename like name;
dbms_output.put_line(x);

exception when NO_DATA_FOUND then
return null;

return x;
end;

begin
zw:=find('CLok');
dbms_output.put_line(zw);
end;
/ 