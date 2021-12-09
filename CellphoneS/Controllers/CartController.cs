using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CellphoneS.Models.EF;
using CellphoneS.Models.DAO;
namespace CellphoneS.Controllers
{
    public class CartController : BaseController
    {
        StoreCellphoneS db = new StoreCellphoneS();
        // GET: Cart
        public List<CartItem> GetCart()
        {
            List<CartItem> LstCart = Session["Cart"] as List<CartItem>;
            if(LstCart == null)
            {
                LstCart = new List<CartItem>();
                Session["Cart"] = LstCart;
                return LstCart;
            }
            return LstCart;
        }
        /*public ActionResult AddToCart(int id, int cfid, string url)
        {
             //Kiểm tra sản phẩm
            var sp = new ProductDAO().GetById(id);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            //Lấy giỏ hàng
            List<CartItem> LstCart = GetCart();
            //Nếu sản phẩm đã tồn tại
            CartItem CartCheck = LstCart.SingleOrDefault(n => n.masp == id && n.mach==cfid);
            if (CartCheck != null)
            {
                if (sp.SoLuongTon < CartCheck.soluong)
                {
                    SetAlert("Số Lượng Sản Phẩm Không Đủ", "warning");
                }
                CartCheck.soluong++;
                CartCheck.thanhtien = CartCheck.soluong * CartCheck.dongia;
                return Redirect(url);
            }
            
            CartItem itemcart = new CartItem(id,cfid);
            if (sp.SoLuongTon < itemcart.soluong) SetAlert("Số Lượng Sản Phẩm Không Đủ", "warning"); ;
                LstCart.Add(itemcart);
            return Redirect(url);
        }*/
        public ActionResult AddToCart(int id, int cfid)
        {
            //Kiểm tra sản phẩm
            var sp = new ProductDAO().GetById(id);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            //Lấy giỏ hàng
            List<CartItem> LstCart = GetCart();
            //Nếu sản phẩm đã tồn tại
            CartItem CartCheck = LstCart.SingleOrDefault(n => n.masp == id && n.mach == cfid);
            if (CartCheck != null)
            {
                if (sp.SoLuongTon < CartCheck.soluong)
                {
                    SetAlert("Số Lượng Sản Phẩm Không Đủ", "warning");
                }
                CartCheck.soluong++;
                CartCheck.thanhtien = CartCheck.soluong * CartCheck.dongia;
                return Redirect(Request.UrlReferrer.ToString());
            }

            CartItem itemcart = new CartItem(id, cfid);
            if (sp.SoLuongTon < itemcart.soluong) SetAlert("Số Lượng Sản Phẩm Không Đủ", "warning"); ;
            LstCart.Add(itemcart);
            return Redirect(Request.UrlReferrer.ToString());
        }
        [HttpGet]
        public ActionResult UpdateCart(int id, int cfid)
        {
            if (Session["Cart"] == null)
            {
                return RedirectToAction("Index", "HomeClient");
            }
            var sp = new ProductDAO().GetById(id);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            List<CartItem> LstCart = GetCart();
            CartItem CartCheck = LstCart.SingleOrDefault(n => n.masp == id && n.mach == cfid);
            if (CartCheck == null) return RedirectToAction("Index", "HomeClient");
            ViewBag.Cart = LstCart;
            return View(CartCheck);
        }
        public ActionResult DeleteCart(int id, int cfid)
        {
            if (Session["Cart"] == null)
            {
                return RedirectToAction("Index", "HomeClient");
            }
            var sp = new ProductDAO().GetById(id);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            List<CartItem> LstCart = GetCart();
            CartItem CartCheck = LstCart.SingleOrDefault(n => n.masp == id && n.mach == cfid);
            if (CartCheck == null) return RedirectToAction("Index", "HomeClient");
            LstCart.Remove(CartCheck);
            return RedirectToAction("Index");
        }
        [HttpPost]
        public ActionResult UpdateCart(CartItem cartItem)
        {
            var sp = new ProductDAO().GetById(cartItem.masp);
            if (sp.SoLuongTon < cartItem.soluong)
            {
                return null;
            }
            List<CartItem> LstCart = GetCart();
            CartItem ItemUpdate = LstCart.Find(n => n.masp == cartItem.masp && n.mach == cartItem.mach);
            ItemUpdate.soluong = cartItem.soluong;
            if (ItemUpdate.soluong == 0) DeleteCart(ItemUpdate.masp, ItemUpdate.mach);
            ItemUpdate.thanhtien = ItemUpdate.soluong * ItemUpdate.dongia;
            return RedirectToAction("Index");
        }
        public ActionResult Order(DonDatHang order, KhachHang customer)
        {
            if (Session["Cart"] == null)
                return RedirectToAction("Index", "HomeClient");
            KhachHang Customer = new KhachHang();
            if (Session["Customer"] == null)
            {
                Customer = customer;
                db.KhachHang.Add(Customer);
                db.SaveChanges();
            }
            else
            {
                ThanhVien mem = Session["Customer"] as ThanhVien;
                Customer.TenKH = mem.HoTen;
                Customer.DiaChi = mem.DiaChi;
                Customer.Email = mem.Email;
                Customer.SoDienThoai = mem.SoDienThoai;
                db.KhachHang.Add(Customer);
                db.SaveChanges();
            }
            order.MaKH = Customer.MaKH;
            var dao = new OrderDAO().Order(order);
            List<CartItem> LstCart = GetCart();
            if (dao)
            {
                foreach (var item in LstCart)
                {
                    ChiTietDonDatHang dtorder = new ChiTietDonDatHang();

                    dtorder.MaDDH = order.MaDDH;
                    dtorder.MaSP = item.masp;
                    dtorder.TenSP = item.tensp;
                    dtorder.SoLuong = item.soluong;
                    dtorder.DonGia = item.dongia;
                    db.ChiTietDonDatHang.Add(dtorder);
                    db.SaveChanges();
                }
            }
            Session["Cart"] = null;
            return RedirectToAction("Index");
        }
        public double Total()
        {
            List<CartItem> LstCart = Session["Cart"] as List<CartItem>;
            if (LstCart == null)
            {
                return 0;
            }
            return LstCart.Sum(n => n.soluong);
        }
        public decimal TotalMoney()
        {
            List<CartItem> LstCart = Session["Cart"] as List<CartItem>;
            if (LstCart == null)
            {
                return 0;
            }
            return LstCart.Sum(n => n.thanhtien);
        }
        public ActionResult Index()
        {
            List<CartItem> cart = GetCart();
            return View(cart);
        }
    }
}