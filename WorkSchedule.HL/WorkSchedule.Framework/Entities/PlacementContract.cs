using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WorkSchedule.Framework.Entities
{
    public class PlacementContract
    {
        [Key]
        [Required(ErrorMessage="PlacementContract: A PlacementContractID is required")]
        public int PlacementContractID { get; set; }

        [Required(ErrorMessage = "PlacementContract: A StartDate is required")]
        public DateTime StartDate { get; set; }

        [Required(ErrorMessage = "PlacementContract: An EndDate is required")]
        public DateTime EndDate { get; set; }

        [Required(ErrorMessage = "PlacementContract: A LocationID is required")]
        public int LocationID { get; set; }

        // Navigation Properties
        // To many
        public virtual ICollection<Shift> Shifts { get; set; }
        // To one
        public virtual Location Location { get; set; }
    }
}
