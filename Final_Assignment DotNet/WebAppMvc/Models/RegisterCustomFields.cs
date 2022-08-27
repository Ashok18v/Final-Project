using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace WebAppMvc.Models
{
    public class RegisterCustomFields: IdentityUser
    {
        [MaxLength(20)]
        public string PAN_Number { get; set; } = null!;
        
    }
}
