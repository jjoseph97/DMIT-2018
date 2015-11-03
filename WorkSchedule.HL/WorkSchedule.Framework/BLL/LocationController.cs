using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using WorkSchedule.Framework.Entities;
using WorkSchedule.Framework.DAL;
using System.Data.Entity;

namespace WorkSchedule.Framework.BLL
{
    [DataObject]
    public class LocationController
    { 
        // Select List all the current locations
        [DataObjectMethod(DataObjectMethodType.Select,false)]
        public List<Location> ListLocations()
        {
            using (WorkScheduleContext context = new WorkScheduleContext())
            {
                return context.Locations.ToList();
            }
        }
        // Edit current location
        [DataObjectMethod(DataObjectMethodType.Update,false)]
        public void EditCurLocation()
        {
            using (var contexst = new WorkScheduleContext())
            {
                // Edit current location
            }
        }

        // Add new location
        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public void AddNewLocation()
        {
            using (var context = new WorkScheduleContext())
            {
                // Get the new stuff
            }
        }
    }
}
