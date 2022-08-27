using System.ComponentModel.DataAnnotations;

namespace WebAppMvc.Models
{
    public class AdminModel
    {
        [Key]
        public int Id { get; set; } 
        [MaxLength(50)]
        [Required]
        [EmailAddress(ErrorMessage = "Please enter correct email")]
        [Display(Name = "Email")]
        public string Email { get; set; } = null!;
        [Required]
        [MaxLength(20)]
        [Display(Name = "PAN Number")]
        public string PAN_Number { get; set; } = null!;
        [Required]
        [StringLength(30, ErrorMessage = "The {0} must be at least {2} and at max {1} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; } = null!;
        [DataType(DataType.Password)]
        [Display(Name = "Confirm password")]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; } = null!;
        [MaxLength(20)]
        public string RoleName { get; set; } = null!;
    }
}
