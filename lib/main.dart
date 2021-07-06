import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hireatutor/profile_screen.dart';
import 'package:hireatutor/routes.dart';
import 'package:hireatutor/screens/sign_in/sign_in_screen.dart';
import 'package:hireatutor/search.dart';
import 'package:hireatutor/src/tutor_bloc.dart';
import 'package:hireatutor/src/tutor.dart';
// import 'package:hireatutor/resources/values/colors.dart';
import 'constants.dart';

import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:filter_list/filter_list.dart';
import 'package:hireatutor/tutor_card.dart';

void main() {
  final tutorBloc = TutorBloc();
  runApp(MyApp(bloc: tutorBloc));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final TutorBloc bloc;

  MyApp({Key key, this.bloc});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(title: 'Hire A Tutor', bloc: this.bloc),
      initialRoute: SignInScreen.routeName,
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  static String routeName = "/home";
  MyHomePage({Key key, this.title, this.bloc}) : super(key: key);

  final String title;
  final TutorBloc bloc;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Tabs {
  final IconData icon;
  final String title;
  final Color color;
  final Gradient gradient;

  Tabs(this.icon, this.title, this.color, this.gradient);
}

getGradient(Color color) {
  return LinearGradient(
      colors: [color.withOpacity(0.5), color.withOpacity(0.1)],
      stops: [0.0, 0.7]);
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage;
  Color currentColor = Colors.deepPurple;
  Color inactiveColor = Colors.white;
  PageController tabBarController;
  List<Tabs> tabs = [];

  @override
  void initState() {
    super.initState();
    currentPage = 0;
    tabs.add(Tabs(
      Icons.home,
      "Home",
      AppColors.SECONDARY_COLOR,
      getGradient(AppColors.SECONDARY_COLOR),
    ));
    tabs.add(Tabs(
      Icons.person,
      "Profile",
      AppColors.SECONDARY_COLOR,
      getGradient(AppColors.SECONDARY_COLOR),
    ));
    tabBarController = new PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    void _openFilterDialog() async {
      await FilterListDialog.display<String>(
        context,
        listData: widget.bloc.countList,
        selectedListData: widget.bloc.selectedCountList,
        height: 480,
        headlineText: "Select Subject",
        backgroundColor: Colors.white,
        applyButonTextBackgroundColor: AppColors.PRIMARY_COLOR,
        applyButtonTextStyle: TextStyle(
          fontSize: 18,
        ),
        controlButtonTextStyle: TextStyle(color: AppColors.PRIMARY_COLOR),
        headerTextStyle: TextStyle(color: AppColors.PRIMARY_COLOR),
        selectedChipTextStyle: TextStyle(color: AppColors.SECONDARY_COLOR),
        searchFieldHintText: "Search Here",
        choiceChipLabel: (item) {
          return item;
        },
        hideCloseIcon: true,
        validateSelectedItem: (list, val) {
          return list.contains(val);
        },
        onItemSearch: (list, text) {
          if (list.any((element) =>
              element.toLowerCase().contains(text.toLowerCase()))) {
            return list
                .where((element) =>
                    element.toLowerCase().contains(text.toLowerCase()))
                .toList();
          } else {
            return [];
          }
        },
        onApplyButtonClick: (list) {
          if (list != null) {
            setState(() {
              widget.bloc.selectedCountList = List.from(list);
            });
          }
          Navigator.pop(context);
        },
        choiceChipBuilder: (context, item, isSelected) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: isSelected ? AppColors.PRIMARY_COLOR : Colors.white,
                border: Border.all(
                  color:
                      isSelected ? AppColors.PRIMARY_COLOR : Colors.grey[300],
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Text(
              item,
              style: TextStyle(
                  color: isSelected ? Colors.white : AppColors.THIRD_COLOR),
            ),
          );
        },
      );
    }

    Widget _getHomePage() {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.PRIMARY_COLOR,
          title: Text(
            widget.title,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    showSearch(
                        context: context,
                        delegate: TutorSearch(widget.bloc.tutors));
                  }),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _openFilterDialog,
          child: const Icon(Icons.filter_alt_rounded),
          backgroundColor: AppColors.SECONDARY_COLOR,
        ),
        body: StreamBuilder<UnmodifiableListView<Tutor>>(
          stream: widget.bloc.tutors,
          initialData: UnmodifiableListView<Tutor>([]),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return ListView(
              children: snapshot.data
                  .map<Widget>(TutorCardBuilder.buildTutorCard)
                  .toList(),
            );
          },
        ),
      );
    }

    Widget _getProfile() {
      return ProfileScreen();
    }

    return Scaffold(
        body: PageView(
            controller: tabBarController,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              _getHomePage(),
              _getProfile(),
            ]),
        bottomNavigationBar: CubertoBottomBar(
          barBackgroundColor: AppColors.PRIMARY_COLOR,
          key: Key("BottomBar"),
          inactiveIconColor: inactiveColor,
          tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND,
          selectedTab: currentPage,
          tabs: tabs
              .map((value) => TabData(
                  key: Key(value.title),
                  iconData: value.icon,
                  title: value.title,
                  tabColor: value.color,
                  tabGradient: value.gradient))
              .toList(),
          onTabChangedListener: (position, title, color) {
            setState(() {
              currentPage = position;
              tabBarController.jumpToPage(position);
            });
          },
        ));
  }
}
