using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WorkSchedule.Framework.Entities;


namespace WorkSchedule.Framework.DAL
{
    internal class WorkScheduleContext : DbContext
    {
        public WorkScheduleContext() 
            : base("DefaultConnection")
        { }

        // One property for each Table/Entity in the database
        public DbSet<Employee> Employees { get; set; }
        public DbSet<EmployeeSkill> EmployeeSkills { get; set; }
        public DbSet<Location> Locations { get; set; }
        public DbSet<PlacementContract> PlacementContracts { get; set; }
        public DbSet<Schedule> Schedules { get; set; }
        public DbSet<Shift> Shifts { get; set; }
        public DbSet<Skill> Skills { get; set; }

        // Details of entity models
        /*
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder
                .Entity<Employee>().HasMany(r => r.Skills)
                .WithMany(t => t.Employees)
                .Map(mapping =>
                {
                    mapping.ToTable("EmployeeSkills");
                    mapping.MapLeftKey("EmployeeID");
                    mapping.MapRightKey("SkillID");

                });
            modelBuilder
                .Entity<Employee>().HasMany(r => r.Shifts)
                .WithMany(t => t.Employees)
                .Map(mapping =>
                {
                    mapping.ToTable("Schedules");
                    mapping.MapLeftKey("EmployeeID");
                    mapping.MapRightKey("ShiftID");
                });
            base.OnModelCreating(modelBuilder);
        }
         */
    }
}
