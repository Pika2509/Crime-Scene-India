import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';
import '../screens/forgot_password/forgot_password_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Dont have and account?",
        style: TextStyle(fontSize: getPropionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () {},
          child: Text("Sign Up",
          style: TextStyle(fontSize: getPropionateScreenWidth(16),
            color: kPrimaryColor,
          ),                    
          ), 
        ),
      ],
    );
  }
}
