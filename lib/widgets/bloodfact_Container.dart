import 'package:flutter/material.dart';
import 'text.dart';

// ignore: camel_case_types
class Bloodfact_Container extends StatelessWidget {
  final Color color;
  final String headlinetext;
  final String image;
  final String secondtext;

  const Bloodfact_Container(
      {@required this.color,
      @required this.headlinetext,
      @required this.image,
      @required this.secondtext});
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
      //   height: MediaQuery.of(context).size.height / 6.5,
      width: MediaQuery.of(context).size.width - 28,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(23)),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            height: 118,
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 5),
              child: Column(
                children: [
                  Texts(
                      fontSize: 25,
                      fontweight: FontWeight.w800,
                      text: headlinetext,
                      colour: Colors.white),
                  SizedBox(
                    height: 6,
                  ),
                  Texts(
                      fontSize: 15,
                      fontweight: null,
                      text: secondtext,
                      colour: Colors.white),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
