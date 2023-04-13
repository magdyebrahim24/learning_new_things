import 'package:flutter/cupertino.dart';
import 'package:learning_new_things/design_patterns/factory_method/products/i_bank.dart';
import 'factory/bank_factory.dart';

void main() {
  BankFactory bankFactory = BankFactory();
  IBank iBank = bankFactory.getBank('bankB');

  String bankWithDraw = iBank.withDraw();
  debugPrint("the bank with draw is $bankWithDraw");
}
