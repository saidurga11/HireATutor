import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:hireatutor/detail_row.dart';
import 'package:hireatutor/src/tutor.dart';

class TutorCardBuilder {
  static Widget buildTutorCard(Tutor tutor) {
    final list = [
      "https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=879&q=80",
      "https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80",
      "https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1583468982228-19f19164aee2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=913&q=80"
    ];
    final _random = new Random();
    var element = list[_random.nextInt(list.length)];
    return TutorCard(
      key: Key(tutor.key),
      name: tutor.name,
      distance: tutor.distance,
      fee: tutor.fee,
      subjects: tutor.subjects,
      photoUrl: element,
    );
  }
}

class TutorCard extends StatefulWidget {
  const TutorCard(
      {Key key,
      this.name,
      this.subjects,
      this.fee,
      this.distance,
      this.photoUrl})
      : super(key: key);
  final String name;
  final double fee;
  final BuiltList<String> subjects;
  final double distance;
  final String photoUrl;

  @override
  _TutorCardState createState() => _TutorCardState();
}

class _TutorCardState extends State<TutorCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Card(
        elevation: 5,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Column(
                  // Dp of Tutor
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: CircleAvatar(
                      backgroundImage: NetworkImage(widget.photoUrl != null
                          ? widget.photoUrl
                          : "https://images.unsplash.com/photo-1619450810414-3b2bdab653e9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80"),
                      radius: 50,
                    ))
                  ],
                ),
                Padding(
                  // padding: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    // Tutor Details
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TutorDetailRow(property: "Name", value: widget.name),
                      TutorDetailRow(
                          property: "Subjects",
                          value: widget.subjects.join(", ")),
                      TutorDetailRow(
                          property: "Fee",
                          value: widget.fee.toString() + "/month"),
                      TutorDetailRow(
                          property: "Distance",
                          value: widget.distance.toString() + " km"),
                    ],
                  ),
                )
              ],
            ),
          ),
          height: 200,
        ),
      ),
    );
  }
}
