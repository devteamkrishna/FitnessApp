using FitnessAppPro.Models;
using System.Collections.ObjectModel;

namespace FitnessAppPro.Views
{
    public partial class WorkoutsPage : ContentPage
    {
        public ObservableCollection<Workout> Workouts { get; set; }
        public WorkoutsPage()
        {
            InitializeComponent();

            //Workouts = new ObservableCollection<Workout>
            //{
            //     new Workout
            //     {
            //         Name = "Monday – Chest & Triceps",
            //         ShortDescription = "Push Day",
            //         Steps = new ObservableCollection<string>
            //         {
            //             "Warm-up: 5-10 min treadmill/cycling",
            //             "Barbell Bench Press – 4x6-8",
            //             "Incline Dumbbell Press – 4x8-10",
            //             "Chest Fly Machine/Dumbbell Flys – 3x10-12",
            //             "Push-ups – 3 sets to failure",
            //             "Tricep Dips – 3x8-10",
            //             "Tricep Pushdowns – 3x12",
            //             "Overhead Tricep Extension – 3x12",
            //             "Cooldown: Stretch & foam roll"
            //         }
            //     },
            //     new Workout
            //     {
            //         Name = "Tuesday – Back & Biceps",
            //         ShortDescription = "Pull Day",
            //         Steps = new ObservableCollection<string>
            //         {
            //             "Warm-up: 5-10 min rower",
            //             "Deadlifts – 4x5-6",
            //             "Pull-ups – 4x6-8",
            //             "Barbell/Dumbbell Rows – 4x8-10",
            //             "Lat Pulldowns – 3x10-12",
            //             "Seated Cable Rows – 3x10",
            //             "Bicep Curls – 4x8-10",
            //             "Hammer Curls – 3x10-12",
            //             "Cooldown: Stretch & foam roll"
            //         }
            //     },
            //     new Workout
            //     {
            //         Name = "Wednesday – Legs",
            //         ShortDescription = "Quads, Hamstrings, Glutes",
            //         Steps = new ObservableCollection<string>
            //         {
            //             "Warm-up: 5-10 min bike/treadmill",
            //             "Barbell Squats – 4x6-8",
            //             "Leg Press – 4x10-12",
            //             "Romanian Deadlifts – 4x8-10",
            //             "Lunges – 3x10-12 per leg",
            //             "Leg Curl Machine – 3x12",
            //             "Leg Extension Machine – 3x12",
            //             "Calf Raises – 4x15-20",
            //             "Cooldown: Stretch & foam roll"
            //         }
            //     },
            //     new Workout
            //     {
            //         Name = "Thursday – Shoulders & Abs",
            //         ShortDescription = "Shoulders & Core Workout",
            //         Steps = new ObservableCollection<string>
            //         {
            //             "Warm-up: 5-10 min light cardio",
            //             "Overhead Barbell Press – 4x6-8",
            //             "Dumbbell Lateral Raises – 4x12-15",
            //             "Dumbbell Front Raises – 3x10-12",
            //             "Reverse Pec Deck – 3x10-12",
            //             "Cable Face Pulls – 3x12-15",
            //             "Plank – 3x30-60 sec",
            //             "Russian Twists – 3x20 each side",
            //             "Hanging Leg Raises – 3x12-15",
            //             "Cooldown: Stretch & foam roll"
            //         }
            //     },
            //     new Workout
            //     {
            //         Name = "Friday – Full Body Strength & Conditioning",
            //         ShortDescription = "Full-Body Strength & Conditioning",
            //         Steps = new ObservableCollection<string>
            //         {
            //             "Warm-up: 5-10 min rower/bike",
            //             "Barbell Deadlifts – 4x5",
            //             "Pull-ups/Chin-ups – 3 sets to failure",
            //             "Squats/Leg Press – 4x6-8",
            //             "Overhead Press – 4x6-8",
            //             "Kettlebell Swings – 3x15",
            //             "Medicine Ball Slams – 3x10-12",
            //             "Burpees – 3x12-15",
            //             "Cooldown: Stretch & foam roll"
            //         }
            //     },
            //     new Workout
            //     {
            //         Name = "Saturday – Active Recovery or Cardio",
            //         ShortDescription = "Active Recovery & Mobility",
            //         Steps = new ObservableCollection<string>
            //         {
            //             "Option 1: Low-intensity cardio (45-60 min) — cycling, walking, swimming",
            //             "Option 2: Mobility & Flexibility (30-45 min) — yoga, dynamic stretches, foam rolling",
            //             "Option 3: Light Active Recovery — walking, light swimming, or gentle jog"
            //         }
            //     },
            //     new Workout
            //     {
            //         Name = "Sunday – Rest Day",
            //         ShortDescription = "Rest",
            //         Steps = new ObservableCollection<string>
            //         {
            //             "Rest and recover",
            //             "Focus on stretching, hydration, and proper nutrition",
            //             "Optional: Light stretching or mobility work"
            //         }
            //     }
            //};

            BindingContext = this;
        }

     
        private void Workout_Tapped(object sender, EventArgs e)
        {
            if (sender is Frame frame && frame.BindingContext is Workout tappedWorkout)
            {
                foreach (var workout in Workouts)
                {
                    if (workout != tappedWorkout)
                        workout.IsExpanded = false;
                }
                tappedWorkout.IsExpanded = !tappedWorkout.IsExpanded;
            }
        }
        private async void DietPlan_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new DietPlan());
        }
    }
}