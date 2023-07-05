create or replace procedure Address(a in number,b in number, c in varchar, d in varchar, e in varchar, f in number) as
begin
insert into User_Address values (a,b,c,d,e,f);
END;
/