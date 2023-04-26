import 'package:learning_new_things/design_patterns/structural_patterns/facade/invertory_order.dart';
import 'package:learning_new_things/design_patterns/structural_patterns/facade/invertroy.dart';
import 'package:learning_new_things/design_patterns/structural_patterns/facade/models/basket_item.dart';
import 'package:learning_new_things/design_patterns/structural_patterns/facade/payment_processor.dart';
import 'package:learning_new_things/design_patterns/structural_patterns/facade/purchase_invoice.dart';
import 'package:learning_new_things/design_patterns/structural_patterns/facade/shopping_basket.dart';
import 'purchase_order.dart';



void main() {

  print('================================  With Out Using Facade Pattern  =========================================');

  //  create basket
  ShoppingBasket shoppingBasket = ShoppingBasket();

  BasketItem basketItem = BasketItem();
  basketItem.productId = 9868086;
  basketItem.productName = "Mobile RedMe Poco";
  basketItem.productDes = "good mobile from xoami";
  basketItem.productPrice = 7000;
  basketItem.quantity = 50;

  // check stock ( if item available )
  Inventory inventory = Inventory();
  if(inventory.checkItemQuantity(basketItem.productId!, basketItem.quantity!)){
    shoppingBasket.addItem(basketItem);
  }

  // create Inventory Order
  InventoryOrder inventoryOrder = InventoryOrder();
  inventoryOrder.createOrder(shoppingBasket, "123456");

  // create invoice
  PurchaseInvoice purchaseInvoice = PurchaseInvoice();
  PurchaseInvoice invoice = purchaseInvoice.createInvoice(shoppingBasket, "Magdy Ebrahim");

  // payment
  PaymentProcessor paymentProcessor = PaymentProcessor();
  paymentProcessor.handlePayment(invoice.netTotal, 'Bank Masr');



//   ===========================  Using Facade Pattern ===================================

  print('================================  Using Facade Pattern  =========================================');

  ShoppingBasket basket = ShoppingBasket();
  basket.addItem(BasketItem(productDes: "good mobile",productId: 123456,productName: "Air Boads",productPrice: 56789,quantity: 12));
  basket.addItem(BasketItem(productDes: "bad mobile",productId: 45678,productName: "keyboard",productPrice: 3456,quantity: 22));
  basket.addItem(BasketItem(productDes: "bad mobile edfghj",productId: 5678,productName: "dfghjkl",productPrice: 35,quantity: 1));

  PurchaseOrder purchaseOrder = PurchaseOrder();
  purchaseOrder.createOrder(basket, "Ali Ahmed");

}
