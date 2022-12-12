import 'package:flutter/material.dart';

class CallbackTester {
  int callCallback({
    required int funtionSelector,
    VoidCallback? myFuntion,
    required Function() myFuntion2,
    Function()? myFuntion3,
    Function(int x4)? myFuntion4,
    Function(String x5)? myFuntion5,
    Function({required int x6})? myFuntion6,
    int Function({required int x7})? myFuntion7,
    required int Function({required int x8}) myFuntion8,
  }) {
    int num = 1;
    int num2 = 2;
    String str = 'brain';
    switch (funtionSelector) {
      case 1:
        myFuntion?.call();
        break;
      case 2:
        myFuntion2.call();
        break;
      case 3:
        myFuntion3?.call();
        break;
      case 4:
        myFuntion4?.call(num);
        break;
      case 5:
        myFuntion5?.call(str);
        break;
      case 6:
        myFuntion6?.call(x6: num2);
        break;
      case 7:
        return myFuntion7?.call(x7: num2) ?? 77777;
      // return myFuntion7!.call(x7: num2);
      // num3 = myFuntion7?.call(x7: num2);
      // return num3!;
      case 8:
        return myFuntion8.call(x8: num2);
      default:
        return 99999;
    }
    return 888888;
  }

  String callCallback2({
    required int funtionSelector,
    VoidCallback? myFuntion, // = void Function()? myFuntion
    int Function(int x2)? myFuntion2,
    int Function({required int x3})? myFuntion3,
    required int Function(int x4) myFuntion4,
    required int Function({required int x5}) myFuntion5,
  }) {
    late String result;
    switch (funtionSelector) {
      case 1:
        myFuntion?.call();
        result = 1.toString();
        break;
      case 2:
        result = 'myFuntion2';
        break;
      case 3:
        myFuntion3?.call(x3: 3);
        result = 'myFuntion';
        break;
      case 4:
        myFuntion4.call(4);
        result = 'myFuntion';
        break;
      case 5:
        myFuntion5.call(x5: 5);
        result = 'myFuntion';
        break;
      default:
        break;
    }
    return 'result: $result';
  }
}

String callCallback3({
  required int funtionSelector,
  VoidCallback? myFuntion,
  required Function() myFuntion2,
  Function()? myFuntion23,
  Function()? myFuntion3,
  Function(int x4)? myFuntion4,
  Function(String x5)? myFuntion5,
  Function({required int x6})? myFuntion6,
  int Function({required int x7})? myFuntion7,
  required int Function({required int x8}) myFuntion8,
}) {
  int num = 1;
  int num2 = 2;
  String str = 'brain';
  switch (funtionSelector) {
    case 1:
      myFuntion?.call();
      break;
    case 2:
      myFuntion2.call();
      break;
    case 3:
      myFuntion3?.call();
      break;
    case 4:
      myFuntion4?.call(num);
      break;
    case 5:
      myFuntion5?.call(str);
      break;
    case 6:
      myFuntion6?.call(x6: num2);
      break;
    case 7:
      return 'ds';
    // return myFuntion7!.call(x7: num2);
    // num3 = myFuntion7?.call(x7: num2);
    // return num3!;
    case 8:
      return '34f';
    default:
      return '99999';
  }
  return '888888';
}
