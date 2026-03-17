using Microsoft.Maui.Controls;
using System;
using System.Collections.ObjectModel;

namespace FitnessAppPro.Views
{
    public partial class UserProfilePage : ContentPage
    {
        public ObservableCollection<string> ImageSources { get; set; }

        public UserProfilePage()
        {
            InitializeComponent();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            try
            {
                ImageSources = new ObservableCollection<string>
                {
                    "gym.jpg",
                    "gym_background3.jpg",
                    "interior_gym.jpg",
                    "gym_background7.jpg"
                };

                //carouselView.ItemsSource = ImageSources;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error loading images into CarouselView: {ex.Message}");
            }
        }

        private async void OnViewWorkoutPlanClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new WorkoutsPage());
        }
    }
}
