use WhisperWoodsDB
go 
drop table if exists Burial
go
create table Burial (
    BurialId int not null identity primary key,
    FirstName varchar(50) not null constraint ck_Burial_FirstName_cannot_be_blank check(FirstName <> ''),
    MiddleName char(1) null,
    LastName varchar(50) not null constraint ck_Burial_LastName_cannot_be_blank check(LastName <> ''),
    DOB date not null constraint ck_Burial_DOB_must_be_before_the_current_date check(DOB <= getdate()),
    DateOfDeath date null,
    DatePurchased date not null constraint ck_Burial_DatePurchased_must_be_between_1713_and_the_current_date check (DatePurchased between '1713-01-01' and getdate()),
    PurchasePrice decimal(10, 2) not null constraint ck_Burial_PurchasePrice_must_be_greater_than_zero check (PurchasePrice > 0),
    Section char(1) not null constraint ck_Burial_Section_either_A_B_or_C check (Section in ('A', 'B', 'C')),
    RoadName varchar(100) not null constraint ck_Burial_RoadName_cannot_be_blank check(RoadName <> ''), -- not null and not blank
    SpotNumber int not null constraint u_Burial_SpotNumber unique,
    PerpetualCare bit not null default 0,
    UniqueCode as concat(substring(LastName,1,1), substring(FirstName,1,2), SpotNumber),  --first letter of their last name, the first two letters of their first name, and then the spot number. 
    constraint ck_Burial_SpotNumber_Range check (
        (Section = 'A' and SpotNumber between 1 and 20000) or
        (Section = 'B' and SpotNumber between 20001 and 40000) or
        (Section = 'C' and SpotNumber between 40001 and 60000)
    ),   
    constraint ck_Burial_DOB_is_before_DateOfDeath_and_DOB_is_before_DatePurchased check(DOB <= DateOfDeath and DOB <= DatePurchased)
)
go
