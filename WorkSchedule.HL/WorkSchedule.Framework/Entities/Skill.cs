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
        [StringLength(100,ErrorMessage="Skill.Description: Length cannot exceed 100 characters")]
        public string Description { get; set; }
        [Required(ErrorMessage="Skill: A RequiresTicket flag must be marked")]
        public bool RequiresTicket { get; set; }
    }
}
