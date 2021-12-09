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
        
    }
}