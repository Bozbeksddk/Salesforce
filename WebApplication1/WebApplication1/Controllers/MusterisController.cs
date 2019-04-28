﻿using System;
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
    public class MusterisController : Controller
    {
        private SalesForceDBEntities2 db = new SalesForceDBEntities2();

        // GET: Musteris
        public ActionResult Index()
        {
            var musteris = db.Musteris.Include(m => m.Sirket);
            return View(musteris.ToList());
        }

        // GET: Musteris/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Musteri musteri = db.Musteris.Find(id);
            if (musteri == null)
            {
                return HttpNotFound();
            }
            return View(musteri);
        }

        // GET: Musteris/Create
        public ActionResult Create()
        {
            ViewBag.RefSirketID = new SelectList(db.Sirkets, "SirketID", "Ad");
            return View();
        }

        // POST: Musteris/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MusteriID,Ad,Soyad,Eposta,RefSirketID")] Musteri musteri)
        {
            if (ModelState.IsValid)
            {
                db.Musteris.Add(musteri);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.RefSirketID = new SelectList(db.Sirkets, "SirketID", "Ad", musteri.RefSirketID);
            return View(musteri);
        }

        // GET: Musteris/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Musteri musteri = db.Musteris.Find(id);
            if (musteri == null)
            {
                return HttpNotFound();
            }
            ViewBag.RefSirketID = new SelectList(db.Sirkets, "SirketID", "Ad", musteri.RefSirketID);
            return View(musteri);
        }

        // POST: Musteris/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MusteriID,Ad,Soyad,Eposta,RefSirketID")] Musteri musteri)
        {
            if (ModelState.IsValid)
            {
                db.Entry(musteri).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.RefSirketID = new SelectList(db.Sirkets, "SirketID", "Ad", musteri.RefSirketID);
            return View(musteri);
        }

        // GET: Musteris/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Musteri musteri = db.Musteris.Find(id);
            if (musteri == null)
            {
                return HttpNotFound();
            }
            return View(musteri);
        }

        // POST: Musteris/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Musteri musteri = db.Musteris.Find(id);
            db.Musteris.Remove(musteri);
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
