using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CellphoneS.Models.EF;
namespace CellphoneS.Models.DAO
{
    public class ProducerDAO
    {
        StoreCellphoneS db = new StoreCellphoneS();
        public List<NhaSanXuat> procer()
        {
            return db.NhaSanXuat.ToList();
        }
    }
}