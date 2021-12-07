namespace CellphoneS.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Footer")]
    public partial class Footer
    {
        public int ID { get; set; }

        [StringLength(50)]
        public string TieuDe { get; set; }

        [StringLength(250)]
        public string Link { get; set; }

        public bool? TrangThai { get; set; }
    }
}
