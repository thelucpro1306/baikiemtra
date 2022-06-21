using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace LuongTheLuc.Models
{
    public partial class PhimDataContext : DbContext
    {
        public PhimDataContext()
            : base("name=PhimDataContext")
        {
        }

        public virtual DbSet<ChiTiet> ChiTiets { get; set; }
        public virtual DbSet<HoaDon> HoaDons { get; set; }
        public virtual DbSet<KhachHang> KhachHangs { get; set; }
        public virtual DbSet<LichChieu> LichChieux { get; set; }
        public virtual DbSet<Phim> Phims { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ChiTiet>()
                .Property(e => e.malich)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<HoaDon>()
                .HasMany(e => e.ChiTiets)
                .WithRequired(e => e.HoaDon)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<KhachHang>()
                .Property(e => e.matkhau)
                .IsUnicode(false);

            modelBuilder.Entity<KhachHang>()
                .Property(e => e.dienthoai)
                .IsUnicode(false);

            modelBuilder.Entity<LichChieu>()
                .Property(e => e.malich)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<LichChieu>()
                .Property(e => e.gio)
                .IsUnicode(false);

            modelBuilder.Entity<LichChieu>()
                .Property(e => e.gia)
                .HasPrecision(18, 0);

            modelBuilder.Entity<LichChieu>()
                .HasMany(e => e.ChiTiets)
                .WithRequired(e => e.LichChieu)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Phim>()
                .Property(e => e.hinh)
                .IsUnicode(false);
        }
    }
}
