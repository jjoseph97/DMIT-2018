using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkSchedule.Framework.Entities.POCOs
{
    public class EmployeeSkillPOCO
    {
        public string Description { get; set; }
        public List<Employee> Employee { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Level { get; set; }
        public int? YearsExperience { get; set; }
    }
}
