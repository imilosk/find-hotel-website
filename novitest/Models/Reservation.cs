using System;
using System.Collections.Generic;

namespace novitest.Models
{
    public partial class Reservation
    {
        public int Id { get; set; }
        public DateTime DateFrom { get; set; }
        public DateTime DateTo { get; set; }
        public int RoomId { get; set; }

        public Rooms Room { get; set; }
    }
}
