create or replace trigger trigersekwencja
before insert
or update of Firstname
on Persons
for each row
DECLARE
ID number;
begin
CREATE SEQUENCE ind
minvalue 1
maxvalue 9999
start with 1
increment by 1
;
ID := ind.nextval;
insert into Persons (Firstname, ID) values (:new.Firstname , ID);

end;
/