import 'package:bloodmate/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class DonorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF935489),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFF0050AC),
                Color(0xFF9354B9),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.2, 0.6]),
        ),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 23,
                          color: Color(0xFFFFFFFF),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    IconButton(
                        icon: Icon(
                          Icons.search,
                          size: 23,
                          color: Color(0xFFFFFFFF),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'Top Donors',
                        style: TextStyle(
                          fontFamily: "Avenir",
                          fontSize: 40,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 470,
                    padding: EdgeInsets.only(left: 32),
                    child: Swiper(
                      itemCount: mydonor.length,
                      itemWidth: MediaQuery.of(context).size.width - 2 * 60.5,
                      layout: SwiperLayout.STACK,
                      pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                            size: 8,
                            activeSize: 12,
                            space: 4,
                            activeColor: Colors.yellowAccent),
                      ),
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 100,
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32)),
                                  elevation: 8,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(32.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 100,
                                        ),
                                        Center(
                                          child: Text(
                                            mydonor[index].name,
                                            style: TextStyle(
                                              fontFamily: "Avenir",
                                              fontSize: 21,
                                              color: Color(0xFF47455F),
                                              fontWeight: FontWeight.w900,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Text(
                                          mydonor[index].location,
                                          style: TextStyle(
                                            fontFamily: "Avenir",
                                            fontSize: 18,
                                            color: Color(0xFF47455F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          mydonor[index].gender,
                                          style: TextStyle(
                                            fontFamily: "Avenir",
                                            fontSize: 18,
                                            color: Color(0xFF47455F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          'Age : ${mydonor[index].age.toString()}',
                                          style: TextStyle(
                                            fontFamily: "Avenir",
                                            fontSize: 18,
                                            color: Color(0xFF47455F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          '${mydonor[index].weight.toString()} KG',
                                          style: TextStyle(
                                            fontFamily: "Avenir",
                                            fontSize: 18,
                                            color: Color(0xFF47455F),
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          mydonor[index].phonenumer,
                                          style: TextStyle(
                                            fontFamily: "Avenir",
                                            fontSize: 18,
                                            color: Color(0xFF47455F),
                                            fontWeight: FontWeight.w900,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 12,
                              left: 50,
                              child: Image.asset(
                                'images/donor.png',
                                height: 210,
                              ),
                            ),
                            Positioned(
                              right: 25,
                              bottom: 120,
                              child: Container(
                                width: 73,
                                height: 85,
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    mydonor[index].bloodgroup,
                                    style: TextStyle(
                                      fontFamily: "Avenir",
                                      fontSize: 33,
                                      color: Colors.red.shade900,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 18, right: 14),
                    child: Text(
                      'The Blood You Donate Gives Someone Another Chance At Life. One Day That Someone May Be A Close Relative, A Friend, A Loved One—Or Even You.',
                      style: TextStyle(
                        fontFamily: "Avenir",
                        fontSize: 19,
                        color: Color(0x7cdbf1ff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0, top: 10, left: 75),
                    child: Text(
                      ' – Redcrossblood.org',
                      style: TextStyle(
                        fontFamily: "Avenir",
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
