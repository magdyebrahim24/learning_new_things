

class BasketItem{
  BasketItem({this.productName,this.productId,this.quantity,this.productPrice,this.productDes});



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