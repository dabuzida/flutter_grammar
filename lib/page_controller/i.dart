import 'package:flutter/material.dart';
import 'package:flutter_grammar/page_controller/callback_tester.dart';

import 'custom_table_ui.dart';

class I extends StatefulWidget {
  const I({super.key});

  @override
  State<I> createState() => _IState();
}

class _IState extends State<I> {
  @override
  Widget build(BuildContext context) {
    final int kk = CallbackTester().callCallback(
      funtionSelector: 11,
      myFuntion: () {
        print('myFuntion');
      },
      myFuntion2: () {
        print('myFuntion2');
      },
      myFuntion3: () {
        print('myFuntion3');
      },
      myFuntion4: (x) {
        print('myFuntion4');
      },
      myFuntion5: (x) {
        print('myFuntion5');
      },
      myFuntion6: ({x6 = 3333}) {
        print('myFuntion6');
      },
      myFuntion7: ({x7 = 2222}) {
        print('myFuntion7');

        return x7;
      },
      myFuntion8: ({x8 = 4444}) {
        print('myFuntion8');

        return x8 * 2;
      },
    );
    return Text(kk.toString());

    // return Container(
    //   child: CustomTableUI.buildUIPageController(
    //     0,
    //     15,
    //     15,
    //     15,
    //     onStart: () {},
    //     onPage: (page) {},
    //     onEnd: (lastPage) {},
    //   ),
    // );
  }

  int _testCallback({
    required int funtionSelector,
    VoidCallback? myFuntion,
    required Function() myFuntion2,
    Function()? myFuntion3,
    Function(int x4)? myFuntion4,
    Function(String x5)? myFuntion5,
    Function({required int x6})? myFuntion6,
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
      default:
    }

    return 1;
  }
}
