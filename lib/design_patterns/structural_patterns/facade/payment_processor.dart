class PaymentProcessor {
  bool handlePayment(double amount, String bankInfo) {
    if (amount > 10000) {
      print('Your $amount is refused because not available in $bankInfo  ');
      return false;
    } else {
      print('Your $amount is acceptable in $bankInfo  ');
      return true;
    }
  }
}
