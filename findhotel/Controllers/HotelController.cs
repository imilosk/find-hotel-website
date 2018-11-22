using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using novitest.Models;

namespace novitest.Controllers
{
    public class HotelController : Controller
    {
        public async Task<IActionResult> Index(int id)
        {
            hotelsContext hotelsContext = new hotelsContext();
            hotelsContext.Rooms
                .GroupJoin(hotelsContext.Hotels,
                 r => r.HotelId,
                 h => h.Id,
                 (ro, ho) => new {
                     Hotels = ho,
                     Countries = ro
                 }).ToList();

            var rooms = from r in hotelsContext.Rooms
                        where r.HotelId == id
                        select r;
            ViewData["rooms"] = rooms;

            var hotel = from r in hotelsContext.Hotels
                        where r.Id == id
                        select r;
            ViewData["hotel"] = hotel;

            return View();
        }
    }
}