using System;
using System.Collections.ObjectModel;
using System.ComponentModel;

namespace FitnessAppPro.ViewModel
{
    public class UserDashboardViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        private string userName = "John Doe";
        public string UserName
        {
            get => userName;
            set
            {
                if (userName != value)
                {
                    userName = value;
                    OnPropertyChanged(nameof(UserName));
                }
            }
        }

        private int totalWorkouts = 18;
        public int TotalWorkouts
        {
            get => totalWorkouts;
            set
            {
                if (totalWorkouts != value)
                {
                    totalWorkouts = value;
                    OnPropertyChanged(nameof(TotalWorkouts));
                }
            }
        }

        private int caloriesBurned = 5600;
        public int CaloriesBurned
        {
            get => caloriesBurned;
            set
            {
                if (caloriesBurned != value)
                {
                    caloriesBurned = value;
                    OnPropertyChanged(nameof(CaloriesBurned));
                }
            }
        }

        private int activeDays = 12;
        public int ActiveDays
        {
            get => activeDays;
            set
            {
                if (activeDays != value)
                {
                    activeDays = value;
                    OnPropertyChanged(nameof(ActiveDays));
                }
            }
        }

        private string subscriptionStatus = "Active";
        public string SubscriptionStatus
        {
            get => subscriptionStatus;
            set
            {
                if (subscriptionStatus != value)
                {
                    subscriptionStatus = value;
                    OnPropertyChanged(nameof(SubscriptionStatus));
                }
            }
        }

        public ObservableCollection<Activity> RecentActivities { get; set; } = new ObservableCollection<Activity>
        {
            new Activity { Date = DateTime.Now.AddDays(-1), ActivityDescription = "Morning Yoga", Duration = 45 },
            new Activity { Date = DateTime.Now.AddDays(-2), ActivityDescription = "Strength Training", Duration = 60 },
            new Activity { Date = DateTime.Now.AddDays(-3), ActivityDescription = "Cardio Session", Duration = 30 }
        };

        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }

    public class Activity
    {
        public DateTime Date { get; set; }
        public string ActivityDescription { get; set; }
        public int Duration { get; set; } // in minutes
    }
}
