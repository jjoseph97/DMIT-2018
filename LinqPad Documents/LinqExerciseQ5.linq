<Query Kind="Expression">
  <Connection>
    <ID>3b240693-79c4-493d-975c-75c97ba8ebe8</ID>
    <Persist>true</Persist>
    <Server>.</Server>
    <Database>WorkSchedule</Database>
    <ShowServer>true</ShowServer>
  </Connection>
</Query>

from employeeSkills in EmployeeSkills
where employeeSkills.YearsOfExperience >=  // How to programatically get this value? 4
	EmployeeSkills
				.Select(ES => ES.YearsOfExperience)
				.Max()
select new
{
	Name = employeeSkills.Employee.FirstName + " " + employeeSkills.Employee.LastName 
}

/*
from employeeSkills in EmployeeSkills
where employeeSkills.YearsOfExperience != null
select employeeSkills.YearsOfExperience.Max()
*/
