create or replace procedure check_status(arg1 in number) as
n number;
flag number:=0;
m number;
cursor cur is
select Current_Resident from Rented where PropertyID=arg1;
begin
open cur;
loop
fetch cur into n;
exit when cur%notfound;
if n=1 then
dbms_output.put_line('The Property is not available to be rented');
flag:=1;
end if;
end loop;
if flag=0 then
dbms_output.put_line('The Property is available to be rented');
end if;
close cur;
end;
/
