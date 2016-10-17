using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace shanuMVCUserRoles.Models
{
    public class Mentor
    {
        [ForeignKey("User")]
        public string MentorID { get; set; }


        [AllowHtml]

        //public HttpPostedFileBase Image { get; set; }
        public byte[] Image { get; set; }

        [Required]
        [Display(Name = " First Name")]
        public string FirstName { get; set; }

        [Required]
        [Display(Name = " Last Name")]
        public string LastName { get; set; }

        [Required]
        [Display(Name = " Date Of Birth")]
        public DateTime DateOfBirth { get; set; }

        [Required]
        [Display(Name = " Archivement")]
        public string Archievement { get; set; }

        [Required]
        [Display(Name = " Rating")]
        public int Rating { get; set; }

        [Required]
        [Display(Name = "Job Industry")]
        public string JobIndustry { get; set; }

        [Required]
        [Display(Name = "Work Location Province")]
        public string WorkLocationProvince { get; set; }

        [Required]
        [Display(Name = "Years of Experience")]
        public int YearsOfExperience { get; set; }

        [Required]
        [EmailAddress]
        [Display(Name = "Email")]
        public string Email { get; set; }
        // public string Email { get; set; }

        [Required]
        [Display(Name = "Cellphone Number")]
        public string CellPhoneNumber { get; set; }

        [Required]
        [Display(Name = "Company Name")]
        public string Company { get; set; }

        public bool Status { get; set; }


        [Display(Name = "Number Of Mentees")]
        public int NumberOfMentees { get; set; }

        public int Points { get; set; }

        public virtual Administrator Administrator { get; set; }
        public virtual ICollection<Pair> Pair { get; set; }
        public virtual ICollection<Evaluation> Evaluation { get; set; }
        public virtual ApplicationUser User { get; set; }
    }