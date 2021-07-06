import 'package:flutter/material.dart';
import 'package:hireatutor/resources/values/colors.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        centerTitle: true,
        backgroundColor: AppColors.PRIMARY_COLOR,
      ),
      body: Body(),
    );
  }
}
