using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations.Schema;

namespace WorkSchedule.Framework.Entities
{
    [Table("Locations")]
    public class Location
    {
        [Key]
        [Required(ErrorMessage="Location: A LocationID  is required")]
        public int LocationID { get; set; }

        [Required(ErrorMessage="Location: A Name is required(1-50 characters")]
        [StringLength(50, MinimumLength=1, ErrorMessage="Location.Name: Length cannot exceed 50 characters")]
        public string Name { get; set; }

        [Required( ErrorMessage = "Location: A Street is required(1-50 characters")]
        [StringLength(50,MinimumLength=1,ErrorMessage = "Location.Street: Length cannot exceed 50 characters")]
        public string Street { get; set; }

        [Required( ErrorMessage = "Location: A City is required(1-30 characters")]
        [StringLength(30,MinimumLength=1,ErrorMessage = "Location.City: Length cannot exceed 30 characters")]
        public string City { get; set; }

        [Required(ErrorMessage = "Location: A Province is required(2 characters")]
        [StringLength(2,MinimumLength=2,ErrorMessage = "Location.Name: Length must be exactly 2 characters")]
        public string Province { get; set; }

        [StringLength(50,MinimumLength=0,ErrorMessage = "Location.Contact: Length cannot exceed 50 characters")]
        public string Contact { get; set; }

        [Required(ErrorMessage="Location: A Phone is required(12)")]
        [StringLength(12,MinimumLength=12,ErrorMessage="Location.Phone: Length must be exactly 2 characters")]
        public string Phone { get; set; }

        [Required(ErrorMessage="Location: An active flag must be marked")]
        public bool Active { get; set; }

        // Navigation Properties
        // To Many
        public virtual ICollection<PlacementContract> PlacementContracts { get; set; }
        // To One


        // Constructor for Default Values
        public Location()
        {
            Active = true;
        }
    }
}
