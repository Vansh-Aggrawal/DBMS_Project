create or replace procedure see_available_prop as
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
p number;
cursor uncur is
select * from Property where PropertyId not in (select distinct PropertyID from Rented) ;
begin
open uncur;
loop
	fetch uncur into a,b,c,d,e,f,g,h,i,j,k,l,m,n,o;
	exit when uncur%notfound;	
	dbms_output.put_line(a ||'  ' || b ||'  ' || c ||'  ' || d ||'  ' || e ||'  '|| f ||'  ' || g ||'  ' || h ||'  ' || i ||'  ' ||j ||'  ' || k ||'  ' || l || '  ' ||m ||'  ' || n ||'  '|| o);
end loop;
close uncur;
end;
/
