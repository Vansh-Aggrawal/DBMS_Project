create or replace procedure update_property(pid in number,sdate in date, edate in date, rpm in number, hike in number, tarea in number, parea in number, bed in number, floor in number, other in varchar,type in varchar) as
begin
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

dbms_output.put_line('Property Updated Successfully');
end;
/