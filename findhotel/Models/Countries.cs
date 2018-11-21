using System;
using System.Collections.Generic;

namespace novitest.Models
{
    public partial class Countries
    {
        public Countries()
        {
            Hotels = new HashSet<Hotels>();
        }

        public int Id { get; set; }
        public string Name { get; set; }

        public ICollection<Hotels> Hotels { get; set; }

    }
}
