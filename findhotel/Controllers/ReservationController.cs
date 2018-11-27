using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using novitest.Models;

namespace novitest.Controllers
{
    public class ReservationController : Controller
    {
        public async Task<IActionResult> Index(int id)
        {
            ViewData["id"] = id;
            return View();
        }

        [HttpPost]
        [Route("/api/Reservations")]
        public async Task<IActionResult> ReadStringDataManual()
        {

            hotelsContext hotelsContext = new hotelsContext();

            int id = hotelsContext.Reservation.Max(h => (int)h.Id) + 1;
            string name = Request.Form["name"];
            string surname = Request.Form["surname"];
            string email = Request.Form["email"];
            DateTime datefrom = DateTime.ParseExact(Request.Form["datefrom"], "yyyy-MM-dd", CultureInfo.InvariantCulture);
            DateTime dateto = DateTime.ParseExact(Request.Form["dateto"], "yyyy-MM-dd", CultureInfo.InvariantCulture);
            int roomid = (int) Convert.ToInt32(Request.Form["roomid"]);

            var r = new Reservation
            {
                Id = id,
                Name = name,
                Surname = surname,
                Email = email,
                DateFrom = datefrom,
                DateTo = dateto,
                RoomId = roomid
            };
            
            hotelsContext.Reservation.Add(r);
            hotelsContext.SaveChanges();
            return Redirect("/");
        }

    }
}