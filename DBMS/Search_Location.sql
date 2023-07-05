create or replace procedure  search_property(arg1 in varchar) as
a number;
b number;
c date;
d date;
e number;
f number;
g number;
h number;
i number;
j number;
k number;
l varchar(55);
m varchar(55);
n varchar(55);
o char(1);
cursor cur is
select * from Property where Locality = arg1;
begin
open cur;
loop
fetch cur into a,b,c,d,e,f,g,h,i,j,k,l,m,n,o;
exit when cur%notfound;
dbms_output.put_line(a ||'  '|| b ||'  ' || c ||'  '|| d ||'  ' || e ||'  ' ||'  ' || g ||'  ' || h ||'  ' || i || '  ' || j ||'  ' || k ||'  ' || l || '  ' ||m ||'  ' || n ||'  ' || o);
end loop;
close cur;
end;
/
