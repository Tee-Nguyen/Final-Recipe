# Final-Recipe
Final recipe

Let's use SQL script or NuGet package

Add NuGet into project
Install dotnet-ef, Terminal:
dotnet tool install --global dotnet-ef

- Install SQL Server > create DB
- Migrate DB, Create/Terminal:
#dotnet ef migrations add Initial2 --context AppDbContext

- Migrate DB, Restore/Terminal:
dotnet ef database update Initial --context AppDbContext
dotnet ef database update Initial --context AppIdentityDbContext
