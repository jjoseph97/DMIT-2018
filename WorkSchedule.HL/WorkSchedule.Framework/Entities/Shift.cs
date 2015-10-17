using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkSchedule.Framework.Entities
{
    public class Shift
    {
        [Key]
        [Required(ErrorMessage = "Shift: A ShiftID is required")]
        public int ShiftID { get; set; }

        [Required(ErrorMessage = "Shift: A PlacementContractID is required")]
        public int PlacementContractID { get; set; }

        [Required(ErrorMessage = "Shift: A DayOfWeek is required")]
        public int DayOfWeek { get; set; }

        [Required(ErrorMessage = "Shift: A StartTime is required")]
        public DateTime StartTime { get; set; }

        [Required(ErrorMessage = "Shift: A EndTime is required")]
        public DateTime EndTime { get; set; }

        [Required(ErrorMessage = "Shift: A NumberOfEmployees is required")]
        public Int16 NumberOfEmployees { get; set; }

        [Required(ErrorMessage = "Shift: An Active flag is required")]
        public bool Active { get; set; }

        [StringLength(100,ErrorMessage="Shift.Notes: Length cannot exceed 100 characters")]
        public string Notes { get; set; }

        // Navigation Properties
        // To Many
        public virtual ICollection<Schedule> Schedule { get; set; }
        // To One
        public virtual PlacementContract PlacementContract { get; set; }

    }
}
