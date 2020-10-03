import 'package:flutter/material.dart';

import 'button_bar_navigation/button_bar_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonBarnavigation(),
    );
  }
}
