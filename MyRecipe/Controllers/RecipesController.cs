﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MyRecipe.Models.Database;
using MyRecipe.Models.Recipes;
using MyRecipe.Models.Recipes.Utils;
using MyRecipe.Models.Users;

namespace MyRecipe.Controllers
{
    public class RecipesController : Controller
    {
        private readonly MyRecipeDbContext _context;
        private readonly IWebHostEnvironment _env;
        private readonly UserManager<User> _userManager;

        public RecipesController(MyRecipeDbContext context, UserManager<User> userManager, IWebHostEnvironment env)
        {
            _context = context;
            _env = env;
            _userManager = userManager;
        }

        // GET: Recipes/Index/1
        public async Task<IActionResult> Index(int? traditionalId, string? userId)
        {
            
            if(_context.Recipes != null)
            {
                var recipes = await _context.Recipes.ToListAsync();
                //Filter by traditional
                if(traditionalId != null)
                {
                    recipes = recipes.Where(r => r.TraditionalId == traditionalId).ToList();
                }
                else if (userId != null) //Filter by userId
                {
                    recipes = recipes.Where(r => r.UserID == userId).ToList();
                }
                return View(recipes);
            }
            else
            {
                return Problem("Entity set 'MyRecipeDbContext.Recipes'  is null.");
            }
        }

        // GET: Recipes/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.Recipes == null)
            {
                return NotFound();
            }

            var recipe = await _context.Recipes
                .Include(r => r.Ingredients)
                .Include(r => r.Steps)
                //.Include(r => r.Traditional)
                .FirstOrDefaultAsync(m => m.Id == id);

            if (recipe == null)
            {
                return NotFound();
            }
            ViewBag.Traditional = _context.Traditionals.ToList().FirstOrDefault(t => t.Id == recipe.TraditionalId).Name;

            var user = await _userManager.GetUserAsync(User);
            ViewBag.LoggedinUser = user;

            var roles = await _userManager.GetRolesAsync(user);
            var roleName = roles.FirstOrDefault();
            ViewBag.RoleName = roleName;

            return View(recipe);
        }

        [ValidateAntiForgeryToken]
        public JsonResult ProportionCalculation()
        {
            var recipeId = int.Parse(HttpContext.Request.Query["recipeId"].ToString());
            var wantedAmount = int.Parse(HttpContext.Request.Query["peopleFor"].ToString());

            var recipe = _context.Recipes
                .Include(r => r.Ingredients)
                .FirstOrDefaultAsync(m => m.Id == recipeId).Result;
            if (recipe == null)
                return Json(new List<Ingredient>());

            var calculator = new ProportionsCalculator(recipe);

            return Json(calculator.ComputeFor(wantedAmount));
        }

        // GET: Recipes/Create
        public IActionResult Create()
        {

            //Pass traditionals
            List<Traditional> traditionals = new List<Traditional>();
            if (_context.Traditionals != null)
            {
                traditionals = _context.Traditionals.ToList<Traditional>();
            }
            ViewBag.Traditionals = traditionals;

            return View();
        }

        // POST: Recipes/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Name,Difficulty,Type,PeopleFor,PreparationTime,CookingTime,ImageFile,Ingredients,Steps,TraditionalId")] Recipe recipe)
        {
            if (ModelState.IsValid)
            {
                var fileName = $"${Guid.NewGuid()}{Path.GetExtension(recipe.ImageFile.FileName)}";
                var filePath = Path.Combine(_env.WebRootPath, "uploads", "recipes", fileName);
                using(var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    await recipe.ImageFile.CopyToAsync(fileStream);
                }
                recipe.ImageName = fileName;

                for(int i = 1; i <= recipe.Steps.Count; i++)
                {
                    recipe.Steps[i - 1].Position = i;
                }

                var user = await _userManager.GetUserAsync(User);
                if (user == null)
                {
                    return View(recipe);
                }
                recipe.UserID = user.Id;

                _context.Add(recipe);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }

            List<Traditional> traditionals = new List<Traditional>();
            if (_context.Traditionals != null)
            {
                traditionals = _context.Traditionals.ToList<Traditional>();
            }
            ViewBag.Traditionals = traditionals;


            return View(recipe);
        }

        // GET: Recipes/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Recipes == null)
            {
                return NotFound();
            }

            var recipe = await _context.Recipes
                .Include(r => r.Ingredients)
                .Include(r => r.Steps)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (recipe == null)
            {
                return NotFound();
            }

            List<Traditional> traditionals = new List<Traditional>();
            if (_context.Traditionals != null)
            {
                traditionals = _context.Traditionals.ToList<Traditional>();
            }
            ViewBag.Traditionals = traditionals;

            return View(recipe);
        }

        // POST: Recipes/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Name,UserID,Difficulty,Type,PeopleFor,PreparationTime,CookingTime,ImageFile,ImageName,Ingredients,Steps,TraditionalId")] Recipe recipe)
        {
            if (id != recipe.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    if(recipe.ImageFile != null)
                    {
                        System.IO.File.Delete(Path.Combine(_env.WebRootPath, "uploads", "recipes", recipe.ImageName));
                        var fileName = $"${Guid.NewGuid()}{Path.GetExtension(recipe.ImageFile.FileName)}";
                        var filePath = Path.Combine(_env.WebRootPath, "uploads", "recipes", fileName);
                        using (var fileStream = new FileStream(filePath, FileMode.Create))
                        {
                            await recipe.ImageFile.CopyToAsync(fileStream);
                        }
                        recipe.ImageName = fileName;
                    }

                    for (int i = 1; i <= recipe.Steps.Count; i++)
                    {
                        recipe.Steps[i - 1].Position = i;
                    }

                    var missingIngredients = _context.Ingredients
                        .Where(i => i.RecipeId == id)
                        .Select(i => i.Id)
                        .ToList()
                        .Except(recipe.Ingredients.Select(i => i.Id).ToList())
                        .ToList()
                        .Select(id => _context.Ingredients.Where(i => i.Id == id).First())
                        .ToList();

                    var missingSteps = _context.Steps
                        .Where(s => s.RecipeId == id)
                        .Select(s => s.Id)
                        .ToList()
                        .Except(recipe.Steps.Select(s => s.Id).ToList())
                        .ToList()
                        .Select(id => _context.Steps.Where(s => s.Id == id).First())
                        .ToList();

                    _context.Ingredients.RemoveRange(missingIngredients);
                    _context.Steps.RemoveRange(missingSteps);

                    var user = await _userManager.GetUserAsync(User);
                    recipe.UserID = user.Id;


                    _context.Update(recipe);

                    
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!RecipeExists(recipe.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(recipe);
        }

        // GET: Recipes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Recipes == null)
            {
                return NotFound();
            }

            var recipe = await _context.Recipes
                .FirstOrDefaultAsync(m => m.Id == id);
            if (recipe == null)
            {
                return NotFound();
            }

            return View(recipe);
        }

        // POST: Recipes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Recipes == null)
            {
                return Problem("Entity set 'MyRecipeDbContext.Recipes'  is null.");
            }
            var recipe = await _context.Recipes.FindAsync(id);
            if (recipe != null)
            {
                _context.Recipes.Remove(recipe);
            }
            await _context.SaveChangesAsync();
            
            System.IO.File.Delete(Path.Combine(_env.WebRootPath, "uploads", "recipes", recipe.ImageName));

            return RedirectToAction(nameof(Index));
        }

        private bool RecipeExists(int id)
        {
          return (_context.Recipes?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
