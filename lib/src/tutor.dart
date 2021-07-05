import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'dart:convert' as json;

import 'package:hireatutor/src/serializers.dart';

part 'tutor.g.dart';

abstract class Tutor implements Built<Tutor, TutorBuilder> {
  static Serializer<Tutor> get serializer => _$tutorSerializer;

  String get key;
  String get name;
  int get age;
  double get fee;
  double get distance;

  @nullable
  String get photoUrl;

  @nullable
  String get idPhotoUrl;

  String get profession;
  double get experience;

  double get rating;
  int get ratingsCount;

  double get lat;
  double get long;

  BuiltList<String> get reviews;
  BuiltList<String> get subjects;

  Tutor._();
  factory Tutor([updates(TutorBuilder b)]) = _$Tutor;
}

Tutor parseTutor(String jsonStr) {
  final parsed = json.jsonDecode(jsonStr);
  Tutor tutor = standardSerializers.deserializeWith(Tutor.serializer, parsed);
  return tutor;
}
