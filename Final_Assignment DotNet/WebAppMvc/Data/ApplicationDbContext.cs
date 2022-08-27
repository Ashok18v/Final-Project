using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using WebAppMvc.Models;

namespace WebAppMvc.Data
{
    public class ApplicationDbContext : IdentityDbContext<RegisterCustomFields>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

    }
}