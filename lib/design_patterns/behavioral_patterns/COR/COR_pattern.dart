import 'package:learning_new_things/design_patterns/behavioral_patterns/COR/handlers/hr_handler.dart';
import 'package:learning_new_things/design_patterns/behavioral_patterns/COR/handlers/tecnical_handler.dart';
import 'package:learning_new_things/design_patterns/behavioral_patterns/COR/models/job_application.dart';

void main() {
  JobApplication jobApplication =
      JobApplication("Magdy Ebrahim", "Flutter Developer", 123, []);
  HrHandler hrHandler = HrHandler();
  TechnicalHandler technicalHandler = TechnicalHandler();

  technicalHandler.setNext(hrHandler);
  technicalHandler.handleRequest(jobApplication);
}
