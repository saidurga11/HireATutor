import 'package:flutter/material.dart';

class TutorDetailRow extends StatefulWidget {
  TutorDetailRow({Key key, this.property, this.value}) : super(key: key);
  final String property;
  final String value;

  @override
  _TutorDetailRowState createState() => _TutorDetailRowState();
}

class _TutorDetailRowState extends State<TutorDetailRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.5),
      child: Row(
        children: [
          Text(
            widget.property + ": ",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black.withOpacity(1),
                fontWeight: FontWeight.bold),
          ),
          Text(
            widget.value,
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
