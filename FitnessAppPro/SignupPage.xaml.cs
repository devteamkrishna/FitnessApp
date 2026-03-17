using FitnessAppPro.DataAccess;
using FitnessAppPro.Models;
using FitnessAppPro.Views;
using Microsoft.EntityFrameworkCore;

namespace FitnessAppPro
{
    public partial class SignupPage : ContentPage
    {
        //private readonly AppDbContext _context;

        //public SignupPage(AppDbContext context)
        //{
        //    InitializeComponent();
        //    _context = context;
        //}

        private readonly List<string> _backgroundImages = new()
        {
            "gym_background1.jpg",
            "gym_background2.jpg",
            "gym_background3.jpg",
            "gym_background4.jpg",
            "gym_background5.jpg",
            "gym_background6.jpg",
            "gym_background7.jpg",
            "gym_background8.jpg",
            "login_bg.jpg",
            "gym.jpg",
            "gymequip.jpg",
            "bg.jpeg"
        };
        private int _currentImageIndex = 0;
        private IDispatcherTimer _imageTimer;
        private bool _isUsingOldImage = true;

        public SignupPage()
        {
            InitializeComponent();

            BackgroundImageOld.Source = _backgroundImages[_currentImageIndex];
            BackgroundImageOld.TranslationX = 0;
            BackgroundImageNew.TranslationX = 0;
            BackgroundImageNew.Opacity = 0;

            // Set maximum date for DatePicker
            DoBEntry.MaximumDate = DateTime.Now;

            StartBackgroundImageRotation();
        }

        private void StartBackgroundImageRotation()
        {
            _imageTimer = Dispatcher.CreateTimer();
            _imageTimer.Interval = TimeSpan.FromSeconds(5);
            _imageTimer.Tick += async (s, e) =>
            {
                _currentImageIndex = (_currentImageIndex + 1) % _backgroundImages.Count;
                await ChangeBackgroundImage(_backgroundImages[_currentImageIndex]);
            };
            _imageTimer.Start();
        }

        private async Task ChangeBackgroundImage(string newImage)
        {
            Image imageToSlideOut = _isUsingOldImage ? BackgroundImageOld : BackgroundImageNew;
            Image imageToSlideIn = _isUsingOldImage ? BackgroundImageNew : BackgroundImageOld;

            imageToSlideIn.Source = newImage;
            double width = imageToSlideIn.Width > 0 ? imageToSlideIn.Width : this.Width;
            imageToSlideIn.TranslationX = width;
            imageToSlideIn.Opacity = 0;

            var slideOutTask = imageToSlideOut.TranslateTo(-width, 0, 1500, Easing.CubicInOut);
            var fadeOutTask = imageToSlideOut.FadeTo(0, 1500);
            var slideInTask = imageToSlideIn.TranslateTo(0, 0, 1500, Easing.CubicInOut);
            var fadeInTask = imageToSlideIn.FadeTo(0.75, 1500);

            await Task.WhenAll(slideOutTask, fadeOutTask, slideInTask, fadeInTask);

            imageToSlideOut.TranslationX = 0;
            imageToSlideOut.Opacity = 0;

            imageToSlideIn.Opacity = 0.75;
            _isUsingOldImage = !_isUsingOldImage;
        }

        private async void SignupClicked(object sender, EventArgs e)
        {
            var optionsBuilder = new DbContextOptionsBuilder<FitnessAppDbContext>();
            optionsBuilder.UseSqlServer("Server=DESKTOP-OEQIB8E\\SQLEXPRESS;Database=FitnessAppDB;Trusted_Connection=True;");

            using (var context = new FitnessAppDbContext(optionsBuilder.Options))
            {
                var user = new User
                {
                    Name = NameEntry.Text,
                    UserName = UserNameEntry.Text,
                    Email = EmailEntry.Text,
                    Phonenumber = PhoneEntry.Text,
                    DoB = DoBEntry.Date,
                    Height = HeightEntry.Text,
                    Weight = WeightEntry.Text,
                    Gender = GenderEntry.SelectedItem?.ToString(),
                    Role = "User",           // Default role
                    IsActive = false,
                    Createdon = DateTime.Now,
                    CreatedBy = 0,           // Assuming system user
                    UpdatedBy = null,
                    UpdatedOn = null
                };

                context.Users.Add(user);
                await context.SaveChangesAsync();
                await DisplayAlert("Success", "User registered successfully!", "OK");
                await Navigation.PushAsync(new SubscriptionPage());
            }
        }
    }
}
