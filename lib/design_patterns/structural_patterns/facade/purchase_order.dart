import 'package:learning_new_things/design_patterns/structural_patterns/facade/models/basket_item.dart';
import 'package:learning_new_things/design_patterns/structural_patterns/facade/sms_notification.dart';
import 'invertory_order.dart';
import 'invertroy.dart';
import 'payment_processor.dart';
import 'purchase_invoice.dart';
import 'shopping_basket.dart';

class PurchaseOrder {
  bool createOrder(ShoppingBasket shoppingBasket, String customerInfo) {
    // check stock
    bool isAvailable = true;
    Inventory inventory = Inventory();

    for (BasketItem item in shoppingBasket.getItems) {
      if (!inventory.checkItemQuantity(item.productId!, item.quantity!)) {
        isAvailable = false;
      }
    }

    if (isAvailable) {
      // Create Inventory Order
      InventoryOrder inventoryOrder = InventoryOrder();
      inventoryOrder.createOrder(shoppingBasket, "123");

      // Create Invoice
      PurchaseInvoice invoice = PurchaseInvoice();
      var inv =
          invoice.createInvoice(shoppingBasket, "address:132,id=456,email=xyz");

      // Payment
      PaymentProcessor payment = PaymentProcessor();
      payment.handlePayment(inv.netTotal, "acc=123456789");

      // Send SMS
      SmsNotification sms = SmsNotification();
      sms.sendNotification("123", "Invoice Created");

      return true;
    } else {
      print('this items isnt available');
      return false;
    }
  }
}
