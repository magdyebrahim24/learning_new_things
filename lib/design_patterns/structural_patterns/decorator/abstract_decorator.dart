import 'package:learning_new_things/design_patterns/structural_patterns/decorator/notifaction_email_decorator.dart';
import 'package:learning_new_things/design_patterns/structural_patterns/proxy/concrate_sms_service.dart';

import '../proxy/sms_service.dart';

abstract class AbstractDecorator implements SmsService {
  SmsService? _smsService;

  void setObj(SmsService smsService) {
    _smsService = smsService;
  }

  @override
  String sendSms(String customerId, String number, String sms) {
    if (_smsService != null) {
      return _smsService?.sendSms(customerId, number, sms) ?? '';
    } else {
      return " Service Obj Not Initialized";
    }
  }
}


void main(){
  ConcreteSmsService concreteSmsService = ConcreteSmsService();
  NotificationEmailDecorator notificationEmailDecorator =NotificationEmailDecorator();

  print(notificationEmailDecorator.sendSms('12345', 'number', 'hey send sms'));
}