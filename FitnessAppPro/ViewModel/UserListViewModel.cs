using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Input;
using Microsoft.Maui.Controls;
using FitnessAppPro.Models; // <- make sure User model is here

namespace FitnessAppPro.ViewModels
{
    public class UserListViewModel : BindableObject
    {
        private string _searchText;
        private string _selectedRole;
        private int _currentPage = 1;
        private int _pageSize = 10;

        private List<User> _allUsers; // keep full dataset

        public ObservableCollection<User> PagedUsers { get; set; } = new();

        public List<string> RoleOptions { get; set; } = new() { "All", "Admin", "Trainer", "Member" };

        public string SearchText
        {
            get => _searchText;
            set
            {
                if (_searchText != value)
                {
                    _searchText = value;
                    OnPropertyChanged();
                    ApplyFilters();
                }
            }
        }

        public string SelectedRole
        {
            get => _selectedRole;
            set
            {
                if (_selectedRole != value)
                {
                    _selectedRole = value;
                    OnPropertyChanged();
                    ApplyFilters();
                }
            }
        }

        public int CurrentPage
        {
            get => _currentPage;
            set
            {
                if (_currentPage != value)
                {
                    _currentPage = value;
                    OnPropertyChanged();
                    UpdatePagedUsers();
                    OnPropertyChanged(nameof(CurrentPageDisplay));
                    OnPropertyChanged(nameof(CanGoNext));
                    OnPropertyChanged(nameof(CanGoPrevious));
                }
            }
        }

        public string CurrentPageDisplay => $"Page {CurrentPage} / {TotalPages}";

        public bool CanGoNext => CurrentPage < TotalPages;
        public bool CanGoPrevious => CurrentPage > 1;

        public ICommand NextPageCommand { get; }
        public ICommand PreviousPageCommand { get; }
        public ICommand SearchCommand { get; }

        private int TotalPages => (int)Math.Ceiling((double)FilteredUsers.Count / _pageSize);
        private List<User> FilteredUsers { get; set; } = new();

        public UserListViewModel()
        {
            // Dummy data for testing
            //_allUsers = new List<User>
            //{
            //   new User { Username="olivia_davis", Email="olivia@example.com", JoinDate=DateTime.Now.AddMonths(-15), Role="Member" },
            //                new User { Username="paul_lee", Email="paul@example.com", JoinDate=DateTime.Now.AddMonths(-12), Role="Member" },
            //                new User { Username="quinn_moore", Email="quinn@example.com", JoinDate=DateTime.Now.AddMonths(-4), Role="Trainer" },
            //                new User { Username="rachel_turner", Email="rachel@example.com", JoinDate=DateTime.Now.AddMonths(-14), Role="Member" },
            //                new User { Username="steve_adams", Email="steve@example.com", JoinDate=DateTime.Now.AddMonths(-5), Role="Member" },
            //                new User { Username="tina_sanders", Email="tina@example.com", JoinDate=DateTime.Now.AddMonths(-10), Role="Trainer" },
            //                new User { Username="u-robson", Email="robson@example.com", JoinDate=DateTime.Now.AddMonths(-9), Role="Member" },
            //                new User { Username="victor_williams", Email="victor@example.com", JoinDate=DateTime.Now.AddMonths(-7), Role="Member" },
            //                new User { Username="will_smith", Email="will@example.com", JoinDate=DateTime.Now.AddMonths(-6), Role="Trainer" },
            //                new User { Username="xander_bell", Email="xander@example.com", JoinDate=DateTime.Now.AddMonths(-3), Role="Member" },
            //                new User { Username="yara_hughes", Email="yara@example.com", JoinDate=DateTime.Now.AddMonths(-4), Role="Trainer" },
            //                new User { Username="zachary_james", Email="zachary@example.com", JoinDate=DateTime.Now.AddMonths(-13), Role="Member" },
            //                new User { Username="andre_brown", Email="andre@example.com", JoinDate=DateTime.Now.AddMonths(-16), Role="Member" },
            //                new User { Username="bella_davis", Email="bella@example.com", JoinDate=DateTime.Now.AddMonths(-18), Role="Admin" },
            //                new User { Username="carlos_garcia", Email="carlos@example.com", JoinDate=DateTime.Now.AddMonths(-5), Role="Member" },
            //                new User { Username="diana_roberts", Email="diana@example.com", JoinDate=DateTime.Now.AddMonths(-6), Role="Trainer" },
            //                new User { Username="elena_morris", Email="elena@example.com", JoinDate=DateTime.Now.AddMonths(-7), Role="Member" },
            //                new User { Username="finn_stewart", Email="finn@example.com", JoinDate=DateTime.Now.AddMonths(-8), Role="Trainer" },
            //                new User { Username="george_jackson", Email="george@example.com", JoinDate=DateTime.Now.AddMonths(-11), Role="Member" },
            //                new User { Username="hannah_price", Email="hannah@example.com", JoinDate=DateTime.Now.AddMonths(-9), Role="Trainer" },
            //                new User { Username="ian_clarkson", Email="ian@example.com", JoinDate=DateTime.Now.AddMonths(-2), Role="Member" },
            //                new User { Username="julia_scott", Email="julia@example.com", JoinDate=DateTime.Now.AddMonths(-1), Role="Member" },
            //                new User { Username="kevin_martin", Email="kevin@example.com", JoinDate=DateTime.Now.AddMonths(-8), Role="Admin" },
            //                new User { Username="lisa_martinez", Email="lisa@example.com", JoinDate=DateTime.Now.AddMonths(-10), Role="Member" },
            //                new User { Username="maria_taylor", Email="maria@example.com", JoinDate=DateTime.Now.AddMonths(-17), Role="Member" }
            //};

            NextPageCommand = new Command(() => { if (CanGoNext) CurrentPage++; });
            PreviousPageCommand = new Command(() => { if (CanGoPrevious) CurrentPage--; });
            SearchCommand = new Command(ApplyFilters);

            SelectedRole = "All";
            ApplyFilters(); // initialize
        }

        private void ApplyFilters()
        {
            IEnumerable<User> query = _allUsers;

            // Search by Username or Email
            //if (!string.IsNullOrWhiteSpace(SearchText))
            //{
            //    query = query.Where(u =>
            //        (!string.IsNullOrEmpty(u.Username) && u.Username.Contains(SearchText, StringComparison.OrdinalIgnoreCase)) ||
            //        (!string.IsNullOrEmpty(u.Email) && u.Email.Contains(SearchText, StringComparison.OrdinalIgnoreCase)));
            //}

            // Filter by Role
            if (!string.IsNullOrEmpty(SelectedRole) && SelectedRole != "All")
            {
                query = query.Where(u => u.Role == SelectedRole);
            }

            FilteredUsers = query.ToList();

            CurrentPage = 1; // reset page when filters change
            UpdatePagedUsers();
        }

        private void UpdatePagedUsers()
        {
            PagedUsers.Clear();

            var items = FilteredUsers
                .Skip((CurrentPage - 1) * _pageSize)
                .Take(_pageSize)
                .ToList();

            foreach (var user in items)
                PagedUsers.Add(user);

            OnPropertyChanged(nameof(CurrentPageDisplay));
            OnPropertyChanged(nameof(CanGoNext));
            OnPropertyChanged(nameof(CanGoPrevious));
        }
    }
}
