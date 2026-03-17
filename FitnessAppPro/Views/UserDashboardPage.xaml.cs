using Microsoft.Maui.Controls;
using FitnessAppPro.ViewModels;
using FitnessAppPro.ViewModel;

namespace FitnessAppPro.Views
{
    public partial class UserDashboardPage : ContentPage
    {
        public UserDashboardPage()
        {
            InitializeComponent();

            // Set BindingContext to your ViewModel
            BindingContext = new UserDashboardViewModel();
        }
        private async void OnViewDietPlanClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new DietPlan());
        }

        private async void OnViewWorkoutPlanClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new WorkoutsPage());
        }
        private async void OnViewTrackprogressClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new TrackProgressPage());
        }
        private async void OnViewmanageClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SubscriptionPage());
        }
    }
}
