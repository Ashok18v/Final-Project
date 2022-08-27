using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using WebAppMvc.Data;
using WebAppMvc.Models;

var builder = WebApplication.CreateBuilder(args);
var connectionString = builder.Configuration.GetConnectionString("WebAppMvcContextConnection") ?? throw new InvalidOperationException("Connection string 'WebAppMvcContextConnection' not found.");

builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(connectionString));
builder.Services.AddDbContext<AdminDbContext>(options =>
    options.UseSqlServer(connectionString));


builder.Services.AddIdentity<RegisterCustomFields,IdentityRole>(options => options.SignIn.RequireConfirmedAccount = false).AddDefaultUI()
    .AddEntityFrameworkStores<ApplicationDbContext>();
builder.Services.AddAuthorization(options => {
    options.AddPolicy("Readonly", builder => builder.RequireRole("Operator"));
    options.AddPolicy("Admin", builder => builder.RequireRole("Admin"));
    
});

builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseAuthentication();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
app.MapRazorPages();

app.Run();
