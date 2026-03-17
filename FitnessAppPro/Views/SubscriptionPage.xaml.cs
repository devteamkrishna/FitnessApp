using Microsoft.Maui.Controls;

namespace FitnessAppPro.Views
{
    public partial class SubscriptionPage : ContentPage
    {
        public SubscriptionPage()
        {
            InitializeComponent();
        }

        private async void OnSubscriptionSelected(object sender, EventArgs e)
        {
            if (sender is not Button button) return;

            string duration = button.CommandParameter?.ToString() ?? "";
            double price = 0;
            string planName = "";

            switch (duration)
            {
                case "3":
                    price = 29.99;
                    planName = "3 Month Plan";
                    break;
                case "6":
                    price = 49.99;
                    planName = "6 Month Plan";
                    break;
                case "9":
                    price = 69.99;
                    planName = "9 Month Plan";
                    break;
                case "12":
                    price = 89.99;
                    planName = "1 Year Plan";
                    break;
            }

            if (string.IsNullOrEmpty(planName))
                return;

            bool confirm = await DisplayAlert("Confirm Subscription",
                $"You selected {planName} for ${price}. Proceed to payment?",
                "Yes", "No");

            if (confirm)
            {
                await DisplayAlert("Payment", "Redirecting to payment page...", "OK");
                // await Navigation.PushAsync(new PaymentPage(duration, price));
                
                    // Navigate to PaymentPage and pass plan as parameter
                    await Navigation.PushAsync(new PaymentPage(duration, price));
                
            }
        }

    }
}
