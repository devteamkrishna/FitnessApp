using FitnessAppPro.Models;
namespace FitnessAppPro.Models
{
    public class User
    {
        public int Id { get; set; }
        public required string Name { get; set; }          // Must be initialized
        public required string Email { get; set; }
        public required string Phonenumber { get; set; }
        public DateTime DoB { get; set; }
        public required string Height { get; set; }
        public required string Weight { get; set; }
        public required string Gender { get; set; }
        public required string Role { get; set; }
        public DateTime JoinDate { get; set; }
        public bool IsActive { get; set; }
        public required string UserName { get; set; }
        public DateTime Createdon { get; set; }
        public int CreatedBy { get; set; }
        public DateTime ? UpdatedOn { get; set; }
        public int ? UpdatedBy { get; set; }
    }
}
