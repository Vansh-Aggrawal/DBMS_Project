create or replace procedure removeProp(propertyid in number) as
n varchar(55);
m varchar(55);
begin
select name into n  from prop where propID = propertyid;
select user into m from dual;
if n=m then
delete from prop where propID = propertyid;
else
dbms_output.put_line('Property does not belong to you');
end if;
end;
/