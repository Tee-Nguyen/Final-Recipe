using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyRecipe.Models.Recipes
{
    public class Ingredient
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Required field")]
        [MaxLength(100)]
        [Column(TypeName = "varchar(100)")]
        [Display(Name = "Name")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Required field")]
        [Range(0.1, float.MaxValue, ErrorMessage = "Positive number required")]
        [Display(Name = "Quantity")]
        public float Quantity { get; set; }

        [Required(AllowEmptyStrings = true)]
        [Display(Name = "Unit")]
        public IngredientUnit Unit { get; set; }


        [ValidateNever]
        public Recipe Recipe { get; set; }
        [ValidateNever]
        public int RecipeId { get; set; }
    
    
        [NotMapped]
        public string DisplayUnit
        {
            get {
                Dictionary<IngredientUnit, string> units = new Dictionary<IngredientUnit, string>()
                {
                    { IngredientUnit.None, ""},
                    { IngredientUnit.Unit, ""},
                    { IngredientUnit.Gram, "G"},
                    { IngredientUnit.Kilogram, "Kg"},
                    { IngredientUnit.Milliliter, "Ml"},
                    { IngredientUnit.Centiliter, "Cl"},
                    { IngredientUnit.Liter, "L"},
                    { IngredientUnit.Teaspoon, " Teaspoon"},
                    { IngredientUnit.Tablespoon, " Tablespoon"},
                    { IngredientUnit.Pinch, " Pinch"},
                };

                return units[Unit];
            }
            set { _displayUnit = value; }
        } 
        private string _displayUnit;
    }
}
