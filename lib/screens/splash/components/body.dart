// ignore_for_file: deprecated_member_use

import 'package:crimeapp/constants.dart';
import 'package:crimeapp/screens/sign-in/sign_in_screen.dart';
import 'package:crimeapp/screens/splash/components/splash_content.dart';
import 'package:crimeapp/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage=0;
  List<Map<String, String>> splashData =[
    {
      "image": 'assets\images\crime-scene.png',
      "text": "Welcome to CrimeScene, Let's Investigate!",
    },
    {
      "image": 'assets\images\crime-hotspots.png',
      "text": "We help people be aware of their surroundings",
    },
    {
      "image": 'assets\images\crime-report.png',
      "text": "We show an easier way to get crminals behind bar",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          // ignore: prefer_const_constructors
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value){
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                image: splashData[index]['image'].toString(),
                text: splashData[index]['text'].toString(),
                ),
              ),
            ),
          // ignore: prefer_const_constructors
          Expanded(
            flex: 2,
            // ignore: prefer_const_constructors
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getPropionateScreenWidth(20)),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length, 
                      (index) => buildDot(index: index),
                      ),
                  ),
                  Spacer(flex:3),
                  DefaultButton(
                    text: "Continue",
                    press: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
          ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20:6,
      decoration: BoxDecoration(
      color:currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
      borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}



