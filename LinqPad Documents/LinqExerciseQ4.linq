<Query Kind="Expression">
  <Connection>
    <ID>3b240693-79c4-493d-975c-75c97ba8ebe8</ID>
    <Persist>true</Persist>
    <Server>.</Server>
    <Database>WorkSchedule</Database>
    <ShowServer>true</ShowServer>
  </Connection>
</Query>

// From the shifts scheduled for NAIT's placement contract, 
// show the number of exmployees needed for each day (ordered by day-of-week). 
// Bonus: display the name of the day of week (first day being Monday).

from shifts in Shifts
	where shifts.PlacementContract.LocationID == 4 // Location 4 is NAIT
	group shifts by shifts.DayOfWeek into dayGroup
	select new
	{
		Days = Enum.GetName(typeof(DayOfWeek), dayGroup.Key),
		EmployeesNeeded = dayGroup.Sum (aShift => aShift.NumberOfEmployees)
	}
	
