using Microsoft.Maui.Controls;

namespace FitnessAppPro.Views;

public partial class DietPlan : ContentPage
{
    public DietPlan()
    {
        InitializeComponent(); // connects to XAML controls
    }

    private void OnDietSelected(object sender, EventArgs e)
    {
        if (DietPicker.SelectedIndex == -1) return;

        string selected = DietPicker.SelectedItem.ToString();
        string plan = "";

        if (selected == "Vegetarian")
        {
            plan = "🌱 Vegetarian Diet Plan\n\n" +
                   "✅ Breakfast: Oats with fruits & nuts\n" +
                   "✅ Lunch: Brown rice, dal, salad\n" +
                   "✅ Snack: Smoothie or fruit bowl\n" +
                   "✅ Dinner: Roti, paneer curry, vegetables";
        }
        else if (selected == "Non-Vegetarian")
        {
            plan = "🍗 Non-Vegetarian Diet Plan\n\n" +
                   "✅ Breakfast: Eggs & whole grain toast\n" +
                   "✅ Lunch: Grilled chicken with brown rice & veggies\n" +
                   "✅ Snack: Protein shake or boiled eggs\n" +
                   "✅ Dinner: Fish curry with roti & salad";
        }

        DietPlanFrame.IsVisible = true;
        DietPlanLabel.Text = plan;
    }
}
