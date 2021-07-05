// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Tutor> _$tutorSerializer = new _$TutorSerializer();

class _$TutorSerializer implements StructuredSerializer<Tutor> {
  @override
  final Iterable<Type> types = const [Tutor, _$Tutor];
  @override
  final String wireName = 'Tutor';

  @override
  Iterable<Object> serialize(Serializers serializers, Tutor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'age',
      serializers.serialize(object.age, specifiedType: const FullType(int)),
      'fee',
      serializers.serialize(object.fee, specifiedType: const FullType(double)),
      'distance',
      serializers.serialize(object.distance,
          specifiedType: const FullType(double)),
      'profession',
      serializers.serialize(object.profession,
          specifiedType: const FullType(String)),
      'experience',
      serializers.serialize(object.experience,
          specifiedType: const FullType(double)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(double)),
      'ratingsCount',
      serializers.serialize(object.ratingsCount,
          specifiedType: const FullType(int)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'long',
      serializers.serialize(object.long, specifiedType: const FullType(double)),
      'reviews',
      serializers.serialize(object.reviews,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'subjects',
      serializers.serialize(object.subjects,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    Object value;
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idPhotoUrl;
    if (value != null) {
      result
        ..add('idPhotoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Tutor deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TutorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'fee':
          result.fee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'idPhotoUrl':
          result.idPhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profession':
          result.profession = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'experience':
          result.experience = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'ratingsCount':
          result.ratingsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'long':
          result.long = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'subjects':
          result.subjects.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Tutor extends Tutor {
  @override
  final String key;
  @override
  final String name;
  @override
  final int age;
  @override
  final double fee;
  @override
  final double distance;
  @override
  final String photoUrl;
  @override
  final String idPhotoUrl;
  @override
  final String profession;
  @override
  final double experience;
  @override
  final double rating;
  @override
  final int ratingsCount;
  @override
  final double lat;
  @override
  final double long;
  @override
  final BuiltList<String> reviews;
  @override
  final BuiltList<String> subjects;

  factory _$Tutor([void Function(TutorBuilder) updates]) =>
      (new TutorBuilder()..update(updates)).build();

  _$Tutor._(
      {this.key,
      this.name,
      this.age,
      this.fee,
      this.distance,
      this.photoUrl,
      this.idPhotoUrl,
      this.profession,
      this.experience,
      this.rating,
      this.ratingsCount,
      this.lat,
      this.long,
      this.reviews,
      this.subjects})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(key, 'Tutor', 'key');
    BuiltValueNullFieldError.checkNotNull(name, 'Tutor', 'name');
    BuiltValueNullFieldError.checkNotNull(age, 'Tutor', 'age');
    BuiltValueNullFieldError.checkNotNull(fee, 'Tutor', 'fee');
    BuiltValueNullFieldError.checkNotNull(distance, 'Tutor', 'distance');
    BuiltValueNullFieldError.checkNotNull(profession, 'Tutor', 'profession');
    BuiltValueNullFieldError.checkNotNull(experience, 'Tutor', 'experience');
    BuiltValueNullFieldError.checkNotNull(rating, 'Tutor', 'rating');
    BuiltValueNullFieldError.checkNotNull(
        ratingsCount, 'Tutor', 'ratingsCount');
    BuiltValueNullFieldError.checkNotNull(lat, 'Tutor', 'lat');
    BuiltValueNullFieldError.checkNotNull(long, 'Tutor', 'long');
    BuiltValueNullFieldError.checkNotNull(reviews, 'Tutor', 'reviews');
    BuiltValueNullFieldError.checkNotNull(subjects, 'Tutor', 'subjects');
  }

  @override
  Tutor rebuild(void Function(TutorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TutorBuilder toBuilder() => new TutorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tutor &&
        key == other.key &&
        name == other.name &&
        age == other.age &&
        fee == other.fee &&
        distance == other.distance &&
        photoUrl == other.photoUrl &&
        idPhotoUrl == other.idPhotoUrl &&
        profession == other.profession &&
        experience == other.experience &&
        rating == other.rating &&
        ratingsCount == other.ratingsCount &&
        lat == other.lat &&
        long == other.long &&
        reviews == other.reviews &&
        subjects == other.subjects;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                key.hashCode),
                                                            name.hashCode),
                                                        age.hashCode),
                                                    fee.hashCode),
                                                distance.hashCode),
                                            photoUrl.hashCode),
                                        idPhotoUrl.hashCode),
                                    profession.hashCode),
                                experience.hashCode),
                            rating.hashCode),
                        ratingsCount.hashCode),
                    lat.hashCode),
                long.hashCode),
            reviews.hashCode),
        subjects.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Tutor')
          ..add('key', key)
          ..add('name', name)
          ..add('age', age)
          ..add('fee', fee)
          ..add('distance', distance)
          ..add('photoUrl', photoUrl)
          ..add('idPhotoUrl', idPhotoUrl)
          ..add('profession', profession)
          ..add('experience', experience)
          ..add('rating', rating)
          ..add('ratingsCount', ratingsCount)
          ..add('lat', lat)
          ..add('long', long)
          ..add('reviews', reviews)
          ..add('subjects', subjects))
        .toString();
  }
}

