library role;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializer/seriliazers.dart';

part 'role.g.dart';

abstract class Role implements Built<Role, RoleBuilder> {
  // fields go here
  int get id;
  String get name;

  Role._();

  factory Role([updates(RoleBuilder b)]) = _$Role;

  String toJson() {
    return json.encode(serializers.serializeWith(Role.serializer, this));
  }

  static Role fromJson(String jsonString) {
    return serializers.deserializeWith(
        Role.serializer, json.decode(jsonString));
  }

  static Serializer<Role> get serializer => _$RoleSerializer;
}
