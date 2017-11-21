using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThamQuanTDMU.Models;
namespace ThamQuanTDMU.Controllers
{

    public class HomeController : Controller
    {
        TDMU_INTRODUCTIONEntities db = new TDMU_INTRODUCTIONEntities();
        public ActionResult Index()
        {
            var model = (from t in db.MENU_CONTENT where t.Department_Id == 1 select t).ToList();
                
            return View(model);
        }
        public ActionResult Menu()
        {
            var menu = db.MENUs.ToList();
            return PartialView("~/Views/Home/_NavPartial.cshtml",menu);
        }
        public ActionResult HinhAnhThamQuan()
        {
            var ha = db.VISIT_IMAGE.ToList();
            return PartialView("~/Views/Home/_VisitImagePartial.cshtml", ha);
        }
        public ActionResult MoiTruongHocTap()
        {
            var model = (from t in db.STUDY_ENVIRONMENT  select t).ToList();
            return View(model);
        }
        public ActionResult HoatDongNghienCuu()
        {
            var model = (from t in db.STUDY_ACTIVITY select  t).ToList();
            return View(model);
        }

        public ActionResult ThamQuan()
        {
            return View();
        }

        public ActionResult QuanLy()
        {

            return View();
        }

    }
}