class SingletonPattern {
  int count = 0;
  // SingletonPattern._();
  static SingletonPattern? _instance;

  static SingletonPattern? getInstance() {
    _instance ??= SingletonPattern();
    return _instance;
  }

  void emptyObj() {
    _instance = null;
  }

  void addOne() {
    count++;
  }
}

void main() {
  SingletonPattern? singletonPattern1 = SingletonPattern.getInstance();
  SingletonPattern? singletonPattern2 = SingletonPattern.getInstance();
  SingletonPattern? singletonPattern3 = SingletonPattern();
  SingletonPattern? singletonPattern4 = SingletonPattern();

  singletonPattern1?.addOne();
  singletonPattern2?.addOne();

  singletonPattern3.addOne();

  singletonPattern1?.emptyObj();

  print(singletonPattern1?.count);
  print(singletonPattern2?.count);
  print(singletonPattern3.count);
  print(singletonPattern4.count);
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

class Student {
  static int count = 0;

  final String name;
  final int age;
  final String color;

  Student(this.name, this.age, this.color) {
    ++count;
  }
}
