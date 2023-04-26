import 'package:learning_new_things/design_patterns/structural_patterns/facade/shopping_basket.dart';
import 'models/basket_item.dart';

class PurchaseInvoice {
  double discount = 0;
  double totalAmount = 0;
  double netTotal = 0;

  PurchaseInvoice createInvoice(ShoppingBasket basket,String customerInfo){
    PurchaseInvoice invoice = PurchaseInvoice();
    List<BasketItem> items = basket.getItems;

    for(BasketItem item in items){
      invoice.totalAmount += (item.productPrice ?? 1 * (item.quantity ?? 1));
    }

    // apply discount
    if(items.length > 5) invoice.discount = 20;

    invoice.netTotal = invoice.totalAmount - invoice.discount;

    return invoice;
  }
}
