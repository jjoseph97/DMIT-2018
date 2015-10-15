﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace WorkSchedule.Framework.Entities
{
    public class Employee
    {
        [Key]
        [Required(ErrorMessage="Employee: An EmployeeID is required")]
        public int EmployeeID { get; set; }
        [Required(ErrorMessage="Employee: A FirstName is required(1-50 characters)")]
        [StringLength(50, MinimumLength=1,ErrorMessage="Employee.FirstName: Length must be 1-50")]
        public String FirstName { get; set; }
        [Required(ErrorMessage = "Employee: A LastName is required(1-50 characters)")]
        [StringLength(50, MinimumLength = 1, ErrorMessage = "Employee.LastName: Length must be 1-50")]
        public String LastName { get; set; }
        [Required(ErrorMessage = "Employee: A PhoneNumber is required(12 characters)")]
        [StringLength(12, ErrorMessage = "Employee.PhoneNumber: Length must 12")]
        public String HomePhone { get; set; }
        [Required(ErrorMessage="Employee: An Active flag must be marked")]
        public bool Active { get; set; }

        // Navigation Properties
        
        // Constructor for default values
        
    }
}