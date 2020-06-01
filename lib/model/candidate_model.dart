library candidate;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'person_model.dart';
import 'serializer/seriliazers.dart';

part 'candidate.g.dart';

abstract class Candidate implements Built<Candidate, CandidateBuilder> {
  // fields go here
  int get id;
  String get nation;
  String get spouse;
  String get bio;
  Person get person;

  Candidate._();

  factory Candidate([updates(CandidateBuilder b)]) = _$Candidate;

  String toJson() {
    return json.encode(serializers.serializeWith(Candidate.serializer, this));
  }

  static Candidate fromJson(String jsonString) {
    return serializers.deserializeWith(
        Candidate.serializer, json.decode(jsonString));
  }

  static Serializer<Candidate> get serializer => _$CandidateSerializer;
}
