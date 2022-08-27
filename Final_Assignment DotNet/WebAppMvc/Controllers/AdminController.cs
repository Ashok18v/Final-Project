using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using WebAppMvc.Data;
using WebAppMvc.EmailSending;
using WebAppMvc.Models;
using static Microsoft.AspNetCore.Identity.UI.V4.Pages.Account.Internal.ExternalLoginModel;

namespace WebAppMvc.Controllers
{
    public class AdminController : Controller
    {
        private readonly AdminDbContext _adminDbContext;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly UserManager<RegisterCustomFields> _userManager;
        private List<AdminModel> list = new List<AdminModel>();
        private List<ApprovalRejected> aprrovalLIst = new List<ApprovalRejected>();

        public AdminController(AdminDbContext adminDbContext, RoleManager<IdentityRole> roleManager, UserManager<RegisterCustomFields> userManager)
        {
            _adminDbContext = adminDbContext;
            _roleManager = roleManager;
            _userManager = userManager;
        }

        

        [Authorize(Policy = "Admin")]
        public IActionResult Index()
        {
            if (_adminDbContext.admin == null)
            {
                return NoContent();
            }
            list = _adminDbContext.admin.ToList();
            return View(list);
        }
        [Authorize(Policy = "Admin")]
        public ActionResult ApprovalStatus()
        {
            if (_adminDbContext.approvalRejected == null)
            {
                return NoContent();
            }
            aprrovalLIst = _adminDbContext.approvalRejected.ToList();
            var datalist = aprrovalLIst.OrderBy(o => o.Email);
            return View(datalist);
        }
        [Authorize(Policy = "Admin")]
        public ActionResult Rejectedstatus()
        {
            return View();
        }
        [Authorize(Policy = "Admin")]
        public async Task<IActionResult> DeleteApprovalRejected(string email)
        {
            if (_adminDbContext.approvalRejected == null)
            {
                return NoContent();
            }
            var approvalRejected = _adminDbContext.approvalRejected.Find(email);
            if (approvalRejected == null)
            {
                return NotFound();
            }
            _adminDbContext.approvalRejected.Remove(approvalRejected);
            await _adminDbContext.SaveChangesAsync();
            return RedirectToAction("ApprovalStatus");
        }
        public IActionResult create()
        {
            return View();
        }
        public IActionResult Registering(AdminModel inputModel)
        {
            if (_adminDbContext.admin == null)
            {
                return NoContent();
            }
            inputModel.RoleName = "Operator";
            _adminDbContext.admin.Add(inputModel);
            _adminDbContext.SaveChanges();
             EmailSend emailsending=new EmailSend();
            emailsending.SendMailMethod(inputModel.Email, inputModel.Email);

            return View();
        }
        [HttpPost]
        public async Task<IActionResult> EmailChecking(string email)
        {
            if(email == null)
            {
                return Json("Email Should not be Empty");
            }
            var result = await _userManager.FindByEmailAsync(email);
            if (result != null)
            {
                return Json("Email is Already Exist");
            }
            if (_adminDbContext.admin == null)
            {
                return NoContent();
            }
            var result1 = _adminDbContext.admin.Where(e => e.Email == email).FirstOrDefault();

            if (result1 != null)
            {

                return Json("Email is already Registered waiting for approval");
            }
            if (_adminDbContext.approvalRejected== null)
            {
                return NoContent();
            }
            var result2 = _adminDbContext.approvalRejected.Where(e => e.Email == email).FirstOrDefault();
            if (result2 != null)
            {

                return Json(" This Email Rejected Please Provide different");
            }
            return Json("Accepted");
        }
      
        [HttpPost]
        public async Task<IActionResult> PostdataApporval(int id)
        {
            if (_adminDbContext.admin == null)
            {
                return NoContent();
            }
            if (_adminDbContext.approvalRejected == null)
            {
                return NoContent();
            }
            var result = _adminDbContext.admin.Find(id);
            if (result == null)
            {
                return NotFound();
            }
            var user = new RegisterCustomFields()
            {
                Email = result.Email,
                PAN_Number = result.PAN_Number,
                UserName = result.Email,
            };
            var approval = new ApprovalRejected()
            {
                Email = result.Email,
                Status = "Success"
            };
            var roles = _roleManager.FindByNameAsync(result.RoleName).Result;
            await _userManager.CreateAsync(user, result.Password);
            await _userManager.AddToRoleAsync(user, roles.Name);
            _adminDbContext.approvalRejected.Add(approval);
            _adminDbContext.SaveChanges();
            var details = _adminDbContext.admin.Where(e => e.Email == result.Email).FirstOrDefault();
            if (details == null)
            {
                return NotFound();
            }
            _adminDbContext.admin.Remove(details);
            _adminDbContext.SaveChanges();
            return Json("Successfully Approved");
        }
        [HttpPost]
        public IActionResult rejected(int id)
        {
            var details = _adminDbContext.admin.Find(id);
            if (details == null)
            {
                return NotFound();
            }
            _adminDbContext.admin.Remove(details);
            _adminDbContext.SaveChanges();
            var approval = new ApprovalRejected()
            {
                Email = details.Email,
                Status = "Rejected"
            };
            _adminDbContext.approvalRejected.Add(approval);
            _adminDbContext.SaveChanges();
            return Json("Rejected");

        }


    }
}
