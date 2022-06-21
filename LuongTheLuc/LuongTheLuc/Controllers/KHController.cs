using LuongTheLuc.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LuongTheLuc.Controllers
{
    public class KHController : Controller
    {
        PhimDataContext db = new PhimDataContext();
        // GET: KH
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(KhachHang model)
        {
            if(ModelState.IsValid)
            {
                db.KhachHangs.Add(model);
                db.SaveChanges();
            }
            return View(model);
        }

        public ActionResult login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult login(KhachHang model)
        {
            if (ModelState.IsValid)
            {
                var login = db.KhachHangs.FirstOrDefault(p=>p.matkhau == model.matkhau && p.dienthoai == model.dienthoai);
                return RedirectToAction("Home", "Index");
            }
            return View(model);
        }

    }
}