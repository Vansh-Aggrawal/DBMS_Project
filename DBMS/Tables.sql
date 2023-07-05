create table Property_User 
(
	adhaarID NUMBER(12) ,
	name VARCHAR(30),
	age INT,
	manager NUMBER(1),
	PRIMARY KEY(adhaarID)
);

create table Phone_number
(
	adhaarId NUMBER(12),
	Phone_Number NUMBER(10) ,
	FOREIGN KEY (adhaarID) REFERENCES Property_User(adhaarID) ,
	CONSTRAINT number_unique UNIQUE (Phone_Number)
);

create table User_Address
(
	adhaarID NUMBER(12),
	Door_No NUMBER(3),
	Street VARCHAR(20),
	City VARCHAR(20),
	State VARCHAR(20),
	PINCODE NUMBER(6),
	PRIMARY KEY(adhaarID),
	FOREIGN KEY (adhaarID) REFERENCES Property_User(adhaarID)
);

create table Property 
(
	PropertyID NUMBER(20) PRIMARY KEY,
	OwnerAdhaarID NUMBER(12),
	AvailableFrom DATE,
	AvailableTill DATE,
	RentPerMonth INT,
	AnnualHike INT,
	TotalArea INT,
	PlintArea INT,
	BedRooms INT,
	Floors INT,
	YearOfConstruction INT,
	Locality VARCHAR(40),
	Address VARCHAR(40),
	OtherFacilities VARCHAR(40),
	Type CHAR(1),
	FOREIGN KEY (OwnerAdhaarID) REFERENCES Property_User(adhaarID)
); 
	
create table Rented
(
	PropertyID,
	TenantID NUMBER(12),
	RentPerMonth INT,
	Start_Date DATE,
	End_Date DATE,
	YearlyHike INT,
	AgencyCommission INT,
	Current_Resident INT,
	FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID),
	FOREIGN KEY (TenantID) REFERENCES Property_User(adhaarID)
);
