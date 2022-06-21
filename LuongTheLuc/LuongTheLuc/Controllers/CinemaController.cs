using LuongTheLuc.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LuongTheLuc.Controllers
{
    public class CinemaController : Controller
    {
        PhimDataContext db = new PhimDataContext();
        // GET: Cinema
        public ActionResult Index()
        {
            var list = db.Phims.ToList();
            return View(list);
        }

        public ActionResult Lich()
        {
            var list = db.LichChieux.ToList();
            return View(list);
        }

        public ActionResult dangchieu()
        {
            var list = db.Phims.ToList();
            return View(list);
        }

        public ActionResult dachieu()
        {
            var list = db.Phims.ToList();
            return View(list);
        }
    }
}