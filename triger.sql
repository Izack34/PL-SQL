create or replace trigger archiw
before insert
or update or delete of Firstname
on Persons
for each row

declare
typ varchar(255);
begin
if inserting then
typ :='insert';
insert into archiwa(operacja,uzytkownik,wartosc) values (typ,user,:new.Firstname);

elsif updating then
typ :='update';
insert into archiwa(operacja,uzytkownik,wartosc,starawartosc) values (typ,user,:new.Firstname,:old.Firstname);

elsif deleting then
typ :='delete';
insert into archiwa(operacja,uzytkownik,starawartosc) values (typ,user,:old.Firstname);

end if;

end;
/