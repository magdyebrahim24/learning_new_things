
import 'package:learning_new_things/design_patterns/factory_method/products/i_bank.dart';

abstract class IBankFactory{

  IBank getBank(String bankCode);
}