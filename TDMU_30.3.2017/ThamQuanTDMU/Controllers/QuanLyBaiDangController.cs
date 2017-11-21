using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThamQuanTDMU.Models;

namespace ThamQuanTDMU.Controllers
{
    public class QuanLyBaiDangController : Controller
    {
        // GET: QuanLyBaiDang
        TDMU_INTRODUCTIONEntities db = new TDMU_INTRODUCTIONEntities();
        public ActionResult Index()
        {
            var model = (from t in db.MENU_CONTENT where t.Department_Id == 1 select t).ToList();
            return View(model);
        }

        [HttpGet]
        public ActionResult ThemMoi()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoi(MENU_CONTENT menu_con)
        {
            if (ModelState.IsValid)
            {
                db.MENU_CONTENT.Add(menu_con);
                db.SaveChanges();
                return RedirectToAction("Index", "QuanLyBaiDang");
            }
            return View();
        }

        public ActionResult Xoa(int MaBD)
        {
            MENU_CONTENT bd = db.MENU_CONTENT.SingleOrDefault(n => n.MC_Id == MaBD);
            if (bd == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(bd);
        }
        //Xác nhân xoá
        [HttpPost, ActionName("Xoa")]
        public ActionResult XacNhanXoa(int MaBD)
        {
            MENU_CONTENT bd = db.MENU_CONTENT.SingleOrDefault(n => n.MC_Id == MaBD);
            if (bd == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            db.MENU_CONTENT.Remove(bd);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult ChinhSua(int MaBD)
        {

            //lấy đối tượng sp theo mã
            MENU_CONTENT bd = db.MENU_CONTENT.SingleOrDefault(n => n.MC_Id == MaBD);
            if (bd == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(bd);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ChinhSua(MENU_CONTENT menu_con)
        {
            if (ModelState.IsValid)
            {
                db.Entry(menu_con).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            //Thêm vào cơ sở dữ liệu
            return View();
        }
    }
}