using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;

namespace FitnessAppPro.DataAccess
{
    public class FitnessAppDbContextFactory : IDesignTimeDbContextFactory<FitnessAppDbContext>
    {
        public FitnessAppDbContext CreateDbContext(string[] args)
        {
            var optionsBuilder = new DbContextOptionsBuilder<FitnessAppDbContext>();
            optionsBuilder.UseSqlServer(
                "Server=DESKTOP-OEQIB8E\\SQLEXPRESS;Database=FitnessAppDb;Trusted_Connection=True;MultipleActiveResultSets=true"
            );

            return new FitnessAppDbContext(optionsBuilder.Options);
        }
    }
}
