using System;
using System.Collections.Generic;

namespace novitest.Models
{
    public partial class Hotels
    {
        public Hotels()
        {
            Rooms = new HashSet<Rooms>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public int Rating { get; set; }
        public string Description { get; set; }
        public int Wifi { get; set; }
        public int Parking { get; set; }
        public int PetAllowed { get; set; }
        public int Fitness { get; set; }
        public int Price { get; set; }
        public string Img1 { get; set; }
        public string Img2 { get; set; }
        public int CountryId { get; set; }
        public virtual Countries Country { get; set; }
        public int Food { get; set; }
        public virtual ICollection<Rooms> Rooms { get; set; }
    }
}
