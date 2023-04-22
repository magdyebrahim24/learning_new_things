

class BasketItem{
  double? productId;
  double? productPrice;
  double? quantity;
  String? productName;
  String? productDes;


  @override
  String toString() {
    return 'productId: $productId, productName: $productName, productDes: $productDes\n';
  }
}