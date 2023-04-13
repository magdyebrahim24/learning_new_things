
import 'package:learning_new_things/design_patterns/factory_method/products/i_bank.dart';

class BankA implements IBank{

  @override
  String withDraw() {
    return "Bank A Will Do some thing ....";
  }

}