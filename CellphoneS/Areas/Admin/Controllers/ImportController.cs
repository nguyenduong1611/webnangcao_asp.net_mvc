using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CellphoneS.Models.EF;
using CellphoneS.Models.DAO;
namespace CellphoneS.Areas.Admin.Controllers
{
    public class ImportController : Controller
    {
        StoreCellphoneS db = new StoreCellphoneS();
        // GET: Admin/Import
        public ActionResult Index()
        {
            var supDao = new SupplierDAO().sup();
            ViewBag.sup = supDao;
            var prodao = new ProductDAO().products();
            ViewBag.pro = prodao;
            return View();
        }
    }
}