--1) I need a list that will be useful to the maintenance crew. I would like to see a list of last name, first name, the section, spot number 
--and if they purchased perpetual care or not.
select b.LastName, b.FirstName, b.Section, b.SpotNumber, PerpetualCare = case when b.PerpetualCare = 0 then 'No' else 'Yes' end
from Burial b
--2) We have 20,000 plots available in each section. It is helpful for us to know how many plots have not been filled. 
--I would like to know how many people are buried in each section of the cemetary.
select TotalPlotsFilled = count(*), b.Section
from burial b
group by b.Section
--3) For those that passed away, how many years it has been since the person passed away
select YearsSincePassedOn = year(getdate()) - year(b.DateOfDeath), b.FirstName, b.LastName
from burial b 
where b.DateOfDeath is not null
--4) I would like to see the ages of those that passed away
select Age = year(DateOfDeath) - year(DOB), b.FirstName, b.LastName
from burial b 
where b.DateOfDeath is not null
