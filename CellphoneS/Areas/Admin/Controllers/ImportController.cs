using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CellphoneS.Models.EF;
using CellphoneS.Models.DAO;
namespace CellphoneS.Areas.Admin.Controllers
{
    public class ImportController : BaseController
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
        [HttpPost]
        public ActionResult import(PhieuNhap p, IEnumerable<ChiTietPhieuNhap> lst)
        {
            var supDao = new SupplierDAO().sup();
            ViewBag.sup = supDao;
            var prodao = new ProductDAO().products();
            ViewBag.pro = prodao;

            var dao = new ReceiptDAO();
            var result = dao.insert(p);
            SanPham sp;
            if (result)
            {
                foreach (var item in lst)
                {
                    sp = db.SanPham.SingleOrDefault(n => n.MaSP == item.MaSP);
                    sp.SoLuongTon += item.SoLuongNhap;
                    item.MaPN = p.MaPN;
                }
                db.ChiTietPhieuNhap.AddRange(lst);
                db.SaveChanges();

            }
            SetAlert("Nhập Hàng Thành Công", "success");
            return RedirectToAction("Index");
        }
    }
}