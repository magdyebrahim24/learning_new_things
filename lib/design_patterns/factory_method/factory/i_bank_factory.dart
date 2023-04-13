
import 'package:learning_new_things/design_patterns/factory_method/products/i_bank.dart';

// ممكن استغني عن دا في ال Factory method
// بس لازم يبقي موجود في ال  abstract factory

abstract class IBankFactory{

  IBank getBank(String bankCode);
}