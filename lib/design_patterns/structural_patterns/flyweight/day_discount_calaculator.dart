
import 'i_discount_calculature.dart';

class DayDiscountCalaculator implements IDiscountCalaculator{

  @override
  double getDiscountCalaculator(DateTime currentDate, String? itemId) {
    return .2;
  }

}