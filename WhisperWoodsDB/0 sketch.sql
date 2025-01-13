/*
Burial
BurialId Pk
FirstName	varchar 50 not null not blank
MiddleName varchar 50 null 
LastName varchar 50 not null not blank
DOB date not null
DateOfDeath date null
DatePurchased date not null constraint year greater than 1713
PuchasePrice decimal (10,2) not null greater than zero
Section	char(1) not null, constraint a,b,c
RoadName varchar(100) not null not blank
SpotNumber int not null, constraint (1-20000 for 'A', 20001-40000 for 'B', etc.) constraint unique
PerpetualCare bit not null default 0
UniqueCode as first letter of their last name, the first two letters of their first name, and then the spot number. 
constraint dob < date of death and dob < date purchased
*/