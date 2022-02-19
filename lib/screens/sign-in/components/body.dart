// ignore_for_file: prefer_const_constructors, non_constant_identifier_names
import 'package:crimeapp/constants.dart';
import 'package:crimeapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:crimeapp/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/noAccount.dart';
import 'sign_form.dart';
import '../../../components/social_card.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight *0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black, 
                    fontSize: getPropionateScreenWidth(28),
                    fontWeight: FontWeight.bold
                    ),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      "Sign in with your email and password or social media",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: SizeConfig.screenHeight *0.08),
                    SignForm(),
                    SizedBox(height: SizeConfig.screenHeight *0.08),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      SocailCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                      ),
                      SocailCard(
                      icon: "assets/icons/facebok-2.svg",
                      press: () {},
                      ),
                      SocailCard(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

