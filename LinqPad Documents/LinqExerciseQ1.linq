<Query Kind="Expression">
  <Connection>
    <ID>3b240693-79c4-493d-975c-75c97ba8ebe8</ID>
    <Persist>true</Persist>
    <Server>.</Server>
    <Database>WorkSchedule</Database>
    <ShowServer>true</ShowServer>
  </Connection>
</Query>

from aSkill in Skills
	where aSkill.RequiresTicket == true
	select new
	{
		Description = aSkill.Description,
		Employees = from employeeSkill in EmployeeSkills
					where employeeSkill.SkillID == aSkill.SkillID
					orderby  employeeSkill.YearsOfExperience descending
					select new
					{
						Name = employeeSkill.Employee.FirstName + " " + employeeSkill.Employee.LastName,
						Level = employeeSkill.Level,
						YearsExperience = employeeSkill.YearsOfExperience
					}
	}
	
	