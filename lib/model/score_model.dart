library score;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializer/seriliazers.dart';

part 'score.g.dart';

abstract class Score implements Built<Score, ScoreBuilder> {
  // fields go here
  int get id;
  int get score;
  @BuiltValueField(wireName: 'party_id')
  int get partyid;

  Score._();

  factory Score([updates(ScoreBuilder b)]) = _$Score;

  String toJson() {
    return json.encode(serializers.serializeWith(Score.serializer, this));
  }

  static Score fromJson(String jsonString) {
    return serializers.deserializeWith(
        Score.serializer, json.decode(jsonString));
  }

  static Serializer<Score> get serializer => _$ScoreSerializer;
}
