using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace shanuMVCUserRoles.Models
{
    public class Mentee
    {
        [ForeignKey("User")]                        // string UserID { get; set; }
        public string MenteeID { get; set; }


        [AllowHtml]
        public byte[] Image { get; set; }

        [Required]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [Required]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }

        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        public string Email { get; set; }
        // public string Email { get; set; 

        [Required]
        [Display(Name = "Degree")]
        public string Degree { get; set; }

        [Required]
        [Display(Name = "Cell Phone Number")]
        public string CellPhoneNumber { get; set; }

        [Required]
        [Display(Name = " Date Of Birth")]
        public DateTime DateOfBirth { get; set; }

        public int Points { get; set; }

        [Required]
        [Display(Name = "Province")]
        public string Province { get; set; }

        public int Rating { get; set; }

        [Required]
        [Display(Name = "Learning Institution")]
        public string LearningInstitution { get; set; }

        [Required]
        [Display(Name = "Preferred Job Industry")]
        public string PreferredJobIndustry { get; set; }

        [Required]
        [Display(Name = "Preferred Work Location")]
        public string PreferredWorkLocation { get; set; }

        public bool Status { get; set; }

        public virtual Administrator Administrator { get; set; }
        public virtual ICollection<Pair> Pair { get; set; }
        public virtual ICollection<Evaluation> Evaluation { get; set; }
        public virtual ApplicationUser User { get; set; }

    }
}