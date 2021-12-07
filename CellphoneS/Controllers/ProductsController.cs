using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CellphoneS.Models.DAO;

namespace CellphoneS.Controllers
{
    public class ProductsController : Controller
    {
        // GET: Products
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Config(int id)
        {
            var config = new ProductDAO().config(id);
            return PartialView(config);
        }
    }
}