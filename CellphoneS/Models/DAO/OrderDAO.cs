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
    }
}