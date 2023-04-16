
import '../../factory_method/products/i_bank.dart';

class BankA implements IBank{

  @override
  String withDraw() {
    return "Bank A Will Do some thing ....";
  }

}