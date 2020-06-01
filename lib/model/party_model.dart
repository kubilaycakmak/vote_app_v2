library party;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'candidate_model.dart';
import 'serializer/seriliazers.dart';

part 'party.g.dart';

abstract class Party implements Built<Party, PartyBuilder> {
  // fields go here
  int get id;
  String get name;
  String get dateOfFoundation;
  String get ideology;
  Candidate get candidate;

  Party._();

  factory Party([updates(PartyBuilder b)]) = _$Party;

  String toJson() {
    return json.encode(serializers.serializeWith(Party.serializer, this));
  }

  static Party fromJson(String jsonString) {
    return serializers.deserializeWith(
        Party.serializer, json.decode(jsonString));
  }

  static Serializer<Party> get serializer => _$PartySerializer;
}
