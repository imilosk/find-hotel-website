using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace novitest.Models
{
    public class countriesContext : DbContext
    {
        public countriesContext (DbContextOptions<countriesContext> options)
            : base(options)
        {
        }

        public DbSet<novitest.Models.Countries> Countries { get; set; }
    }
}
