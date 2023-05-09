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



class SocialAuthPackagesResultSingleton {
  SocialAuthPackagesResultSingleton._();

  static SocialAuthPackagesResultSingleton instance =
  SocialAuthPackagesResultSingleton._();

  int x = 0;

  void setValue(int y) {
    x = y;
    print('xxxxx $x');
  }

  void printX() => print(x);
}
