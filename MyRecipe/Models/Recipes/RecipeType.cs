using System.ComponentModel.DataAnnotations;

namespace MyRecipe.Models.Recipes
{
    public enum RecipeType
    {
        [Display(Name = "Amuse bouche")]
        Appetizer,
        [Display(Name = "Entrance")]
        Starter,
        [Display(Name = "Main course")]
        MainDish,
        Dessert,
        [Display(Name = "Beverage")]
        Drink,
        [Display(Name = "Pastry")]
        Bakery
    }
}
