import 'package:flutter/material.dart';

class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  @override
  Widget build(BuildContext context) {
    return body(context);
  }

  Widget body(BuildContext context) {
    int n = 3;
    switch (n) {
      case 1:
        return const Center(
          child: Text('111'),
        );

      case 2:
        return const Center(
          child: Text('222'),
        );

      case 3:
      default:
        return const Center(
          child: Text('52342333333333333333333333333334324'),
        );
    }
  }
}
