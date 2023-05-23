import 'package:learning_new_things/design_patterns/behavioral_patterns/COR/handlers/basic_handler.dart';
import 'package:learning_new_things/design_patterns/behavioral_patterns/COR/models/job_application.dart';

class TechnicalHandler extends BaseHandler {
  @override
  void handleRequest(JobApplication jobApplication) {
    /// first handel
    /***
        print('TechnicalHandler Comment');
        toNext(jobApplication);
     **/

    /***
        /// second handel
        if (jobApplication.jobCode == 123) {
        print('TechnicalHandler Comment');
        } else {
        toNext(jobApplication);
        }
     **/

    /// third handle
    if (jobApplication.jobCode == 123) {
      print('TechnicalHandler Comment');
      toNext(jobApplication);
    } else {
      toNext(jobApplication);
    }
  }

  @override
  String setEndMessage() {
    return "End by TechnicalHandler";
  }
}
