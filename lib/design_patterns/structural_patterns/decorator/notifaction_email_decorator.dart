import 'abstract_decorator.dart';

class NotificationEmailDecorator extends AbstractDecorator {
  String sendEmail(String customerId, String email) {
    return "Customer $customerId send : $email at (${DateTime.now().toString()}) ";
  }

  @override
  String sendSms(String customerId, String number, String sms) {
    String sendSmsMsg = super.sendSms(customerId, number, sms);
    String sendEmailMsg = sendEmail(customerId, sms);

    return "$sendSmsMsg\n$sendEmailMsg";
  }
}
