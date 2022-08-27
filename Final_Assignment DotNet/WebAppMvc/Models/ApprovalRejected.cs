using System.ComponentModel.DataAnnotations;

namespace WebAppMvc.Models
{
    public class ApprovalRejected
    {
        [Key]
        public string Email { get; set; } = null!;
        public string Status { get; set; } = null!;
    }
}
