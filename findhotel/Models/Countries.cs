using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace novitest.Models
{
    public partial class Countries
    {
        public Countries()
        {
            Hotels = new HashSet<Hotels>();
        }

        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.None), Key]
        public int Id { get; set; }
        public string Name { get; set; }

        public ICollection<Hotels> Hotels { get; set; }

    }
}
