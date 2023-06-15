using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using MyRecipe.Models;
using Microsoft.EntityFrameworkCore;
using MyRecipe.Models.Database;

namespace MyRecipe.Controllers
{
    //public class HomeController : Controller
    //{
    //    private readonly ILogger<HomeController> _logger;

    //    public HomeController(ILogger<HomeController> logger)
    //    {
    //        _logger = logger;
    //    }

    //    public IActionResult Index()
    //    {
    //        return View();
    //    }

    //    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    //    public IActionResult Error()
    //    {
    //        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    //    }
    //}
    public class HomeController : Controller
    {
        private readonly MyRecipeDbContext _context;
        private readonly IWebHostEnvironment _env;

        public HomeController(MyRecipeDbContext context, IWebHostEnvironment env)
        {
            _context = context;
            _env = env;
        }

        // GET: Recipes
        public async Task<IActionResult> Index()
        {
            return _context.Recipes != null ?
                        View(await _context.Recipes.ToListAsync()) :
                        Problem("Entity set 'MyRecipeDbContext.Recipes'  is null.");
        }
    }
}