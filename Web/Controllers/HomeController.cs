using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using br.com.maginet.Entities;
namespace Web.Controllers
{
    public class HomeController : Controller
    {
         
        Trackers Teste = new Trackers();       
        
        //
        // GET: /Home/


        public ActionResult Index()
        {
            var a = from b in Teste.MsgsStorage
                    select b;

            return View(a.ToList());
        }

        //
        // GET: /Home/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Home/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Home/Create

        [HttpPost]
        public ActionResult Create(MsgStorage msg)
        {
            try
            {

                if (ModelState.IsValid)
                {
                    msg.TimeStamp = DateTime.Now;
                    Teste.MsgsStorage.Add(msg);
                    Teste.SaveChanges();

                    return RedirectToAction("Index");
                }
                return View();
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Home/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View(Teste.MsgsStorage.Find(id));
        }

        //
        // POST: /Home/Edit/5

        [HttpPost]
        public ActionResult Edit(MsgStorage editado)
        {
            try
            {

                Teste.Entry<MsgStorage>(editado).State = System.Data.EntityState.Modified;
                Teste.SaveChanges();
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Home/Delete/5
 
        public ActionResult Delete(int id)
        {
               return View(Teste.MsgsStorage.Find(id));
        }

        //
        // POST: /Home/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                Teste.MsgsStorage.Remove(Teste.MsgsStorage.Find(id));
                Teste.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
