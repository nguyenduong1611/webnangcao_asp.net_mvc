using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CellphoneS.Models.EF;
using CellphoneS.Models.DAO;

namespace CellphoneS.Controllers
{
    public class HomeClientController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult PromotionPartial()
        {
            var promotion = new NewDAO().promotion();
            return PartialView(promotion);
        }
        public ActionResult ProductPartial()
        {
            return PartialView();
        }
        public ActionResult MenuPartial()
        {
            var menu = new ProductDAO().products();
            return View(menu);
        }
        public ActionResult FooterPartial()
        {
            var footer = new CommonDAO().footer();
            return PartialView(footer);
        }
        public ActionResult ShowProducts(int MaLoaiSP, int MaNSX)
        {
            if (MaNSX == null)
            {
                IEnumerable<SanPham> lst1 = new ProductDAO().showbycategories(MaLoaiSP);
                ViewData["MaLoaiNSX"] = MaNSX;
                return View(lst1);
            }
            IEnumerable<SanPham> lst = new ProductDAO().showproducts(MaLoaiSP, MaNSX);
            return View(lst);
        }
        public ActionResult Search(string TenSP)
        {

            StoreCellphoneS db = new StoreCellphoneS();
            if (TenSP == null)
            {
                return RedirectToAction("Index", "HomeClient");
            }
            IEnumerable<SanPham> lst = db.SanPham.Where(x => x.TenSP.Contains(TenSP));
            return View(lst);
        }
    }
}