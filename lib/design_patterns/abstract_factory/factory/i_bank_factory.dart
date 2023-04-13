
import 'package:learning_new_things/design_patterns/abstract_factory/products/i_payment_card.dart';
import 'package:learning_new_things/design_patterns/factory_method/products/i_bank.dart';

// ممكن استغني عن دا في ال Factory method
// بس لازم يبقي موجود في ال  abstract factory

abstract class IBankAbstractFactory{

  IBank getBank(String bankCode);

  IPaymentCard getPaymentCard(String cardCode);
}