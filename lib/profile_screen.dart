import 'package:flutter/material.dart';
// import 'package:hireatutor/resources/values/colors.dart';
import 'constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Profile")),
          backgroundColor: AppColors.PRIMARY_COLOR,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                // Profile Pic
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 115,
                    width: 115,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=879&q=80"),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                ProfileMenu(
                  icon: Icons.person_outline_rounded,
                  text: "My Account",
                  press: () {},
                ),
                ProfileMenu(
                  icon: Icons.notification_important_outlined,
                  text: "Notification",
                  press: () {},
                ),
                ProfileMenu(
                  icon: Icons.history_outlined,
                  text: "History",
                  press: () {},
                ),
                ProfileMenu(
                  icon: Icons.settings_outlined,
                  text: "Settings",
                  press: () {},
                ),
                ProfileMenu(
                  icon: Icons.analytics_outlined,
                  text: "Analytics",
                  press: () {},
                ),
              ],
            )
          ],
        ));
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final String text;
  final IconData icon; // Provide icon data here eg: Icons.<some icon>
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Color(0xFFF5F6F9),
          onPressed: press,
          child: Row(
            children: [
              Icon(
                this.icon,
                color: AppColors.SECONDARY_COLOR,
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Text(
                this.text,
                style: Theme.of(context).textTheme.bodyText1,
              )),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          )),
    );
  }
}
