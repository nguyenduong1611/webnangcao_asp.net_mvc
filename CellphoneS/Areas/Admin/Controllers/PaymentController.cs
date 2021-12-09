using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CellphoneS.Models.EF;
using CellphoneS.Models.DAO;
namespace CellphoneS.Areas.Admin.Controllers
{
    public class PaymentController : BaseController
    {
        // GET: Admin/Payment
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Unpaid()
        {
            var dao = new OrderDAO().GetOrder();
            return View(dao);
        }
        [HttpPost]
        public JsonResult accept(int id)
        {
            var result = new OrderDAO().accept(id);
            return Json(new
            {
                DaThanhToan = result
            });
        }
        public ActionResult Paid()
        {
            var dao = new OrderDAO().Paid();
            return View(dao);
        }
        public JsonResult delivery(int id)
        {
            var result = new OrderDAO().delivery(id);
            return Json(new
            {
                TinhTrangGiaoHang = result
            });
        }
        public ActionResult success()
        {
            var result = new OrderDAO().Delivery();
            return View(result);
        }
    }
}