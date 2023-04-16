class SingletonPattern {
  int count = 0;

  static SingletonPattern? _instance;

  static SingletonPattern? getInstance() {
    _instance ??= SingletonPattern();
    return _instance;
  }

  void addOne() {
    count++;
  }
}

class SingletonPatternSecondWay {
  SingletonPatternSecondWay._();
}
