create or replace trigger trigersekwencja
before insert
or update of personID
on Persons
for each row
begin

:new.personID:=ind.nextval;

end;
/