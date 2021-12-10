namespace CellphoneS.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NhaCungCap")]
    public partial class NhaCungCap
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NhaCungCap()
        {
            PhieuNhap = new HashSet<PhieuNhap>();
            SanPham = new HashSet<SanPham>();
        }
        [Display(Name = "Mã nhà cung cấp")]
        [Key]
        public int MaNCC { get; set; }

        [Display(Name = "Tên nhà cung cấp")]
        [StringLength(50)]
        public string TenNCC { get; set; }

        [Display(Name = "Địa chỉ")]
        [StringLength(50)]
        public string DiaChi { get; set; }

        [Display(Name = "Email")]
        [StringLength(50)]
        public string Email { get; set; }

        [Display(Name = "Số điện thoại")]
        [StringLength(15)]
        public string SoDienThoai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhieuNhap> PhieuNhap { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SanPham> SanPham { get; set; }
    }
}
