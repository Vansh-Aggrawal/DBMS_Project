create or replace procedure user_del_property(pid in number) as
current_user_id varchar(55);
user_id number;
user_id_str varchar(15);
begin
select user into current_user_id from dual;
select OwnerAdhaarID into user_id from Property where PropertyID = pid;
user_id_str := 'C##' || user_id;
if user_id_str = current_user_id then
	delete from Rented where PropertyID = pid;
	delete from Property where PropertyID = pid;
	dbms_output.put_line('Property successfully deleted');
else
	dbms_output.put_line('User does not own this property');
end if;
end;
/