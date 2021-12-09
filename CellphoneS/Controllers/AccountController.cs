using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using CellphoneS.Models.EF;
using CellphoneS.Models.DAO;
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

        [HttpPost]
        public ActionResult Index(ThanhVien tv)
        {
            var count = new ThanhVienDAO().login(tv);
            if (count > 0)
            {
                Session["Customer"] = tv.MaThanhVien;
                return RedirectToAction("Index", "HomeClient");
            }
            return View();
        }
        public ActionResult Register()
        {
            return View();
        }
    }
}