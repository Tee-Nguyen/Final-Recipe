using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyRecipe.Models.Recipes
{
    public class Recipe : IValidatableObject
    {
        public int Id { get; set; }
        
        [Required(ErrorMessage = "Required field")]
        [MaxLength(100)]
        [Column(TypeName = "varchar(200)")]
        [Display(Name = "Name")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Required field")]
        [Display(Name = "Type of dish")]
        public RecipeType Type { get; set; }

        [Required(ErrorMessage = "Required field")]
        [Range(1,5, ErrorMessage = "Value : 1-5")]
        [Display(Name = "Difficulty")]
        public int Difficulty { get; set; }

        [DefaultValue(0)]
        [Required(ErrorMessage = "Required field")]
        [Range(0,int.MaxValue, ErrorMessage = "Positive number required")]
        [Display(Name = "Preparation")]
        public int PreparationTime { get; set; }

        [DefaultValue(0)]
        [Required(ErrorMessage = "Required field")]
        [Range(0, int.MaxValue, ErrorMessage = "Positive number required")]
        [Display(Name = "Cooking")]
        public int CookingTime { get; set; }
        
        [NotMapped]
        public int Duration { get; private set; }

        [Required(ErrorMessage = "Required field")]
        [Range(1, int.MaxValue, ErrorMessage = "Minimum: 1 Person.")]
        [Display(Name = "People")]
        public int PeopleFor { get; set; }

        [NotMapped]
        [Display(Name = "Recipe picture")]
        public IFormFile? ImageFile { get; set; }

        [Column(TypeName = "nvarchar(50)")]
        [ValidateNever]
        public string ImageName { get; set; }

        [Column(TypeName = "nvarchar(450)")]
        [ValidateNever]
        public string UserID { get; set; }

        [Required(ErrorMessage = "Required field")]
        [Display(Name = "Traditional")]
        public int TraditionalId { get; set; }

        //[ValidateNever]
        //public Traditional Traditional { get; set; } = new Traditional();

        public IList<Step> Steps { get; set; } = new List<Step>();
        public IList<Ingredient> Ingredients { get; set; } = new List<Ingredient>();
        //public IList<Traditional> Traditionals { get; set; } = new List<Traditional>();


        public IEnumerable<ValidationResult> Validate(ValidationContext context)
        {
            if(PreparationTime + CookingTime == 0)
            {
                yield return new ValidationResult("Zero total time not accepted", new List<string>() { nameof(PreparationTime), nameof(CookingTime) });
            }

            if(Id == 0)
            {
                if(ImageFile == null)
                {
                    yield return new ValidationResult("Required field", new List<string>() { nameof(ImageFile) });
                }
            }
        }
    }
}
