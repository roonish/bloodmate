import 'package:flutter/material.dart';

class Check {
  Color color;
  String headlinetext;
  String image;
  String secondtext;

  Check({this.color, this.headlinetext, this.image, this.secondtext});
}

List<Check> getcheck() {
  return <Check>[
    Check(
      color: Colors.deepPurpleAccent,
      headlinetext: 'Do you know?',
      image: 'images/first.png',
      secondtext: ' Donating whole blood takes only about 10-15 minutes. ',
    ),
    Check(
      color: Colors.pinkAccent,
      headlinetext: 'Do you know?',
      image: 'images/fifth.png',
      secondtext:
          ' Red blood cells have a short shelf life. They only last for 6 weeks',
    ),
    Check(
        color: Colors.yellow.shade900,
        headlinetext: 'Do you know?',
        image: 'images/nine.png',
        secondtext: 'A newborn baby has about one cup of blood in his body.'),
    Check(
      color: Colors.indigoAccent,
      headlinetext: 'Do you know?',
      image: 'images/fifth.png',
      secondtext:
          '  Red blood cells live about 120 days in the circulatory system.',
    ),
    Check(
      color: Colors.pinkAccent,
      headlinetext: 'Do you know?',
      image: 'images/sixth.png',
      secondtext:
          '  One unit of whole blood is roughly the equivalent of one pint. ',
    ),
    Check(
      color: Colors.yellow.shade800,
      headlinetext: 'Do you know?',
      image: 'images/second.png',
      secondtext:
          ' Thirteen tests are performed on each unit of donated blood. ',
    ),
    Check(
      color: Color(0xFF73A1F9),
      headlinetext: 'Do you know?',
      image: 'images/first.png',
      secondtext: 'Just 1 donation can save up to 3 lives.',
    ),
    Check(
      color: Color(0xFFCE47FD),
      headlinetext: 'Do you know?',
      image: 'images/seven.png',
      secondtext:
          ' Blood centers often run short of types O and B red blood cells.',
    ),
    Check(
      color: Colors.yellow.shade800,
      headlinetext: 'Do you know?',
      image: 'images/sixth.png',
      secondtext: ' Blood makes up about 7 percent of your body’s weight. ',
    ),
    Check(
      color: Colors.redAccent,
      headlinetext: 'Do you know?',
      image: 'images/second.png',
      secondtext:
          ' You cannot get AIDS or any other infectious disease by donating blood.',
    ),
    Check(
      color: Colors.lightGreen,
      headlinetext: 'Do you know?',
      image: 'images/seven.png',
      secondtext: '  About 1 in 7 people entering a hospital need blood.  ',
    ),
  ];
}

class Donor {
  String name;
  String gender;
  String location;
  String bloodgroup;
  int age;
  int weight;
  String phonenumer;
  Donor(
      {this.name,
      this.age,
      this.bloodgroup,
      this.gender,
      this.location,
      this.phonenumer,
      this.weight});
}

List<Donor> mydonor = [
  Donor(
    name: 'Ronish Siwakoti',
    age: 20,
    gender: 'Male',
    location: 'Kathmandu',
    bloodgroup: 'O +',
    weight: 70,
    phonenumer: '9808098003',
  ),
  Donor(
    name: 'Shanta Siwakoti',
    age: 50,
    gender: 'Female',
    location: 'Kathmandu',
    bloodgroup: 'O -',
    weight: 60,
    phonenumer: '9808182848',
  ),
  Donor(
    name: 'Nabin  Dangol',
    age: 20,
    gender: 'Male',
    location: 'Kathmandu',
    bloodgroup: 'AB +',
    weight: 70,
    phonenumer: '9800000000',
  ),
  Donor(
    name: 'Apple Kumar',
    age: 20,
    gender: 'Female',
    location: 'Jungle',
    bloodgroup: 'B +',
    weight: 50,
    phonenumer: '9809594939',
  ),
  Donor(
    name: 'Merina Shrestha',
    age: 25,
    gender: 'Female',
    location: 'Bhaktapur',
    bloodgroup: 'A +',
    weight: 65,
    phonenumer: '9823456764',
  ),
  Donor(
    name: 'Pramod Siwakoti',
    age: 55,
    gender: 'Male',
    location: 'Morang',
    bloodgroup: 'AB -',
    weight: 65,
    phonenumer: '9804359899',
  ),
  Donor(
    name: 'Regan Acharya',
    age: 28,
    gender: 'Male',
    location: 'Syambhu',
    bloodgroup: 'O -',
    weight: 70,
    phonenumer: '9845833344',
  ),
  Donor(
    name: 'Merin Shrestha',
    age: 30,
    gender: 'Male',
    location: 'Biratnagar',
    bloodgroup: 'B -',
    weight: 70,
    phonenumer: '9843562398',
  ),
  Donor(
    name: 'Kangita Shrestha',
    age: 20,
    gender: 'Female',
    location: 'Banepa',
    bloodgroup: 'Ab +',
    weight: 50,
    phonenumer: '9844444444',
  ),
];
