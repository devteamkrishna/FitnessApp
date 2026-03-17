using FitnessAppPro.Views;
using Microsoft.Maui.Storage;

namespace FitnessAppPro
{
    public partial class AppShell : Shell
    {
        public AppShell()
        {
            InitializeComponent();
            InitializeRoutes();
            SetupTabs();
        }

        // Register routes for navigation
        private void InitializeRoutes()
        {
            Routing.RegisterRoute("AdminDashboardPage", typeof(AdminDashboardPage));
            Routing.RegisterRoute("UserDashboardPage", typeof(UserDashboardPage));
            Routing.RegisterRoute("WorkoutsPage", typeof(WorkoutsPage));
            // Add more routes as needed
        }

        // Dynamically create tabs based on user role
        private void SetupTabs()
        {
            var userRole = Preferences.Get("UserRole", string.Empty);

            MainTabBar.Items.Clear();

            if (userRole == "Admin")
            {
                MainTabBar.Items.Add(CreateTab("Dashboard", typeof(AdminDashboardPage), "admin.png"));
                MainTabBar.Items.Add(CreateTab("Workouts", typeof(WorkoutsPage), "workout.png"));
                MainTabBar.Items.Add(CreateTab("Subscription", typeof(SubscriptionPage), "subscription.png"));
                MainTabBar.Items.Add(CreateTab("Dashboard", typeof(UserDashboardPage), "user.png"));
                MainTabBar.Items.Add(CreateTab("Payment", typeof(PaymentListPage), "wallet.png"));
                MainTabBar.Items.Add(CreateTab("UserList", typeof(UserListPage), "user.png"));
                MainTabBar.Items.Add(CreateTab("UserProfile", typeof(UserProfilePage), "user.png"));
            }
            else if (userRole == "User")
            {
                MainTabBar.Items.Add(CreateTab("Dashboard", typeof(UserDashboardPage), "user.png"));
                MainTabBar.Items.Add(CreateTab("Workouts", typeof(WorkoutsPage), "workout.png"));
            }
            else if (userRole == "Manager")
            {
                MainTabBar.Items.Add(CreateTab("Dashboard", typeof(AdminDashboardPage), "manager.png"));
                MainTabBar.Items.Add(CreateTab("Workouts", typeof(WorkoutsPage), "workout.png"));
            }

            // Add more common tabs here if needed
        }

        // Helper method to create a ShellContent tab that shows the actual page
        private ShellContent CreateTab(string title, Type pageType, string icon)
        {
            return new ShellContent
            {
                Title = title,
                Icon = icon,
                ContentTemplate = new DataTemplate(pageType) // Directly load the page
            };
        }
    }
}
