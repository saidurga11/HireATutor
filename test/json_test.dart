import 'package:hireatutor/src/tutor.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  test("parse json", () {
    const jsonStr = """
        {
           "key": "1",
            "name": "Katherine",
            "age": 10,
            "photoUrl": "https://images.unsplash.com/photo-1619450810414-3b2bdab653e9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80",
            "idPhotoUrl": "nothing",
            "profession": "teacher",
            "experience": 20.3,
            "rating": 4.5,
            "ratingsCount": 100,
            "reviews": ["first review", "second review"],
            "subjects": ["first subject", "second subject"],
            "lat":15.45,
            "long": 75.32
        }
    """;
    expect(parseTutor(jsonStr).age, 10);
  });

  test("test network calls", () async {
    final url = Uri.parse('http://10.0.0.6:5000/');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonString = parseTutor(response.body);
      expect(jsonString.age, 10);
    }
  });
}
