using LuongTheLuc.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace LuongTheLuc.Models
{
    public class GioHang
    {
        PhimDataContext db = new PhimDataContext();
        [Display(Name = "Mã lịch chiếu")]
        public string malich { get; set; }

        [Display(Name = "Mã phim")]
        public int maphim { get; set; }

        [Display(Name = "Giá")]
        public decimal gia { get; set; }
        [Display(Name = "Số Lượng")]
        public int iSoLuong { get; set; }
        [Display(Name = "Thành tiền")]
        public decimal dThanhTien
        {
            get
            {
                return iSoLuong * gia;
            }
        }
        public GioHang(string id)
        {
            this.malich = id;
            LichChieu phim = db.LichChieux.SingleOrDefault(p=>p.malich  == id);
            maphim = phim.Phim.maphim;
            malich = phim.malich;
            gia = (decimal)phim.gia;
            iSoLuong = 1;
        }

    }
}