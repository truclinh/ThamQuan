using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThamQuanTDMU.Models;

namespace ThamQuanTDMU.Controllers
{
    public class QuanLyMenuController : Controller
    {
        // GET: QuanLyMenu

        TDMU_INTRODUCTIONEntities db = new TDMU_INTRODUCTIONEntities();
        public ActionResult Index()
        {
            var model = (from t in db.MENUs select t).ToList();
            return View(model);
        }

        [HttpGet]
        public ActionResult ThemMoi()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoi(MENU menu)
        {
            if (ModelState.IsValid)
            {
                db.MENUs.Add(menu);
                db.SaveChanges();
                return RedirectToAction("Index", "QuanLyMenu");
            }
            return View();
        }
        public ActionResult Xoa(int MaMN)
        {
            MENU dm = db.MENUs.SingleOrDefault(n => n.Menu_Id == MaMN);
            if (dm == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(dm);
        }
        //Xác nhân xoá
        [HttpPost, ActionName("Xoa")]
        public ActionResult XacNhanXoa(int MaMN)
        {
            MENU dm = db.MENUs.SingleOrDefault(n => n.Menu_Id == MaMN);
            if (dm == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            db.MENUs.Remove(dm);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult ChinhSua(int MaMN)
        {

            //lấy đối tượng sp theo mã
            MENU dm = db.MENUs.SingleOrDefault(n => n.Menu_Id == MaMN);
            if (dm == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(dm);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ChinhSua(MENU dm)
        {
            if (ModelState.IsValid)
            {
                db.Entry(dm).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            //Thêm vào cơ sở dữ liệu
            return View();
        }
    }
}