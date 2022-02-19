import 'package:crimeapp/screens/splash/components/body.dart';
import 'package:crimeapp/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  //const SplashScreen({ Key? key }) : super(key: key);
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    //Call on te starting screen
    SizeConfig.init(context);
    return Scaffold(
      body: Body(),
    );
  }
}