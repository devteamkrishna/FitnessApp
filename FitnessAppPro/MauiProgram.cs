using FitnessAppPro.DataAccess;
using Microsoft.EntityFrameworkCore;

namespace FitnessAppPro
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });

            // SQLite database path
            string connectionString = "Server=YOUR_SERVER_NAME;Database=FitnessAppDb;Trusted_Connection=True;MultipleActiveResultSets=true";

            builder.Services.AddDbContext<FitnessAppDbContext>(options =>
                options.UseSqlServer(connectionString));

            return builder.Build();
        }
    }
}
