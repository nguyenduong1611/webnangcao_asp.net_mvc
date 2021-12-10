namespace CellphoneS.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DonDatHang")]
    public partial class DonDatHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DonDatHang()
        {
            ChiTietDonDatHang = new HashSet<ChiTietDonDatHang>();
        }

        [Key]
        [Display(Name = "Mã đơn đặt hàng")]
        public int MaDDH { get; set; }

        [Display(Name = "Ngày đặt")]
        public DateTime? NgayDat { get; set; }

        [Display(Name = "Tình trạng giao hàng")]
        public bool? TinhTrangGiaoHang { get; set; }

        [Display(Name = "Ngày giao")]
        public DateTime? NgayGiao { get; set; }

        [Display(Name = "Đã thanh toán")]
        public bool? DaThanhToan { get; set; }


        public int? MaKH { get; set; }

        [Display(Name = "Ưu đãi")]
        public int? UuDai { get; set; }

        [Display(Name = "Hủy đơn")]
        public bool? HuyDon { get; set; }

        [Display(Name = "Trạng thái")]
        public bool? TrangThai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonDatHang> ChiTietDonDatHang { get; set; }

        public virtual KhachHang KhachHang { get; set; }
    }
}
