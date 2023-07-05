create or replace procedure user_update_property(pid in number,sdate in date, edate in date, rpm in number, hike in number, tarea in number, parea in number, bed in number, floor in number, other in varchar,type in varchar) as
current_user_id number;
user_id number;
user_id_str varchar(15);
begin
select user into current_user_id from dual;
select OwnerAdhaarID into user_id from Property where PropertyID = pid;
user_id_str := 'C##' || user_id;
if user_id_str = current_user_id then
update Property set 
	AvailableFrom = sdate ,
	AvailableTill =  edate,
	RentPerMonth  = rpm,
	AnnualHike = hike,
	TotalArea = tarea,
	PlintArea = parea,
	BedRooms = bed,
	Floors = floor,
	OtherFacilities = other,
	Type = type
	where  PropertyID = pid;
else
	dbms_output.put_line('User does not own this property');
end if;
end;
/