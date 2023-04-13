import 'package:learning_new_things/design_patterns/abstract_factory/products/i_payment_card.dart';
import 'package:learning_new_things/design_patterns/abstract_factory/products/payment_card.dart';
import 'package:learning_new_things/design_patterns/factory_method/products/bank_a.dart';
import 'package:learning_new_things/design_patterns/factory_method/products/bank_b.dart';
import 'package:learning_new_things/design_patterns/factory_method/products/i_bank.dart';

import 'i_bank_factory.dart';

class BankAbstractFactory implements IBankAbstractFactory {
  @override
  IBank getBank(String bankCode) {
    switch (bankCode) {
      case "bankA":
        return BankA();
      case "bankB":
      default:
        return BankB();
    }
  }

  @override
  IPaymentCard getPaymentCard(String cardCode) {
    switch (cardCode) {
      case "master":
        return MasterPaymentCard();
      case "payPal":
        return PayPalPaymentCard();
      case "visa":
      default:
        return VisaPaymentCard();
    }
  }
}
