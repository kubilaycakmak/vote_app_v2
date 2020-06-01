library election_model;

import 'package:built_collection/built_collection.dart';

import 'party_model.dart';
import 'score_model.dart';

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializer/seriliazers.dart';

part 'election_model.g.dart';

abstract class ElectionModel
    implements Built<ElectionModel, ElectionModelBuilder> {
  // fields go here
  int get id;
  String get dateStart;
  String get dateEnd;
  String get createdBy;
  String get desc;
  BuiltList<Party> get parties;
  BuiltList<Score> get scores;

  ElectionModel._();

  factory ElectionModel([updates(ElectionModelBuilder b)]) = _$ElectionModel;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ElectionModel.serializer, this));
  }

  static ElectionModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ElectionModel.serializer, json.decode(jsonString));
  }

  static Serializer<ElectionModel> get serializer => _$ElectionModelSerializer;
}
