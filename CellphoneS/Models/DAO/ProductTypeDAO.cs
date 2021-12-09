using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CellphoneS.Models.EF;
namespace CellphoneS.Models.DAO
{
    public class ProductTypeDAO
    {
        StoreCellphoneS db = new StoreCellphoneS();
        public IEnumerable<LoaiSanPham> type()
        {
            return db.LoaiSanPham;
        }
    }
}