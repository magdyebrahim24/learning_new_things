import 'package:learning_new_things/design_patterns/structural_patterns/proxy/concrate_sms_service.dart';
import 'package:learning_new_things/design_patterns/structural_patterns/proxy/sms_service.dart';


// here we can implements from sms service
// when make Obj we user from sms service not dealing with
class SmsProxy{
//  to count for each number send sms , if count > 100 dont send sms

  SmsService? _smsService;
  final Map<String, int> _sendCount = {};

  static const smsLimitSendCount = 3;

  String sendSms(String customerId, String number, String sms) {
    _smsService ??= ConcreteSmsService();

    // first call
    if (!_sendCount.containsKey(customerId)) {
      _sendCount.putIfAbsent(
        customerId,
        () => 1,
      );
    } else {
      int sendSmsCount = _sendCount[customerId] ?? 0;
      _sendCount[customerId] = sendSmsCount + 1;
      if (sendSmsCount >= smsLimitSendCount) {
        return "Sms Cant Send , You Rich The Maximum Count";
      }
    }
    return _smsService?.sendSms(customerId, number, sms) ?? '';
  }
}

void main() {
  SmsProxy smsProxy = SmsProxy();
  print(smsProxy.sendSms('123456', '23456789', 'first sms'));
  print(smsProxy.sendSms('123456', '23456789', 'second sms'));
  print(smsProxy.sendSms('123456', '23456789', 'third sms'));
  print(smsProxy.sendSms('123456', '23456789', 'forth sms'));
  print(smsProxy.sendSms('123456', '23456789', 'fifth sms'));
  print(smsProxy.sendSms('123456', '23456789', 'six sms'));
}
