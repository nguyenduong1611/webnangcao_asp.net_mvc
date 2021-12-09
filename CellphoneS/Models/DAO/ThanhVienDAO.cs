using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CellphoneS.Models.EF;
namespace CellphoneS.Models.DAO
{
    public class ThanhVienDAO
    {
        StoreCellphoneS db = null;
        public ThanhVienDAO()
        {
            db = new StoreCellphoneS();
        }
        public int login(ThanhVien tv)
        {
            /*return db.ThanhVien.Where(x => x.TaiKhoan == TK && x.MatKhau == MK).Count();*/
            return db.ThanhVien.Where(x => x.TaiKhoan == tv.TaiKhoan && x.MatKhau == tv.MatKhau).Count();
        }
        public IEnumerable<ThanhVien> getdata(int mathanhvien)
        {
            return db.ThanhVien.Where(x => x.MaThanhVien == mathanhvien);
        }

    }
}