create or replace trigger triger3
before insert
or update of Firstname
on Persons
for each row


begin

if :new.Firstname ='noweimie' then
	raise PROGRAM_ERROR;
end if;

end;
/