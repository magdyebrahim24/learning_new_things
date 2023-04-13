import 'package:learning_new_things/design_patterns/factory_method/products/bank_a.dart';
import 'package:learning_new_things/design_patterns/factory_method/products/bank_b.dart';
import 'package:learning_new_things/design_patterns/factory_method/products/i_bank.dart';

import 'i_bank_factory.dart';

class BankFactory implements IBankFactory {
  @override
  IBank getBank(String bankCode) {
    switch (bankCode) {
      case "bankA":
        return BankA();
      case "bankB":
        return BankB();
      default:
        return BankA();
    }
  }
}
