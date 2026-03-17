# FitnessAppPro

Cross-platform **.NET MAUI** fitness app targeting **.NET 8** for **Windows** and **Android**.

## Features

- **Auth**: Login + Signup (`MainPage`, `LoginPage`, `SignupPage`)
- **Dashboards**: User + Admin + Gym dashboards (`Views/*Dashboard*.xaml`)
- **Workouts**: Track workouts (`Views/WorkoutsPage.xaml`)
- **Diet plan**: Diet planning (`Views/DietPlan.xaml`)
- **Progress**: Track progress (`Views/TrackProgressPage.xaml`)
- **Subscriptions & payments**: Subscription + payment screens (`Views/SubscriptionPage.xaml`, `Views/Payment*.xaml`)

## Tech stack

- **UI**: .NET MAUI (XAML)
- **Data**: Entity Framework Core (`FitnessAppDbContext`)
- **Database provider**: SQL Server is currently configured (see below). Packages for SQLite are also referenced.

## Repository structure

- `FitnessAppPro/`: Main .NET MAUI app (Windows + Android)
- `FitnessAppPro.EF/`: EF-related project (currently a placeholder console app)
- `Backups/`: Project backups
- `FitnessAppPro.sln`: Visual Studio solution

## Prerequisites

- **.NET 8 SDK**
- **MAUI workload**

```bash
dotnet --version
dotnet workload install maui
```

For Android builds, install Android tooling via **Visual Studio 2022** (Mobile development with .NET) or ensure Android SDK/Java are available.

## Run the app

### Option A: Visual Studio (recommended on Windows)

1. Open `FitnessAppPro.sln` in Visual Studio 2022
2. Select a target:
   - `FitnessAppPro (net8.0-windows10.0.19041.0)`
   - `FitnessAppPro (net8.0-android)`
3. Press **F5**

### Option B: Command line

Build the solution:

```bash
dotnet build .\FitnessAppPro.sln
```

Run on **Windows**:

```bash
dotnet build .\FitnessAppPro\FitnessAppPro.csproj -t:Run -f net8.0-windows10.0.19041.0
```

Run on **Android** (requires emulator/device + Android tooling):

```bash
dotnet build .\FitnessAppPro\FitnessAppPro.csproj -t:Run -f net8.0-android
```

## Database setup (EF Core)

The app registers `FitnessAppDbContext` in `FitnessAppPro/MauiProgram.cs` using SQL Server:

- `FitnessAppPro/MauiProgram.cs` (runtime connection string)
- `FitnessAppPro/DataAccess/FitnessAppDbContextFactory.cs` (design-time connection string for EF tooling)

### 1) Configure your connection string

Update the SQL Server connection string(s) to match your environment.

### 2) Create and apply migrations (first time)

From the repo root:

```bash
dotnet tool restore
dotnet ef migrations add InitialCreate -p .\FitnessAppPro\FitnessAppPro.csproj -s .\FitnessAppPro\FitnessAppPro.csproj
dotnet ef database update -p .\FitnessAppPro\FitnessAppPro.csproj -s .\FitnessAppPro\FitnessAppPro.csproj
```

If `dotnet ef` is not available, install it:

```bash
dotnet tool install --global dotnet-ef
```

## Models

EF Core entities live in `FitnessAppPro/Models/`:

- `User`
- `Workout` (linked to `User`)
- `Payment` (linked to `User`)

