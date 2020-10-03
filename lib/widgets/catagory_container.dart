import 'package:bloodmate/widgets/text.dart';
import 'package:flutter/material.dart';

class Catagory_Container extends StatelessWidget {
  final IconData icon;
  final String firsttext;
  final Function ontap;
  final Color colour;
  Catagory_Container({
    @required this.icon,
    @required this.firsttext,
    @required this.ontap,
    @required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(18),
        margin: EdgeInsets.only(right: 13),
        //   height: MediaQuery.of(context).size.height / 7,
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
          color: colour,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.black54,
              size: 28,
            ),
            SizedBox(
              height: 25,
            ),
            Texts(
                fontSize: 17.31,
                fontweight: FontWeight.bold,
                text: firsttext,
                colour: Colors.black),
          ],
        ),
      ),
    );
  }
}
