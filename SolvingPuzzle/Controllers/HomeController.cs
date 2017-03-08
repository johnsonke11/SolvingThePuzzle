using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SolvingPuzzle.Models;
using System.Data.Entity;

namespace SolvingPuzzle.Controllers
{
    public class HomeController : Controller
    {
        private SolvingPuzzleEntities1 db = new SolvingPuzzleEntities1();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
        
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        [HttpPost]
        public ActionResult Index([Bind(Include = "email1")]Email email)
        {
            if (ModelState.IsValid)
            {
                db.Emails.Add(email);
                db.SaveChanges();
                ViewBag.result = "Thank you for Subscribing. We will email you at " + email.email1 + " soon";
                return View();
                
            }

            return View(email);
        }
        
    }
}