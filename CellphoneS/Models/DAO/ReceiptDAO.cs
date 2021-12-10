using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CellphoneS.Models.EF;
namespace CellphoneS.Models.DAO
{
    public class ReceiptDAO
    {
        StoreCellphoneS db = new StoreCellphoneS();
        public bool insert(PhieuNhap entity)
        {
            try
            {
                db.PhieuNhap.Add(entity);
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
    }
}