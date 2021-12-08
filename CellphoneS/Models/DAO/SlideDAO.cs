using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CellphoneS.Models.EF;
namespace CellphoneS.Models.DAO
{
    public class SlideDAO
    {
        StoreCellphoneS db = null;
        public SlideDAO()
        {
            db = new StoreCellphoneS();
        }
        public IEnumerable<Slide> slide()
        {
            return db.Slide;
        }
    }
}