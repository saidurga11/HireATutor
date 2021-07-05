import 'dart:async';
import 'dart:collection';

import 'package:hireatutor/src/tutor.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

class TutorBloc {
  final _tutorsSubject = BehaviorSubject<UnmodifiableListView<Tutor>>();

  var _tutors = <Tutor>[];

  // TODO: get the id's of tutors near that given latlong and fire a query
  final _ids = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25
  ];

  List<String> countList = [
    "Telugu",
    "Hindi",
    "English",
    "Mathematics",
    "Science",
    "Social Studies",
    "Physics",
    "Chemistry",
    "Operating Systems",
    "Computer Organization",
    "System Design",
    "Problem Solving",
    "Circuits",
    "Networking",
    "AWS",
  ];
  List<String> selectedCountList = [];

  TutorBloc() {
    _getTutors().then((_) {
      _tutorsSubject.add(UnmodifiableListView(_tutors));
    });
  }

  Stream<UnmodifiableListView<Tutor>> get tutors => _tutorsSubject.stream;

  Future<Tutor> _getTutor(int id) async {
    final url =
        Uri.parse('https://mockend.com/psaidurga13/mock_backend/tutors/$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return parseTutor(response.body);
    }
    return null;
  }

  Future<Null> _getTutors() async {
    final futureTutors = _ids.map((id) => _getTutor(id));
    final tutors = await Future.wait(futureTutors);
    _tutors = tutors;
  }
}
