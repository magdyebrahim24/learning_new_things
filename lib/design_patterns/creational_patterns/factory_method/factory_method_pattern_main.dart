

import 'package:flutter/cupertino.dart';

import 'factory/bank_factory.dart';
import 'products/i_bank.dart';

void main() {
  BankFactory bankFactory = BankFactory();
  IBank iBank = bankFactory.getBank('bankB');

  String bankWithDraw = iBank.withDraw();
  debugPrint("the bank with draw is $bankWithDraw");

  // prettyPrint(value: "hint : message is",type: "error");
}

// Factory Method Pattern
//   Define An Interface for creating ab Obj but let sub Classes decide which class to be instantiate

// create Obj without exposing the creation logic to the client and refer
// to newly created object using common interface

