import 'package:flutter/material.dart';

// ignore: camel_case_types
class Texts extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color colour;
  final FontWeight fontweight;
  Texts(
      {@required this.fontSize,
      @required this.fontweight,
      @required this.text,
      @required this.colour});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontSize, color: colour, fontWeight: fontweight),
    );
  }
}
