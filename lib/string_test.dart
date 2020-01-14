import 'package:flutter/material.dart';

class StringTest {

  String value;

  StringTest.construct(this.value);

  static void test() {
    String string = '01234567';
    print('string======');
    print(string.length);
    string = string+'890';
    print(string);
    print(string.substring(2, 8));
    dynamic a = string;
    a = 2;
    print(a);
  }

  void printValue() {
    print('value = $value');
  }
}