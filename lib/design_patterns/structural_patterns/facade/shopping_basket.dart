import 'models/basket_item.dart';

class ShoppingBasket {
  final List<BasketItem> _items = <BasketItem>[];

  void addItem(BasketItem item) {
    _items.add(item);
  }

  void removeItem(double itemId) {
    _items.removeWhere((element) => element.productId == itemId);
  }

  List<BasketItem> get getItems => _items;
}
