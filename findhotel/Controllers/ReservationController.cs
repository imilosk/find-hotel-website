using System;
using System.Collections.Generic;
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
        public async Task<string> ReadStringDataManual()
        {

            hotelsContext hotelsContext = new hotelsContext();

            int id = hotelsContext.Countries.Max(h => (int)h.Id) + 1;
            string name = Request.Form["name"];

            var c = new Countries
            {
                Id = id,
                Name = name
            };
            
            hotelsContext.Countries.Add(c);
            hotelsContext.SaveChanges();
            return name;   
        }

    }
}