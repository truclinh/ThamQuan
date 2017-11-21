using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ThamQuanTDMU.Models;

namespace ThamQuanTDMU.Controllers
{
    public class LoginController : Controller
    {
        //
        // GET: /Login/
        TDMU_INTRODUCTIONEntities db = new TDMU_INTRODUCTIONEntities();
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DangNhap(FormCollection f)
        {
            string sTenDN = f["txtTenDN"].ToString();
            string sMatKhau = f.Get("txtMatKhau").ToString();
            ADMIN ad = db.ADMINs.SingleOrDefault(n => n.AD_Username == sTenDN && n.AD_Password == sMatKhau);
            if (ad == null)
            {
                return RedirectToAction("DangNhap", "Login");
            }
             else
                {
                    Session["ADMIN"] = ad;
                    Session["TaiKhoan"] = ad.AD_Name;
                    return RedirectToAction("Index", "QuanLyMenu"); 
                }

        }
        //Đăng xuất hệ thống
        public ActionResult DangXuat()
        {
            if (Session["TaiKhoan"] != null)
            {
                Session["TaiKhoan"] = null;

            }
            return RedirectToAction("DangNhap", "Login");
        }

	}
}