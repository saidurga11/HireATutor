import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hireatutor/src/tutor.dart';
// import 'package:hireatutor/resources/values/colors.dart';
import 'constants.dart';

class TutorSearch extends SearchDelegate<Tutor> {
  final Stream<UnmodifiableListView<Tutor>> tutors;

  TutorSearch(this.tutors);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return StreamBuilder(
      builder: (context, AsyncSnapshot<UnmodifiableListView<Tutor>> snapshot) {
        if (!snapshot.hasData) {
          return Center(child: Text("no data... :("));
        }

        // search based on name of the tutor
        final results = snapshot.data.where((element) =>
            element.name.toLowerCase().contains(query.toLowerCase()));

        return ListView(
            children: results
                .map<ListTile>((item) => ListTile(
                      title: Text(
                        item.name,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      leading: Icon(
                        Icons.person_outline,
                        color: AppColors.PRIMARY_COLOR,
                      ),
                      onTap: () {
                        close(context, item);
                      },
                    ))
                .toList());
      },
      stream: tutors,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
    // TODO: decide whether to show suggestion or just return search results
    // return StreamBuilder(
    //   builder: (context, AsyncSnapshot<UnmodifiableListView<Tutor>> snapshot) {
    //     if (!snapshot.hasData) {
    //       return Center(child: Text("no data... :("));
    //     }

    //     // search based on name of the tutor
    //     final results = snapshot.data
    //         .where((element) => element.name.toLowerCase().contains(query));

    //     return ListView(
    //         // children:
    //         //     results.map<Widget>((tutor) => Text(tutor.name)).toList());
    //         // children: results
    //         //     .map<Widget>((tutor) => TutorCardBuilder.buildTutorCard(tutor))
    //         //     .toList());
    //         children: results
    //             .map<ListTile>((item) => ListTile(
    //                   title: Text(
    //                     item.name,
    //                     style: Theme.of(context)
    //                         .textTheme
    //                         .subtitle1
    //                         .copyWith(color: AppColors.PRIMARY_COLOR),
    //                   ),
    //                   onTap: () {
    //                     query = item.name;
    //                   },
    //                   // leading: Icon(
    //                   //   Icons.person_outline,
    //                   //   color: AppColors.PRIMARY_COLOR,
    //                   // ),
    //                 ))
    //             .toList());
    //   },
    //   stream: tutors,
    // );
  }
}
