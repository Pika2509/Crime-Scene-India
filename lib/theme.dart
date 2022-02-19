// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        appBarTheme: appBarTheme(),
        textTheme: texttheme(),
        inputDecorationTheme: inputDecorationTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}

InputDecorationTheme inputDecorationTheme() {
OutlineInputBorder outlineInputBorder = OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            );
  return InputDecorationTheme(        
            //float not wokr when applied in theme   
            //floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20,
            ),
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            border: outlineInputBorder
          );
}

TextTheme texttheme() {
  return TextTheme(
        bodyText1: TextStyle(color: kTextColor),
        bodyText2: TextStyle(color: kTextColor),
      );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
        color: Colors.white,
        elevation: 0, 
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color:Colors.black), 
        toolbarTextStyle: TextTheme(
          headline6: TextStyle(color: Color(0XFF8B8B8B),
          fontSize: 18,
          )
          ).bodyText2, titleTextStyle: TextTheme(
          headline6: TextStyle(color: Color(0XFF8B8B8B),
          fontSize: 18,
          )
          ).headline6,
      );
}
