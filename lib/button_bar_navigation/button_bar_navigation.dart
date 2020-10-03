import 'package:bloodmate/Screens/home_screen.dart';
import 'package:bloodmate/button_bar_navigation/donatr.dart';
import 'package:bloodmate/button_bar_navigation/requesy.dart';
import 'package:flutter/material.dart';

import 'animated_button_bar.dart';
import 'chat.dart';

class ButtonBarnavigation extends StatefulWidget {
  final List<BarItem> barItems = [
    BarItem(text: "Home", icon: Icons.home, color: Colors.indigo),
    BarItem(
        text: "Donate", icon: Icons.favorite_border, color: Colors.redAccent),
    BarItem(text: "Messages", icon: Icons.message, color: Colors.teal),
    BarItem(
        text: "Request",
        icon: Icons.person_outline,
        color: Colors.yellow.shade900),
  ];
  @override
  _ButtonBarnavigationState createState() => _ButtonBarnavigationState();
}

class _ButtonBarnavigationState extends State<ButtonBarnavigation> {
  int selectedBar = 0;

  final _pageOption = [HomeScreen(), Donate(), Chat(), Request()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        color: widget.barItems[selectedBar].color,
        duration: const Duration(milliseconds: 500),
        child: _pageOption[selectedBar],
      ),
      bottomNavigationBar: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: AnimatedBar(
            barItems: widget.barItems,
            animationDuration: const Duration(milliseconds: 200),
            barStyle: BarStyle(),
            onBarTap: (index) {
              setState(() {
                selectedBar = index;
              });
            }),
      ),
    );
  }
}
