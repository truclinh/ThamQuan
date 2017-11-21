using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using ThamQuanTDMU.Models;

namespace ThamQuanTDMU.Controllers
{
    public class QuanLyNghienCuuKhoaHocController : Controller
    {

        TDMU_INTRODUCTIONEntities db = new TDMU_INTRODUCTIONEntities();
        // GET: QuanLyNghienCuuKhoaHoc
        public ActionResult Index()
        {
            var model = (from t in db.STUDY_ACTIVITY select t).ToList();
            return View(model);
        }

        public ActionResult ThemMoi()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoi(STUDY_ACTIVITY sa, HttpPostedFileBase fileUpload, HttpPostedFileBase fileUploadVideo)
        {


            if (fileUpload == null)
            {
                ViewBag.thongbao1 = "Chọn hình ảnh";
                ViewBag.thongbao2 = "Chọn video";
                return View();
            }
            if (ModelState.IsValid)
            {
                //Lưu tên file
                var fileName = Path.GetFileName(fileUpload.FileName);
                var fileNameVideo = Path.GetFileName(fileUploadVideo.FileName);

                //Lưu đường dẫn của file
                var path = Path.Combine(Server.MapPath("~/Content/assets/NCKH/img"), fileName);
                var pathVideo = Path.Combine(Server.MapPath("~/Content/assets/NCKH/video"), fileNameVideo);
                //Lưu đường dẫn video
                if (System.IO.File.Exists(path)|| System.IO.File.Exists(pathVideo))
                {
                    ViewBag.thongbao1 = "Hình ảnh đã tồn tại";
                }
                else
                {
                    fileUpload.SaveAs(path);
                    fileUploadVideo.SaveAs(pathVideo); 
                }
                sa.SA_Image = fileUpload.FileName;
                sa.SA_Video = fileUploadVideo.FileName;
                db.STUDY_ACTIVITY.Add(sa);
                db.SaveChanges();
                return RedirectToAction("Index", "QuanLyNghienCuuKhoaHoc");
            }   
            return View();
         }
        //Chỉnh sửa
        [HttpGet]
        public ActionResult ChinhSua(int maDT)
        {

            //lấy đối tượng sp theo mã
           STUDY_ACTIVITY dt = db.STUDY_ACTIVITY.SingleOrDefault(n => n.SA_Id == maDT);
            if (dt == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(dt);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ChinhSua(STUDY_ACTIVITY sa)
        {
            if (ModelState.IsValid)
            {
                db.Entry(sa).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            //Thêm vào cơ sở dữ liệu
            return View();
        }
        public ActionResult Xoa(int MaDT)
        {
            STUDY_ACTIVITY dt = db.STUDY_ACTIVITY.SingleOrDefault(n => n.SA_Id == MaDT);

            if (dt == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(dt);
        }
        //Xác nhân xoá
        [HttpPost, ActionName("Xoa")]
        public ActionResult XacNhanXoa(int MaDT)
        {
            STUDY_ACTIVITY dt = db.STUDY_ACTIVITY.SingleOrDefault(n => n.SA_Id == MaDT);
            if (dt == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            db.STUDY_ACTIVITY.Remove(dt);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}