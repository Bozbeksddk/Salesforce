using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class SirketsController : Controller
    {
        private SalesForceDBEntities2 db = new SalesForceDBEntities2();

        // GET: Sirkets
        public ActionResult Index()
        {
            var sirkets = db.Sirkets.Include(s => s.Country);
            return View(sirkets.ToList());
        }

        // GET: Sirkets/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sirket sirket = db.Sirkets.Find(id);
            if (sirket == null)
            {
                return HttpNotFound();
            }
            return View(sirket);
        }

        // GET: Sirkets/Create
        public ActionResult Create()
        {
            ViewBag.RefCountryID = new SelectList(db.Countries, "CountryID", "CountryName");
            return View();
        }

        // POST: Sirkets/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SirketID,Ad,Adres,RefCountryID")] Sirket sirket)
        {
            if (ModelState.IsValid)
            {
                db.Sirkets.Add(sirket);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.RefCountryID = new SelectList(db.Countries, "CountryID", "CountryName", sirket.RefCountryID);
            return View(sirket);
        }

        // GET: Sirkets/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sirket sirket = db.Sirkets.Find(id);
            if (sirket == null)
            {
                return HttpNotFound();
            }
            ViewBag.RefCountryID = new SelectList(db.Countries, "CountryID", "CountryName", sirket.RefCountryID);
            return View(sirket);
        }

        // POST: Sirkets/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SirketID,Ad,Adres,RefCountryID")] Sirket sirket)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sirket).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.RefCountryID = new SelectList(db.Countries, "CountryID", "CountryName", sirket.RefCountryID);
            return View(sirket);
        }

        // GET: Sirkets/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sirket sirket = db.Sirkets.Find(id);
            if (sirket == null)
            {
                return HttpNotFound();
            }
            return View(sirket);
        }

        // POST: Sirkets/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Sirket sirket = db.Sirkets.Find(id);
            db.Sirkets.Remove(sirket);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
