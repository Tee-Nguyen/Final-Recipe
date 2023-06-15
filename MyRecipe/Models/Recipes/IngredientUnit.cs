using System.ComponentModel.DataAnnotations;

namespace MyRecipe.Models.Recipes
{
    public enum IngredientUnit
    {
        [Display(Name = "")]
        None,
        [Display(Name = "Unit")]
        Unit,
        [Display(Name = "Gram")]
        Gram,
        [Display(Name = "Kilogram")]
        Kilogram,
        [Display(Name = "Milliliter")]
        Milliliter,
        [Display(Name = "Centiliter")]
        Centiliter,
        [Display(Name = "Liter")]
        Liter,
        [Display(Name = "Table spoon")]
        Tablespoon,
        [Display(Name = "Tea spoon")]
        Teaspoon,
        [Display(Name = "Pinch")]
        Pinch
    }
}
