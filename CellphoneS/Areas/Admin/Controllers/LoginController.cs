using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using CellphoneS.Models.EF;

namespace CellphoneS.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        StoreCellphoneS db = new StoreCellphoneS();
        // GET: Admin/Login
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

            CellphoneS.Models.EF.Admin ad = db.Admin.SingleOrDefault(n => n.AdminID == username);
            int count = db.Admin.Count(n => n.AdminID == username && n.MatKhau == pwd);
            if (count != 0)
            {
                Session.Add(Common.CommonSession.ADMIN_LOGIN, ad);
                return RedirectToAction("Index", "Home");
            }
            SetAlert("Tài Khoản Hoặc Mật Khẩu Không Chính Xác", "error");
            return RedirectToAction("Index");
        }
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();
            return RedirectToAction("Index", "Home");
        }
    }
}