using Microsoft.Maui.Controls;
using System;
using System.Linq;

namespace FitnessAppPro.Views
{
    public partial class PaymentPage : ContentPage
    {
        private readonly string _plan;
        private readonly double _amount;
        private string _selectedMethod;

        // Pass plan name and amount
        public PaymentPage(string plan, double amount)
        {
            InitializeComponent();
            _plan = plan;
            _amount = amount;

            PlanLabel.Text = $"Plan: {_plan} MONTHS";
            AmountLabel.Text = $"Amount: ₹{_amount}";

            PlanLabel.IsVisible = true;
            AmountLabel.IsVisible = true;
        }
        private void CardExpiryEntry_TextChanged(object sender, TextChangedEventArgs e)
        {
            var entry = sender as Entry;

            if (string.IsNullOrEmpty(entry.Text))
            {
                ExpiryValidationLabel.Text = "";
                return;
            }

            // Remove non-digit characters
            string digitsOnly = new string(entry.Text.Where(char.IsDigit).ToArray());

            // Limit to 4 digits (MMYY)
            if (digitsOnly.Length > 4)
                digitsOnly = digitsOnly.Substring(0, 4);

            // Auto-insert slash after 2 digits
            if (digitsOnly.Length > 2)
                entry.Text = digitsOnly.Substring(0, 2) + "/" + digitsOnly.Substring(2);
            else
                entry.Text = digitsOnly;

            // Keep cursor at the end
            entry.CursorPosition = entry.Text.Length;

            // Validate month only if 2 digits entered
            if (digitsOnly.Length >= 2)
            {
                int month = int.Parse(digitsOnly.Substring(0, 2));
                if (month < 1 || month > 12)
                {
                    ExpiryValidationLabel.Text = "Month must be between 01 and 12";
                }
                else
                {
                    ExpiryValidationLabel.Text = "";
                }
            }

            // Validate full expiry if 4 digits entered
            if (digitsOnly.Length == 4)
            {
                int month = int.Parse(digitsOnly.Substring(0, 2));
                int year = 2000 + int.Parse(digitsOnly.Substring(2, 2));

                var lastDayOfMonth = new DateTime(year, month, DateTime.DaysInMonth(year, month));
                if (lastDayOfMonth < DateTime.Today)
                {
                    ExpiryValidationLabel.Text = "Card expiry must be current or future month";
                }
            }
        }


        // Function to validate expiry date is in the future
        private bool IsExpiryValid(string expiry)
        {
            if (string.IsNullOrWhiteSpace(expiry) || !expiry.Contains("/"))
                return false;

            var parts = expiry.Split('/');
            if (parts.Length != 2) return false;

            if (!int.TryParse(parts[0], out int month) || !int.TryParse(parts[1], out int year))
                return false;

            if (month < 1 || month > 12) return false;

            int fullYear = 2000 + year; // assuming YY format
            var lastDayOfMonth = new DateTime(fullYear, month, DateTime.DaysInMonth(fullYear, month));

            return lastDayOfMonth >= DateTime.Today;
        }

        // Determine card type by prefix
        private string GetCardType(string cardNumber)
        {
            if (string.IsNullOrEmpty(cardNumber))
                return "Unknown Card";

            if (cardNumber.StartsWith("4"))
                return "Visa";

            if (cardNumber.Length >= 2)
            {
                int prefix = int.Parse(cardNumber.Substring(0, 2));
                if (prefix >= 51 && prefix <= 55)
                    return "MasterCard";
                if (prefix == 34 || prefix == 37)
                    return "American Express";
                if (prefix == 36 || prefix == 38)
                    return "Diners Club";
            }

            if (cardNumber.StartsWith("6011"))
                return "Discover";

            return "Unknown Card";
        }

        // Validate length based on card type
        private void CardNumberEntry_TextChanged(object sender, TextChangedEventArgs e)
        {
            var entry = sender as Entry;

            if (string.IsNullOrEmpty(entry.Text))
            {
                CardValidationLabel.Text = "";
                return;
            }

            // Keep only digits
            string numericText = new string(entry.Text.Where(char.IsDigit).ToArray());
            if (numericText != entry.Text)
                entry.Text = numericText;

            // Detect card type and validate length
            string cardType = GetCardType(numericText);
            bool isValidLength = IsCardLengthValid(numericText, cardType);

            if (cardType == "Unknown Card")
            {
                CardValidationLabel.Text = "Unknown card type";
            }
            else if (!isValidLength)
            {
                CardValidationLabel.Text = $"{cardType} number must have correct length";
            }
            else
            {
                CardValidationLabel.Text = ""; // Valid
            }
        }

        // Validate length based on card type
        private bool IsCardLengthValid(string cardNumber, string cardType)
        {
            switch (cardType)
            {
                case "Visa":
                    return cardNumber.Length == 13 || cardNumber.Length == 16;
                case "MasterCard":
                case "Discover":
                    return cardNumber.Length == 16;
                case "American Express":
                    return cardNumber.Length == 15;
                case "Diners Club":
                    return cardNumber.Length == 14;
                default:
                    return false;
            }
        }



        // Show/hide corresponding form based on method
        private void OnPaymentMethodChanged(object sender, CheckedChangedEventArgs e)
        {
            var radio = sender as RadioButton;
            if (radio.IsChecked)
            {
                _selectedMethod = radio.Value.ToString();
                PaymentForm.IsVisible = true;

                // Show appropriate fields
                UpiEntry.IsVisible = _selectedMethod == "UPI";
                CardNumberEntry.IsVisible = CardExpiryEntry.IsVisible = CardCvvEntry.IsVisible = NameonCardEntry.   IsVisible = _selectedMethod == "Card";
            }
        }

        // Confirm payment
        private async void OnConfirmPayment(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(_selectedMethod))
            {
                await DisplayAlert("Error", "Please select a payment method.", "OK");
                return;
            }

            if (_selectedMethod == "UPI")
            {
                if (string.IsNullOrWhiteSpace(UpiEntry.Text))
                {
                    await DisplayAlert("Error", "Please enter your UPI ID.", "OK");
                    return;
                }
                // Simulate UPI payment
                await DisplayAlert("UPI Payment", $"Payment of ₹{_amount} successful via UPI: {UpiEntry.Text}", "OK");
            }
            else if (_selectedMethod == "Card")
            {
                if (string.IsNullOrWhiteSpace(CardNumberEntry.Text) ||
                    string.IsNullOrWhiteSpace(CardExpiryEntry.Text) ||
                    string.IsNullOrWhiteSpace(CardCvvEntry.Text))
                {
                    await DisplayAlert("Error", "Please enter all card details.", "OK");
                    return;
                }
                // Simulate Card payment
                await DisplayAlert("Card Payment", $"Payment of ₹{_amount} successful using Card ending with {CardNumberEntry.Text[^4..]}", "OK");
            }

            // Go back to home
            await Navigation.PopToRootAsync();
        }
    }
}
