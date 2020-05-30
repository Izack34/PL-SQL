create or replace procedure dodaj(x persons%rowtype) as
begin
	insert into persons values x;

end;
/

declare
k persons%rowtype;

begin

	SELECT * INTO k FROM persons WHERE personid = 1;
	
	dodaj(k);

end;
/