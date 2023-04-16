



import '../products/bank_a.dart';
import '../products/bank_b.dart';
import '../products/i_bank.dart';
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
