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
        public IActionResult Index()
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
            
            var q = from h in hotelsContext.Hotels
                    select h;

            ViewData["hotels"] = q;

            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
