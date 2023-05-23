import '../models/job_application.dart';

abstract class BaseHandler {
  BaseHandler? nextHandler;
  void setNext(BaseHandler handler) {
    nextHandler = handler;
  }

  void handleRequest(JobApplication jobApplication);

  void toNext(JobApplication request) {
    if (nextHandler != null) {
      nextHandler?.handleRequest(request);
    } else {
      request.comments.add(setEndMessage());
      print(setEndMessage());
    }
  }

  String setEndMessage();
}
