using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using UserRazorPage.Entities;

namespace UserRazorPage.Data
{
    public class MyDbContext : DbContext
    {
        public DbSet<Employee> Employee { get; set; }

        public MyDbContext(DbContextOptions<MyDbContext> options) : base(options)
        {

        }

    }
}
