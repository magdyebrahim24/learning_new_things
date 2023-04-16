
import 'package:learning_new_things/design_patterns/structural_patterns/proxy/sms_service.dart';

class ConcreteSmsService implements SmsService{
  @override
  String sendSms(String customerId, String number, String sms) {
    return "Send Sms To $customerId : Sms Content : $sms";
  }

}