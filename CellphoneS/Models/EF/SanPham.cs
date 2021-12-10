namespace CellphoneS.Models.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SanPham")]
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            BinhLuan = new HashSet<BinhLuan>();
            CauHinh = new HashSet<CauHinh>();
            ChiTietDonDatHang = new HashSet<ChiTietDonDatHang>();
            ChiTietPhieuNhap = new HashSet<ChiTietPhieuNhap>();
        }

        [Key]
        public int MaSP { get; set; }

        [Display(Name = "Tên sản phẩm")]
        public string TenSP { get; set; }

        [Display(Name = "Tên đầy đủ")]
        [StringLength(250)]
        public string TenTat { get; set; }

        [Display(Name = "Tên URL")]
        [StringLength(250)]
        public string TenURL { get; set; }

        [Display(Name = "Đơn giá")]
        public decimal? DonGia { get; set; }

        [Display(Name = "Mô tả")]
        public string MoTa { get; set; }

        [Display(Name = "Số lượng tồn")]
        public int? SoLuongTon { get; set; }

        [Display(Name = "Mã nhà cung cấp")]
        public int? MaNCC { get; set; }

        [Display(Name = "Mã nhà sản xuất")]
        public int? MaNSX { get; set; }

        [Display(Name = "Mã loại sản phẩm")]
        public int? MaLoaiSP { get; set; }

        [Display(Name = "Trạng thái")]
        public bool? TrangThai { get; set; }

        [Display(Name = "Ngày cập nhật")]
        public DateTime? NgayCapNhat { get; set; }

        [Display(Name = "Sản phẩm mới")]
        public bool? Moi { get; set; }

        [Display(Name = "Hình ảnh 1")]
        public string HinhAnh1 { get; set; }

        [Display(Name = "Hình ảnh 2")]
        public string HinhAnh2 { get; set; }

        [Display(Name = "Hình ảnh 3")]
        public string HinhAnh3 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BinhLuan> BinhLuan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CauHinh> CauHinh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonDatHang> ChiTietDonDatHang { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietPhieuNhap> ChiTietPhieuNhap { get; set; }

        public virtual LoaiSanPham LoaiSanPham { get; set; }

        public virtual NhaCungCap NhaCungCap { get; set; }

        public virtual NhaSanXuat NhaSanXuat { get; set; }
    }
}
