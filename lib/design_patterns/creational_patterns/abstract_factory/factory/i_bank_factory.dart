
import '../../factory_method/products/i_bank.dart';
import '../products/i_payment_card.dart';

// ممكن استغني عن دا في ال Factory method
// بس لازم يبقي موجود في ال  abstract factory

abstract class IBankAbstractFactory{

  IBank getBank(String bankCode);

  IPaymentCard getPaymentCard(String cardCode);
}