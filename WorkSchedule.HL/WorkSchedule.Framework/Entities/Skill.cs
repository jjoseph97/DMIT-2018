using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkSchedule.Framework.Entities
{
    public class Skill
    {
        [Key]
        [Required(ErrorMessage = "Skill: A SkillID is required")]
        public int SkillID { get; set; }

        [Required(ErrorMessage="Skill: A Description is required(1-100 characters)")]
        [StringLength(100,MinimumLength=1, ErrorMessage="Skill.Description: Length cannot exceed 100 characters")]
        public string Description { get; set; }

        [Required(ErrorMessage="Skill: A RequiresTicket flag must be marked")]
        public bool RequiresTicket { get; set; }

        // Navigation Properties
        // To Many  
        public virtual ICollection<EmployeeSkill> EmployeeSkills { get; set; }
        public virtual ICollection<Employee> Employees { get; set; }
    }
}
