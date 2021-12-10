using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CellphoneS.Models.DAO;
using CellphoneS.Models.EF;
namespace CellphoneS.Areas.Admin.Controllers
{
    public class ProductController : BaseController
    {
        // GET: Admin/Product
        public ActionResult Index(int page = 1, int pagesize = 10)
        {
            var dao = new ProductDAO().page_list_product(page, pagesize);
            return View(dao);
        }

        [HttpGet]
        public ActionResult Create()
        {
            var supDao = new SupplierDAO().sup();
            ViewBag.sup = supDao;
            var prodao = new ProducerDAO().procer();
            ViewBag.producer = prodao;
            var typedao = new ProductTypeDAO().type();
            ViewBag.type = typedao;
            return View();
        }

        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Create(SanPham pro)
        {
            StoreCellphoneS db = new StoreCellphoneS();
            var f1 = Request.Files["file1"];
            string path1 = Server.MapPath("~/assets/Client/Product_Images/" + f1.FileName);
            if (pro.HinhAnh1 == "")
            {
                pro.HinhAnh1 = "NULL";
            }
            else
            {
                pro.HinhAnh1 = f1.FileName;
            }
                
            var f2 = Request.Files["file2"];
            string path2 = Server.MapPath("~/assets/Client/Product_Images/" + f2.FileName);
            if (pro.HinhAnh2 == "")
            {
                pro.HinhAnh2 = "NULL";
            }
            else
            {
                pro.HinhAnh2 = f2.FileName;
            }

            var f3 = Request.Files["file3"];
            string path3 = Server.MapPath("~/assets/Client/Product_Images/" + f3.FileName);
            if (pro.HinhAnh3 == "")
            {
                pro.HinhAnh3 = "NULL";
            }
            else
            {
                pro.HinhAnh3 = f3.FileName;
            }

            var dao = new ProductDAO().Insert(pro);
            if (dao)
            {
                SetAlert("Thêm Sản Phẩm Thành Công", "success");
                return RedirectToAction("Index");
            }
            return View();
        }
        [HttpGet]
        public ActionResult Edit(int id)
        {
            var dao = new ProductDAO().GetById(id);
            return View(dao);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(SanPham pro)
        {
            StoreCellphoneS db = new StoreCellphoneS();
            var dao = new ProductDAO().update(pro);
            if (dao)
            {
                SetAlert("Thay Đổi Sản Phẩm Thành Công", "success");
                return RedirectToAction("Index");
            }
            return View();
        }
    }
}