import 'package:flutter/material.dart';
// import 'package:hireatutor/screens/sign_up/sign_up_screen.dart';

// import 'package:hireatutor/constants.dart';
// import 'package:hireatutor/src/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: 16.0),
        ),
        // GestureDetector(
        //   onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
        //   child: Text(
        //     "Sign Up",
        //     style: TextStyle(
        //         fontSize: 16,
        //         color: kPrimaryColor),
        //   ),
        // ),
      ],
    );
  }
}
