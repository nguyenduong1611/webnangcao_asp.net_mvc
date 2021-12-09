using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CellphoneS.Models.EF;
namespace CellphoneS.Models.DAO
{
    public class SupplierDAO
    {
        StoreCellphoneS db = new StoreCellphoneS();
        public List<NhaCungCap> sup()
        {
            return db.NhaCungCap.ToList();
        }
    }
}