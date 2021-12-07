using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CellphoneS.Models.EF;

namespace CellphoneS.Models.DAO
{
    public class NewDAO
    {
        StoreCellphoneS db = null;
        public NewDAO()
        {
            db = new StoreCellphoneS();
        }
        public TinTuc promotion()
        {
            return db.TinTuc.SingleOrDefault(n => n.TinKhuyenMai == true && n.TrangThai == true);
        }
        public IEnumerable<TinTuc> news()
        {
            return db.TinTuc.Where(n => n.TinMoi == true && n.TrangThai == true);
        }
        public IEnumerable<TinTuc> techguild()
        {
            return db.TinTuc.Where(n => n.HuongDanKyThuat == true && n.TrangThai == true);
        }

    }
}