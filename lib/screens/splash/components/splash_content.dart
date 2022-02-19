import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key, 
    required this.text, 
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "CRIMESCENE", 
          style: TextStyle(
            fontSize: getPropionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        //"Welcome to CrimeScene, Let's Investigate!"
        Text(text, textAlign: TextAlign.center,),
        Spacer(flex: 2,),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getPropionateScreenWidth(235),
          )
      ],          
    );
  }
}