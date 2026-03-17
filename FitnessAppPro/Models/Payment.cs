namespace FitnessAppPro.Models
{
    public class Payment
    {
        public int Id { get; set; } // Example property
        public decimal Amount { get; set; }
        public DateTime Date { get; set; }
        public int UserId { get; set; }
        public User ? User { get; set; } // Foreign key relationship
    }
}
