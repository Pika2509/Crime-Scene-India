import 'package:crimeapp/components/default_button.dart';
import 'package:crimeapp/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight*0.04),
        Image.asset("assets/image/success.png",
        height: SizeConfig.screenHeight*0.4,//40%
        ),
        SizedBox(height: SizeConfig.screenHeight*0.08),
        Text("Login Successful",
        style: TextStyle(
          fontSize: getPropionateScreenWidth(30),
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),        
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth*0.6,
          child: DefaultButton(
            text: "Back to home", 
            press: () {}
            ),
        ), 
        Spacer()      , 
      ],
    );
  }
}