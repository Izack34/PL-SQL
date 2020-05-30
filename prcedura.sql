create or replace procedure dodaj(x pracownik%rowtype) as
begin

	insert into pracownik values x;

end;
/

/* execute dodaj() */