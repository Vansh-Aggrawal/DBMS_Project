create or replace procedure user_add_property  
(a in number,
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
u varchar(55);
begin
SELECT USER INTO u FROM DUAL;
u:= TRIM(LEADING 'C' FROM u);
u:= TRIM(LEADING '#' FROM u);
insert into Property values(a,u,c,d,e,f,g,h,i,j,k,l,m,n,o);
dbms_output.put_line('DONE');
end;	
/
