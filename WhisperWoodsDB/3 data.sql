use WhisperWoodsDB 
go
delete Burial
go

insert Burial (FirstName, MiddleName, LastName, DOB, DateOfDeath, DatePurchased, PurchasePrice, Section, RoadName, SpotNumber, PerpetualCare)
select 'Alan', 'T', 'Morris', '1795-07-15', '1875-02-27', '1860-01-04', 1500.00, 'C', 'Evergreen Drive', 40001, 1
union select 'Fanny', null, 'Shapiro', '1997-01-01', '2017-08-22', '2017-08-23', 3600.00, 'A', 'Maple Lane', 116, 1
union select 'Renee', null, 'Lerman', '1889-11-16', '1968-09-01', '1946-06-25', 2200.00, 'C', 'Fern Way', 50125, 0
union select 'Jonah', 'L', 'Roman', '1974-03-22', '2022-05-30', '1999-03-10', 3000.00, 'B', 'Cherry Drive', 20001, 1
union select 'Ava', 'C', 'Kurman', '2003-02-16', '2023-10-12', '2023-10-12', 4200.00, 'A', 'Oak Street', 11, 1
union select 'Bertha', null, 'Combs', '1674-04-14', '1713-03-12', '1713-03-14', 500.00, 'B', 'Cherry Drive', 20003, 0
union select 'Craig', 'N', 'Oriel', '1943-02-08', '2001-12-30', '1999-06-08', 3000.00, 'C', 'Elm Street', 40579, 0
union select 'Rachel', null, 'Brown', '2000-05-26', '2024-01-22', '2024-01-20', 4200.00, 'A', 'Maple Lane', 136, 1
union select 'Charles', 'W', 'Fine', '1880-09-06', '1974-09-23', '1920-05-04', 2200.00, 'C', 'Evergreen Drive', 40023, 1
union select 'Alana', 'L', 'Smith', '1921-08-20', '1985-02-15', '1985-02-16', 3000.00, 'B', 'Cedar Lane', 30145, 1;
