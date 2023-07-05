create or replace procedure del_property(pid in number) as
begin
delete from rented where propertyID = pid;
delete from property where propertyID = pid;
dbms_output.put_line('Property Deleted Successfully');
end;
/