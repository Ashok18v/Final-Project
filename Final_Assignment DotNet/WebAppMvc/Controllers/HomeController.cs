using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebAppMvc.Models;

namespace WebAppMvc.Controllers
{
    public class HomeController : Controller
    {
        private readonly SignInManager<RegisterCustomFields> signInManager;
        private readonly UserManager<RegisterCustomFields> userManager;

        public HomeController(SignInManager<RegisterCustomFields> SignInManager, UserManager<RegisterCustomFields> UserManager)
        {
            signInManager = SignInManager;
            userManager = UserManager;
        }
        public async Task<IActionResult> Index()
        {
            if (signInManager.IsSignedIn(User))
            {
                if (User.Identity == null)
                {
                    return NoContent();
                }
                var email = User.Identity.Name;
                var userdetails = await userManager.FindByEmailAsync(email);
                var role = await userManager.GetRolesAsync(userdetails);
                foreach (var item in role)
                {
                    if (item == "Admin")
                    {
                        return RedirectToAction("Index", "Admin");
                    }
                    else
                    {
                        return RedirectToAction("IndexForMall", "MallDetails");
                    }
                }
            }
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}