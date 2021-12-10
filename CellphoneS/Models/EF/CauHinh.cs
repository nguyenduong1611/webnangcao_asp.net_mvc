namespace CellphoneS.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CauHinh")]
    public partial class CauHinh
    {
        [Key]
        public int MaCH { get; set; }

        [Display(Name = "Màn hình")]
        [StringLength(50)]
        public string ManHinh { get; set; }

        [Display(Name = "Hệ điều hành")]
        [StringLength(50)]
        public string HeDieuHanh { get; set; }

        [StringLength(50)]
        public string Camera { get; set; }

        [StringLength(50)]
        public string CPU { get; set; }

        [StringLength(10)]
        public string GPU { get; set; }

        [StringLength(10)]
        public string Ram { get; set; }

        [StringLength(10)]
        public string Rom { get; set; }

        [StringLength(10)]
        public string Pin { get; set; }

        public int? MaSP { get; set; }

        [StringLength(250)]
        public string TenCH { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
