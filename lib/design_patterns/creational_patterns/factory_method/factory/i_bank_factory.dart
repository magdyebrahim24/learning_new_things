

// ممكن استغني عن دا في ال Factory method
// بس لازم يبقي موجود في ال  abstract factory


import '../products/i_bank.dart';

abstract class IBankFactory{

  IBank getBank(String bankCode);
}