import 'package:crimeapp/screens/sign-in/sign_in_screen.dart';
import 'package:crimeapp/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/login_success/login_success_screen.dart';

//All roues available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName:(context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
};

