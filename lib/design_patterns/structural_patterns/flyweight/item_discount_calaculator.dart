
import 'i_discount_calculature.dart';

class ItemDiscountCalaculator implements IDiscountCalaculator{

  @override
  double getDiscountCalaculator(DateTime currentDate, String? itemId) {
    return 0.5;
  }

}