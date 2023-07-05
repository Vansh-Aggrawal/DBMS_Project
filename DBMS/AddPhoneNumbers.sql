create or replace procedure phone(a in number,p1 in number) as
begin
insert into Phone_number values ( a,p1);
END;
/