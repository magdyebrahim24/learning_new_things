import 'package:flutter/foundation.dart';
import 'package:learning_new_things/design_patterns/abstract_factory/products/i_payment_card.dart';
import 'package:learning_new_things/design_patterns/factory_method/products/i_bank.dart';
import 'factory/bank_factory.dart';

void main() {
  BankAbstractFactory bankFactory = BankAbstractFactory();
  IBank iBank = bankFactory.getBank('bankB');

  String bankWithDraw = iBank.withDraw();
  debugPrint("the bank with draw is $bankWithDraw");

  debugPrint("========================================");

  IPaymentCard iPaymentCard = bankFactory.getPaymentCard('visa');
  String paymentCardName = iPaymentCard.getName();
  debugPrint("payment Card Name is $paymentCardName");
}

// Factory Method Pattern
//   Define An Interface for creating ab Obj but let sub Classes decide which class to be instantiate
// create Obj without exposing the creation logic to the client and refer
// to newly created object using common interface

//  ==================================

// Abstract Factory Method
// ==> Factory of Factories
