using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using novitest.Models;

namespace novitest.Controllers
{
    public class HomeController : Controller
    {

        public async Task<IActionResult> Index(string searchString)
        {
            hotelsContext hotelsContext = new hotelsContext();
            hotelsContext.Hotels
                .GroupJoin(hotelsContext.Countries,
                 h => h.CountryId,
                 c => c.Id,
                 (ho, co) => new {
                     Hotels = ho,
                     Countries = co
                 }).ToList();

            var hotels = from h in hotelsContext.Hotels
                    select h;

            if (!String.IsNullOrEmpty(searchString))
            {
                hotels = hotels.Where(h => h.Name.Contains(searchString));
            }

            ViewData["hotels"] = hotels;
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
