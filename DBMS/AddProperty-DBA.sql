create or replace procedure add_property(a in number,
b in number,
c in date,
d in date,
e in number,
f in number,
g in number,
h in number,
i in number,
j in number,
k in number,
l in varchar,
m in varchar,
n in varchar,
o in char) as 
begin
insert into Property values(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o);
dbms_output.put_line('DONE');
end;
/
