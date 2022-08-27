using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace WebAppMvc.Data;

public class WebAppMvcContext : IdentityDbContext<IdentityUser>
{
    public WebAppMvcContext(DbContextOptions<WebAppMvcContext> options)
        : base(options)
    {
    }

}
