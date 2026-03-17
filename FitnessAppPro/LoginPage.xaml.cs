
using Microsoft.Maui.Storage;

namespace FitnessAppPro;

public partial class LoginPage : ContentPage
{
    private readonly List<string> _backgroundImages = new()
    {  "gyms.jpg",
       "gymming.PNG",
       "fitness.PNG",
       "equips.PNG",
       "gym_background2.jpg",
       "gym_background3.jpg",
       "gym_background4.jpg",
       "gymequip.jpg",
       "interior_gym.jpg",
       "gym_background8.jpg"
    };
    private int _currentImageIndex = 0;
    private IDispatcherTimer _imageTimer = null!;
    private bool _isUsingOldImage = true;

    public LoginPage()
    {
        InitializeComponent();

        // Set initial background image
        BackgroundImageOld.Source = _backgroundImages[_currentImageIndex];
        BackgroundImageOld.TranslationX = 0;
        BackgroundImageNew.TranslationX = 0;
        BackgroundImageNew.Opacity = 0;

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

        if (imageToSlideIn.Width <= 0)
        {
            var tcs = new TaskCompletionSource<bool>();
            void OnSizeChanged(object s, EventArgs e)
            {
                if (imageToSlideIn.Width > 0)
                {
                    imageToSlideIn.SizeChanged -= OnSizeChanged;
                    tcs.SetResult(true);
                }
            }
            imageToSlideIn.SizeChanged += OnSizeChanged;
            await tcs.Task;
        }

        double width = imageToSlideIn.Width;

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

    private async void LoginClicked(object sender, EventArgs e)
    {
        string username = UsernameEntry.Text?.Trim();
        string password = PasswordEntry.Text?.Trim();

        if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
        {
            await DisplayAlert("Error", "Please enter both username and password.", "OK");
            return;
        }

        // Example authentication and role assignment
        string userRole = string.Empty;
        if (username == "admin" && password == "1234")
            userRole = "Admin";
        else if (username == "manager" && password == "1234")
            userRole = "Manager";
        else if (username == "user" && password == "1234")
            userRole = "User";
        else
        {
            await DisplayAlert("Login Failed", "Invalid credentials.", "OK");
            return;
        }

        // Save role in Preferences
        Preferences.Set("UserRole", userRole);

        // Show success message
        await DisplayAlert("Success", "Login successful!", "OK");

        // Set AppShell as MainPage (parameterless)
        Application.Current.MainPage = new AppShell();
    }
}
