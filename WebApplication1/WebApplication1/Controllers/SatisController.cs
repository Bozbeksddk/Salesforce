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
    public class SatisController : Controller
    {
        private SalesForceDBEntities2 db = new SalesForceDBEntities2();

        // GET: Satis
        public ActionResult Index()
        {
            var satis = db.Satis.Include(s => s.AspNetUser).Include(s => s.Musteri).Include(s => s.Urunler);
            return View(satis.ToList());
        }

        // GET: Satis/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sati sati = db.Satis.Find(id);
            if (sati == null)
            {
                return HttpNotFound();
            }
            return View(sati);
        }

        // GET: Satis/Create
        public ActionResult Create()
        {
            ViewBag.RefAspNetUserID = new SelectList(db.AspNetUsers, "Id", "Email");
            ViewBag.RefMusteriID = new SelectList(db.Musteris, "MusteriID", "Ad");
            ViewBag.RefUrunID = new SelectList(db.Urunlers, "UrunID", "UrunAdi");
            return View();
        }

        // POST: Satis/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SatisID,RefSirketID,RefMusteriID,RefUrunID,Fiyat,Tarih,RefAspNetUserID")] Sati sati)
        {
            
            if (ModelState.IsValid)
            {
                db.Satis.Add(sati);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.RefAspNetUserID = new SelectList(db.AspNetUsers, "Id", "Email", sati.RefAspNetUserID);
            ViewBag.RefMusteriID = new SelectList(db.Musteris, "MusteriID", "Ad", sati.RefMusteriID);
            ViewBag.RefUrunID = new SelectList(db.Urunlers, "UrunID", "UrunAdi", sati.RefUrunID);
            //ViewBag.RefSirketID = new SelectList(db.Sirkets, "SirketID", "Ad", sati.RefSirketID);
            return View(sati);
        }

        // GET: Satis/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sati sati = db.Satis.Find(id);
            if (sati == null)
            {
                return HttpNotFound();
            }
            ViewBag.RefAspNetUserID = new SelectList(db.AspNetUsers, "Id", "Email", sati.RefAspNetUserID);
            ViewBag.RefMusteriID = new SelectList(db.Musteris, "MusteriID", "Ad", sati.RefMusteriID);
            ViewBag.RefUrunID = new SelectList(db.Urunlers, "UrunID", "UrunAdi", sati.RefUrunID);
            return View(sati);
        }

        // POST: Satis/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SatisID,RefSirketID,RefMusteriID,RefUrunID,Fiyat,Tarih,RefAspNetUserID")] Sati sati)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sati).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.RefAspNetUserID = new SelectList(db.AspNetUsers, "Id", "Email", sati.RefAspNetUserID);
            ViewBag.RefMusteriID = new SelectList(db.Musteris, "MusteriID", "Ad", sati.RefMusteriID);
            ViewBag.RefUrunID = new SelectList(db.Urunlers, "UrunID", "UrunAdi", sati.RefUrunID);
            return View(sati);
        }

        // GET: Satis/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Sati sati = db.Satis.Find(id);
            if (sati == null)
            {
                return HttpNotFound();
            }
            return View(sati);
        }

        // POST: Satis/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Sati sati = db.Satis.Find(id);
            db.Satis.Remove(sati);
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
