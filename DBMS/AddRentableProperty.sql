create or replace procedure add_rent_details(n in number,a in number,b in number,c in date,d in date,e in number,f in number) as 
begin
update Rented set Current_Resident = 0 where PropertyID =n;
insert into Rented values(n,a,b,c,d,e,f,1);
update Property set AvailableFrom = d where propertyID = n;
dbms_output.put_line('DONE');
end;
/
