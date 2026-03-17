using Microsoft.Maui.Controls;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace FitnessAppPro
{
    public partial class MainPage : ContentPage
    {
        private readonly List<string> _backgroundImages = new()
        {
            "gyms.jpg",
            "gyme.jpg",
            "cardio.jpg",
            "cardio_m.jpg",
            "gymming.PNG",
            "fitness.PNG",
            "equips.PNG",
            "bg_gym.PNG",
            "gym_background.jpg",
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

        public MainPage()
        {
            InitializeComponent();

            // Show first background
            BackgroundImageOld.Source = _backgroundImages[_currentImageIndex];
            BackgroundImageOld.IsVisible = true;

            // Wait for page layout to get correct Width
            this.SizeChanged += MainPage_SizeChanged;

            // Load content after simulated delay
            LoadAppData();
        }

        private void MainPage_SizeChanged(object sender, EventArgs e)
        {
            if (this.Width > 0 && this.Height > 0)
            {
                StartBackgroundImageRotation();
                this.SizeChanged -= MainPage_SizeChanged; // Only once
            }
        }

        private async void LoadAppData()
        {
            MainContent.IsVisible = false;

            // Simulate data loading delay
            await Task.Delay(3000);

            MainContent.IsVisible = true;
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

            double width = this.Width;

            imageToSlideIn.TranslationX = width;
            imageToSlideIn.Opacity = 0;

            // Slide and fade animations
            var slideOutTask = imageToSlideOut.TranslateTo(-width, 0, 1500, Easing.CubicInOut);
            var fadeOutTask = imageToSlideOut.FadeTo(0, 1500);
            var slideInTask = imageToSlideIn.TranslateTo(0, 0, 1500, Easing.CubicInOut);
            var fadeInTask = imageToSlideIn.FadeTo(0.75, 1500);

            await Task.WhenAll(slideOutTask, fadeOutTask, slideInTask, fadeInTask);

            // Reset outgoing image for next cycle
            imageToSlideOut.TranslationX = 0;
            imageToSlideOut.Opacity = 0;

            // Ensure incoming image is fully visible
            imageToSlideIn.Opacity = 0.75;

            _isUsingOldImage = !_isUsingOldImage;
        }

        private async void OnLoginClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new LoginPage());
        }

        private async void OnSignupClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SignupPage());
        }
    }
}