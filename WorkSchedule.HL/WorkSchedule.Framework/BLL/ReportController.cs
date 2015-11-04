using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using WorkSchedule.Framework.Entities;
using WorkSchedule.Framework.DAL;
using WorkSchedule.Framework.Entities.POCOs;

namespace WorkSchedule.Framework.BLL
{
    [DataObject]
    public class ReportController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<EmployeeSkillPOCO> GetReportEmployeeSkill()
        {
            using (var context = new WorkScheduleContext())
            {
                var results = from row in context.EmployeeSkills
                    orderby row.Skill.Description
	                select new EmployeeSkillPOCO()
	                {
		                Description = row.Skill.Description,
						Name = row.Employee.FirstName + " " 
                        + row.Employee.LastName,
						Phone = row.Employee.HomePhone,
						Level = row.Level.ToString(),
						YearsExperience = row.YearsOfExperience
	                };
                return results.ToList();
            }
        }
    }
}
