import 'package:bloodmate/Screens/donor.dart';
import 'package:bloodmate/data/data.dart';
import 'package:bloodmate/widgets/catagory_container.dart';
import 'package:bloodmate/widgets/text.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

enum Number { one, two, three, four, five }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Number selectedNumber;
  List<Check> mycheck = getcheck();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color(0xFFEFF4F8),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: Padding(
          padding: const EdgeInsets.all(19.0),
          child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 28,
              ),
              onPressed: () {}),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: IconButton(
                icon: Icon(
                  Icons.search,
                  size: 28,
                ),
                onPressed: () {}),
          ),
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(19),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(42),
                  bottomRight: Radius.circular(42),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Texts(
                        text: 'BLOODMATE',
                        fontSize: 26.5,
                        fontweight: FontWeight.bold,
                        colour: Colors.white,
                      ),
                      RaisedButton.icon(
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Icon(
                            Icons.email,
                            size: 20,
                            color: Colors.black,
                          ),
                        ),
                        label: Texts(
                          fontSize: 18,
                          text: 'GMAIL',
                          colour: Colors.black,
                          fontweight: null,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Texts(
                    fontSize: 22,
                    text: 'Do Want To Donate Blood ?',
                    colour: Colors.white,
                    fontweight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Texts(
                    fontSize: 17,
                    text:
                        'If you believe in power of donating , feel free to call or text us for help',
                    colour: Colors.white70,
                    fontweight: null,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RaisedButton.icon(
                        onPressed: () {},
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Icon(
                            Icons.call,
                            size: 22,
                            color: Colors.white,
                          ),
                        ),
                        label: Texts(
                          fontSize: 18,
                          text: 'Call Now',
                          colour: Colors.white,
                          fontweight: null,
                        ),
                      ),
                      RaisedButton.icon(
                        onPressed: () {},
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Icon(
                            Icons.message,
                            size: 22,
                            color: Colors.white,
                          ),
                        ),
                        label: Texts(
                          fontSize: 18,
                          text: 'Send SMS',
                          colour: Colors.white,
                          fontweight: null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(14),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Texts(
                    fontSize: 27,
                    text: 'Categories',
                    colour: Colors.black,
                    fontweight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Catagory_Container(
                          firsttext: 'Top Donor',
                          icon: Icons.hotel,
                          ontap: () {
                            setState(
                              () {
                                selectedNumber = Number.one;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DonorScreen(),
                                  ),
                                );
                              },
                            );
                          },
                          colour: selectedNumber == Number.one
                              ? Colors.indigo.withOpacity(0.5)
                              : Color(0xFF7A9BEE).withOpacity(0.1),
                        ),
                        Catagory_Container(
                          firsttext: 'Request',
                          icon: Icons.remove_from_queue,
                          ontap: () {
                            setState(() {
                              selectedNumber = Number.two;
                            });
                          },
                          colour: selectedNumber == Number.two
                              ? Colors.indigo.withOpacity(0.5)
                              : Color(0xFF7A9BEE).withOpacity(0.1),
                        ),
                        Catagory_Container(
                          firsttext: 'Blood',
                          icon: Icons.branding_watermark,
                          ontap: () {
                            setState(() {
                              selectedNumber = Number.three;
                            });
                          },
                          colour: selectedNumber == Number.three
                              ? Color(0xFF7A9BEE)
                              : Color(0xFF7A9BEE).withOpacity(0.1),
                          // secondtext: null,
                        ),
                        Catagory_Container(
                          firsttext: 'Abcde',
                          icon: Icons.settings,
                          ontap: () {
                            setState(() {
                              selectedNumber = Number.four;
                            });
                          },
                          colour: selectedNumber == Number.four
                              ? Colors.indigo.withOpacity(0.5)
                              : Color(0xFF7A9BEE).withOpacity(0.1),
                          // secondtext: null,
                        ),
                        Catagory_Container(
                          firsttext: 'Ronish',
                          icon: Icons.album,
                          ontap: () {
                            setState(() {
                              selectedNumber = Number.five;
                            });
                          },
                          colour: selectedNumber == Number.five
                              // ? Color(0xFF7A9BEE)
                              ? Colors.indigo.withOpacity(0.5)
                              : Color(0xFF7A9BEE).withOpacity(0.1),
                          // secondtext: null,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(0),
                    child: CarouselSlider(
                      options: CarouselOptions(
                          height: 119,
                          viewportFraction: 0.8,
                          enableInfiniteScroll: true,
                          reverse: true,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.easeIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal),
                      items: builditem(),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Texts(
                      fontSize: 27,
                      fontweight: FontWeight.w900,
                      text: 'Top Donor',
                      colour: Colors.black),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> builditem() {
    List<Widget> list = [];
    for (var checks in mycheck) {
      list.add(letscheck(checks));
    }
    return list;
  }

  Widget letscheck(Check checks) {
    return Container(
      padding: EdgeInsets.fromLTRB(9, 0, 8, 0),
      //  height: MediaQuery.of(context).size.height / 6.5,
      // width: MediaQuery.of(context).size.width,
      // margin: EdgeInsets.only(right: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(23)),
        gradient: LinearGradient(
            colors: [checks.color, checks.color.withOpacity(1)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        color: checks.color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            checks.image,
            height: 118,
          ),
          SizedBox(
            width: 2.2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 9, bottom: 4),
              child: Column(
                children: [
                  Texts(
                      fontSize: 23,
                      fontweight: FontWeight.w800,
                      text: checks.headlinetext,
                      colour: Colors.white),
                  SizedBox(
                    height: 4,
                  ),
                  Texts(
                      fontSize: 14,
                      fontweight: null,
                      text: checks.secondtext,
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
//
