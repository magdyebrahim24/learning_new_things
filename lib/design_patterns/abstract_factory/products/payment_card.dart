import 'package:learning_new_things/design_patterns/abstract_factory/products/i_payment_card.dart';

class VisaPaymentCard implements IPaymentCard {
  @override
  String getName() {
    return "Visa Payment Card";
  }

  @override
  String getProviderInfo() {
    return "Visa ....";
  }
}

class MasterPaymentCard implements IPaymentCard {
  @override
  String getName() {
    return "Master Payment Card Payment Card";
  }

  @override
  String getProviderInfo() {
    return "Master Payment Card ....";
  }
}

class PayPalPaymentCard implements IPaymentCard {
  @override
  String getName() {
    return "PayPal Payment Card Payment Card";
  }

  @override
  String getProviderInfo() {
    return "PayPal Payment Card ....";
  }
}
