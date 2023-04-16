

import '../../factory_method/products/i_bank.dart';

class BankB implements IBank{

  @override
  String withDraw() {
    return "Bank B Will Do Its Best ....";
  }

}