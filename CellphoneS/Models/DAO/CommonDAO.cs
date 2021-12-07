using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CellphoneS.Models.EF;
namespace CellphoneS.Models.DAO
{
    public class CommonDAO
    {
        StoreCellphoneS db = null;
        public CommonDAO()
        {
            db = new StoreCellphoneS();
        }
        public QuangCao ads()
        {
            return db.QuangCao.SingleOrDefault(n => n.TrangThai == true);
        }
        public IEnumerable<Footer> footer()
        {
            return db.Footer.Where(n => n.TrangThai == true);
        }
        /*public string lastid()
        {
            int a = 0;
            List<int> lstid = new List<int>();
            IEnumerable<int> id = from temp in db.ChiTietDonDatHang select temp.MaCTDDH;
            foreach (var temp in id)
            {
                a = int.Parse(temp);
                lstid.Add(int.Parse(temp));
            }
            lstid.Sort();
            int max = lstid.Last();
            max++;
            return max.ToString();
        }*/
    }
}