using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CellphoneS.Models.EF;
using PagedList;
namespace CellphoneS.Models.DAO
{
    public class ProductDAO
    {
        StoreCellphoneS db = null;
        public ProductDAO()
        {
            db = new StoreCellphoneS();
        }
        public SanPham GetById(int id)
        {
            return db.SanPham.SingleOrDefault(n => n.MaSP == id);
        }
        public IEnumerable<SanPham> products()
        {
            return db.SanPham.Where(n => n.TrangThai == true);
        }
        public IEnumerable<SanPham> page_list_product(int page, int pageSize)
        {
            return db.SanPham.Where(n => n.TrangThai == true).OrderBy(n => n.DonGia).ToPagedList(page, pageSize);
        }
        public IEnumerable<CauHinh> option(int id)
        {
            return db.CauHinh.Where(n => n.MaSP == id);
        }
        public CauHinh config(int id)
        {
            return db.CauHinh.FirstOrDefault(n => n.MaSP == id);
        }
        public SanPham product(int id)
        {
            return db.SanPham.SingleOrDefault(n => n.MaSP == id && n.TrangThai == true);
        }
        public IEnumerable<SanPham> Tablet()
        {
            return db.SanPham.Where(n => n.MaLoaiSP == 7 && n.TrangThai == true);
        }
        public IEnumerable<SanPham> Apple()
        {
            return db.SanPham.Where(n => n.MaNSX == 1 && n.TrangThai == true);
        }
        public IEnumerable<SanPham> Sound()
        {
            return db.SanPham.Where(n => n.MaLoaiSP == 2 && n.TrangThai == true);
        }
        public IEnumerable<SanPham> New_Products()
        {
            return db.SanPham.Where(n => n.Moi == true && n.TrangThai == true);
        }
        public List<SanPham> Related(int id)
        {
            var pro = db.SanPham.Find(id);
            return db.SanPham.Where(n => n.MaSP != id && n.MaLoaiSP == pro.MaLoaiSP).ToList();
        }
        public IEnumerable<SanPham> showproducts(int MaLoaiSP, string MaNSX)
        {
            int Mansx = Convert.ToInt32(MaNSX);
            return db.SanPham.Where(x =>x.MaNSX == Mansx && x.MaLoaiSP == MaLoaiSP);
        }
        public IEnumerable<SanPham> showbycategories(int MaLoaiSP)
        {
            return db.SanPham.Where(x => x.MaLoaiSP == MaLoaiSP);
        }
        public bool Insert(SanPham pro)
        {
            /*db.SanPham.Add(pro);
            db.SaveChanges();
            return true;*/
            try
            {
                var sp = db.SanPham.Add(pro);
                sp.HinhAnh3 = pro.HinhAnh3;
                sp.HinhAnh2 = pro.HinhAnh2;
                sp.HinhAnh1 = pro.HinhAnh1;
                sp.DonGia = pro.DonGia;
                sp.TenTat = pro.TenTat;
                sp.TrangThai = pro.TrangThai;
                sp.Moi = pro.Moi;
                sp.MoTa = pro.MoTa;
                sp.NgayCapNhat = DateTime.Now;
                db.SaveChanges();
                return true;


            }
            catch
            {
                return false;
            }
        }
        public bool update(SanPham entity)
        {
            try
            {
                var sp = db.SanPham.Find(entity.MaSP);
                sp.HinhAnh3 = entity.HinhAnh3;
                sp.HinhAnh2 = entity.HinhAnh2;
                sp.HinhAnh1 = entity.HinhAnh1;
                sp.DonGia = entity.DonGia;
                sp.TenTat = entity.TenTat;
                sp.TrangThai = entity.TrangThai;
                sp.Moi = entity.Moi;
                sp.MoTa = entity.MoTa;
                sp.NgayCapNhat = DateTime.Now;
                db.SaveChanges();
                return true;


            }
            catch
            {
                return false;
            }
        }
    }
}