
-- Insert sample data into Property_User table
INSERT INTO Property_User(adhaarID, name, age, manager) 
VALUES (123456789012, 'Amit Sharma', 32, 1);

INSERT INTO Property_User(adhaarID, name, age, manager) 
VALUES (234567890123, 'Rahul Gupta', 27, 2);

INSERT INTO Property_User(adhaarID, name, age, manager) 
VALUES (345678901234, 'Priya Singh', 29, 1);

INSERT INTO Property_User(adhaarID, name, age, manager) 
VALUES (456789012345, 'Anjali Yadav', 35, 2);

INSERT INTO Property_User(adhaarID, name, age, manager) 
VALUES (567890123456, 'Vikas Patel', 30, 1);


-- Insert sample data into Phone_number table
INSERT INTO Phone_number(adhaarID, Phone_Number)
VALUES (123456789012, 9876543210);

INSERT INTO Phone_number(adhaarID, Phone_Number)
VALUES (234567890123, 9123456780);

INSERT INTO Phone_number(adhaarID, Phone_Number)
VALUES (345678901234, 9988776655);

INSERT INTO Phone_number(adhaarID, Phone_Number)
VALUES (456789012345, 9900887766);

INSERT INTO Phone_number(adhaarID, Phone_Number)
VALUES (567890123456, 9012345678);


-- Insert sample data into User_Address table
INSERT INTO User_Address(adhaarID, Door_No, Street, City, State, PINCODE)
VALUES (123456789012, 102, 'Main Road', 'New Delhi', 'Delhi', 110001);

INSERT INTO User_Address(adhaarID, Door_No, Street, City, State, PINCODE)
VALUES (234567890123, 55, 'MG Road', 'Bangalore', 'Karnataka', 560001);

INSERT INTO User_Address(adhaarID, Door_No, Street, City, State, PINCODE)
VALUES (345678901234, 12, 'South Bazaar', 'Hyderabad', 'Telangana', 500003);

INSERT INTO User_Address(adhaarID, Door_No, Street, City, State, PINCODE)
VALUES (456789012345, 204, 'Chandni Chowk', 'Kolkata', 'West Bengal', 700072);

INSERT INTO User_Address(adhaarID, Door_No, Street, City, State, PINCODE)
VALUES (567890123456, 90, 'Kalbadevi Road', 'Mumbai', 'Maharashtra', 400002);

-- Property table
INSERT INTO Property (PropertyID, OwnerAdhaarID, AvailableFrom, AvailableTill, RentPerMonth, AnnualHike, TotalArea, PlintArea, BedRooms, Floors, YearOfConstruction, Locality, Address, OtherFacilities, Type) 
VALUES 
(1, 123456789012, '2023-05-01', '2024-05-01', 15000, 5, 800, 600, 2, 2, 2010, 'Koramangala', 'House No 7, 1st Main Road', 'Swimming pool, Gym', 'R'),
(2, 234567890123, '01-JUN-2023', '01-JUN-2024', 20000, 8, 1200, 800, 3, 3, 2015, 'BTM Layout', 'Flat No 12, 3rd Floor, 5th Cross', 'Play area, Garden', 'R'),
(3, 345678901234, '01-JUL-2023', '01-JUL-2024', 25000, 10, 1500, 1200, 4, 4, 2018, 'Whitefield', 'Villa No 25, Palm Avenue', 'Swimming pool, Clubhouse', 'C'),
(4, 456789012345, '01-AUG-2023', '01-AUG-2024', 18000, 6, 900, 700, 2, 2, 2012, 'Indiranagar', 'Flat No 7, 2nd Floor, 10th Main', 'Play area, Gym', 'C'),
(5, 567890123456, '01-SEP-2023', '01-SEP-2024', 30000, 12, 2000, 1500, 5, 5, 2020, 'Marathahalli', 'House No 5, 4th Cross', 'Swimming pool, Garden', 'R');

-- Rented table
INSERT INTO Rented (PropertyID, TenantID, RentPerMonth, Start_Date, End_Date, YearlyHike, AgencyCommission, Current_Resident)
VALUES
(1, 123456789012, 15000, '01-MAY-2023', '01-MAY-2024', 5, 1000, 1),
(2, 234567890123, 20000, '01-JUN-2023', '01-JUN-2024', 8, 1500, 1),
(3, 567890123456, 25000, '01-JUL-2023', '01-JUL-2024', 10, 2000, 1),
(4, 456789012345, 18000, '01-AUG-2023', '01-AUG-2024', 6, 1200, 1),
(5, 345678901234, 30000, '01-SEP-2023', '01-SEP-2024', 12, 2500, 1);


exec CREATEUSER(123456789012,'amit','Amit Sharma', 32, 0,102, 'Main Road', 'New Delhi', 'Delhi', 110001,9876543210);
exec CREATEUSER(234567890123,'rahul','Rahul Gupta', 27, 1, 55, 'MG Road', 'Bangalore', 'Karnataka', 560001,9123456780);
exec CREATEUSER(345678901234,'priya', 'Priya Singh', 29, 0,12, 'South Bazaar', 'Hyderabad', 'Telangana', 500003,9988776655);
exec CREATEUSER(456789012345,'anjali', 'Anjali Yadav', 35, 1,204, 'Chandni Chowk', 'Kolkata', 'West Bengal', 700072,9900887766);
exec CREATEUSER(567890123456, 'vikas','Vikas Patel', 30, 0, 90, 'Kalbadevi Road', 'Mumbai', 'Maharashtra', 400002,9012345678);