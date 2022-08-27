using System.ComponentModel.DataAnnotations;

namespace WebAppMvc.Models
{
    public class MallDetailsModel
    {
        
        public int Id { get; set; }
        [Required(ErrorMessage = "Please enter Name"), MaxLength(50)]
        [Display(Name ="Name For Shopping Mall")]
        
        public string ShoppingMallName { get; set; } = null!;
        [Required(ErrorMessage = "Please enter City"), MaxLength(50)]
        public string City { get; set; } = null!;
        [Required(ErrorMessage = "Please enter State"), MaxLength(50)]
        public string State { get; set; } = null!;
        [Required(ErrorMessage = "Please enter Year")]
        [Display(Name = "Established Year")]
        public int Built_in_Year { get; set; }
    }
}
