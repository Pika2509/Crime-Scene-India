import 'package:crimeapp/screens/login_success/components/body.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({ Key? key }) : super(key: key);
  static String routeName = "/login_success_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}