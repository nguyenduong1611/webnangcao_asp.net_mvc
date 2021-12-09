using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CellphoneS.Models.EF;
namespace CellphoneS.Models.DAO
{
    [Serializable]
    public class CartItem
    {
        public int masp { get; set; }
        public string tensp { get; set; }
        public int soluong { get; set; }
        public string hinhanh { get; set; }
        public decimal dongia { get; set; }
        public decimal thanhtien { get; set; }
        public string cauhinh { get; set; }
        public int mach { get; set; }

        public CartItem(int id, int cfid)
        {
            StoreCellphoneS db = new StoreCellphoneS();
            masp = id;
            mach = cfid;
            soluong = 1;
            SanPham sp = db.SanPham.Single(n => n.MaSP == id);
            CauHinh cf = db.CauHinh.Single(n => n.MaCH == cfid);
            tensp = sp.TenSP;
            hinhanh = sp.HinhAnh1;
            dongia = sp.DonGia.Value;
            cauhinh = cf.TenCH;
            thanhtien = soluong * dongia;
        }
        public CartItem() { }
    }
}