import 'package:flutter/foundation.dart';
import 'package:learning_new_things/design_patterns/factory_method/products/i_bank.dart';
import 'factory/bank_factory.dart';

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

void logDebug(Object? object) {
  if (object is String) {}

  if (kDebugMode) {
    print(object);
  }
}

 const String ANSI_RESET = "\u001B[0m";
const  String ANSI_BLACK = "\u001B[30m";
const  String ANSI_RED = "\u001B[31m";
const  String ANSI_GREEN = "\u001B[32m";
const  String ANSI_YELLOW = "\u001B[33m";
const  String ANSI_BLUE = "\u001B[34m";
const  String ANSI_PURPLE = "\u001B[35m";
const  String ANSI_CYAN = "\u001B[36m";
const  String ANSI_WHITE = "\u001B[37m";

prettyPrint({required String value, String? type}) {
  List<String> valueList;
  if (value.isNotEmpty && value.contains(":")) {
    valueList = value.split(":");
    String tag = valueList[0];
    String message = valueList[1].toString();
    switch (type) {
      case "error":
        {
          print(ANSI_RED + "This text is red!" + ANSI_RESET);
          // debugPrint('\x1B[33m${"💎 STATUS CODE $tag: $value"}\x1B[0m');
          break;
        }
      case "success":
        {
          debugPrint('\x1B[32m${"⚡ $tag: $message"}\x1B[0m');
          break;
        }
      case "hint":
      case null:
        {
          debugPrint('\x1B[31m${" $tag: $value"}\x1B[0m');
          break;
        }
      case "check":
        {
          debugPrint('\x1B[36m${"💡 RESPONSE $tag: $value"}\x1B[0m');
          break;
        }
      case "warning":
        {
          debugPrint('\x1B[34m${"📌 URL $tag: $value"}\x1B[0m');
          break;
        }
    }
  }
}
