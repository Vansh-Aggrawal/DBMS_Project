create or replace procedure generate_report as
a number;
b number;
bb number;
c date;
d date;
e number;
ee number;
f int(1);
cursor currr is
select  *  from Rented ;
begin
open currr;
loop
fetch currr into a,b,bb,c,d,e,ee,f;
exit when currr%notfound;
dbms_output.put_line(a || ' ' || b || ' ' || bb || ' ' || c || ' ' || d || ' ' || e || ' ' || ee || ' ' || f );
end loop;
close currr;
end;
/