import 'package:learning_new_things/design_patterns/structural_patterns/facade/models/basket_item.dart';
import 'package:learning_new_things/design_patterns/structural_patterns/facade/shopping_basket.dart';

class InventoryOrder {
  String createOrder(ShoppingBasket shoppingBasket, String storeId) {
    List<BasketItem> items =  shoppingBasket.getItems;
    BasketItem basketItem = BasketItem();
    basketItem.productName = "mobile";
    basketItem.productId = 123456789;
    basketItem.productDes = 'Good';
    items.add(basketItem);
    items.add(basketItem);
    items.add(basketItem);
    items.add(basketItem);
    String itemsSold = items.toString();
    return "your items are ==> $itemsSold\n---------------------\nOrder Number Is : 1234560";
  }
}


void main(){
  ShoppingBasket shoppingBasket = ShoppingBasket();
  InventoryOrder inventoryOrder =InventoryOrder();

  print(inventoryOrder.createOrder(shoppingBasket, '123456'));
}