class TutorBuilder implements Builder<Tutor, TutorBuilder> {
  _$Tutor _$v;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _age;
  int get age => _$this._age;
  set age(int age) => _$this._age = age;

  double _fee;
  double get fee => _$this._fee;
  set fee(double fee) => _$this._fee = fee;

  double _distance;
  double get distance => _$this._distance;
  set distance(double distance) => _$this._distance = distance;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _idPhotoUrl;
  String get idPhotoUrl => _$this._idPhotoUrl;
  set idPhotoUrl(String idPhotoUrl) => _$this._idPhotoUrl = idPhotoUrl;

  String _profession;
  String get profession => _$this._profession;
  set profession(String profession) => _$this._profession = profession;

  double _experience;
  double get experience => _$this._experience;
  set experience(double experience) => _$this._experience = experience;

  double _rating;
  double get rating => _$this._rating;
  set rating(double rating) => _$this._rating = rating;

  int _ratingsCount;
  int get ratingsCount => _$this._ratingsCount;
  set ratingsCount(int ratingsCount) => _$this._ratingsCount = ratingsCount;

  double _lat;
  double get lat => _$this._lat;
  set lat(double lat) => _$this._lat = lat;

  double _long;
  double get long => _$this._long;
  set long(double long) => _$this._long = long;

  ListBuilder<String> _reviews;
  ListBuilder<String> get reviews =>
      _$this._reviews ??= new ListBuilder<String>();
  set reviews(ListBuilder<String> reviews) => _$this._reviews = reviews;

  ListBuilder<String> _subjects;
  ListBuilder<String> get subjects =>
      _$this._subjects ??= new ListBuilder<String>();
  set subjects(ListBuilder<String> subjects) => _$this._subjects = subjects;

  TutorBuilder();

  TutorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _name = $v.name;
      _age = $v.age;
      _fee = $v.fee;
      _distance = $v.distance;
      _photoUrl = $v.photoUrl;
      _idPhotoUrl = $v.idPhotoUrl;
      _profession = $v.profession;
      _experience = $v.experience;
      _rating = $v.rating;
      _ratingsCount = $v.ratingsCount;
      _lat = $v.lat;
      _long = $v.long;
      _reviews = $v.reviews.toBuilder();
      _subjects = $v.subjects.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tutor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Tutor;
  }

  @override
  void update(void Function(TutorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Tutor build() {
    _$Tutor _$result;
    try {
      _$result = _$v ??
          new _$Tutor._(
              key: BuiltValueNullFieldError.checkNotNull(key, 'Tutor', 'key'),
              name:
                  BuiltValueNullFieldError.checkNotNull(name, 'Tutor', 'name'),
              age: BuiltValueNullFieldError.checkNotNull(age, 'Tutor', 'age'),
              fee: BuiltValueNullFieldError.checkNotNull(fee, 'Tutor', 'fee'),
              distance: BuiltValueNullFieldError.checkNotNull(
                  distance, 'Tutor', 'distance'),
              photoUrl: photoUrl,
              idPhotoUrl: idPhotoUrl,
              profession: BuiltValueNullFieldError.checkNotNull(
                  profession, 'Tutor', 'profession'),
              experience: BuiltValueNullFieldError.checkNotNull(
                  experience, 'Tutor', 'experience'),
              rating: BuiltValueNullFieldError.checkNotNull(
                  rating, 'Tutor', 'rating'),
              ratingsCount: BuiltValueNullFieldError.checkNotNull(
                  ratingsCount, 'Tutor', 'ratingsCount'),
              lat: BuiltValueNullFieldError.checkNotNull(lat, 'Tutor', 'lat'),
              long:
                  BuiltValueNullFieldError.checkNotNull(long, 'Tutor', 'long'),
              reviews: reviews.build(),
              subjects: subjects.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reviews';
        reviews.build();
        _$failedField = 'subjects';
        subjects.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Tutor', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
