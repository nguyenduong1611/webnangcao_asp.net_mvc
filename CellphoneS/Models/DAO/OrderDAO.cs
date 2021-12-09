using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CellphoneS.Models.EF;
namespace CellphoneS.Models.DAO
{
    public class OrderDAO
    {
        StoreCellphoneS db = new StoreCellphoneS();
        public bool Order(DonDatHang order)
        {
            order.NgayDat = DateTime.Now;
            order.TinhTrangGiaoHang = false;
            order.DaThanhToan = false;
            order.UuDai = 0;
            order.HuyDon = false;
            order.TrangThai = true;
            db.DonDatHang.Add(order);
            db.SaveChanges();
            return true;
        }
        public IEnumerable<DonDatHang> GetOrder()
        {
            return db.DonDatHang.Where(n => n.TrangThai == true && n.TinhTrangGiaoHang == false && n.DaThanhToan == false && n.HuyDon == false);
        }
        public bool accept(int id)
        {
            var order = db.DonDatHang.Find(id);
            var detail_order = db.ChiTietDonDatHang.Where(n => n.MaDDH == id);
            foreach (var item in detail_order)
            {
                SanPham sp = db.SanPham.Find(item.MaSP);
                sp.SoLuongTon -= item.SoLuong;
            }
            order.DaThanhToan = true;
            db.SaveChanges();
            return true;

        }
        public IEnumerable<DonDatHang> Paid()
        {
            return db.DonDatHang.Where(n => n.TrangThai == true && n.DaThanhToan == true && n.HuyDon == false && n.TinhTrangGiaoHang == false);
        }
        public bool delivery(int id)
        {
            var order = db.DonDatHang.Find(id);
            order.TinhTrangGiaoHang = true;
            order.NgayGiao = DateTime.Now;
            db.SaveChanges();
            return true;

        }
        public IEnumerable<DonDatHang> Delivery()
        {
            return db.DonDatHang.Where(n => n.TrangThai == true && n.DaThanhToan == true && n.HuyDon == false && n.TinhTrangGiaoHang == true);
        }
    }
}