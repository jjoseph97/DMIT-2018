using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkSchedule.Framework.Entities
{
    public class Schedule
    {
        [Key]
        [Required(ErrorMessage = "Schedule: A ScheduleID is required")]
        public int ScheduleID { get; set; }

        [Required(ErrorMessage = "Schedule: A Day is required")]
        public DateTime Day { get; set; }

        [Required(ErrorMessage = "Schedule: A ShiftID is required")]
        public int ShiftID { get; set; }

        [Required(ErrorMessage = "Schedule: An EmployeeID is required")]
        public int EmployeeID { get; set; }

        // Navigation Properties
        // To One
        public virtual Shift Shift { get; set; }
        public virtual Employee Employee { get; set; }
    }
}
