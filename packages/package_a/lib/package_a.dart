library package_a;

import 'package:flutter/foundation.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class LZPerson {
  String name;
  int age;
  LZPerson(this.name, this.age);

  void sayHello() {
    if (kDebugMode) {
      print('Hello, my name is $name, I am $age years old.');
    }
  }
}

class LZPerson2 {
  String name;
  int age;
  LZPerson2(this.name, this.age);

  void sayHello() {
    if (kDebugMode) {
      print('Hello, my name is $name, I am $age years old.');
    }
  }
}

class LZPerson3 {
  String name;
  int age;
  LZPerson3(this.name, this.age);

  void sayHello() {
    if (kDebugMode) {
      print('Hello, my name is $name, I am $age years old.');
    }
  }
}
