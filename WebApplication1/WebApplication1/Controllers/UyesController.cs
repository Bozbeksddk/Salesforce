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
    public class UyesController : Controller
    {
        private SalesForceDBEntities2 db = new SalesForceDBEntities2();

        // GET: Uyes
        public ActionResult Index()
        {
            var uyes = db.Uyes.Include(u => u.AspNetUser).Include(u => u.Country);
            return View(uyes.ToList());
        }

        // GET: Uyes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Uye uye = db.Uyes.Find(id);
            if (uye == null)
            {
                return HttpNotFound();
            }
            return View(uye);
        }

        // GET: Uyes/Create
        public ActionResult Create()
        {
            ViewBag.RefAspNetUserID = new SelectList(db.AspNetUsers, "Id", "Email");
            ViewBag.RefCountryID = new SelectList(db.Countries, "CountryID", "CountryName");
            return View();
        }

        // POST: Uyes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,KullaniciAdi,Ad,Soyad,Eposta,RefCountryID,Telefon,RefAspNetUserID")] Uye uye)
        {
            if (ModelState.IsValid)
            {
                db.Uyes.Add(uye);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.RefAspNetUserID = new SelectList(db.AspNetUsers, "Id", "Email", uye.RefAspNetUserID);
            ViewBag.RefCountryID = new SelectList(db.Countries, "CountryID", "CountryName", uye.RefCountryID);
            return View(uye);
        }

        // GET: Uyes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Uye uye = db.Uyes.Find(id);
            if (uye == null)
            {
                return HttpNotFound();
            }
            ViewBag.RefAspNetUserID = new SelectList(db.AspNetUsers, "Id", "Email", uye.RefAspNetUserID);
            ViewBag.RefCountryID = new SelectList(db.Countries, "CountryID", "CountryName", uye.RefCountryID);
            return View(uye);
        }

        // POST: Uyes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,KullaniciAdi,Ad,Soyad,Eposta,RefCountryID,Telefon,RefAspNetUserID")] Uye uye)
        {
            if (ModelState.IsValid)
            {
                db.Entry(uye).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.RefAspNetUserID = new SelectList(db.AspNetUsers, "Id", "Email", uye.RefAspNetUserID);
            ViewBag.RefCountryID = new SelectList(db.Countries, "CountryID", "CountryName", uye.RefCountryID);
            return View(uye);
        }

        // GET: Uyes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Uye uye = db.Uyes.Find(id);
            if (uye == null)
            {
                return HttpNotFound();
            }
            return View(uye);
        }

        // POST: Uyes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Uye uye = db.Uyes.Find(id);
            db.Uyes.Remove(uye);
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
