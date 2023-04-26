import 'package:learning_new_things/design_patterns/structural_patterns/flyweight/day_discount_calaculator.dart';
import 'i_discount_calculature.dart';
import 'item_discount_calaculator.dart';

class DiscountCalaculatorFactory {
  IDiscountCalaculator getDicount(String calcType) {

    // هنا عملت ماب عشان مش كل مره يخش يعمل ا،بجكت جديد
    // يستخدم نفس الاوبجكت لو موجود

    Map<String, IDiscountCalaculator> discountCalcList = {};

    IDiscountCalaculator? iDiscountCalaculator;

    if (discountCalcList.containsKey(calcType)) {
      iDiscountCalaculator = discountCalcList[calcType];
    } else {
      switch (calcType) {
        case "day":
          iDiscountCalaculator = DayDiscountCalaculator();
          discountCalcList.putIfAbsent(
              calcType, () => DayDiscountCalaculator());
          break;
        case "item":
          iDiscountCalaculator = ItemDiscountCalaculator();
          discountCalcList.putIfAbsent(
              calcType, () => ItemDiscountCalaculator());
          break;
        default:
          iDiscountCalaculator = DayDiscountCalaculator();
      }
    }
    return iDiscountCalaculator!;
  }
}

void main() {
  DiscountCalaculatorFactory calaculatorFactory = DiscountCalaculatorFactory();
  IDiscountCalaculator calaculator = calaculatorFactory.getDicount("day");
  double discount = calaculator.getDiscountCalaculator(DateTime.now(), 'day');
  print("discount =====>> $discount");
}
