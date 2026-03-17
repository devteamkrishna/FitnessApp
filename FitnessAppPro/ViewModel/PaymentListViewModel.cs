using FitnessAppPro.Models;
using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace FitnessAppPro.ViewModel
{
    public class PaymentListViewModel : INotifyPropertyChanged
    {
        private string _searchText;
        private ObservableCollection<Payment> _payments;
        private ObservableCollection<Payment> _filteredPayments;

        // Constructor to initialize with sample data
        public PaymentListViewModel()
        {
            

            // Initially, the filtered payments list is the same as the full payments list
            FilteredPayments = new ObservableCollection<Payment>(Payments);
        }

        // List of all payments
        public ObservableCollection<Payment> Payments
        {
            get => _payments;
            set
            {
                _payments = value;
                OnPropertyChanged();
            }
        }

        // List of filtered payments (bound to the CollectionView in the UI)
        public ObservableCollection<Payment> FilteredPayments
        {
            get => _filteredPayments;
            set
            {
                _filteredPayments = value;
                OnPropertyChanged();
            }
        }

        // Search text for filtering payments
        public string SearchText
        {
            get => _searchText;
            set
            {
                if (_searchText != value)
                {
                    _searchText = value;
                    OnPropertyChanged();

                    // Apply the filter whenever the search text changes
                    FilterPayments();
                }
            }
        }

        // Filter payments based on the search text
        private void FilterPayments()
        {
            if (string.IsNullOrWhiteSpace(SearchText))
            {
                // If search text is empty, show all payments
                FilteredPayments = new ObservableCollection<Payment>(Payments);
            }
            else
            {
                // Filter payments by username or amount
                //FilteredPayments = new ObservableCollection<Payment>(Payments
                //    .Where(p => p.UserId.Contains(SearchText, StringComparison.OrdinalIgnoreCase) ||
                //                p.Amount.ToString("F2").Contains(SearchText)));
            }
        }

        // PropertyChanged event to notify UI of property changes
        public event PropertyChangedEventHandler PropertyChanged;

        private void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
