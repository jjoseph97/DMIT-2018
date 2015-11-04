using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkSchedule.Framework.Entities
{
    public class EmployeeSkill
    {
        public enum SkillLevel
        {
            Novice,
            Proficent,
            Expert
        }

        [Key]
        [Required(ErrorMessage="EmployeeSkill: EmployeeSkillID is required ")]
        public int EmployeeSkillID { get; set; }
        [Required(ErrorMessage="EmployeeSkill: EmployeeID is required")]
        public int EmployeeID { get; set; }
        [Required(ErrorMessage="EmployeeSkill: SkillID is required")]
        public int SkillID { get; set; }
        [Required(ErrorMessage = "EmployeeSkill: Level is required")]
        public SkillLevel Level { get; set; }
        public int? YearsOfExperience { get; set; }

        // Navigation Properties - Connections
        // To One
        public virtual Employee Employee { get; set; }
        public virtual Skill Skill { get; set; }
    }
}
