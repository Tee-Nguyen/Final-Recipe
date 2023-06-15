using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MyRecipe.Models.Recipes
{
    public class Traditional
    {
        public int Id { get; set; }

        //[Required(ErrorMessage = "Required field")]
        public string Name { get; set; }
    }
}
