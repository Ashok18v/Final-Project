using Microsoft.EntityFrameworkCore;
using WebAppMvc.Models;

namespace WebAppMvc.Data
{
    public class AdminDbContext:DbContext
    {
        public DbSet<AdminModel>? admin { get; set; }
        public DbSet<ApprovalRejected>? approvalRejected { get; set; }
        public AdminDbContext()
        {

        }
        public AdminDbContext(DbContextOptions<AdminDbContext> options)
           : base(options)
        {
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=LAPTOP-2D3FN7GQ;Database= ShoppingMall;Trusted_Connection=True;");
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AdminModel>()
                .HasIndex(u => u.Email)
                .IsUnique();
            modelBuilder.Entity<ApprovalRejected>()
                .HasIndex(u => u.Email).IsUnique();
        }
    }
}
