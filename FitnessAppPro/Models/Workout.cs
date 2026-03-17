namespace FitnessAppPro.Models
{
    public class Workout
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Name { get; set; }
        public string ShortDescription { get; set; }
        public string Steps { get; set; }
        public bool IsExpanded { get; set; }

        // Foreign Key property
        public int UserId { get; set; }  // This will be the foreign key

        // Navigation property
        public User User { get; set; }
    }
}
