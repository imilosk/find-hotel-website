using System;
using System.Collections.Generic;

namespace novitest.Models
{
    public partial class Rooms
    {
        public Rooms()
        {
            Reservation = new HashSet<Reservation>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int Price { get; set; }
        public string Img { get; set; }
        public int HotelId { get; set; }

        public Hotels Hotel { get; set; }
        public ICollection<Reservation> Reservation { get; set; }
    }
}
