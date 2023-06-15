using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations;

namespace MyRecipe.Models.Recipes
{
    public class Step
    {
        public int Id { get; set; }

        [ValidateNever]
        public int Position { get; set; }

        [Required(ErrorMessage = "Required field")]
        public string Description { get; set; }

        [ValidateNever]
        public Recipe Recipe { get; set; }
        [ValidateNever]
        public int RecipeId { get; set; }
    }
}
