import 'package:flutter/material.dart';
import 'package:hireatutor/main.dart';
import 'package:hireatutor/screens/forgot_password/forgot_password_screen.dart';
import 'package:hireatutor/screens/login_success/login_success_screen.dart';
import 'package:hireatutor/screens/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  // SignUpScreen.routeName: (context) => SignUpScreen(),
  MyHomePage.routeName: (context) => MyHomePage(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};
