using FitnessAppPro.ViewModels;

namespace FitnessAppPro.Views
{
    public partial class UserListPage : ContentPage
    {
        public UserListPage()
        {
            InitializeComponent();

            // Attach the ViewModel
            BindingContext = new UserListViewModel();
        }
    }
}
