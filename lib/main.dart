import 'package:flutter/material.dart';

import 'page_controller/i.dart';
import 'test_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Grammar',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Grammar'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: const I(),
        // body: const TestSwitch(),
      ),
    );
  }
}
