using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThamQuanTDMU.Models;
namespace ThamQuanTDMU.Controllers
{
    public class ThamQuanController : Controller
    {
        TDMU_INTRODUCTIONEntities db = new TDMU_INTRODUCTIONEntities();
        //
        // GET: /ThamQuan/
        public ActionResult _MenuPartial()
        {

            var da = db.VISIT_IMAGE.ToList();
            return PartialView("_MenuPartial", da);
        }
        public ActionResult ThamQuan(int imgId)
        {

            var da = db.VISIT_IMAGE.SingleOrDefault(n => n.Img_Id == imgId);
            return View(da);
        }
        public ActionResult MapPartial()
        {
            return PartialView("MapPartial");
        }
        public JsonResult LoadMap()
        {
            var da = db.VISIT_IMAGE.ToList();
            return Json(da, JsonRequestBehavior.AllowGet);
        }
    }
}