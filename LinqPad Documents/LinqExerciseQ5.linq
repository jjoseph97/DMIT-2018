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
where employeeSkills.YearsOfExperience >= 4 // How to programatically get this value? 4
select new
{
	Name = employeeSkills.Employee.FirstName + " " + employeeSkills.Employee.LastName 
}
