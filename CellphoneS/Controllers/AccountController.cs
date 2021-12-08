using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using CellphoneS.Models.EF;

namespace CellphoneS.Controllers
{
    public class AccountController : Controller
    {
        StoreCellphoneS db = new StoreCellphoneS();
        // GET: Account
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
        public void SetAlert(string mess, string type)
        {
            TempData["AlertMessage"] = mess;
            if (type == "seccess")
            {
                TempData["AlertType"] = "alert-success";
            }
            if (type == "error")
            {
                TempData["AlertType"] = "alert-danger";
            }
            if (type == "warning")
            {
                TempData["AlertType"] = "alert-warning";
            }
        }
        [HttpPost]
        public ActionResult Login(string username, string pwd)
        {
            ThanhVien tv = db.ThanhVien.SingleOrDefault(n => n.TaiKhoan == username);
            int count = db.ThanhVien.Count(n => n.TaiKhoan == username && n.MatKhau == pwd);
            if (count != 0)
            {
                Session.Add(Common.CommonSession.USER_LOGIN, tv);
                return RedirectToAction("Index", "HomeClient");
            }
            SetAlert("Tài Khoản Hoặc Mật Khẩu Không Chính Xác", "error");
            return RedirectToAction("Index");
        }
        public ActionResult Register()
        {
            return View();
        }
    }
}